

#include "forthwith.h"
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

#ifndef FW_CUSTOM_TOB_FLUSH
void forth_flush_tob() {
}
#endif

fw_call doprintstate() {

  for (fcell_t *i = ctx_rsp->base; i < ctx_rsp->head; i++)
    write_str(1, "-");

  write_str(12, "-> \t\t regs: ");

  fword_t *entry = dict_lookup((fcell_xt)ctx_regs->x);

  write_str(3, "x: ");
  write_number(ctx_regs->x);

  write_str(2, " (");
  if (entry) {
    uint8_t i;
    for (i = 0; entry->name[i] != '\0'; i++) write_char(entry->name[i]);
    while (i++ < 10) write_char(' ');
  }
  else {
    write_str(5, "(nil)");
  }
  write_str(2, ") ");

  write_str(4, "ip: "); write_number((fcell_t)ctx_regs->ip);
  write_str(5, ", w: "); write_number((fcell_t)ctx_regs->w);

  write_str(6, " tibi ");
  write_number(ctx_vars->tib_idx);

  write_str(6, " tibs ");
  write_number((fcell_t)ctx_vars->tib_str);

  uint8_t wdof = ctx_vars->tib_idx > ctx_vars->tib_len ? ctx_vars->tib_len : ctx_vars->tib_idx;
  write_str(ctx_vars->tib_len - ctx_vars->tib_idx, ctx_vars->tib_str + wdof);

  write_str(4, " --\t");

  write_str(1, "(");
    for (fcell_t *i = ctx_psp->base; i < ctx_psp->head; i++) {
      write_number((fcell_t)*i);
      write_str(2, ", ");
    }
  write_str(1, ")");

  write_str(1, "\n");

  forth_flush_tob();
  return;
}

// handle data stack underflow
__fw_noinline__
fw_call dosuf() {
  ctx_vars->error = FW_ERR_STACKUNDERFLOW;
  ctx_psp->head = ctx_psp->base;
  /* exit(ctx_vars->error); */
}

// handle return stack underflow
__fw_noinline__
fw_call doruf(FORTH_REGISTERS) {
  ctx_vars->error = FW_ERR_RSTACKUNDERFLOW;
  ctx_rsp->head = ctx_rsp->base;
  /* exit(ctx_vars->error); */
}

// ( n -- )
__fw_noinline__
void doret() {
  fcell_t errorno = forth_pop();
  ctx_vars->error = errorno;
}

// {*tib} {tib_idx++} ( -- cp n )
__fw_noinline__
void docreate() {
  fcell_t len = forth_pop();
  char *cstr = (char*)forth_pop();
  fcell_xt *here = forth_alloc_var();
  /* *here = xt_docolon; */
  fword_t *entry = dict_create(F_HIDDEN, len, cstr, here);
  forth_push((fcell_t)entry);
}

// ( n -- ) {*user}
__fw_noinline__
void docomma() {
  *ctx_user->head = forth_pop();
  /* debugf("\tcomma: %016p -> %016p (%lld)\n", ctx_user->head, *ctx_user->head, *ctx_user->head); */
  forth_alloc_var();
}

// ( n -- ) {*user}
__fw_noinline__
void dosavehere() {
  forth_push(*ctx_user->head);
}

// ( n -- ) {*user}
__fw_noinline__
void doxmask() {
  fword_t *last_word = ctx_dict->head - 1;
  last_word->meta ^= forth_pop();
}

// ( -- ) {*var->state}
__fw_noinline__
void dolbrac() {
  ctx_vars->state = IMMEDIATE_MODE;
}

// ( -- ) {*var->state}
__fw_noinline__
void dorbrac() {
  ctx_vars->state = COMPILE_MODE;
}

// ( -- *c l ) {tib} {tib_idx++}
__fw_noinline__
void doword() {
  fcell_t idx = ctx_vars->tib_idx;
  uint8_t len = ctx_vars->tib_len;
  char   *tib = ctx_vars->tib_str;
  char* word_start;
  char* word_stop;

  parse_word(idx, len, tib, &word_start, &word_stop);

/* #ifdef FW_TRACE */
/*   debugf("\tdoword:: idx: %d tib: %p wstart: %p, wstop: %p -- `", idx, tib, word_start, word_stop); */
/*   for (int i = 0; i < (word_stop - word_start); i++) { */
/*     debugf("%c", word_start[i]); */
/*   } */
/*   debugf("`\n"); */
/* #endif // FW_TRACE */

  // Set results
  ctx_vars->tib_idx = word_stop - tib;
  forth_push( (fcell_t)word_start);
  forth_push( (fcell_t)(word_stop - word_start));
  forth_push( (fcell_t)(ctx_vars->tib_idx <= len ));
}

