
#include "forthwith.h"
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>


/* perform c calls to 00 calls `void (*func)()` */
/* saves ForthWith regs to data stack */
__fw_noinline__
fw_call doabortsof(FORTH_REGISTERS) {
  load_const(tos, $2);
  exit(2);
}

// ( n -- )
__fw_noinline__
void doret() {
  fcell_t errorno = forth_pop();
  ctx->vars->error = errorno;
}

// {*tib} {tib_idx++} ( -- cp n )
__fw_noinline__
void docreate() {
  fcell_t len = forth_pop();
  char *cstr = (char*)forth_pop();
  fcell_xt *here = forth_alloc_var();
  /* *here = &xt_docolon; */
  fword_t *entry = dict_create(F_HIDDEN, len, cstr, here);
  forth_push((fcell_t)entry);
}

// ( n -- ) {*user}
__fw_noinline__
void docomma() {
  *ctx->user->head = forth_pop();
}

// ( n -- ) {*user}
__fw_noinline__
void dosavehere() {
  forth_push(*ctx->user->head);
}

// ( n -- ) {*user}
__fw_noinline__
void doxmask() {
  ctx->dict->head->meta ^= forth_pop();
}

// ( -- ) {*var->state}
__fw_noinline__
void dolbrac() {
  ctx->vars->state = IMMEDIATE_MODE;
}

// ( -- ) {*var->state}
__fw_noinline__
void dorbrac() {
  ctx->vars->state = COMPILE_MODE;
}

// ( -- *c l ) {tib} {tib_idx++}
__fw_noinline__
void doword() {
  uint8_t idx = ctx->vars->tib_idx;
  uint8_t len = ctx->vars->tib_len;
  char   *tib = ctx->vars->tib_str;
  fcell_t word_start;
  fcell_t word_stop;

  parse_word(idx, len, tib, (char**)&word_start, (char**)&word_stop);

  ctx->vars->tib_idx = word_start - (fcell_t)tib;

  forth_push( (fcell_t)word_start);
  forth_push( (fcell_t)(word_stop - word_start));
}

// ( *c n -- *e n )
__fw_noinline__
void dofind() {
  fword_t *entry = dict_find((uint8_t)forth_pop(), (char*)forth_pop());
  forth_push((fcell_t)entry);
  forth_push(entry == NULL ? 0 : 1);
}

__fw_noinline__
void docfa() {
  fword_t *entry = (fword_t*)forth_pop();
  forth_push((fcell_t)entry->body);
}

__fw_noinline__
fw_call doemit() {
  char c = (char)forth_pop();

  uint8_t idx = ctx->vars->tib_idx;
  uint8_t len = ctx->vars->tib_len;

  if (idx < len) {
    idx++;
    ctx->vars->tib_str[idx] = c;
    ctx->vars->tib_idx = idx;
  } else {
  }
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

  /* if (idx >= len) */
    /* return 0; */

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

fcell_t emit_number(uint8_t len, char *tib,
                    fcell_t number)
{
  // Print Number
  int i = 0;
  if ( len >= 2 ) {
    tib[i++] = '0';
    tib[i++] = 'x';
  }

  do {
    uint8_t basis_of = (number >> (i<<2)) & 0xF; 
    tib[i++] = num_basis[basis_of];
  } while (i < len && number);

  return i;
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


