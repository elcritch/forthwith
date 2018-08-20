
// ================================================================== //
// XMACROS_H
// ================================================================== //
#ifndef _XMACROS_H_
#define _XMACROS_H_

#define _GET_NTH_ARG(_1, _2, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12, _13, _14, _15, _16, _17, _18, _19, _20, _21, N, ...) N
#define COUNT_VARARGS(...) _GET_NTH_ARG(__VA_ARGS__, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1)

/* #define XT(n) (fcell_xt) xt_ ## n */
#define XT(n) (fcell_xt) & xt_ ## n
#define XCELLS(n) (fcell_xt)(n * 8)
#define XTV(n) (fcell_xt) var_ ## n

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

// ================================================================== //
// FORTH_DEFINE_PRIMITIVES
// ================================================================== //
#ifdef FORTH_DEFINE_PRIMITIVES

// implement the basic definition primitive
#define forth_primitive(_name_str, _name_len, mask, func, _comt, BLOCK) \
  fw_call func(FORTH_REGISTERS) BLOCK \
  fcell_xt xt_ ## func = (fcell_xt)&func

#define forth_core(_name_str, _name_len, mask, func, _comt, BLOCK) \
  fw_call func(FORTH_REGISTERS) BLOCK \
  fcell_xt xt_ ## func = (fcell_xt)&func

// must be init'ed at bootstrap
#define forth_word(name_str, name_len, mask, lbl, _comt, WORDS...) \
  fcell_xt xt_ ## lbl[ COUNT_VARARGS(WORDS) + 1 ];
  /* fcell_xt xt_ ## lbl = NULL */

#define forth_docall(name_str, name_len, mask, func, comment, lbl) \
  forth_primitive(name_str, name_len, mask, func, comment, { \
    calc_addr_off(x, xaddr, __label(lbl)); \
    call(call00); \
    jump(next); \
  })

// TODO: fix or remove
#define forth_variable(name, _name_len, struct_name, member_name, offset) \
  forth_primitive( #name, name_len, f_normal, var_ ## name, _comment, { \
    load_const(x, $ ## struct_name);                                    \
    load_addr_off(x, x, $ ## struct_name ## _of_ ## member_name);       \
    calc_addr_off(s1, x, offset);                                      \
    pushd(1);                                                         \
  })
#endif // FORTH_DEFINE_PRIMITIVES


// ================================================================== //
// FORTH_DEFINE_DICT_ENTRIES
// ================================================================== //
#ifdef FORTH_DEFINE_DICT_ENTRIES

#define forth_primitive(name_str, name_len, mask, func, _comment, _BLOCK)
  /* dict_create(mask, name_len, name_str, (fcell_xt*)&func) */

#define forth_core(name_str, name_len, mask, func, _comment, _BLOCK) \
  dict_create(mask, name_len, name_str, (fcell_xt*)&func)

#define forth_variable(name, name_len, struct_name, member_name, offset) \
  dict_create(F_NORMAL, name_len, #name, (fcell_xt*)&var_ ## name)

// https://codecraft.co/2014/11/25/variadic-macros-tricks/

#define forth_word(name_str, name_len, mask, lbl, _comt, WORDS...)  \
  fcell_xt fw_ ## lbl[ COUNT_VARARGS(WORDS) + 1 ] = { (fcell_xt)xt_docolon, WORDS }; \
  memcpy(xt_ ## lbl, fw_ ## lbl,  sizeof(xt_ ## lbl)); \
  dict_create(F_NORMAL, name_len, name_str, (fcell_xt*)&xt_ ## lbl)

#define forth_docall(name_str, name_len, mask, func, comment, lbl) \
  dict_create(F_NORMAL, name_len, name_str, (fcell_xt*)&func)

#endif // FORTH_DEFINE_DICT_ENTRIES


// ================================================================== //
// FORTH_DEFINE_HEADERS
// ================================================================== //
#ifdef FORTH_DEFINE_HEADERS

#define forth_primitive(name_str, name_len, mask, func, _comment, _BLOCK) \
  extern fcell_xt xt_ ## func

#define forth_core(name_str, name_len, mask, func, _comment, _BLOCK)  \
  extern fcell_xt xt_ ## func

#define forth_variable(name, name_len, struct_name, member_name, offset)

#define forth_word(name_str, name_len, mask, lbl, _comt, WORDS...) \
  extern fcell_xt xt_ ## lbl[ COUNT_VARARGS(WORDS) + 1 ]

#define forth_docall(name_str, name_len, mask, func, comment, lbl)

#endif // FORTH_DEFINE_HEADERS

// ================================================================== //
// Forth Stack Primitives
// ================================================================== //
#ifndef FORTH_STACK_PRIMS
#define FORTH_STACK_PRIMS

#define FORTHWITH_NO_CHECKS

#ifndef FORTHWITH_NO_CHECKS
  #define check(cond, errfunc)                                             \
    if ( cond ) {calc_addr_off(x, xaddr, __label(errfunc)); call(call00);}
#else
  #define check(cond, errfunc)
#endif // FORTHWITH_NO_CHECKS

#define pushd(n) \
  _pushd(n)

#define popd(n) \
  check(_checkd, dosuf);                         \
  _popd(n)

#define pushr(reg) \
  _pushr(reg)

#define popr(reg) \
  check(_checkr, doruf); \
  _popr(reg)

#endif // FORTH_STACK_PRIMS

