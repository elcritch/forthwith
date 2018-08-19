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

forth_primitive("next", 4, F_NORMAL, next, "{ip++}( -- )", {
  /* `load(IP)` -> `W`  -- fetch memory pointed to by IP into "W" register
      ...W now holds address of the thread's execution-token */
  load_addr(w, ip); /* w = *ip; */
  /* IP++ -> IP advance IP, just like a program counter */
  incr_reg(ip); /* ip = ip + sizeof(IP_t); *\/ */
  /* decr_reg(ip); /\* ip = ip + sizeof(IP_t); *\\/ *\/ */

  load_addr(x, w); /* x = *w; */

  /* `load(W)` -> `X`  -- dereference indirect thread's execution-token
      e.g. fetch memory pointed by W into "X" register
      ...X now holds address of the machine code to exec,
      one of docol, dovar, doconst, or native instruction */
  /* JP (X)  -- jump to the address in the X register */
  jump_reg(x);
});


/* Core Execution Token Implementations */

/* execute indirect thread */
forth_core("docolon", 7, F_NORMAL, docolon, "{ip++} ( -- )", {
  /* PUSH IP -> RSP  -- onto the "return address stack" */
  pushr(ip);
  /* `W++` -> `IP` -- `W` still points to the thread's token-code,
      so `W++` is the address of the thread body (list of IDC addrs)!  */
  incr_reg(w); // W++
  copy_reg(ip, w);
  jump(next);
});

/* Exit current thread */
forth_core("exits", 5, F_NORMAL, exits, "[ r -- ] ( -- )", {
  /* `pop IP` <- `RSP` -- load previous thread's last IP position */
  popr(ip);
  jump(next);
});

/* Quit inner interpreter */
forth_core("quits", 5, F_NORMAL, quits, "( -- )", {
  return;
});

/* perform c calls to 00 calls `void (*func)()` */
/* saves ForthWith regs to data stack */
forth_core("call00", 6, F_NORMAL, call00, "{ctx->regs} ( -- )", {
  save_state();
  call_reg(x);
  load_state();
});

