
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
  fword_t* word_ptr = DictionaryHead;
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

