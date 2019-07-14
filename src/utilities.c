
#include "forthwith.h"
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

// handle data stack underflow
__fw_noinline__
fw_call dosuf() {
  ctx_vars->error = FW_ERR_STACKUNDERFLOW;
  ctx_psp->head = ctx_psp->base + 1;
  /* exit(ctx_vars->error); */
}

// handle return stack underflow
__fw_noinline__
fw_call doruf(FORTH_REGISTERS) {
  ctx_vars->error = FW_ERR_RSTACKUNDERFLOW;
  ctx_rsp->head = ctx_rsp->base + 1;
  /* exit(ctx_vars->error); */
}

// ( n -- )
__fw_noinline__
void doerr() {
  fcell_t errorno = forth_pop();
  ctx_vars->error = errorno;
  ctx_vars->state = ERROR_MODE;
}

// {*tib} {tib_idx++} ( -- cp n )
__fw_noinline__
void docreate() {
  fcell_t len = forth_pop();
  char *cstr = (char*)forth_pop();
  fcell_xt *here = forth_alloc_var();
  fword_t *entry = dict_create(F_HIDDEN, len, cstr, here);
  forth_push((fcell_t)entry);
}

__fw_noinline__
void doinitvariable() {
  fcell_t len = forth_pop();
  char *cstr = (char*)forth_pop();
  fcell_t size = forth_pop();

  fcell_xt *here = forth_alloc_var_len(size + 4);
  fword_t *entry = dict_create(F_VAR | F_WORD, len, cstr, here);

  *(here + 0) = (fcell_xt)xt_docolon;
  *(here + 1) = (fcell_xt)&xt_tick;
  *(here + 2) = (fcell_xt)&here[4];
  *(here + 3) = (fcell_xt)&xt_semi;

  forth_push((fcell_t)entry);
  forth_push((fcell_t)here[1]);
}

// ( n -- ) {*user}
__fw_noinline__
void docomma() {
  *ctx_user->head = forth_pop();
  /* debugf("\tcomma: %016p -> %016p (%lld)\n", ctx_user->head, *ctx_user->head, *ctx_user->head); */
  forth_alloc_var();
}

// ( n -- ) {*user}
__fw_noinline__
void dosavehere() {
  forth_push(*ctx_user->head);
}

// ( n -- ) {*user}
__fw_noinline__
void doxmask() {
  fword_t *last_word = ctx_dict->head - 1;
  last_word->info.meta ^= forth_pop();
}

// ( -- ) {*var->state}
__fw_noinline__
void dolbrac() {
  ctx_vars->state = IMMEDIATE_MODE;
}

// ( -- ) {*var->state}
__fw_noinline__
void dorbrac() {
  ctx_vars->state = COMPILE_MODE;
}

__fw_noinline__
void docfa() {
  fword_t *entry = (fword_t*)forth_pop();
  forth_push((fcell_t)dict_cfa(entry));
}


#endif // #ifndef FORTH_OVERRIDE_PARSERS


