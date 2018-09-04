
#include "forthwith.h"
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

fcell_xt *forth_alloc_var_len(fcell_t len) {
  // this incrs in multipls of IP_t size
  ctx_user->head = ctx_user->head + len;
  return (fcell_xt *)ctx_user->head;
}

fcell_xt *forth_alloc_var() {
  return (fcell_xt *)forth_alloc_var_len(1);
}

fword_t* alloc_dict() {
  // 'allocate' new entry in dict head
  fword_t* curr_dict = ctx_dict->head;
  fword_t* next_dict = ctx_dict->head + 1;

  // update dict head
  next_dict->prev = curr_dict;
  ctx_dict->head = next_dict;

  return curr_dict;
}

__fw_noinline__ 
char* alloc_string(uint8_t len) {
  // 'allocate' new entry in dict head
  char* curr_string = ctx_strings->head;
  char* next_string = ctx_strings->head + len + 1; // for extra null term and len

  // update dict head
  ctx_strings->head = next_string;
  curr_string[len] = '\0'; // just in case 

  return curr_string;
}

#ifndef FW_CUSTOM_DICT_ADD
#define FW_CUSTOM_DICT_ADD
__fw_noinline__
void dict_add(fword_info_t *info) {
  dict_create(info->meta, info->len, info->name, (fcell_xt*) *info->body);
}
#endif // FW_CUSTOM_DICT_ADD

__fw_noinline__
fword_t* dict_create(uint8_t mask, uint8_t len, char *name, fcell_xt *body) {

  fword_t *entry = alloc_dict();

  entry->info.body = body;
  entry->info.meta = mask;
  entry->info.len = len;
  entry->info.name = alloc_string(len);

  memcpy(entry->info.name, name, len);

  return entry;
}

/* FIND (name? – address). */
__fw_noinline__ 
fword_t* dict_find(int8_t len, char *name) {
  // Load dictionary pointer
  fword_t* word_ptr = ctx_dict->head;

  /* printf("dict_find: start: %s\n", name); */

  // Iterate over words, looking for match
  while (word_ptr != NULL) {
    fword_info_t word = word_ptr->info;
    /* printf("dict_find: %s\n", word.name); */
    if (word.len == len) {
      int8_t i;
      for (i = 0; i < len; i++) {
        if (name[i] != word.name[i])
          break;
      }

      // word found
      if (i == len)
      {
        if (word.meta & F_HIDDEN)
        {
            /* printf("dict_find: hidden : %s meta: %d\n", word.name, word.meta); */
            return NULL;
        }

        /* printf("dict_find: found\n"); */
        return word_ptr;
      }
    }

    // no match
    word_ptr = word_ptr->prev;
  }
  return NULL;
}

/* lookup (name? – address). */
__fw_noinline__
fword_t* dict_lookup(fcell_xt addr) {
  // Load dictionary pointer
  fword_t* word_ptr = ctx_dict->head;

  // Iterate over words, looking for match
  while (word_ptr != NULL) {
    fword_info_t word = word_ptr->info;

    if (word.body == (fcell_xt*)addr) {
      return word_ptr;
    }

    // no match
    word_ptr = word_ptr->prev;
  }
  return NULL;
}

/* lookup (name? – address). */
__fw_noinline__
fcell_xt dict_cfa(fword_t *entry) {
  if (entry == NULL) {
    ctx_vars->error = FW_ERR_CFA;
    return 0;
  } else {
    if (entry->info.meta & F_WORD) {
      return (fcell_xt) entry->info.body;
    }
    else {
      return (fcell_xt) &entry->info.body;
    }
  }
}

/* lookup (name? – address). */
__fw_noinline__
void dict_print_body(fword_t *word_ptr) {
  if (word_ptr == NULL) {
  } else {
    write_str(3, ":: ");
    write_number((fcell_t)word_ptr->info.body);
    write_char(' ');
    write_str(word_ptr->info.len, word_ptr->info.name);
    write_char(' ');
    write_number(word_ptr->info.meta);
    write_char('\n');

    for (int i = 0; word_ptr->info.body[i+1] != (fcell_xt)xt_docolon; i++) {
      write_char(' ');
      write_number((fcell_t)&word_ptr->info.body[i]);
      write_str(3, " : ");
      write_number((fcell_t)word_ptr->info.body[i]);
      write_char('\n');
      if (i > 20) break;
    }
  }
}


/* FIND (name? – address). */
__fw_noinline__
void dict_print() {
  // Load dictionary pointer
  fword_t* word_ptr = ctx_dict->head - 1;

  // Iterate over words, looking for match
  while (word_ptr != NULL) {

    write_str(3, ":: ");
    write_number((fcell_t)word_ptr->info.body);
    write_char(' ');
    write_str(word_ptr->info.len, word_ptr->info.name);
    write_char(' ');
    write_number(word_ptr->info.meta);
    write_char('\n');

    word_ptr = word_ptr->prev;
  }

}

