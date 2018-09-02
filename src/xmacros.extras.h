
// =============== Access Primitives ============== //
forth_core("c@", 2, F_NORMAL, cfetch, "( n -- n )", {
    popd(1);
    copy_reg(x, s1);
    load_addr(s1, x);
    and_const(s1, $FF);
    pushd(1);
    jump(next);
});

forth_core("c!", 2, F_NORMAL, cstore, "( n addr -- )",  {
    popd(2);
    and_const(s1, $FF);
    store_addr(s2, s1);
    pushd(0);
    jump(next);
});

// =============== Stack Primitives ============== //
forth_core(">r", 2, F_NORMAL, rpush, "( n1  --   )",  {
    popd(1);
    pushr(s1);
    pushd(0);
    jump(next);
  });

forth_core("r>", 2, F_NORMAL, rpop, "( --  n1 )",  {
    popd(0);
    popr(s1);
    pushd(1);
    jump(next);
  });

forth_core("i", 1, F_NORMAL, loopi, "( --  n1 )",  {
    popd(0);
    load_addr_off(s1, rsp, 0);
    pushd(1);
    jump(next);
  });

forth_core("j", 1, F_NORMAL, loopj, "( --  n1 )",  {
    popd(0);
    load_addr_off(s1, rsp, 2*WORD_SZ);
    pushd(1);
    jump(next);
  });
