
// =============== Access Primitives ============== //
forth_core("c@", 2, F_NORMAL, cfetch, "( n -- n )", {
    popd(1);
    copy_reg(x, s1);
    load_addr(s1, x);
    load_const(x, $FF);
    and_reg(s1, x);
    pushd(1);
    jump(next);
});

forth_core("c!", 2, F_NORMAL, cstore, "( n addr -- )",  {
    popd(2);
    load_const(x, $FF);
    and_reg(s1, x);
    store_addr(s2, s1);
    pushd(0);
    jump(next);
});

// =============== Stack Primitives ============== //
forth_core(">r", 2, F_NORMAL, torstack, "( n1  --   )",  {
    popd(1);
    pushr(s1);
    pushd(0);
    jump(next);
  });

forth_core("r>", 2, F_NORMAL, fromrstack, "( --  n1 )",  {
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


forth_core("cell", 4, F_NORMAL, cellsz, "()",  {
    popd(0);
    load_const(s1, $word_sz);
    pushd(1);
    jump(next);
  });

forth_core("sp@", 3, F_NORMAL, sp_at, "()",  {
    popd(0);
    copy_reg(s1, psp);
    pushd(1);
    jump(next);
  });

forth_core("sp!", 3, F_NORMAL, sp_store, "()",  {
    popd(1);
    copy_reg(psp, s1);
    pushd(0);
    jump(next);
  });

forth_core("rp@", 3, F_NORMAL, rp_at, "()",  {
    popd(0);
    copy_reg(s1, rsp);
    pushd(1);
    jump(next);
  });

forth_core("rp!", 3, F_NORMAL, rp_store, "()",  {
    popd(1);
    copy_reg(rsp, s1);
    pushd(0);
    jump(next);
  });

// =============== Math Primitives ============== //

