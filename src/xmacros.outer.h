
// #include "forthwith.h"

forth_primitive("lit", 3, F_NORMAL, lit, "( -- n)", {
  // load addr and move IP
  load_addr(x, ip);
  incr_reg(ip);

  // push on stack
  pushd(tos);
  copy_reg(tos, x);

  jump(next);
});

/*	STATE		Is the interpreter executing code (0) or compiling a word (non-zero)? */
forth_variable(STATE, 5, ctx, vars, $vars_of_state, 0);

// Follows Jone's Forth here
forth_docall("create", 4, F_NORMAL, create, "( n -- )", docreate);
forth_docall(",", 4, F_NORMAL, comma, "( n -- )", docomma);
forth_docall("[", 4, F_IMMED, lbrac, "( n -- )", dolbrac);
forth_docall("]", 4, F_NORMAL, rbrac, "( n -- )", dorbrac);
forth_docall("xmask", 4, F_NORMAL, xmask, "( n -- )", doxmask);

forth_docall("word", 4, F_NORMAL, word, "( -- )", doword);
forth_docall("number", 6, F_NORMAL, number, "( c n -- n )", donumber);
forth_docall("find", 4, F_NORMAL, find, "( c n -- )", dofind);

forth_docall("emit", 4, F_NORMAL, emit, "( n -- )", doemit);
forth_docall(">cfa", 4, F_NORMAL, cfa, "( p -- )", docfa);

forth_word(":", 6, F_NORMAL, colon, "( p -- )",
      XT(word), // Get the name of the new word
      XT(create), // CREATE the dictionary entry / header
      XT(lit), XT(docolon), XT(comma), // Append DOCOLON (the codeword).
      XT(rbrac), // Go into compile mode.
      XT(exits), // Return from the function.
      );

forth_word(";", 6, F_NORMAL, semicolon, "( p -- )", 
      XT(lit), XT(exits), XT(comma), // Append EXIT (so the word will return).
      XT(lit), (fcell_xt)F_HIDDEN, XT(xmask), // Toggle hidden flag -- unhide the word 
      XT(lbrac), // Go back to IMMEDIATE mode.
      XT(exits), // Return from the function.
      );

forth_word("immed", 5, F_IMMED, immed, "( p -- )", 
      XT(lit), (fcell_xt)F_IMMED, XT(xmask), // Toggle hidden flag -- unhide the word 
      );

forth_primitive("'", 1, F_NORMAL, tick, "( p -- )", {
    // Get address of next word from codeword list (e.g. same as lit)
    // load addr and move IP
    load_addr(x, ip);
    incr_reg(ip);

    // Push value on stack
    pushd(tos);
    copy_reg(tos, x);
    jump(next);
  });

/* Increments the IP by offset to affect branching */
forth_core("branch", 6, F_NORMAL, branch, "{offset} ( -- )", {
    load_addr(x, ip); 
    add_reg(ip, x); 
    jump(next);
  });

/* Increments the IP by offset to affect branching */
forth_core("0branch", 7, F_NORMAL, zbranch, "{offset} ( -- )", {
    if (tos == 0) {
      load_addr(x, ip);
      add_reg(ip, x);
    }
    popd(tos);
    jump(next);
  });

forth_core("litstr", 6, F_NORMAL, litstr, "", {
    // Get Length of String from codeword list
    load_addr(x, ip);
    incr_reg(ip);

    pushd(ip); // push the address of the start of the string 
    pushd(x); // push length on the stack 
    add_reg(ip, x); // skip past the string 

    add_const(ip, $3); // but round up to next 4 byte boundary 
    load_const(x, $3);
    not_reg(x);
    and_reg(ip, x);
  });

