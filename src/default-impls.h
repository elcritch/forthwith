
#ifndef _DEFAULT_IMPLS_H_
#define _DEFAULT_IMPLS_H_

#ifdef __MACH__
#define CELL_FMT "%lld"
#elif __arm__
#define CELL_FMT "%d"
#else
#define CELL_FMT "%ld"
#endif

/* Forth "native C" function return type */
#ifndef FW_CUSTOM_ATTRIBUTES
#define __fw_noinline__ __attribute__ ((noinline))
#define fw_call void __attribute__ ((noinline))
#endif // FW_CUSTOM_ATTRIBUTES

/* #define FORTHWITH_NO_CHECKS */

#define call_ifless(x, y, lbl) cmp_reg(x, y); _jump_gt( 1f ); call( lbl ); __asm__("1: ")

#ifndef FORTHWITH_NO_CHECKS
#define check(a, b, errfunc)                 \
  call_ifless(a, b, errfunc)
#else
#define check(a, b, errfunc)
#endif // FORTHWITH_NO_CHECKS

#define _checkd() check(psp, bpsp, dosuf)
#define _checkr() check(rsp, brsp, doruf)

#define _pushd_cell(reg) store_addr(psp, reg); add_const(psp, $word_sz)
#define _popd_cell(reg)  sub_const(psp, $word_sz); load_addr(reg, psp)

#define _pushr(reg) store_addr(rsp, reg); add_const(rsp, $word_sz)
#define _popr(reg)  sub_const(rsp, $word_sz); load_addr(reg, rsp)

#define _pushu(reg) store_addr(u, reg); add_const(u, $word_sz)
#define _popu(reg)  sub_const(u, $word_sz); load_addr(reg, u)

// Pushing and Popping
#define _pushd_0
#define _pushd_1 _pushd_cell(s1);
#define _pushd_2 _pushd_cell(s2); _pushd_1;
#define _pushd_3 _pushd_cell(s3); _pushd_2;
#define _pushd_4 _pushd_cell(s4); _pushd_3;
#define _pushd(n) _pushd_ ## n

#define _popd_0
#define _popd_1          _popd_cell(s1); _checkd()
#define _popd_2 _popd_1; _popd_cell(s2); _checkd()
#define _popd_3 _popd_2; _popd_cell(s3); _checkd()
#define _popd_4 _popd_3; _popd_cell(s4); _checkd()
#define _popd(n) _popd_ ## n

#define pushd(n)                                \
  _pushd(n)

#define popd(n)                                 \
  _popd(n)

#define pushr(reg)                              \
  _pushr(reg)

#define popr(reg)                               \
  _popr(reg); \
  _checkr()

// Global State Accessors
#define accessor_name(struct_name)              \
  get_ ## struct_name ## _addr

extern void* accessor_name(ctx)();
extern void* accessor_name(ctx_vars)();
extern void* accessor_name(ctx_psp)();
extern void* accessor_name(ctx_rsp)();

#ifndef FW_CUSTOM_STATE_FUNCS

#ifdef FW_STATE_FUNCS_NO_BASES
#define load_state()                            \
  call(  accessor_name(ctx_psp)  );             \
  load_addr_off(psp, xresult, $stack_of_head);  \
  call(  accessor_name(ctx_rsp)  );             \
  load_addr_off(rsp, xresult, $stack_of_head);  \
  call(  accessor_name(ctx_regs)  );            \
  load_addr_off(ip, xresult, $ctx_regs_of_ip);  \
  load_addr_off(x, xresult, $ctx_regs_of_x);    \
  load_addr_off(w, xresult, $ctx_regs_of_w)

#define save_state()                            \
  call(  accessor_name(ctx_psp)  );             \
  store_addr_off(xresult, psp, $stack_of_head); \
  call(  accessor_name(ctx_rsp)  );             \
  store_addr_off(xresult, rsp, $stack_of_head); \
  call(  accessor_name(ctx_regs)  );            \
  store_addr_off(xresult, ip, $ctx_regs_of_ip); \
  store_addr_off(xresult, x, $ctx_regs_of_x);   \
  store_addr_off(xresult, w, $ctx_regs_of_w)

#else // FW_STATE_FUNCS_DEFAULT
#define load_state() \
  call(  accessor_name(ctx_psp)  );   \
  load_addr_off(psp, xresult, $stack_of_head);     \
  load_addr_off(bpsp, xresult, $stack_of_base);      \
  call(  accessor_name(ctx_rsp)  );     \
  load_addr_off(rsp, xresult, $stack_of_head);     \
  load_addr_off(brsp, xresult, $stack_of_base);      \
  call(  accessor_name(ctx_regs)  );      \
  load_addr_off(ip, xresult, $ctx_regs_of_ip);       \
  load_addr_off(x, xresult, $ctx_regs_of_x);       \
  load_addr_off(w, xresult, $ctx_regs_of_w)

#define save_state()                            \
  call(  accessor_name(ctx_psp)  );             \
  store_addr_off(xresult, psp, $stack_of_head); \
  call(  accessor_name(ctx_rsp)  );             \
  store_addr_off(xresult, rsp, $stack_of_head); \
  call(  accessor_name(ctx_regs)  );            \
  store_addr_off(xresult, ip, $ctx_regs_of_ip); \
  store_addr_off(xresult, x, $ctx_regs_of_x);   \
  store_addr_off(xresult, w, $ctx_regs_of_w)

#endif // FW_STATE_FUNCS_XXX

#endif // FW_CUSTOM_STATE_FUNCS



#endif // _DEFAULT_IMPLS_H_
