
// ================================================================== //
// XMACROS_H
// ================================================================== //
#ifndef _XMACROS_H_
#define _XMACROS_H_
#define _GET_NTH_ARG(_1, _2, _3, _4, _5, _6, _7, _8, _9, N, ...) N
#define COUNT_VARARGS(...) _GET_NTH_ARG(__VA_ARGS__, 8, 7, 6, 5, 4, 3, 2, 1)
#endif // _XMACROS_H_

#ifdef forth_primitive
#undef forth_primitive
#endif

#ifdef forth_core
#undef forth_core
#endif

#ifdef forth_variable
#undef forth_variable
#endif

#ifdef forth_word
#undef forth_word
#endif

#ifdef forth_docall
#undef forth_docall
#endif

#define FW(n) (fcell_xt) xt_ ## n

// ================================================================== //
// FORTH_DEFINE_PRIMITIVES
// ================================================================== //
#ifdef FORTH_DEFINE_PRIMITIVES

// implement the basic definition primitive
#define forth_primitive(_name_str, _name_len, mask, func, _comt, BLOCK) \
  fw_call func(FORTH_REGISTERS) BLOCK \
  fcell_xt xt_ ## func = (fcell_xt)&func;

#define forth_core(_name_str, _name_len, mask, func, _comt, BLOCK) \
  fw_call func(FORTH_REGISTERS) BLOCK

#define forth_word(name_str, name_len, mask, lbl, _comt, WORDS...)

#define forth_docall(name_str, name_len, mask, func, comment, lbl) \
  forth_primitive(name_str, name_len, mask, func, comment, { \
      calc_addr_off(x, xaddr, __label(lbl));               \
    call(docall00); \
    jump(next); \
  })

// TODO: fix or remove
#define forth_variable(name, _name_len, struct_name, member_name, offset, default) \
  forth_primitive( #name, name_len, f_normal, var_ ## name, _comment, { \
    pushd(tos);                                                         \
    load_const(x, $ ## struct_name);                                    \
    load_addr_off(x, x, $ctx_of_ ## member_name);                       \
    calc_addr_off(tos, x, offset);                                      \
  })
#endif // FORTH_DEFINE_PRIMITIVES


// ================================================================== //
// FORTH_DEFINE_DICT_ENTRIES
// ================================================================== //
#ifdef FORTH_DEFINE_DICT_ENTRIES

#define forth_primitive(name_str, name_len, mask, func, _comment, _BLOCK) \
  dict_create(mask, name_len, name_str, (fcell_xt*)&func);

#define forth_core(name_str, name_len, mask, func, _comment, _BLOCK) \
  dict_create(mask, name_len, name_str, (fcell_xt*)&func);

#define forth_variable(name, name_len, struct_name, member_name, offset, default) \
  dict_create(F_NORMAL, name_len, #name, (fcell_xt*)&var_ ## name);

// https://codecraft.co/2014/11/25/variadic-macros-tricks/

#define forth_word(name_str, name_len, mask, lbl, _comt, WORDS...)  \
  fcell_xt _fw_ ## lbl[ COUNT_VARARGS(WORDS) + 1] = { WORDS };              \
  dict_create(F_NORMAL, name_len, name_str, (fcell_xt*)&_fw_ ## lbl);

#define forth_docall(name_str, name_len, mask, func, comment, lbl)  

#endif // FORTH_DEFINE_DICT_ENTRIES


// ================================================================== //
// FORTH_DEFINE_HEADERS
// ================================================================== //
#ifdef FORTH_DEFINE_HEADERS

#define forth_primitive(name_str, name_len, mask, func, _comment, _BLOCK) \
  extern fcell_xt xt_ ## func;

#define forth_core(name_str, name_len, mask, func, _comment, _BLOCK)  \
  extern fcell_xt xt_ ## func;

#define forth_variable(name, name_len, struct_name, member_name, offset, default)

#define forth_word(name_str, name_len, mask, lbl, _comt, WORDS...)

#define forth_docall(name_str, name_len, mask, func, comment, lbl)  

#endif // FORTH_DEFINE_HEADERS

// ================================================================== //
// Forth Stack Primitives
// ================================================================== //
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

