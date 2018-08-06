#include <stdlib.h>

#include "forthwith.h"


// TODO: fix implicit global...
struct forthwith_context context;

fw_ctx_t *ctx;

#define global_state ctx->var_head

#include <stdio.h>
#include <string.h>

IP_t *forth_alloc_var(fw_ctx_t* ctx) {
  ctx->user_head = ctx->user_head + sizeof(IP_t);
  return ctx->user_head;
}

int forth_init() {
  uint8_t cell_sz = sizeof(fcell_t);

  struct forthwith_context nctx = {
    .psp_size =  128 * cell_sz,
    .rsp_size =  128 * cell_sz,
    .user_size =   64 * cell_sz,
    .dict_size = 512 * cell_sz,
  };

  nctx.psp_base = nctx.psp_head = calloc(1, nctx.psp_size);
  nctx.rsp_base = nctx.rsp_head = calloc(1, nctx.rsp_size);
  nctx.user_base = nctx.user_head = calloc(1, nctx.user_size);
  nctx.dict_base = nctx.dict_head = calloc(1, nctx.dict_size);

  printf("psp base: %p\n", nctx.psp_base);
  printf("rsp base: %p\n", nctx.rsp_base);
  printf("user base: %p\n", nctx.user_base);
  printf("dict base: %p\n", nctx.dict_base);

  context = nctx;
  ctx = &context;

  return -1;
}

#define ADDR(x) ((IP_t)&x)

int forth_bootstrap(fw_ctx_t* ctx) {
  /* fcell_t* user_head = ctx->user_head; */

  /* IP_t test[] = [ */
  /*                   ADDR(lit), */
  /*                   ADDR(doconst), */
  /*                   ]; */

  /* dict_create */
  return -1;
}

fw_call forth_exec(FORTH_REGISTERS) {
  forth_exec(FORTH_CALL_PARAMS);
  jump(next);
}

int forth_eval(fw_ctx_t* ctx, IP_t *instr) {

  W_t   w = 0;
  IP_t  ip = *instr;
  PSP_t psp = ctx->psp_head;
  RSP_t rsp = ctx->rsp_head;
  X_t   x = 0;
  TOS_t tos = 0;

  forth_exec(FORTH_CALL_PARAMS);

  return 0;
}

