

#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#include "forthwith.h"

#define accessor(struct_name, var_name) \
  __fw_noinline__ \
  fcell_t accessor_ ## struct_name ## _st_ ## var_name(struct_name *t) { return (fcell_t)t->var_name; }

accessor(fw_ctx_regs_t, w);
accessor(fw_ctx_regs_t, x);
accessor(fw_ctx_regs_t, ip);

accessor(fw_ctx_vars_t, state);
accessor(fw_ctx_vars_t, error);
accessor(fw_ctx_vars_t, tib_idx);
accessor(fw_ctx_vars_t, tib_len);
accessor(fw_ctx_vars_t, tib_str);
accessor(fw_ctx_vars_t, tob_idx);
accessor(fw_ctx_vars_t, tob_len);
accessor(fw_ctx_vars_t, tob_str);

accessor(fw_ctx_stack_t, head);
accessor(fw_ctx_stack_t, base);
accessor(fw_ctx_stack_t, size);


#undef accessor
#define accessor(struct_name, var_name)                                 \
  printf(#struct_name " :: " #var_name " -> "CELL_FMT" \n", \
         accessor_ ## struct_name ## _st_ ## var_name(var_ptr_ ## struct_name)); \


extern fw_ctx_regs_t var_fw_ctx_regs_t;
extern fw_ctx_vars_t var_fw_ctx_vars_t;
extern fw_ctx_stack_t var_fw_ctx_stack_t;

extern fw_ctx_vars_t *var_ptr_fw_ctx_vars_t;
extern fw_ctx_regs_t *var_ptr_fw_ctx_regs_t;

fw_ctx_regs_t var_fw_ctx_regs_t = { 1, 2, 3 };
fw_ctx_vars_t var_fw_ctx_vars_t = { 1, 2, 3, 4, (char*)5, 6, 7, (char*)8 };
fw_ctx_stack_t var_fw_ctx_stack_t = { (fcell_xt)1, (fcell_xt)2, 3 };

fw_ctx_vars_t *var_ptr_fw_ctx_vars_t = &var_fw_ctx_vars_t; 
fw_ctx_regs_t *var_ptr_fw_ctx_regs_t = &var_fw_ctx_regs_t; 

__fw_noinline__
fcell_t examples_accessors_regs_ip() {
  return var_ptr_fw_ctx_regs_t->ip;
}

__fw_noinline__
void examples_accessors_regs() {
  fw_ctx_regs_t *var_ptr_fw_ctx_regs_t = &var_fw_ctx_regs_t; 
  accessor(fw_ctx_regs_t, x);
  accessor(fw_ctx_regs_t, ip);
  accessor(fw_ctx_regs_t, w);
}

__fw_noinline__
fcell_t examples_accessors_vars_tib_idx() {
  return var_ptr_fw_ctx_vars_t->tib_idx;
}

__fw_noinline__
void examples_accessors_vars() {
  accessor(fw_ctx_vars_t, state);
  accessor(fw_ctx_vars_t, error);
  accessor(fw_ctx_vars_t, tib_idx);
  accessor(fw_ctx_vars_t, tib_len);
  accessor(fw_ctx_vars_t, tib_str);
  accessor(fw_ctx_vars_t, tob_idx);
  accessor(fw_ctx_vars_t, tob_len);
  accessor(fw_ctx_vars_t, tob_str);
}

__fw_noinline__
void examples_accessors_stack() {
  fw_ctx_stack_t *var_ptr_fw_ctx_stack_t = &var_fw_ctx_stack_t; 
  accessor(fw_ctx_stack_t, head);
  accessor(fw_ctx_stack_t, base);
  accessor(fw_ctx_stack_t, size);
}

// Bitwise //
#define binary_ops(opname)                                 \
  printf(#opname "  -> "CELL_FMT" \n", ex_ ## opname(14, 2)); \
  printf(#opname "  -> "CELL_FMT" \n", ex_ ## opname(9, 1));

__fw_noinline__
fcell_t ex_add(fcell_t a, fcell_t b) {
  return a + b;
}

__fw_noinline__
fcell_t ex_not(fcell_t a, fcell_t b) {
  (void)b;
  return ~a;
}



__fw_noinline__
fcell_t ex_sub(fcell_t a, fcell_t b) {
  return a - b;
}

__fw_noinline__
fcell_t ex_xor(fcell_t a, fcell_t b) {
  return a ^ b;
}

__fw_noinline__
fcell_t ex_and(fcell_t a, fcell_t b) {
  return a & b;
}

__fw_noinline__
fcell_t ex_or(fcell_t a, fcell_t b) {
  return a | b;
}

__fw_noinline__
fcell_t ex_lshiftc(fcell_t a, fcell_t b) {
  return a << b;
}

__fw_noinline__
fcell_t ex_rshiftc(fcell_t a, fcell_t b) {
  return a >> b;
}

__fw_noinline__
fcell_t ex_lshiftu(uint32_t a, uint32_t b) {
  return a << b;
}

__fw_noinline__
fcell_t ex_rshiftu(uint32_t a, uint32_t b) {
  return a >> b;
}

__fw_noinline__
fcell_t ex_mul(fcell_t a, fcell_t b) {
  return a * b;
}

__fw_noinline__
fcell_t ex_div(fcell_t a, fcell_t b) {
  return a / b;
}

__fw_noinline__
void examples_bitwise() {
  binary_ops(not);
  binary_ops(add);
  binary_ops(sub);
  binary_ops(xor);
  binary_ops(and);
  binary_ops(or);

  binary_ops(lshiftc);
  binary_ops(rshiftc);
  binary_ops(lshiftu);
  binary_ops(rshiftu);
  binary_ops(mul);
  binary_ops(div);
}

__fw_noinline__ void call_reg_bpsp() {printf("bpsp\n");}
__fw_noinline__ void call_reg_psp() {printf("psp\n");}
__fw_noinline__ void call_reg_brsp() {printf("brsp\n");}
__fw_noinline__ void call_reg_rsp() {printf("rsp\n");}
__fw_noinline__ void call_reg_ip() {printf("ip\n");}
__fw_noinline__ void call_reg_x() {printf("x\n");}

__fw_noinline__ 
void examples_call(FORTH_REGISTERS) {
  /* if (bpsp) { call_reg_bpsp(); } */
  /* if (psp) { call_reg_psp(); } */

  /* if (brsp) { call_reg_brsp(); } */
  if (rsp) { call_reg_rsp(); }

  if (ip) { call_reg_ip(); }
  if (x) { call_reg_x(); }
}

fw_call examples_call_run() {
  examples_call(FORTH_REGISTER_EMPTY_LIST);
}

__fw_noinline__
void pointer_sizes_print(fcell_t *cells, uint8_t cl, fcell_xt* ptrs, uint8_t pl) {
  printf("example cells: \n");
  for (int i = 0; i < cl; i++) {
    printf("cell: "CELL_FMT"\n", cells[i]);
  }

  printf("example pointer cells: \n");
  for (int i = 0; i < pl; i++) {
    printf("ptr: %p\n", ptrs[i]);
  }
}

__fw_noinline__
fw_call examples_pointer_sizes1() {
  fcell_t cells[5] = {1,2,3,4,5};
  fcell_xt ptrs[6] = {
    (fcell_xt)&cells,
    (fcell_xt)&cells[0],
    (fcell_xt)&examples_accessors_vars,
    (fcell_xt)&examples_accessors_stack,
    (fcell_xt)&examples_accessors_regs,
    NULL,
  };

  pointer_sizes_print(cells, 5, ptrs, 6);
}

__fw_noinline__
fw_call examples_pointer_sizes2() {
  fcell_t cells[0] = {};
  fcell_xt ptrs[0] = {};

  pointer_sizes_print(cells, 0, ptrs, 0);
}

int main(int argv, char **argc) {
  printf(""CELL_FMT"", examples_accessors_regs_ip());
  examples_accessors_regs();
  examples_accessors_vars();
  examples_accessors_stack();

  examples_bitwise();

  examples_call_run();

  examples_pointer_sizes1();
  examples_pointer_sizes2();

  fcell_t a = 1;
  fcell_xt b = (void*)1;
  (void)a;
  (void)b;

  printf("sizeof(fcell_t): "CELL_FMT" "CELL_FMT"\n", sizeof(fcell_t), sizeof(a));
  printf("sizeof(fcell_xt): "CELL_FMT" "CELL_FMT"\n", sizeof(fcell_xt), sizeof(b));
}

