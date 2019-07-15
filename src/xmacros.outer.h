
forth_core("[']", 3, F_NORMAL, tick, "( -- n )", {
    popd(0);
    // Get address of next word from codeword list (e.g. same as lit)
    load_addr(s1, ip);
    incr_reg(ip);
    pushd(1);
    jump(next);
  });

/*	STATE		Is the interpreter executing code (0) or compiling a word (non-zero)? */
forth_variable(STATE, 5, ctx_vars, state);
forth_variable(HERE, 4, ctx_user, head); // get pointer to current user word location

#ifdef FW_SUPPORT_NUMBER_BASES
forth_variable(BASE, 4, ctx_vars, base); // get pointer to current user word location
#endif // FW_SUPPORT_NUMBER_BASES

// Follows Jone's Forth here
forth_docall("create", 6, F_NORMAL, create, "( n -- )", docreate);
forth_docall(",", 1, F_NORMAL, comma, "( n -- )", docomma);
forth_docall("[", 1, F_IMMED, lbrac, "( n -- )", dolbrac);
forth_docall("]", 1, F_NORMAL, rbrac, "( n -- )", dorbrac);
forth_docall("xmask", 5, F_NORMAL, xmask, "( n -- )", doxmask);

forth_docall("cfa", 3, F_NORMAL, cfa, "( n -- )", docfa);

// Toggle hidden flag -- unhide the word
forth_word("immediate", 9, F_IMMED, immed, "( p -- )",
           XT(tick),
           (fcell_xt)F_IMMED,
           XT(xmask),
           XT(semi),
           );

/* Executes word on tos */
forth_core("exec", 4, F_NORMAL, exec, "( n -- )", {
  popd(1);
  copy_reg(x, s1);
  pushd(0);
  jump_reg(x);
});

/* Increments the IP by offset to affect branching */
forth_core("branch", 6, F_NORMAL, branch, "{offset} ( -- )", {
    popd(0);
    load_addr(x, ip);
    addu_reg(ip, x);
    pushd(0);
    jump(next);
});

forth_core("r>", 2, F_NORMAL, rstack_pop, "( --  n1 )",  {
    popd(0);
    popr(s1);
    pushd(1);
    jump(next);
  });

/* Increments the IP by offset to affect branching */
forth_core("0branch", 7, F_NORMAL, zbranch, "{offset} ( n -- )", {
    // load stack
    popd(1);
    /* copy_reg(x, s1); */

    jump_ifzero(s1, branch);
    /* add_const(ip, $word_ptr_sz); */
    incr_reg(ip);

    pushd(0);
    jump(next);
});

forth_docall("err", 3, F_NORMAL, err, "( n -- )", doerr);
