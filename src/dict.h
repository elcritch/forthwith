
#ifndef _FW_DICT_H_
#define _FW_DICT_H_

#ifdef __cplusplus
extern "C" {
#endif

#ifndef _fword_t
#define _fword_t
typedef struct forth_word fword_t;
#endif // fword_t

fcell_xt *forth_alloc_var();
fcell_xt *forth_alloc_var_len(fcell_t len);

fword_t* alloc_dict();
char* alloc_string(uint8_t len);

// Helpers
fword_t* dict_create(uint8_t mask, uint8_t len, char *name, fcell_xt *body);
fword_t* dict_find(int8_t len, char *name);
fword_t* dict_lookup(fcell_xt addr);
fcell_xt dict_cfa(fword_t *entry);
void dict_add(fword_info_t *entry);
void dict_print();

#ifdef __cplusplus
}
#endif

#endif // _FW_DICT_H_

