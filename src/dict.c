
typedef struct forth_word fword_t;

struct forth_word {
  fword_t *prev;
  int8_t len;
  char *name;
  fcell_xt *body;
};

fword_t* DictionaryHead = NULL;

/* FIND (name? – address). */
fword_t* find(int8_t len, char *name) {
  // Load dictionary pointer
  fword_t* word_ptr = DictionaryHead;

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

/* Primitive "," ( n -- ) ~ comma, create new var in dict */
forth_call comma(FORTH_REGISTERS) {
  x = Global(variable_stack);
  *x = tos;
  Global(variable_stack) += sizeof(fcell_t);
  popd(tos);
  jump(next);
}

/* Primitive "c," ( c -- ) ~ comma, create new var in dict */
forth_call comma(FORTH_REGISTERS) {
  x = Global(variable_stack);
  *x = tos;
  Global(variable_stack) += sizeof(char);
  popd(tos);
  jump(next);
}

primitive 'lit',lit
/* Primitive "lit" ( -- ) ~ comma, create new var in dict */
forth_call lit(FORTH_REGISTERS) {
  pushd(tos); // ??
  tos = *ip; // ??
  jump(next);
}

/* primitive: "[" f_immed, lbrac */
forth_call lbrac(FORTH_REGISTERS) {
{
  Global(state) = 0;
  jump(next);
}

/* primitive: "]" ~ f_immed, rbrac */
forth_call rbrac(FORTH_REGISTERS) {
  Global(state) = 1;
  jump(next);
}

/* primitive 'count',count */
forth_call count(FORTH_REGISTERS) {
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

