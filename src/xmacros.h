
#ifdef forth_primitive
#undef forth_primitive
#endif

#ifdef forth_variable
#undef forth_variable
#endif

#ifdef FORTH_DEFINE_PRIMITIVES
// implement the basic definition primitive
#define forth_primitive(_name_str, _name_len, mask, func, _comment, BLOCK) \
  fw_call func(FORTH_REGISTERS) BLOCK

#define forth_colon(_name_str, _name_len, mask, func, _comment, BLOCK)

#define forth_docall(name_str, name_len, mask, func, comment, lbl) \
  forth_primitive(name_str, name_len, mask, func, comment, { \
      calc_addr_off(x, xaddr, __label(lbl));               \
    call(docall00); \
    jump(next); \
  })

/* #define forth_variable(name, _name_len, struct_name, member_name, offset, default)  */

// TODO: fix or remove
#define forth_variable(name, _name_len, struct_name, member_name, offset, default) \
  forth_primitive( #name, name_len, f_normal, var_ ## name, _comment, { \
    pushd(tos);                                                         \
    load_const(x, $ ## struct_name);                                    \
    load_addr_off(x, x, $ctx_of_ ## member_name);                       \
    calc_addr_off(tos, x, offset);                                      \
  })

#endif // FORTH_DEFINE_PRIMITIVES


#ifdef FORTH_DEFINE_DICT_ENTRIES

#define forth_primitive(name_str, name_len, mask, func, _comment, _BLOCK) \
  dict_create(mask, name_len, name_str, (fcell_xt*)&func);

#define forth_variable(name, name_len, struct_name, member_name, offset, default) \
  dict_create(F_NORMAL, name_len, #name, (fcell_xt*)&var_ ## name);

#endif // FORTH_DEFINE_DICT_ENTRIES

#ifndef FORTH_STACK_PRIMS
#define FORTH_STACK_PRIMS

#ifndef FORTHWITH_NO_CHECKS
#define check(cond, err_code) if (cond) { jump(doabortsof); }
#else
#define check(cond, err_code)
#endif // FORTHWITH_NO_CHECKS

#define pushd(reg)                                       \
  _pushd(reg)

#define popd(reg) \
  check(psp == bpsp, FW_ERR_STACKUNDERFLOW);  \
  _popd(reg)

#define pushr(reg)                                         \
  _pushr(reg)

#define popr(reg)                                              \
  check(rsp > brsp, FW_ERR_STACKUNDERFLOW);             \
  _popr(reg)


#endif // FORTH_STACK_PRIMS

