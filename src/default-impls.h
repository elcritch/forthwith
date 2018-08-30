
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

#define accessor_name(struct_name)              \
  get_ ## struct_name ## _addr

extern void* accessor_name(ctx)();
extern void* accessor_name(ctx_vars)();
extern void* accessor_name(ctx_psp)();
extern void* accessor_name(ctx_rsp)();

#ifndef FW_CUSTOM_STATE_FUNCS

#ifdef FW_STATE_FUNCS_NO_BASES
#define save_state()                            \
  call(  accessor_name(ctx_psp)  );             \
  store_addr_off(xresult, psp, $stack_of_head); \
  call(  accessor_name(ctx_rsp)  );             \
  store_addr_off(xresult, rsp, $stack_of_head); \
  call(  accessor_name(ctx_regs)  );            \
  store_addr_off(xresult, ip, $ctx_regs_of_ip); \
  store_addr_off(xresult, x, $ctx_regs_of_x);   \
  store_addr_off(xresult, w, $ctx_regs_of_w)

#define load_state()                            \
  call(  accessor_name(ctx_psp)  );             \
  load_addr_off(psp, xresult, $stack_of_head);  \
  call(  accessor_name(ctx_rsp)  );             \
  load_addr_off(rsp, xresult, $stack_of_head);  \
  call(  accessor_name(ctx_regs)  );            \
  load_addr_off(ip, xresult, $ctx_regs_of_ip);  \
  load_addr_off(x, xresult, $ctx_regs_of_x);    \
  load_addr_off(w, xresult, $ctx_regs_of_w)

#else // FW_STATE_FUNCS_DEFAULT
#define save_state() \
  call(  accessor_name(ctx_psp)  );   \
  store_addr_off(xresult, psp, $stack_of_head);  \
  call(  accessor_name(ctx_rsp)  );   \
  store_addr_off(xresult, rsp, $stack_of_head);  \
  call(  accessor_name(ctx_regs)  );    \
  store_addr_off(xresult, ip, $ctx_regs_of_ip);      \
  store_addr_off(xresult, x, $ctx_regs_of_x);      \
  store_addr_off(xresult, w, $ctx_regs_of_w)

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

#endif // FW_STATE_FUNCS_XXX

#endif // FW_CUSTOM_STATE_FUNCS



#endif // _DEFAULT_IMPLS_H_
