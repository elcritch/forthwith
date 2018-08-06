
#include "forthwith.h"
#include <stdlib.h>
#include <string.h>

fword_t* dict_create(fw_ctx_t* ctx, int8_t len, char *name) {
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
fword_t* find(fw_ctx_t *ctx, int8_t len, char *name) {
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

/* create new var in user stack */
#define FORTH_COMMA ",", f_normal // ( n -- )
fw_call comma(FORTH_REGISTERS)
{
  *user_here = (IP_t)tos;
  user_here += sizeof(fcell_t*);
  popd(tos);
  jump(next);
}

/* create new var in dict */
#define FORTH_CHAR_COMMA "c,", f_normal // ( c -- )
fw_call char_comma(FORTH_REGISTERS)
{
  *user_here = (IP_t)tos;
  user_here += sizeof(fcell_t*);
  popd(tos);
  jump(next);
}

#define FORTH_LIT "lit", f_normal // ( -- )
fw_call lit(FORTH_REGISTERS)
{
  pushd(tos); // ??
  tos = (fcell_t) *ip; // ??
  jump(next);
}

#define FORTH_LBRAC "[", f_immed // ( -- )
fw_call lbrac(FORTH_REGISTERS)
{
  ctx->immediate = 1;
  jump(next);
}

#define FORTH_RBRAC  "]", ~ f_immed // ( -- )
fw_call rbrac(FORTH_REGISTERS)
{
  ctx->immediate = 0;
  jump(next);
}

/* primitive 'count',count */
#define FORTH_COUNT  "count", f_normal // ( -- )
fw_call count(FORTH_REGISTERS)
{
  // ??
  w = (fcell_xt)tos;
  tos += 1;
  pushd(tos);
  tos = (fcell_t)w;
  jump(next);
}

/*
 COLON:
 WORD ( Read the next word into the stack as a string )
   CREATE ( Create a new dictionary entry named after the string )
   ’ DOCOL , ( Compile the address of DOCOL )
   [ ( Enter compilation mode )
     EXIT

SEMICOLON: IMMEDIATE
     ’ EXIT , ( Compile the address of EXIT at the end )
     ] ( Exit compilation mode )
   EXIT
*/

