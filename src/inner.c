#include <stdint.h>

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
  w = *ip;
  /* IP++ -> IP advance IP, just like a program counter */
  ip++;
  /* `load(W)` -> `X`  -- dereference indirect thread's execution-token
      e.g. fetch memory pointed by W into "X" register
      ...X now holds address of the machine code to exec,
      one of docol, dovar, doconst, or native instruction */
  x = *w;
  /* JP (X)  -- jump to the address in the X register */
  jump_reg(x);
}

/* Exit current thread */
fw_call exits(FORTH_REGISTERS) {
  /* `pop IP` <- `RSP` -- load previous thread's last IP position */
  popr(ip);
  jump(next);
}

/* Core Execution Token Implementations */

/* primitive: `docolon` ( --r cond ) : execute indirect thread */
void docolon(FORTH_REGISTERS) {
  /* PUSH IP -> RSP  -- onto the "return address stack" */
  pushr(ip);
  /* `W++` -> `IP` -- `W` still points to the thread's token-code,
      so `W++` is the address of the thread body (list of IDC addrs)!  */
  ip = (fcell_xt*)(w+sizeof(IP_t));
  /* __asm__ __volatile__("" :: "m" (ip)); */
  jump(next);
  /* return FORTH_RET; */
}

/* primitive: `doconst` {const} ( -- const ) : execute const */
fw_call doconst(FORTH_REGISTERS) {
  /* `load IP` -> `RSP` -- onto the "return address stack" */
  x = (fcell_t) *ip;
  pushd(x);
  jump(next);
}

/* primitive: `dovar` {addr} ( -- addr ) : execute varaddr */
fw_call dovar(FORTH_REGISTERS) {
  /* TODO: impl.... push address of a "variable" onto PSP */
  jump(next);
}

#ifndef FORTH_NO_SYSCALL
  /* primitive: `docall` {count} {addr} {ret}  ( -- addr ) : execute varaddr */
  fw_call dosys(FORTH_REGISTERS, fcell_t a, fcell_t b, fcell_t c) {
    /* pushd(tos); // save tos */
    x = (fcell_t)*(ip++); // load function param count
    w = *(ip++); // load addr

    fcell_t ret;
    switch (x) {
    case 0: {
      ret = ((forthwith_call_0) w)();
      break;
      }
    case 1: {
      a = tos; //popd(a);
      ret = ((forthwith_call_1) w)(a);
      break;
      }
    case 2: {
      a = tos; //popd(a);
      popd(b);
      ret = ((forthwith_call_2) w)(a, b);
      break;
      }
    case 3: {
      a = tos; //popd(a);
      popd(b);
      popd(c);
      ret = ((forthwith_call_3) w)(a, b, c);
      break;
      }
    }

    if (x) {
      popd(tos);
    }

    a = (fcell_t) *(ip++); // load function ret count
    if (a) {
      pushd(tos);
      tos = ret;
    }

    jump(next);
  }
#endif // FORTH_NO_SYSCALL

