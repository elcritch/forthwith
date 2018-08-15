#include <stdlib.h>

#include "forthwith.h"

fw_ctx_t *ctx = NULL;
fw_ctx_stack_t *ctx_psp = NULL;

// TODO: add to dict 
fcell_xt xt_docolon = (fcell_xt)&docolon;
fcell_xt xt_lit = (fcell_xt)&lit;
fcell_xt xt_add = (fcell_xt)&add;
fcell_xt xt_quits = (fcell_xt)&quits;
fcell_xt xt_exits = (fcell_xt)&exits;

#include <stdio.h>
#include <string.h>

__fw_noinline__ 
int forth_init() {
  // Initialize contexts
  ctx = calloc(1, sizeof(fw_ctx_t));

  ctx->regs = calloc(1, sizeof(fw_ctx_regs_t));
  ctx->vars = calloc(1, sizeof(fw_ctx_vars_t));
  ctx->psp = calloc(1, sizeof(fw_ctx_stack_t));
  ctx->rsp = calloc(1, sizeof(fw_ctx_stack_t));
  ctx->user = calloc(1, sizeof(fw_ctx_stack_t));
  ctx->dict = calloc(1, sizeof(fw_ctx_dict_stack_t));
  ctx->strings = calloc(1, sizeof(fw_ctx_str_stack_t));

  ctx_psp = ctx->psp;

  // Configure default stack sizes
  ctx->psp->size =  128 * sizeof(fw_ctx_stack_t);
  ctx->rsp->size =  128 * sizeof(fw_ctx_stack_t);
  ctx->user->size =   64 * sizeof(fw_ctx_stack_t);
  ctx->dict->size = 512 * sizeof(fw_ctx_dict_stack_t);
  ctx->strings->size = 512 * sizeof(fw_ctx_str_stack_t);

  // Allocate default stacks
  ctx->psp->base = ctx->psp->head = calloc(1, ctx->psp->size);
  ctx->rsp->base = ctx->rsp->head = calloc(1, ctx->rsp->size);
  ctx->user->base = ctx->user->head = calloc(1, ctx->user->size);
  ctx->dict->base = ctx->dict->head = calloc(1, ctx->dict->size);
  ctx->strings->base = ctx->strings->head = calloc(1, ctx->strings->size);

  printf("psp base: %p\n", ctx->psp->base);
  printf("rsp base: %p\n", ctx->rsp->base);
  printf("user base: %p\n", ctx->user->base);
  printf("dict base: %p\n", ctx->dict->base);

  return -1;
}

__fw_noinline__ 
int forth_push(fcell_t val) {
  if (ctx->psp->head <= ctx->psp->base + ctx->psp->size) {
    *ctx->psp->head = val;
    ctx->psp->head++;
    return 1;
  }
  else
    return -1;
}

__fw_noinline__ 
fcell_t forth_pop() {
  if (ctx->psp->head > ctx->psp->base) {
    ctx->psp->head--;
    return *ctx->psp->head;
  }
  else {
    ctx->vars->error = FW_ERR_STACKUNDERFLOW;
    return 0;
  }
}

__fw_noinline__ 
fcell_t forth_count() {
  return ctx->psp->head - ctx->psp->base;
}

__fw_noinline__ 
int forth_bootstrap(fw_ctx_t* ctx) {

  return -1;
}

__fw_noinline__ 
fw_call forth_exec(FORTH_REGISTERS) {

  // ...
  load_psp(psp);
  /* copy_reg(psp, tos); */

  popd(u);
  popd(rsp);
  popd(ip);
  popd(x);
  popd(tos);
  popd(w);

  /* __jump(next); */
  jump(next);
}

__fw_noinline__ 
int forth_eval(fcell_xt *instr) {

  fcell_t tos = forth_pop();
  ctx->vars->error = FW_OK;

  forth_push(/* w */ (fcell_t)instr);
  forth_push(/* tos */ tos);
  forth_push(/* x */ 0);
  forth_push(/* ip */ (fcell_t)instr+8);
  forth_push(/* rsp */ (fcell_t)ctx->rsp->head);
  forth_push(/* u */ (fcell_t)ctx);

  fcell_t p = (fcell_t)ctx->psp->head;

  printf("context: psp.head: %p (%p)\n", ctx->psp->head, ctx->psp->base);
  printf("context: rsp.head: %p (%p)\n", ctx->rsp->head, ctx->rsp->base);
  printf("context: instr: %p \n", instr);
  printf("context: ctx: %p \n", ctx);
  forth_exec(0, p, 0, 0, 0, 0);

  /* ctx.psp->head = p; */
  save_psp(psp);

  return 0;
}

