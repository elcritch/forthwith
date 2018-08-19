#include <stdlib.h>

#include "forthwith.h"

fw_ctx_t *ctx = NULL;
fw_ctx_stack_t *ctx_psp = NULL;
fw_ctx_stack_t *ctx_rsp = NULL;
fw_ctx_regs_t *ctx_regs = NULL;

// Builtin "Hidden" Execution Tokens
/* fcell_xt xt_dosys = (fcell_xt)&dosys; */
/* fcell_xt xt_docolon = (fcell_xt)&docolon; */
/* fcell_xt xt_lit = (fcell_xt)&lit; */
/* fcell_xt xt_quits = (fcell_xt)&quits; */
/* fcell_xt xt_exits = (fcell_xt)&exits; */

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
  ctx_rsp = ctx->rsp;
  ctx_regs = ctx->regs;

  // Configure default stack sizes
  ctx->psp->size =  128 * sizeof(fw_ctx_stack_t);
  ctx->rsp->size =  128 * sizeof(fw_ctx_stack_t);
  ctx->user->size =   64 * sizeof(fw_ctx_stack_t);
  ctx->dict->size = 512 * sizeof(fw_ctx_dict_stack_t);
  ctx->strings->size = 512 * sizeof(fw_ctx_str_stack_t);

  // ===== Allocate default stacks ===== //

  /* offset by one to store a zero value before the base */
  ctx->psp->head = calloc(1, ctx->psp->size + 1);
  ctx->psp->head++;
  ctx->psp->base = ctx->psp->head;

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

fcell_t forth_errno() {
  return ctx->vars->error;
}

void forth_clear() {
  ctx->vars->error = FW_OK;
}

__fw_noinline__
int forth_bootstrap(fw_ctx_t* ctx) {

  ctx->vars->base = 16; // hex default

  #define FORTH_DEFINE_DICT_ENTRIES
    #include "xmacros.h"
    #include "xmacros.inner.h"
    #include "xmacros.core.h"
    #include "xmacros.outer.h"
  #undef FORTH_DEFINE_DICT_ENTRIES

  return -1;
}

__fw_noinline__
fw_call forth_exec(FORTH_REGISTERS) {
  load_state();
  call(next);
  save_state();
  popd(x);
}

__fw_noinline__
int forth_eval(fcell_xt *instr) {
  forth_pop();
  ctx->vars->error = FW_OK;

  ctx->regs->w = /* w */ (fcell_t)instr;
  ctx->regs->ip = /* ip */ (fcell_t)instr+8;
  ctx->regs->x = 0;
  ctx->regs->tos = 0;

  forth_exec(0, 0, 0, 0, 0, 0);
  save_psp(psp);

  return 0;
}


int forth_eval_string(char *input) {
  return -1;
}
