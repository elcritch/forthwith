
#include "forthwith.h"
#include <stdlib.h>
#include <string.h>

fword_t* dict_create(int8_t len, char *name) {
  // 'allocate' new entry in dict head
  fword_t* next_word = ctx->dict_head + sizeof(fword_t) + len;

  // make new entry dict head
  if (ctx->dict_head != ctx->dict_base)
    next_word->prev = ctx->dict_head;
  else
    next_word->prev = NULL;

  next_word->len = len;
  memcpy(&next_word->name, name, len);

  // update dict head
  ctx->dict_head = next_word;
  return next_word;
}

/* FIND (name? – address). */
fword_t* dict_find(fw_ctx_t *ctx, int8_t len, char *name) {
  // Load dictionary pointer
  fword_t* word_ptr = ctx->dict_head;

  // Iterate over words, looking for match
  while (word_ptr != NULL) {
    fword_t word = *word_ptr;
    if (word.len == len) {
      int8_t i;
      for (i = 0; i < len; i++) {
        if (name[i] != *(&word.name + i) )
          break;
      }
      // word found
      if (i == len)
        return word_ptr;
    }

    // no match
    word_ptr = word.prev;
  }
  return NULL;
}

static bool is_whitespace(char c) {
  return c == '\0' | c == ' ' | c == '\t' | c == '\r' | c == '\n';
}

void parse_word() {
  fcell_t idx = ctx_vars.tib_idx;
  char   *tib = ctx_vars.tib_str;
  uint8_t len = ctx_vars.tib_len;

  uint8_t word_start;
  char   c;

whitespace:
  while ((c = tib[idx]) & (idx < len) & is_whitespace(c))
    idx++;

backcomment:
  if (c == '\\') {
    while ((c = tib[idx]) & c != '\n')
      idx++;
    goto whitespace;
  }

parcomment:
  if (c == '(') {
    while ((c = tib[idx]) & c != ')')
      idx++;
    goto whitespace;
  }

word:
  word_start = idx++;
  while ((c = tib[idx]) & (idx < len) & !is_whitespace(c))
    idx++;

  // save the new tib idx
  ctx_vars.tib_idx = idx;
  // push word addr
  forth_push(tib + word_start);
  // push word count
  forth_push(idx - word_start);
}

const char num_basis[] = "-0123456789ABCDEF";

void parse_number() {
  uint8_t base = (uint8_t)ctx_vars.base;
  uint8_t len = (uint8_t)forth_pop();
  char *addr = (char *)forth_pop();

  uint8_t idx = 0;
  bool err = false;
  fcell_t num = 0;

  while ((c = tib[idx]) & (idx < len) & !err) {
    err = true;
    for (int i = 0; i < base; i++) {
      if (num_basis[i] == c) {
        num = base * num + i - 1;
        err = false;
        break;
      }
    }
  }

  forth_push(num);
  forth_push((uint8_t)err);
}
