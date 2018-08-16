
#include "forthwith.h"
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

void parse_word(uint8_t idx, uint8_t len, char *tib,
               fcell_t *word_start, fcell_t *word_stop);

void parse_number(uint8_t base, uint8_t len, char *addr,
                 fcell_t *number, fcell_t *err);


__fw_noinline__ 
fw_call docfa() {
  fword_t *entry = (fword_t*)forth_pop();
  forth_push((fcell_t)entry->body);
}

__fw_noinline__ 
fw_call doemit() {
  char c = (char)forth_pop();

  uint8_t idx = ctx->vars->tib_idx;
  char   *tib = ctx->vars->tib_str;
  uint8_t len = ctx->vars->tib_len;

  if (idx < len) {
  } else {
  }
}

__fw_noinline__ 
fw_call doword() {
  uint8_t idx = ctx->vars->tib_idx;
  uint8_t len = ctx->vars->tib_len;
  char   *tib = ctx->vars->tib_str;
  char *word_start;
  char *word_stop;

  idx = parse_word(idx, len, tib, &word_start, &word_stop);

  ctx->vars->tib_idx = idx;

  forth_push( (fcell_t)word_start);
  forth_push( (fcell_t)(word_stop - word_start));
}

__fw_noinline__ 
fw_call donumber() {
  fcell_t err = 0;
  uint8_t base = (uint8_t)ctx->vars->base;
  uint8_t len = (uint8_t)forth_pop();
  char *addr = (char *)forth_pop();
  fcell_t number = 0;

  parse_number(base, len, addr, &number, &err);

  forth_push(number);
  forth_push(err);
}

#ifndef FORTH_OVERRIDE_PARSERS

static bool is_whitespace(char c) {
  return (c == '\0') | (c == ' ') | (c == '\t') | (c == '\r') | (c == '\n');
}

int parse_word(uint8_t idx, uint8_t len, char *tib,
                   fcell_t *word_start, fcell_t *word_stop)
{

  uint8_t word_start;
  char c;

  if (idx >= len)
    return 0;

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
  word_start = idx++;
  while ((c = tib[idx]) && ((idx < len) & !is_whitespace(c)))
    idx++;

  *word_start = (fcell_t)(tib + word_start);
  *word_stop = (fcell_t)(tib + idx);
  return word_stop - word_start;
}

const char num_basis[] = "0123456789ABCDEF";

void parse_number(uint8_t base, uint8_t len, char *addr,
                 fcell_t *number, fcell_t *errcode)
{
  uint8_t idx = 0;
  fcell_t neg = 1;
  bool err = false;
  fcell_t num = 0;
  char c;

  while (idx < len) {
    c = tib[idx++];
    err = true;

    if (c == '-') {
      neg = -1;
      continue;
    }

    for (int i = 0; i < base; i++) {
      if (num_basis[i] == c) {
        num = base * num + i;
        err = false;
        break;
      }
    }

    if (err) break;
  }

  *number = num * neg;
  *errcode = err;
}

#endif // #ifndef FORTH_OVERRIDE_PARSERS


