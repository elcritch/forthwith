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

/* Core Execution Token Implementations */

/* execute indirect thread */
forth_core("docolon", 7, F_NORMAL | F_WORD, docolon, "{ip++} ( -- )", {
  /* PUSH IP -> RSP  -- onto the "return address stack" */
  pushr(ip);
  /* `W++` -> `IP` -- `W` still points to the thread's token-code,
      so `W++` is the address of the thread body (list of IDC addrs)!  */
  copy_reg(ip, w);
  jump(next);
});

/* Exit current thread */
forth_core("semi", 4, F_NORMAL, semi, "[ r -- ] ( -- )", {
    /* `pop IP` <- `RSP` -- load previous thread's last IP position */
    popr(ip);
    jump(next);
});
forth_primitive("next", 4, F_NORMAL, next, "{ip++}( -- )", {
    load_addr(w, ip); /* @IP -> W ...W now holds address of the thread's XT */
    incr_reg(ip); /* IP++ advance IP to next instr */
    jump(run);
});
forth_primitive("run", 3, F_NORMAL, run, "{ip++}( -- )", {
    load_addr(x, w); /* */
    incr_reg(w); // W++

#ifdef FW_TRACE
    // <<< debugging
    save_state();
    call(doprintstate);
    load_state();
    // >>> debugging
#endif // FW_TRACE

    jump_reg(x);
});


/* Quit inner interpreter */
forth_core("execs", 5, F_NORMAL, execs, "( n -- )", {
    popd(1);
    copy_reg(w, s1);
    pushd(0);
    jump(run);
});

/* Quit inner interpreter */
forth_core("runs", 4, F_NORMAL, runs, "( n -- )", {
    popd(1);
    copy_reg(w, s1);
    pushd(0);
    jump(run);
  });

/* Quit inner interpreter */
forth_core("quits", 5, F_NORMAL, quits, "( -- )", {
  save_link();
  return;
});

/* Quit inner interpreter */
forth_core("starts", 6, F_NORMAL, starts, "( -- )", {
    load_link();
    jump(next);
});

/* perform c calls to 00 calls `void (*func)()` */
/* saves ForthWith regs to data stack */
forth_core("call00", 6, F_NORMAL, call00, "{ctx->regs} ( -- )", {
  save_link();
  save_state();
  call_reg(x);
  load_state();
  load_link();
});