// ( *c n -- *e n )
__fw_noinline__
void dofind() {
  uint8_t len = forth_pop();
  char *str = (char*) forth_pop();

  fword_t *entry = dict_find(len, str);
  if (!entry) {
    forth_push( (fcell_t)str);
    forth_push(len);
  } else {
    forth_push((fcell_t)entry);
    forth_push((fcell_t) !!(entry->meta & F_IMMED));
  }
  forth_push(entry == NULL ? 0 : 1);
}

__fw_noinline__
void docfa() {
  fword_t *entry = (fword_t*)forth_pop();
  forth_push((fcell_t)dict_cfa(entry));
}

__fw_noinline__
fw_call doemit() {
  write_char((char)forth_pop());
}


__fw_noinline__
// ( *c l -- n e ) {tib} {tib_idx++}
fw_call donumber() {
  fcell_t err = 0;
  uint8_t len = (uint8_t)forth_pop();
  char *addr = (char *)forth_pop();

  fcell_t number = 0;
  parse_number(len, addr, &number, &err);

  forth_push(number);
  forth_push(err);
}

// ====================================================================== //
// Parsing Funcs
// ====================================================================== //

#ifndef FORTH_OVERRIDE_PARSERS

static bool is_whitespace(char c) {
  return (c == '\0') | (c == ' ') | (c == '\t') | (c == '\r') | (c == '\n');
}

fcell_t parse_word(uint8_t idx, uint8_t len, char *tib,
                   char **word_start, char **word_stop)
{
  uint8_t start;
  char c;

whitespace:
  while ((c = tib[idx]) && ((idx < len) & is_whitespace(c)))
    idx++;

  /* backcomment: */
  if (c == '\\') {
    while ((c = tib[idx]) && ((idx < len) & (c != '\n')))
      idx++;
    goto whitespace;
  }

  /* parcomment: */
  if (c == '(') {
    while ((c = tib[idx]) && ((idx < len) & (c != ')')))
      idx++;
    idx++;
    goto whitespace;
  }

  goto word;

word:
  start = idx++;
  while ((c = tib[idx]) && ((idx < len) & !is_whitespace(c)))
    idx++;

  *word_start = (tib + start);
  *word_stop = (tib + idx);
  return idx - start;
}

const char num_basis[] = "0123456789ABCDEF";

void write_str(fcell_t l, char *c) {
  fcell_t idx = ctx_vars->tob_idx;
  fcell_t len = ctx_vars->tob_len;

  /* debugf("WRITE_STRING: idx: %d, len: %d\n", idx, len); */
  for (fcell_t i = 0; (i < l) && ((idx + i) < len); i++) {
    /* debugf("WRITE_STRING: i: %d, l: %d, idx: %d, len: %d \n", i, l, idx, len); */
    write_char(c[i]);
  }
}

__fw_noinline__
void write_char(char c) {
  fcell_t *idx = &ctx_vars->tob_idx;
  fcell_t *len = &ctx_vars->tob_len;
  char *str = ctx_vars->tob_str;

  if (*idx < *len) {
    str[*idx] = c;
    *idx += 1;
    /* debugf("LEN: %c %d ", c, ctx_vars->tob_idx ); */
  } else {
    forth_flush_tob();
  }
}

__fw_noinline__
void write_number(fcell_t number)
{
  // Print Number
  write_str(2, "0x");

  uint8_t first_non = false;

  for (int i = ( sizeof(fcell_t) << 1 ) - 1; i >= 0; i--) {
    uint8_t basis_of = (number >> (i << 2)) & 0xF; 
    if ((basis_of == 0) & (first_non == false) & (i != 0))
      continue;
    first_non = true;
    write_char(num_basis[basis_of]);
  }
}

fcell_t parse_number(uint8_t len, char *tib,
                     fcell_t *number, fcell_t *errcode)
{
  uint8_t hex_base = 16; // hardcode hex base
  bool err = false;
  char c;

  uint8_t idx = 0;
  fcell_t neg = 1;
  fcell_t num = 0;

  // Check for 0x hex prefix, elide if found
  if (len >= 2 && tib[0] == '0' && tib[1] == 'x')
    idx += 2;

  while (idx < len) {
    c = tib[idx++];
    err = true;

    if (c == '-') {
      neg = -1;
      continue;
    }

    for (int i = 0; i < hex_base; i++) {
      if (num_basis[i] == c) {
        num = hex_base * num + i;
        err = false;
        break;
      }
    }

    if (err) break;
  }

  *number = num * neg;
  *errcode = err;

  return idx;
}

#endif // #ifndef FORTH_OVERRIDE_PARSERS


