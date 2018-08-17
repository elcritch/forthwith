
// #include "forthwith.h"

forth_primitive("lit", 3, F_NORMAL, lit, "( -- n)", {
  load_addr(x, ip); /* x = (fcell_t) *ip; */
  incr_reg(ip);
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

forth_docall("word", 4, F_NORMAL, word, "( -- )", doword);
forth_docall("number", 6, F_NORMAL, number, "( c n -- n )", donumber);
forth_docall("find", 4, F_NORMAL, find, "( c n -- )", dofind);

forth_docall("emit", 4, F_NORMAL, emit, "( n -- )", doemit);
forth_docall(">cfa", 4, F_NORMAL, cfa, "( p -- )", docfa);

/* forth_primitive(">DFA", 4, F_NORMAL, dfa, "( p -- )", dodfa); */


forth_word(":", 6, F_NORMAL, colon, "( p -- )",
      xt_word,
      FW(create),
      FW(lit), FW(docolon), FW(comma),
      );

forth_word(";", 6, F_NORMAL, semicolon, "( p -- )", 
      FW(lit), FW(exits), FW(comma)
      );


/* forth_colon("immed", 5, F_IMMED, immed, "( p -- )", { */
/*     // ... */
/*     jump(next); */
/*   }); */

/* forth_colon("hidden", 5, F_NORMAL, hidden, "( p -- )", { */
/*     // ... */
/*     jump(next); */
/*   }); */

/* forth_colon("hide", 5, F_NORMAL, hide, "( p -- )", { */
/*     // ... */
/*     jump(next); */
/*   }); */

/* forth_colon("'", 5, F_NORMAL, tick, "( p -- )", { */
/*     // ... */
/*     jump(next); */
/*   }); */

/* forth_colon("interpret", 5, F_NORMAL, tick, "( p -- )", { */
/*     // ... */
/*     jump(next); */
/*   }); */

/* /\* create new var in user stack *\/ */
/* forth_colon(",", 1, F_NORMAL, comma, "( n -- )", { */
/*   /\* *user_here = (IP_t)tos; *\/ */
/*   /\* user_here += sizeof(fcell_t*); *\/ */
/*   /\* popd(tos); *\/ */
/*   jump(next); */
/* }); */

/* /\* create new var in dict (?) *\/ */
/* forth_colon("c,", 2, F_NORMAL, char_comma, "( n -- )", { */
/*   /\* *user_here = (IP_t)tos; *\/ */
/*   /\* user_here += sizeof(fcell_t*); *\/ */
/*   /\* popd(tos); *\/ */
/*   jump(next); */
/* }); */
