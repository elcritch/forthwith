
// #include "forthwith.h"

forth_core("lit", 3, F_NORMAL, lit, "( -- n)", {
  popd(0);
  // load addr and move IP
  load_addr(x, ip);
  incr_reg(ip);
  // push on stack
  copy_reg(s1, x);
  pushd(1);
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
forth_docall("ret", 4, F_NORMAL, ret_, "( n -- )", doret);

// Toggle hidden flag -- unhide the word
forth_word("immed", 5, F_IMMED, immed, "( p -- )",
           XT(lit), (fcell_xt)F_IMMED, XT(xmask),
           );

forth_core("'", 1, F_NORMAL, tick, "( -- n )", {
  popd(0);
  // Get address of next word from codeword list (e.g. same as lit)
  load_addr(x, ip);
  incr_reg(ip);
  // push on stack
  copy_reg(s1, x);
  pushd(1);
  jump(next);
});

/* /\* Executes word on tos *\/ */
/* forth_core("exec", 6, F_NORMAL, exec, "( n -- )", { */
/*   popd(1); */
/*   copy_reg(x, s1); */
/*   pushd(0); */
/*   jump_reg(x); */
/* }); */

/* Increments the IP by offset to affect branching */
forth_core("branch", 6, F_NORMAL, branch, "{offset} ( -- )", {
    load_addr(x, ip);
    add_reg(ip, x);
    jump(next);
});

/* Increments the IP by offset to affect branching */
forth_core("0branch", 7, F_NORMAL, zbranch, "{offset} ( n -- )", {
    // load stack
    popd(1);
    copy_reg(x, s1);

    if (x) {
      add_const(ip, $word_ptr_sz);
    } else {
      load_addr(x, ip);
      add_reg(ip, x);
    }

    pushd(0);
    jump(next);
});

// Forth Words in Forth (pihsnoipmahc FWW!)
forth_word(":", 6, F_NORMAL, colon, "( p -- )",
           XT(word), // Get the name of the new word
           XT(create), // CREATE the dictionary entry / header
           XT(lit), XT(docolon), XT(comma), // Append DOCOLON (the codeword).
           XT(rbrac), // Go into compile mode.
           XT(semi), // Return from the function.
           );

forth_word(";", 6, F_NORMAL, semicolon, "( p -- )",
           XT(lit), XT(semi), XT(comma), // Append EXIT (so the word will return).
           XT(lit), (fcell_xt)F_HIDDEN, XT(xmask), // Toggle hidden flag -- unhide the word
           XT(lbrac), // Go back to IMMEDIATE mode.
           XT(semi), // Return from the function.
           );

/* forth_word("ifthen", 6, F_IMMED, ifthen, "( -- )", */
/*            XT(tick), XT(zbranch), XT(comma), */
/*            XTV(HERE), */
/*            XT(fetch), */
/*            XT(lit), 0, */
/*            XT(comma), */
/*            ); */

/* forth_word("else", 5, F_IMMED, else_, "( -- )", */
/*            XT(tick), XT(branch), XT(comma), */
/*            XTV(HERE), XT(fetch), */
/*            XT(lit), 0, XT(comma), */
/*            XT(swap), */
/*            XT(dup), */
/*            XTV(HERE), XT(fetch), XT(swap), XT(sub), */
/*            XT(swap), XT(store), */
/*            ); */

/* forth_word("end", 5, F_IMMED, end, "( -- )", */
/*            XT(dup), */
/*            XTV(HERE), XT(fetch), XT(swap), XT(sub), */
/*            XT(swap), XT(store), */
/*            ); */


/*
  32 word find
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

// TODO: check indexes of branches ...
// try parsing number and compiling or running
forth_word("itpnum", 6, F_NORMAL, itpnum, "{tib} ( -- *c l )",
           XT(number),
           XT(zbranch), 4 * sizeof(fcell_xt),

              XT(lit),
              (fcell_xt)FW_ERR_NOWORD,
              XT(ret_),

           XT(branch), 8 * sizeof(fcell_xt),

              XTV(STATE),
                XT(fetch),

              XT(zbranch), 5 * sizeof(fcell_xt),
                XT(tick),
                  XT(lit),
                    XT(comma),
                XT(comma),
           XT(semi),
           );

// try finding word and run if compiling, or execute if immediate
forth_word("itpnext", 7, F_NORMAL, itpnext, "{tib} ( -- *c l )",
           XT(find),
           XT(zbranch), 7 * sizeof(fcell_xt),

              XTV(STATE),
              XT(fetch),

              XT(zbranch), 2 * sizeof(fcell_xt),
                XT(comma),
              XT(branch), 2 * sizeof(fcell_xt),
                XT(execs),

           XT(branch), 2 * sizeof(fcell_xt),
              XT(itpnum),
           XT(semi),
           );


forth_word("interpret", 9, F_NORMAL, interpret, "( p -- )",
           XT(word),
           XT(zbranch), 3 * sizeof(fcell_xt),
              XT(itpnext),
              XT(interpret),
           XT(branch), 3 * sizeof(fcell_xt),
              XT(drop),
              XT(ret_),
           XT(semi),
           );

