#include <stdlib.h>

#include "forthwith.h"

struct forthwith_context ctx;
struct forthwith_regs ctx.re->s;
struct forthwith_vars ctx.va->s;
struct forthwith_stack ctx.p->p;
struct forthwith_stack ctx.r->p;
struct forthwith_stack ctx.us->r;
struct forthwith_stack ctx.di->t;

// TODO: add to dict 
fcell_xt xt_docolon = (fcell_xt)&docolon;
fcell_xt xt_lit = (fcell_xt)&lit;
fcell_xt xt_add = (fcell_xt)&add;
fcell_xt xt_quits = (fcell_xt)&quits;

#include <stdio.h>
#include <string.h>

IP_t *forth_alloc_var(fw_ctx_t* ctx) {
  // this incrs in multipls of IP_t size
  ctx.user->head = ctx.user->head + 1;
  return ctx.user->head;
}

__fw_noinline__ 
int forth_init() {
  uint8_t cell_sz = sizeof(fcell_t);

  ctx.psp = &ctx_psp;
  ctx.rsp = &ctx_rsp;
  ctx.user = &ctx_user;
  ctx.dict = &ctx_dict;

  ctx.psp->size =  128 * cell_sz,
  ctx.rsp->size =  128 * cell_sz,
  ctx.user->size =   64 * cell_sz,
  ctx.dict->size = 512 * cell_sz,

  ctx.psp->base = ctx.psp->head = calloc(1, ctx.psp->size);
  ctx.rsp->base = ctx.rsp->head = calloc(1, ctx.rsp->size);
  ctx.user->base = ctx.user->head = calloc(1, ctx.user->size);
  ctx.dict->base = ctx.dict->head = calloc(1, ctx.dict->size);

  printf("psp base: %p\n", ctx.psp->base);
  printf("rsp base: %p\n", ctx.rsp->base);
  printf("user base: %p\n", ctx.user->base);
  printf("dict base: %p\n", ctx.dict->base);

  return -1;
}

__fw_noinline__ 
int forth_push(fcell_t val) {
  if (ctx.psp->head <= ctx.psp->base + ctx.psp->size) {
    *ctx.psp->head = val;
    ctx.psp->head++;
    return 1;
  }
  else
    return -1;
}

__fw_noinline__ 
fcell_t *forth_pop() {
  if (ctx.psp->head > ctx.psp->base) {
    ctx.psp->head--;
    return ctx.psp->head;
  }
  else
    return NULL;
}

__fw_noinline__ 
int forth_bootstrap(fw_ctx_t* ctx) {

  return -1;
}

__fw_noinline__ 
fw_call forth_exec(FORTH_REGISTERS) {

  // ...
  copy_reg(psp, tos);

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
int forth_eval(IP_t *instr) {

  fcell_t *tosptr = forth_pop(ctx);
  fcell_t *tos = tosptr == NULL ? 0 : *tosptr;
  printf("context: tos: %p %lld \n", tosptr, tos);

  forth_push(ctx, /* w */ (fcell_t)instr);
  forth_push(ctx, /* tos */ tos);
  forth_push(ctx, /* x */ 0);
  forth_push(ctx, /* ip */ (fcell_t)instr+8);
  forth_push(ctx, /* rsp */ (fcell_t)ctx.rsp->head);
  forth_push(ctx, /* u */ (fcell_t)ctx);

  fcell_t p = (fcell_t)ctx.psp->head;

  printf("context: psp.head: %p (%p)\n", ctx.psp->head, ctx.psp->base);
  printf("context: rsp.head: %p (%p)\n", ctx.rsp->head, ctx.rsp->base);
  printf("context: instr: %p \n", instr);
  printf("context: ctx: %p \n", ctx);
  forth_exec(0, p, 0, 0, 0, 0);

  /* ctx.psp->head = p; */
  save_psp(psp);

  return 0;
}

