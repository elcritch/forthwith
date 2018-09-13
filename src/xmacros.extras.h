
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

forth_core("over", 4, F_NORMAL, over, "( a b -- a b a )",  {
    popd(2);
    copy_reg(s3, s1);
    pushd(3);
    jump(next);
  });

forth_word("2dup", 4, F_NORMAL, dup2, "( a b -- a b a b )",
           XT(over),
           XT(over),
           XT(semi)
           );

forth_word("tuck", 4, F_NORMAL, tuck, "( a b -- a b a b )",
           XT(swap),
           XT(over),
           XT(semi)
           );

// =============== Math Primitives ============== //

forth_core(">", 1, F_NORMAL, lgt, "( a -- a )",  {
    popd(2);
    jump_gt(s1, s2, l1);
    jump(l0);
  });

forth_core("<", 1, F_NORMAL, llt, "( a -- a )",  {
    popd(2);
    jump_lt(s1, s2, l1);
    jump(l0);
  });

forth_core("<=", 2, F_NORMAL, lle, "( a -- a )",  {
    popd(2);
    jump_le(s1, s2, l1);
    jump(l0);
  });

forth_core(">=", 2, F_NORMAL, lge, "( a -- a )",  {
    popd(2);
    jump_ge(s1, s2, l1);
    jump(l0);
  });


// Others //

forth_docall("/", 1, F_NORMAL, divs, "( a b -- c )", dodiv);
forth_docall("lshift", 6, F_NORMAL, lshift, "( a b -- c )", dolss);
forth_docall("rshift", 6, F_NORMAL, rshift, "( a b -- c )", dorss);


#ifdef FW_STDIO

forth_docall("import", 6, F_NORMAL, import_file, "( a b -- c )", doimportfile);

#endif // FW_STDIO

