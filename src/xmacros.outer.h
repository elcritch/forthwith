
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
forth_variable(STATE, 5, ctx, vars, $vars_of_state);
forth_variable(HERE, 5, ctx, user, $stack_of_head); // get pointer to current user word location

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
forth_docall("exerr", 4, F_NORMAL, exerr, "( n -- )", doexerr);
/* forth_docall(">cfa", 4, F_NORMAL, cfa, "( p -- )", docfa); */

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

forth_core("'", 1, F_NORMAL, tick, "( p -- )", {
    // Get address of next word from codeword list (e.g. same as lit)
    load_addr(x, ip);
    incr_reg(ip);

    // Push value on stack
    pushd(tos);
    copy_reg(tos, x);
    jump(next);
  });

/* Executes word on tos */
forth_core("exec", 6, F_NORMAL, exec, "( n -- )", {
    copy_reg(x, tos);
    popd(tos);
    jump_reg(x);
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
    } else {
      add_const(ip, $word_ptr_sz);
    }
    jump(next);
  });

forth_word("ifthen", 5, F_IMMED, ifthen, "( -- )",
           XT(tick), XT(zbranch), XT(comma),
           (fcell_xt)var_HERE,
           XT(fetch),
           XT(lit), 0,
           XT(comma),
           );

forth_word("else", 5, F_IMMED, else_, "( -- )",
           XT(tick), XT(branch), XT(comma),
           XTV(HERE), XT(fetch),
           XT(lit), 0, XT(comma),
           XT(swap),
           XT(dup),
           XTV(HERE), XT(fetch), XT(swap), XT(sub),
           XT(swap), XT(store),
           );

forth_word("end", 5, F_IMMED, end, "( -- )",
           XT(dup),
           XTV(HERE), XT(fetch), XT(swap), XT(sub),
           XT(swap), XT(store),
           );


/*
  32 word find dup
   ifthen
      state @ =
        ifthen
          ,
        else
          execute
        end
   else
      dup rot count >number
        ifthen
          state @
            ifthen
              last @ dup @ last ! dp !
            end
            abort
        end
        drop drop state @
          ifthen
            ' lit , ,
          end
   end
*/

/* // TODO ... */
/* forth_word("interpret", 9, F_NORMAL, tick, "( p -- )", */
/*            XT(word), XT(find), XT(dup), */
/*            XT(ifthen), */
/*             XT(STATE), XT(fetch), XT(equals), */
/*             XT(ifthen), */
/*               XT(comma), */
/*             XT(else_), */
/*               XT(execute), */
/*             XT(end), */
/*            XT(else_), */
/*             XT(dup), XT(rot), XT(count), XT(number), */
/*             XT(ifthen), */
/*               XT(STATE), XT(fetch), */
/*               XT(ifthen), */
/*                 XT(exerr), */
/*               XT(end), */
/*               XT(abort), */
/*             XT(else_), */
/*             XT(end), */
/*            XT(end), */
/*            ); */

