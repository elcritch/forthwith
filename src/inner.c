#include <stdint.h>
#include <stdlib.h>

#include "forthwith.h"

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
fw_call docolon(FORTH_REGISTERS) {
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
fcell_xt xt_docolon = (fcell_xt)&docolon;

/* Exit current thread */
fw_call exits(FORTH_REGISTERS) {
  /* `pop IP` <- `RSP` -- load previous thread's last IP position */
  popr(ip);
  jump(next);
}
fcell_xt xt_exits = (fcell_xt)&exits;

/* Quit inner interpreter */
fw_call quits(FORTH_REGISTERS) {
  /* `pop IP` <- `RSP` -- load previous thread's last IP position */
  pushd(tos);
  /* popr(ip); */
  return;
}
fcell_xt xt_quits = (fcell_xt)&quits;

/* perform c calls to 00 calls `void (*func)()` */
/* saves ForthWith regs to data stack */
fw_call call00(FORTH_REGISTERS) {
  /* popd(x); // load jump addr */
  save_state();
  call_reg(tos);
  load_state();
}
fcell_xt xt_call00 = (fcell_xt)&call00;

fw_call docall() {
  fcell_t addr = forth_pop();
  fcell_t params = forth_pop();
  fcell_t ret = forth_pop();

  fcell_t a, b, c;

  switch (params) {
  case 0: {
    ret = ((forthwith_call_0) addr)();
    break;
    }
  case 1: {
    a = forth_pop();
    ret = ((forthwith_call_1) addr)(a);
    break;
    }
  case 2: {
    a = forth_pop();
    b = forth_pop();
    ret = ((forthwith_call_2) addr)(a, b);
    break;
    }
  case 3: {
    a = forth_pop();
    b = forth_pop();
    c = forth_pop();
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
    jump(docall);
    popd(tos);

    jump(next);
  }
#endif // FORTH_NO_SYSCALL

