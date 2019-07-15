
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

#ifndef FW_NO_VARS
forth_docall("var-arr-alloca", 14, F_NORMAL, fw_user_ptr_init, "( count size idx -- ptr )", douserptrsalloca);
forth_docall("var-ptr", 7, F_NORMAL, fw_user_ptr, "( idx -- ptr )", douserptrs);
forth_docall("var-ptr-off", 11, F_NORMAL, fw_user_ptr_off, "( offset idx -- ptr )", douserptrsoff);
forth_docall("var-free", 8, F_NORMAL, fw_user_ptr_free, "( idx -- )", douserptrsfree);

/* forth_docall("var@", 4, F_NORMAL, fw_user_get_val, "( idx -- value )", douserptrssetval); */
/* forth_docall("var!", 4, F_NORMAL, fw_user_set_val, "( idx value -- )", douserptrsgetval); */

forth_docall("var-elem-size", 13, F_NORMAL, fw_user_elem_sz, "( idx -- )", douserptrselemsize);
forth_docall("var-elem-count", 14, F_NORMAL, fw_user_elem_cnt, "( idx -- )", douserptrselemcount);
forth_docall("var-elem!", 9, F_NORMAL, fw_user_ptr_set, "( val offset idx -- )", douserptrsset);
forth_docall("var-elem@", 9, F_NORMAL, fw_user_ptr_get, "( offset idx -- val )", douserptrsget);

forth_docall("var-st-push", 11, F_NORMAL, fw_user_ptr_push, "( val idx -- )", douserptrspush);
/* forth_docall("var-st-pop",  10, F_NORMAL, fw_user_ptr_pop, "( idx -- val )", douserptrspop); */
forth_docall("var-st-idx@", 11, F_NORMAL, fw_user_ptr_idx_get, "( idx -- st-idx )", douserptrsgetidx);
forth_docall("var-st-idx!", 11, F_NORMAL, fw_user_ptr_idx_set, "( st-idx idx -- )", douserptrssetidx);
#endif // FW_NO_VARS

forth_docall("user-cb", 7, F_NORMAL, fw_dousercalls, "( idx -- <call-results> )", dousercalls);

// =============== Stack Primitives ============== //
forth_core(">r", 2, F_NORMAL, torstack, "( n1  --   )",  {
    popd(1);
    pushr(s1);
    pushd(0);
    jump(next);
  });

/* forth_core("i", 1, F_NORMAL, loopi, "( --  n1 )",  { */
/*     popd(0); */
/*     load_addr_off(s1, rsp, 1*WORD_SZ); */
/*     pushd(1); */
/*     jump(next); */
/*   }); */

/* forth_core("j", 1, F_NORMAL, loopj, "( --  n1 )",  { */
/*     popd(0); */
/*     load_addr_off(s1, rsp, 3*WORD_SZ); */
/*     pushd(1); */
/*     jump(next); */
/*   }); */


forth_core("cell", 4, F_NORMAL, cellsz, "()",  {
    popd(0);
    load_const(s1, $word_sz);
    pushd(1);
    jump(next);
  });

forth_core("xcell", 5, F_NORMAL, xcellsz, "()",  {
    popd(0);
    load_const(s1, $word_ptr_sz);
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
    /* decr_reg(s1); */
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
    copy_reg(s3, s2);
    copy_reg(s2, s1);
    copy_reg(s1, s3);
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

forth_core("zdrop", 5, F_NORMAL, zdrop, "( ... -- )",  {
    copy_reg(psp, bpsp);
    jump(next);
  });


// Others //

forth_docall("dict:", 5, F_NORMAL, fw_dictprint, "( a b -- c )", dict_print);
forth_docall("word:", 5, F_NORMAL, fw_bodyprint, "( a b -- c )", dodictprintword);
forth_docall("/mod",  4, F_NORMAL, divs, "( a b -- c )", dodivquot);
forth_docall("*/",    2, F_NORMAL, fw_slash_star, "( a b -- c )", dostartslash);

forth_docall("<<<", 3, F_NORMAL, fw_lshift, "( N s -- N' )", dolss);
forth_docall(">>>a", 4, F_NORMAL, fw_rshift_signed, "( N s -- N' )", dorss);
forth_docall(">>>", 3, F_NORMAL, fw_rshift, "( N s -- N' )", dorsu);

forth_docall(".\"", 2, F_NORMAL, fw_string, "( N s -- N' )", dostring);
forth_docall("pick", 4, F_NORMAL, fw_pick, "( nth -- stack[n] )", dopick);

/* forth_docall("init-variable:", 14, F_NORMAL, fw_variable, "( a b -- c )", doinitvariable); */

/* forth_core("var", 3, F_NORMAL, dovar, "()", { */
/*     popd(0); */
/*     // Get address of next word from codeword list (e.g. same as lit) */
/*     load_addr(s1, ip); */
/*     incr_reg(ip); */
/*     pushd(1); */
/*     jump(next); */
/* }); */


