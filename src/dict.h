
#ifndef _FW_DICT_H_
#define _FW_DICT_H_

#ifndef fword_t
typedef struct forth_word fword_t;
#endif // fword_t

struct forth_word {
  fword_t *prev;
  fcell_xt *body;
  uint8_t meta;
  uint8_t len;
  char *name;
};

fcell_xt *forth_alloc_var();
fcell_xt *forth_alloc_var_len(fcell_t len);

fword_t* alloc_dict();
char* alloc_string(uint8_t len);

// Helpers 
fword_t* dict_create(uint8_t mask, uint8_t len, char *name, fcell_xt *body);
fword_t* dict_find(int8_t len, char *name);

#endif // _FW_DICT_H_

