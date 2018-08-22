

#include "forthwith.h"
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

fw_call doprintstate() {

  for (fcell_t *i = ctx->rsp->base; i < ctx->rsp->head; i++)
    printf("-");

  printf("-> \t\t regs: ");
  fword_t *entry = dict_lookup((fcell_xt)ctx->regs->x);
  printf("x: %016p (%10s), ", ctx->regs->x, entry? entry->name : NULL);
  printf("ip: %016p, ", ctx->regs->ip);
  printf("w: %016p, ", ctx->regs->w);
  /* printf(" stacks: "); */
  /* printf("psp: %p, ", ctx->psp->head); */
  /* printf("rsp: %p, ", ctx->rsp->head); */
  printf("tib: %d - %016p (%-10s) ", ctx->vars->tib_idx, ctx->vars->tib_str, ctx->vars->tib_str + ( ctx->vars->tib_idx > ctx->vars->tib_len ? ctx->vars->tib_len : ctx->vars->tib_idx));

  printf(" --\t");

  printf("(");

  for (fcell_t *i = ctx->psp->base; i < ctx->psp->head; i++) {printf("%ld, ", *i);}

  printf(")");

  printf("\n");
  return;
}

// handle data stack underflow
__fw_noinline__
fw_call dosuf() {
  ctx->vars->error = FW_ERR_STACKUNDERFLOW;
  exit(ctx->vars->error);
}

// handle return stack underflow
__fw_noinline__
fw_call doruf(FORTH_REGISTERS) {
  ctx->vars->error = FW_ERR_RSTACKUNDERFLOW;
  exit(ctx->vars->error);
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
  printf("<<< docreate\n");
  fcell_t len = forth_pop();
  char *cstr = (char*)forth_pop();
  fcell_xt *here = forth_alloc_var();
  /* *here = xt_docolon; */
  fword_t *entry = dict_create(F_HIDDEN, len, cstr, here);
  forth_push((fcell_t)entry);
  printf(">>> docreate\n");
}

// ( n -- ) {*user}
__fw_noinline__
void docomma() {
  *ctx->user->head = forth_pop();
  /* printf("\tcomma: %016p -> %016p (%lld)\n", ctx->user->head, *ctx->user->head, *ctx->user->head); */
  forth_alloc_var();
}

// ( n -- ) {*user}
__fw_noinline__
void dosavehere() {
  forth_push(*ctx->user->head);
}

// ( n -- ) {*user}
__fw_noinline__
void doxmask() {
  fword_t *last_word = ctx->dict->head - 1;
  last_word->meta ^= forth_pop();
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
  fcell_t idx = ctx->vars->tib_idx;
  uint8_t len = ctx->vars->tib_len;
  char   *tib = ctx->vars->tib_str;
  char* word_start;
  char* word_stop;

  parse_word(idx, len, tib, &word_start, &word_stop);

#ifdef FW_TRACE
  printf("\tdoword:: idx: %d tib: %p wstart: %p, wstop: %p -- `", idx, tib, word_start, word_stop);
  for (int i = 0; i < (word_stop - word_start); i++) {
    printf("%c", word_start[i]);
  }
  printf("`\n");
#endif // FW_TRACE

  // Set results
  ctx->vars->tib_idx = word_stop - tib;
  forth_push( (fcell_t)word_start);
  forth_push( (fcell_t)(word_stop - word_start));
  forth_push( (fcell_t)(ctx->vars->tib_idx <= len ));
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

void write_str(uint8_t l, char *c) {
  uint8_t idx = ctx->vars->tob_idx;
  uint8_t len = ctx->vars->tob_len;

  for (uint8_t i = 0; i < l && (idx + i < len); i++) {
    write_char(c[i]);
  }
}

__fw_noinline__
void write_char(char c) {
  uint8_t idx = ctx->vars->tob_idx;
  uint8_t len = ctx->vars->tob_len;

  if (idx < len) {
    ctx->vars->tob_str[ctx->vars->tob_idx++] = c;
  }
}

__fw_noinline__
void write_number(fcell_t number)
{
  // Print Number
  write_char('0');
  write_char('x');

  uint8_t idx = 0;
  do {
    uint8_t basis_of = number & 0xF; 
    number = number >> (idx++ << 2);
    write_char(num_basis[basis_of]);
  } while (number);
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


