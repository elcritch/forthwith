
#ifdef forth_primitive
#undef forth_primitive
#endif

#ifdef FORTH_DEFINE_PRIMITIVES
// implement the basic definition primitive
#define forth_primitive(_name_str, _name_len, mask, func, _comment, BLOCK) \
  fw_call func(FORTH_REGISTERS) BLOCK

#define forth_colon(_name_str, _name_len, mask, func, _comment, BLOCK) 

#define forth_variable(name, _name_len, struct_name, member_name, offset, default) 

// TODO: fix or remove
/* #define forth_variable(name, _name_len, struct_name, member_name, offset, default) \ */
/*   forth_primitive( #name, name_len, f_normal, var_ ## name, _comment, { \ */
/*     pushd(tos);                                                         \ */
/*     load_const(x, $ ## struct_name);                                    \ */
/*     load_addr_off(x, x, $ctx_of_ ## member_name);                       \ */
/*     calc_addr_off(tos, x, offset);                                      \ */
/*   }) */
  
#endif // FORTH_DEFINE_PRIMITIVES


#ifdef FORTH_DEFINE_DICT_ENTRIES

#define forth_primitive(name_str, name_len, mask, func, _comment, _BLOCK) \
  dict_create(mask, name_len, name_str, (fcell_xt*)&func);


#endif // FORTH_DEFINE_DICT_ENTRIES
