
#include "forthwith.h"
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

fcell_xt *forth_alloc_var_len(fcell_t len) {
  // this incrs in multipls of IP_t size
  ctx->user->head = ctx->user->head + len;
  return (fcell_xt *)ctx->user->head;
}

fcell_xt *forth_alloc_var() {
  return (fcell_xt *)forth_alloc_var_len(1);
}

fword_t* alloc_dict() {
  // 'allocate' new entry in dict head
  fword_t* curr_dict = ctx->dict->head;
  fword_t* next_dict = ctx->dict->head + 1;

  // update dict head
  next_dict->prev = curr_dict;
  ctx->dict->head = next_dict;

  return curr_dict;
}

__fw_noinline__ 
char* alloc_string(uint8_t len) {
  // 'allocate' new entry in dict head
  char* curr_string = ctx->strings->head;
  char* next_string = ctx->strings->head + len + 1; // for extra null term and len

  // update dict head
  ctx->strings->head = next_string;
  curr_string[len] = '\0'; // just in case 

  return curr_string;
}

__fw_noinline__ 
fword_t* dict_create(uint8_t mask, uint8_t len, char *name, fcell_xt *body) {

  fword_t *entry = alloc_dict();

  entry->body = body;
  entry->meta = mask;
  entry->len = len;
  entry->name = alloc_string(len);

  memcpy(entry->name, name, len);

  return entry;
}

/* FIND (name? – address). */
__fw_noinline__ 
fword_t* dict_find(int8_t len, char *name) {
  // Load dictionary pointer
  fword_t* word_ptr = ctx->dict->head;

  // Iterate over words, looking for match
  while (word_ptr != NULL) {
    fword_t word = *word_ptr;
    if (word.len == len) {
      int8_t i;
      for (i = 0; i < len; i++) {
        if (name[i] != word.name[i])
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

