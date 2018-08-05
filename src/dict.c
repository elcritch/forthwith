
typedef struct forth_word fword_t;

struct forth_word {
  fword_t *prev;
  uint_t meta;
  fcell_xt *body;
  char *name;
};

fword_t* dict_create(forth_ctx* ctx, int8_t len, char *name) {
  // make new entry dict head
  fword_t* next_word = ctx->dict_head + 1;
  next_word->prev = ctx->dict_head;
  next_word->len = ctx->len;
  memcpy(next_word->name, name, len);

  // update dict head
  ctx->dict_head = next_word;
  return
}

/* FIND (name? – address). */
fword_t* find(int8_t len, char *name) {
  // Load dictionary pointer
  fword_t* word_ptr = ctx->dict_curr;

  // Iterate over words, looking for match
  while (word_ptr != NULL) {
    word = *word_ptr;
    if (word.len == len) {
      int8_t i;
      for (i = 0; i < len; i++) {
        if (name[i] != word.name)
          break;
      }
      // word found
      if (i == len)
        return word_ptr;
    }

    // no match
    word_ptr = word.prev;
  }
}

/* create new var in user stack */
#define FORTH_COMMA ",", f_normal // ( n -- )
fw_call comma(FORTH_REGISTERS)
{
  x = user_head;
  *x = tos;
  user_head += sizeof(fcell_t);
  popd(tos);
  jump(next);
}

/* create new var in dict */
#define FORTH_CHAR_COMMA "c,", f_normal // ( c -- )
fw_call char_comma(FORTH_REGISTERS)
{
  x = Global(variable_stack);
  *x = tos;
  Global(variable_stack) += sizeof(char);
  popd(tos);
  jump(next);
}

#define FORTH_LIT "lit", f_normal // ( -- )
fw_call lit(FORTH_REGISTERS)
{
  pushd(tos); // ??
  tos = *ip; // ??
  jump(next);
}

#define FORTH_LBRAC "[", f_immed // ( -- )
fw_call lbrac(FORTH_REGISTERS)
{
  ctx->immediate = true;
  jump(next);
}

#define FORTH_RBRAC  "]", ~ f_immed // ( -- )
fw_call rbrac(FORTH_REGISTERS)
{
  ctx->immediate = false;
  jump(next);
}

/* primitive 'count',count */
#define FORTH_COUNT  "count", f_normal // ( -- )
fw_call count(FORTH_REGISTERS)
{
  // ??
  w = (uint8_t)tos;
  tos += 1;
  push(tos);
  tos = w;
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

