#include <stdint.h>

#include "forthwith.h"

fw_call fcallend(FORTH_REGISTERS) {
  _asm_jump();
}

/*
  Example of Direct Threaded vs Indirect Threaded code:

  |---------------|-----------|
  | Direct:       | Indirect: |
  |---------------|-----------|
  | SQUARE:       | SQUARE:   | <- the thread (address is the first elem)
  |   CALL DOCOL  |   &DOCOL  | <- &DOCOL, aka execution token "XT" in IDC lingo
  |   &DUP        |   &DUP    |            where the XT defines the threads type
  |   &MUL        |   &MUL    |
  |   &EXIT       |   &EXIT   |
  |---------------|-----------|

  fcell_xt === machine code pointer => uintptr_t
  XT = (fcell_xt)&DOCOL
  IP = &XT
  RSP = &IP

 */

/* Execute Indirect Thread's XT (mnemonic handle 'next XT')*/
fw_call next(FORTH_REGISTERS) {
  /* `load(IP)` -> `W`  -- fetch memory pointed to by IP into "W" register
      ...W now holds address of the thread's execution-token */
  load_addr(w, ip); /* w = *ip; */
  /* IP++ -> IP advance IP, just like a program counter */
  incr_reg(ip); /* ip = ip + sizeof(IP_t); *\/ */
  /* decr_reg(ip); /\* ip = ip + sizeof(IP_t); *\\/ *\/ */

  load_addr(x, w); /* x = *w; */

  /* sub_const(ip, $word_ptr_sz); /\* ip = ip + sizeof(IP_t); *\/ */

  /* `load(W)` -> `X`  -- dereference indirect thread's execution-token
      e.g. fetch memory pointed by W into "X" register
      ...X now holds address of the machine code to exec,
      one of docol, dovar, doconst, or native instruction */
  /* JP (X)  -- jump to the address in the X register */
  jump_reg(x);
}


/* Core Execution Token Implementations */

/* primitive: `docolon` ( --r cond ) : execute indirect thread */
void docolon(FORTH_REGISTERS) {
  /* PUSH IP -> RSP  -- onto the "return address stack" */
  pushr(ip);
  /* `W++` -> `IP` -- `W` still points to the thread's token-code,
      so `W++` is the address of the thread body (list of IDC addrs)!  */
  /* ip = (fcell_xt*)(w+sizeof(IP_t)); */
  incr_reg(w); // W++
  /* decr_reg(w); // W++  */
  copy_reg(ip, w);

  /* __asm__ __volatile__("" :: "m" (ip)); */
  jump(next);
  /* return FORTH_RET; */
}

/* Exit current thread */
fw_call exits(FORTH_REGISTERS) {
  /* `pop IP` <- `RSP` -- load previous thread's last IP position */
  popr(ip);
  jump(next);
}

/* Quit inner interpreter */
void quits(FORTH_REGISTERS) {
  /* `pop IP` <- `RSP` -- load previous thread's last IP position */
  pushd(tos);
  popr(ip);
  return;
}

void __attribute__ ((noinline)) docall() {
  fcell_t addr = *forth_pop(ctx);
  fcell_t params = *forth_pop(ctx);
  fcell_t ret = *forth_pop(ctx);

  fcell_t a, b, c;

  switch (params) {
  case 0: {
    ret = ((forthwith_call_0) addr)();
    break;
    }
  case 1: {
    a = *forth_pop(ctx);
    ret = ((forthwith_call_1) addr)(a);
    break;
    }
  case 2: {
    a = *forth_pop(ctx);
    b = *forth_pop(ctx);
    ret = ((forthwith_call_2) addr)(a, b);
    break;
    }
  case 3: {
    a = *forth_pop(ctx);
    b = *forth_pop(ctx);
    c = *forth_pop(ctx);
    ret = ((forthwith_call_3) addr)(a, b, c);
    break;
    }
  }

  if (ret) {
    pushd(tos);
  }
}

#ifndef FORTH_NO_SYSCALL
  /* primitive: `docall` {count} {addr} {ret}  ( -- addr ) : execute varaddr */
  fw_call dosys(FORTH_REGISTERS) {
    pushd(tos);
    docall();
    popd(tos);

    jump(next);
  }
#endif // FORTH_NO_SYSCALL

