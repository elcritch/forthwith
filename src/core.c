
#include "forthwith.h"
#include <stdint.h>

#define FORTH_DROP  "drop", f_normal // ( n -- )
fw_call drop(FORTH_REGISTERS) {
  popd(tos);
  jump(next);
}

#define FORTH_DUP  "dup", f_normal // ( n -- n n )
fw_call dup(FORTH_REGISTERS) {
  pushd(tos);
  jump(next);
}

#define FORTH_SWAP  "swap", f_normal // ( x y -- x y )
fw_call swap(FORTH_REGISTERS) {
  /* X_t x; */
  x = tos;
  popd(tos);
  pushd(x);
  jump(next);
}

#define FORTH_ADD  "add", f_normal // ( n n -- n )
fw_call add(FORTH_REGISTERS) {
  /* X_t x; */
  popd(x);
  /* tos += x; */
  add_reg(tos, x);
  jump(next);
}

#define FORTH_EQUALS  "=", f_normal // ( n n -- n )
fw_call equals(FORTH_REGISTERS) {
  /* X_t x; */
  popd(x);
  /* tos = tos == x; */
  /* tos = 0xFFFFFFFFFFFFFFFF; */
  xor_reg(tos, x);
  load_const(a, $word_max);
  xor_reg(tos, a);
  /* tos = ~0; */
  jump(next);
}

/* primitive: `0branch` {offset} ( cond – ) :  If cond is 0, increment */
#define FORTH_ZBRANCH  "0branch", f_normal // {offst } ( cond -- )
fw_call zbranch(FORTH_REGISTERS) {
  /* X_t x; */
  if (tos == 0) {
    load_addr(x, ip);
    /* x = (fcell_t) *ip; // dereference 'offset' stored at `*IP` */
    add_reg(ip, x);
    /* ip += x; // add offset to `IP` */
  }
  popd(tos);
  jump(next);
}

/* primitive: `branch` {offset} ( – ) :  Increments the IP by offset */
#define FORTH_BRANCH  "branch", f_normal // {offset} ( -- )
fw_call branch(FORTH_REGISTERS) {
  /* X_t x; */
  x = (fcell_t) *ip; // dereference 'offset' stored at `*IP`
  ip += x; // add offset to `IP`
  incr_reg(ip);
  jump(next);
}

