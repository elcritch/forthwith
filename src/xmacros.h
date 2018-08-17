
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
#define check(cond, err_code) if (cond) { x = err_code; jump(abort); }
#else
#define check(cond, err_code)
#endif // FORTHWITH_NO_CHECKS

#define pushd(reg)                                       \
  check(psp < (ctx->psp_base + ctx->psp_size), FW_ERR_STACKOVERFLOW); \
  _pushd(reg)
  /* *(psp++) = reg; */

#define popd(reg) \
  check(psp > ctx->psp_base, FW_ERR_STACKUNDERFLOW);  \
  _popd(reg)
  /* reg = *(psp--); */

#define pushr(reg)                                         \
  check(rsp > (ctx->rsp_base + ctx->rsp_size), FW_ERR_STACKOVERFLOW); \
  _pushr(reg)
  /* *(rsp++) = reg; */

#define popr(reg)                                              \
  check(rsp < ctx->rsp_base, FW_ERR_STACKUNDERFLOW);    \
  _popr(reg)
  /* reg = *(rsp--); */

#ifdef FASTR_USERSTACK_IN_REGISTER

  #define user_here u
  #define pushu(reg)                                                     \
    check(u > (ctx->rsp_base + ctx->rsp_size), FW_ERR_STACK_OVERFLOW); \
    _pushu(reg)
    /* *(u++) = reg; */
  #define popu(reg)                                           \
    check(u < (ctx->user_base), FW_ERR_STACK_UNDERFLOW); \
    _popu(reg)
    /* reg = *(u--); */
#else // NO FASTR_USERSTACK_IN_REGISTER

#define user_here  ctx->user_head
  #define pushu(reg)                                                      \
    check(ctx->user_head > (ctx->user_base + ctx->user_size), FW_ERR_STACK_OVERFLOW); \
    *(ctx->user_head++) = reg;
  #define popu(reg)                                           \
    check(ctx->user_head < (ctx->user_base), FW_ERR_STACK_UNDERFLOW); \
    *(ctx->user_head--) = reg;

#endif // FASTR_USERSTACK_IN_REGISTER


#endif // FORTH_STACK_PRIMS

