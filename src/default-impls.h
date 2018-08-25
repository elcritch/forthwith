
#ifndef _DEFAULT_IMPLS_H_
#define _DEFAULT_IMPLS_H_

#define accessor_name(struct_name)              \
  get_ ## struct_name ## _addr

extern void* accessor_name(ctx)();
extern void* accessor_name(ctx_vars)();
extern void* accessor_name(ctx_psp)();
extern void* accessor_name(ctx_rsp)();

#ifndef FW_CUSTOM_STATE_FUNCS
// improvement: load "reg file" from mem, not sure if x86_64 does that...
/* load_const(s1, $ctx_psp);                    \ */
/* store_addr_off(s1, psp, $stack_of_head);  \ */
#define save_state() \
  call( __label( accessor_name(ctx_psp) ) );   \
  store_addr_off(xrax, psp, $stack_of_head);  \
  call( __label( accessor_name(ctx_rsp) ) );   \
  store_addr_off(xrax, rsp, $stack_of_head);  \
  call( __label( accessor_name(ctx_regs) ) );    \
  store_addr_off(xrax, ip, $ctx_regs_of_ip);      \
  store_addr_off(xrax, x, $ctx_regs_of_x);      \
  store_addr_off(xrax, w, $ctx_regs_of_w)

#define load_state() \
  call( __label( accessor_name(ctx_psp) ) );   \
  load_addr_off(psp, xrax, $stack_of_head);     \
  load_addr_off(bpsp, xrax, $stack_of_base);      \
  call( __label( accessor_name(ctx_rsp) ) );     \
  load_addr_off(rsp, xrax, $stack_of_head);     \
  load_addr_off(brsp, xrax, $stack_of_base);      \
  call( __label( accessor_name(ctx_regs) ) );      \
  load_addr_off(ip, xrax, $ctx_regs_of_ip);       \
  load_addr_off(x, xrax, $ctx_regs_of_x);       \
  load_addr_off(w, xrax, $ctx_regs_of_w)

#endif // FW_CUSTOM_STATE_FUNCS

#endif // _DEFAULT_IMPLS_H_