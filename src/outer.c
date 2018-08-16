
// #include "forthwith.h"

forth_primitive("lit", 3, F_NORMAL, lit, "( -- n)", {
  load_addr(x, ip); /* x = (fcell_t) *ip; */
  incr_reg(ip);
  pushd(tos);
  copy_reg(tos, x);
  jump(next);
});

/*	STATE		Is the interpreter executing code (0) or compiling a word (non-zero)? */
forth_variable(STATE, 5, ctx, vars, $vars_offset_state, 0);

/* 	HERE		Points to the next free byte of memory.  When compiling, compiled words go here. */
forth_variable(HERE, 5, ctx, user, $stack_offset_head, 0);

/* LATEST		Points to the latest (most recently defined) word in the dictionary. */
forth_variable(LASTEST, 6, ctx, dict, $stack_offset_head, 0);

/* Stores the address of the top of the parameter stack. */
forth_variable(S0, 2, ctx, psp, $stack_offset_base, 0);

/* number base */
forth_variable(BASE, 4, ctx, vars, $vars_offset_base, 10);

/* /\* next character in input buffer *\/ */
/* forth_variable(">in", 3, to_in, 0); */
/* /\* address of the input buffer *\/ */
/* forth_variable("tib", 3, number_tib, 0); */
/* /\* number of characters in the input buffer *\/ */
/* forth_variable("#tib", 1, freemem, 0); */
/* /\* first free cell in the dictionary *\/ */
/* forth_variable("dp", 1, ctx->dict_head, 0); */

forth_primitive("key", 3, F_NORMAL, key, "( -- n)", {
    pushd(tos);
    /* load_const(rax, $vars_offset_tib); */
    /* load_addr_off(x, tox, $ctx_offset_ip); */
    jump(next);
});

forth_primitive("emit", 4, F_NORMAL, emit, "( n -- )", {
    /* load_const(x, $ctx_vars); */
    /* store_addr_off(x, tox, $ctx_offset_ip); */
    popd(tos);
    jump(next);
});

forth_primitive("word", 4, F_NORMAL, word, "( -- )", {
    save_state();
    call(dowords);
    load_state();
    jump(next);
}
  );

forth_primitive("number", 6, F_NORMAL, number, "( c n -- n )", {
    save_state();
    call(donumber);
    load_state();
    jump(next);
});

forth_primitive("find", 4, F_NORMAL, find, "( c n -- )", {
    save_state();
    call(dofind);
    load_state();
    jump(next);
});

forth_primitive(">CFA", 4, F_NORMAL, cfa, "( p -- )", {
    // ...
    jump(next);
});

forth_primitive(">DFA", 4, F_NORMAL, dfa, "( p -- )", {
    // ...
    jump(next);
});

forth_primitive("create", 6, F_NORMAL, create, "( p -- )", {
    // ...
    jump(next);
});

forth_primitive(",", 6, F_NORMAL, comma, "( p -- )", {
    // ...
    jump(next);
  });

forth_primitive("[", 6, F_NORMAL, lbrac, "( p -- )", {
    // ...
    jump(next);
  });

forth_primitive("]", 6, F_NORMAL, rbrac, "( p -- )", {
    // ...
    jump(next);
  });

forth_primitive(":", 6, F_NORMAL, colon, "( p -- )", {
    // ...
    jump(next);
  });

forth_primitive(";", 6, F_IMMED, semicolon, "( p -- )", {
    // ...
    jump(next);
  });

forth_colon("immed", 5, F_IMMED, immed, "( p -- )", {
    // ...
    jump(next);
  });

forth_colon("hidden", 5, F_NORMAL, hidden, "( p -- )", {
    // ...
    jump(next);
  });

forth_colon("hide", 5, F_NORMAL, hide, "( p -- )", {
    // ...
    jump(next);
  });

forth_colon("'", 5, F_NORMAL, tick, "( p -- )", {
    // ...
    jump(next);
  });

forth_colon("interpret", 5, F_NORMAL, tick, "( p -- )", {
    // ...
    jump(next);
  });

/* create new var in user stack */
forth_colon(",", 1, F_NORMAL, comma, "( n -- )", {
  /* *user_here = (IP_t)tos; */
  /* user_here += sizeof(fcell_t*); */
  /* popd(tos); */
  jump(next);
});

/* create new var in dict (?) */
forth_colon("c,", 2, F_NORMAL, char_comma, "( n -- )", {
  /* *user_here = (IP_t)tos; */
  /* user_here += sizeof(fcell_t*); */
  /* popd(tos); */
  jump(next);
});
