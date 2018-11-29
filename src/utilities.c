

#include "forthwith.h"
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

#ifndef FW_CUSTOM_TOB_FLUSH
void forth_flush_tob() {
}
#endif

fcell_t parse_string(uint8_t idx, uint8_t len, char *tib,
                     char **word_start, char **word_stop);

fw_call dodictprintword() {
  dict_print_body((fword_t*)dict_lookup((fcell_xt)forth_pop()));
}

fw_call doprintstate() {

  for (fcell_t *i = ctx_rsp->base; i < ctx_rsp->head; i++)
  {
    /* write_number(*i); */
    /* write_str(2, "- "); */
    write_str(1, "-");
  }
  /* write_str(9, "\trstack: "); */
  /* write_number(ctx_rsp->head); */
  /* write_str(2, "\n\t"); */

  write_str(12, "-> \t\t regs: ");

  fword_t *entry = dict_lookup((fcell_xt)ctx_regs->x);

  write_str(3, "x: ");
  write_number(ctx_regs->x);

  write_str(2, " (");
  if (entry) {
    uint8_t i;
    for (i = 0; entry->info.name[i] != '\0'; i++) write_char(entry->info.name[i]);
    while (i++ < 10) write_char(' ');
    char *sdo = "docolon";
    for (i = 0; entry->info.name[i] != '\0'; i++) if (entry->info.name[i] != sdo[i]) break; 
    if (i == 7) {
      fword_t *word = dict_lookup(((fcell_xt)ctx_regs->w) - 1);
      write_str(3, "<- ");
      if (word != NULL)
        for (i = 0; i < word->info.len; i++ ) write_char(word->info.name[i]);
      else
        write_str(3, "n/a");
      write_str(1, " ");
    }
    else {
      
    }
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

  write_str(2, " `");
  uint8_t wdof = ctx_vars->tib_idx > ctx_vars->tib_len ? ctx_vars->tib_len : ctx_vars->tib_idx;
  /* write_str(ctx_vars->tib_len - ctx_vars->tib_idx, ctx_vars->tib_str + wdof); */
  char *w0 = ctx_vars->tib_str + wdof;
  for (char *w = w0; w < w0 + ctx_vars->tib_len - ctx_vars->tib_idx; w++) {
    if (*w == '\n')
      write_str(2, "\\n");
    else
      write_char(*w);
  }

  write_str(2, "` ");
  write_str(4, " --\t");

  write_str(1, "(");
    for (fcell_t *i = ctx_psp->base; i < ctx_psp->head; i++) {
      write_number((fcell_t)*i);
      write_str(2, ", ");
    }
  write_str(1, ")");

  forth_print_eol();

  forth_flush_tob();
  return;
}

// handle data stack underflow
__fw_noinline__
fw_call dosuf() {
  ctx_vars->error = FW_ERR_STACKUNDERFLOW;
  ctx_psp->head = ctx_psp->base + 1;
  /* exit(ctx_vars->error); */
}

// handle return stack underflow
__fw_noinline__
fw_call doruf(FORTH_REGISTERS) {
  ctx_vars->error = FW_ERR_RSTACKUNDERFLOW;
  ctx_rsp->head = ctx_rsp->base + 1;
  /* exit(ctx_vars->error); */
}

// ( n -- )
__fw_noinline__
void doerr() {
  fcell_t errorno = forth_pop();
  ctx_vars->error = errorno;
  ctx_vars->state = ERROR_MODE;
}

// {*tib} {tib_idx++} ( -- cp n )
__fw_noinline__
void docreate() {
  fcell_t len = forth_pop();
  char *cstr = (char*)forth_pop();
  fcell_xt *here = forth_alloc_var();
  fword_t *entry = dict_create(F_HIDDEN, len, cstr, here);
  forth_push((fcell_t)entry);
}

__fw_noinline__
void doinitvariable() {
  fcell_t len = forth_pop();
  char *cstr = (char*)forth_pop();
  fcell_t size = forth_pop();

  fcell_xt *here = forth_alloc_var_len(size + 4);
  fword_t *entry = dict_create(F_VAR | F_WORD, len, cstr, here);

  *(here + 0) = (fcell_xt)xt_docolon;
  *(here + 1) = (fcell_xt)&xt_tick;
  *(here + 2) = (fcell_xt)&here[4];
  *(here + 3) = (fcell_xt)&xt_semi;

  forth_push((fcell_t)entry);
  forth_push((fcell_t)here[1]);
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
  last_word->info.meta ^= forth_pop();
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

  // Set results
  ctx_vars->tib_idx = word_stop - tib;
  forth_push( (fcell_t)word_start);
  forth_push( (fcell_t)(word_stop - word_start));
  forth_push( (fcell_t)(ctx_vars->tib_idx <= len ));
}

// ( -- *c l ) {tib} {tib_idx++}
__fw_noinline__
void dostring() {
  fcell_t idx = ctx_vars->tib_idx;
  uint8_t len = ctx_vars->tib_len;
  char   *tib = ctx_vars->tib_str;
  char* word_start;
  char* word_stop;

  fcell_t cnt = parse_string(idx, len, tib, &word_start, &word_stop);

  // Set results
  ctx_vars->tib_idx += cnt;
  char* str_start = (char *)word_start;
  fcell_t str_len = (fcell_t)(word_stop - word_start);
  /* forth_push( (fcell_t)(ctx_vars->tib_idx <= len )); */

  char *new_str = alloc_string(str_len + 1);
  memcpy(new_str, str_start, str_len);

  forth_push((fcell_t)new_str);
  forth_push((fcell_t)str_len);
}

// ( *c n -- *e n )
__fw_noinline__
void dofind() {
  uint8_t len = forth_pop();
  char *str = (char*) forth_pop();

  fword_t *entry = dict_find(len, str);

  /* printf("dofind: %d: `", len); */
  /* for (uint8_t i = 0; i < len; i++) { */
  /*   printf("%c", str[i]); */
  /* } */
  /* printf("` -- dofind: %p\n", entry); */

  if (!entry) {
    forth_push( (fcell_t)str);
    forth_push(len);
  } else {
    forth_push((fcell_t)entry);
    forth_push((fcell_t) !!(entry->info.meta & F_IMMED));
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
fw_call doflush() {
  forth_flush_tob();
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

fcell_t parse_string(uint8_t idx, uint8_t len, char *tib,
                   char **word_start, char **word_stop)
{
  uint8_t start;
  char c;

  // Goto next "
  start = ++idx;
  while ((c = tib[idx]) && ((idx < len) & (c != '"')))
    idx++;

  *word_start = (tib + start);
  *word_stop = (tib + idx);
  return idx - start + 2;
}

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

  if (*idx < *len - 1) {
    str[*idx] = c;
    *idx += 1;
    /* debugf("LEN: %c %d ", c, ctx_vars->tob_idx ); */
  } else {
    forth_flush_tob();
  }
}

#ifdef FW_SUPPORT_NUMBER_BASES
void write_number(fcell_t number)
{
  uint8_t base = ctx_vars->base; // hardcode hex base
  char number_chars[64] = {0};

  /* convert to the indicated base */
  int idx = 0;

  fcell_t is_neg = 0;
  if (number < 0) {
    is_neg = 1;
    number = -1 * number;
  }

  while (number != 0)
  {
    number_chars[idx++] = number % base;
    number /= base;
  }

  // Print Number
  if (is_neg) {
    write_str(1, "-");
  }

  if (base == 16) {
    write_str(2, "0x");
  }

  if (idx == 0) {
    write_char('0');
  } else {
    for (int i = idx - 1; i >= 0; i--) /* go backward through array */
    {
      write_char(num_basis[number_chars[i]]);
    }
  }
}
#else // only support hex output
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
#endif // FW_SUPPORT_NUMBER_BASES

fcell_t parse_number(uint8_t len, char *tib,
                     fcell_t *number, fcell_t *errcode)
{
  bool err = false;
  char c;

  fcell_t neg = 1;
  fcell_t num = 0;
#ifdef FW_SUPPORT_NUMBER_BASES
  uint8_t base = ctx_vars->base; // hardcode hex base
#else
  uint8_t base = 10; // hardcode hex base
#endif // FW_SUPPORT_NUMBER_BASES

  // Check for 0x hex prefix, elide if found
  uint8_t idx = 0;

  if (tib[idx] == '-') {
    neg = -1;
    idx++;
  }

  if ( len >= (2 + idx) && tib[idx+0] == '0' && tib[idx+1] == 'x' ) {
    idx += 2;
    base = 16;
  }

  while (idx < len) {
    c = tib[idx++];
    err = true;

    for (int i = 0; i < base; i++) {
      if (num_basis[i] == c) {
        num = (base * num) + i;
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


