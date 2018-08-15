
#include "forthwith.h"
#include <stdint.h>

forth_primitive("lit", 3, f_normal, lit, "( -- n)", {
  load_addr(x, ip); /* x = (fcell_t) *ip; */
  incr_reg(ip);
  pushd(tos);
  copy_reg(tos, x);
  jump(next);
});


/*	STATE		Is the interpreter executing code (0) or compiling a word (non-zero)? */
forth_variable("STATE", 5, ctx_vars, $vars_offset_state, 0);

/* 	HERE		Points to the next free byte of memory.  When compiling, compiled words go here. */
forth_variable("HERE", 5, ctx_user, $stack_offset_head, 0);

/* LATEST		Points to the latest (most recently defined) word in the dictionary. */
forth_variable("LASTEST", 6, ctx_dict, $stack_offset_head, 0);

/* Stores the address of the top of the parameter stack. */
forth_variable("S0", 2, ctx_psp, $stack_offset_base, 0);

/* number base */
forth_variable("BASE", 4, ctx_vars, $vars_offset_base, 10);

/* /\* next character in input buffer *\/ */
/* forth_variable(">in", 3, to_in, 0); */
/* /\* address of the input buffer *\/ */
/* forth_variable("tib", 3, number_tib, 0); */
/* /\* number of characters in the input buffer *\/ */
/* forth_variable("#tib", 1, freemem, 0); */
/* /\* first free cell in the dictionary *\/ */
/* forth_variable("dp", 1, ctx->dict_head, 0); */

forth_primitive("key", 3, f_normal, key, "( -- n)", {
    pushd(tos);
    load_const(rax, $vars_offset_tib);
    load_addr_off(x, tox, $ctx_offset_ip);
    jump(next);
});

forth_primitive("emit", 4, f_normal, emit, "( n -- )", {
    load_const(x, $ctx_vars);
    store_addr_off(x, tox, $ctx_offset_ip);
    popd(tos);
    jump(next);
});

forth_primitive("word", 4, f_normal, word, "( -- )", {
    save_state();
    {
      parse_word();
    }
    load_state();
    jump(next);
});

forth_primitive("number", 6, f_normal, number, "( c n -- n )", {
    save_state();
    {
      parse_number();
    }
    load_state();
    jump(next);
  });

forth_primitive("find", 4, f_normal, find, "( c n -- )", {
    save_state();
    {
      dict_find();
    }
    load_state();
    jump(next);
  });

forth_primitive(">CFA", 4, f_normal, cfa, "( p -- )", {
    save_state();
    {
      // ...
    }
    load_state();
    jump(next);
});

forth_primitive(">DFA", 4, f_normal, dfa, "( p -- )", {
    save_state();
    {
      // ...
    }
    load_state();
    jump(next);
});

forth_primitive("create", 6, f_normal, create, "( p -- )", {
    // ...
    jump(next);
});

/* create new var in user stack */
#define FORTH_COMMA ",", f_normal // ( n -- )
fw_call comma(FORTH_REGISTERS)
{
  *user_here = (IP_t)tos;
  user_here += sizeof(fcell_t*);
  popd(tos);
  jump(next);
}

/* create new var in dict */
#define FORTH_CHAR_COMMA "c,", f_normal // ( c -- )
fw_call char_comma(FORTH_REGISTERS)
{
  *user_here = (IP_t)tos;
  user_here += sizeof(fcell_t*);
  popd(tos);
  jump(next);
}
