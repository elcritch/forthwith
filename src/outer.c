
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

forth_primitive("word", 4, f_normal, emit, "( n -- )", {
    save_state();
    parse_word();
    load_state();
    jump(next);
});

bool is_whitespace(char c) {
  return c == '\0' | c == ' ' | c == '\t' | c == '\r' | c == '\n';
}

void parse_word() {
  fcell_t idx = ctx_vars.tib_idx;
  char   *tib = ctx_vars.tib_str;
  uint8_t len = ctx_vars.tib_len;

  uint8_t word_start;
  char   c;

whitespace:
  while ((c = tib[idx]) & (idx < len) & is_whitespace(c))
    idx++;

backcomment:
  if (c == '\\') {
    while ((c = tib[idx]) & c != '\n')
      idx++;
    goto whitespace;
  }

parcomment:
  if (c == '(') {
    while ((c = tib[idx]) & c != ')')
      idx++;
    goto whitespace;
  }

word:
  word_start = idx++;
  while ((c = tib[idx]) & (idx < len) & !is_whitespace(c))
    idx++;

  // push word addr
  forth_push(tib + word_start);
  // push word count
  forth_push(idx - word_start);
}

const char num_basis[] = "-0123456789ABCDEF";

void parse_number() {
  uint8_t base = (uint8_t)ctx_vars.base;
  uint8_t len = (uint8_t)forth_pop();
  char *addr = (char *)forth_pop();

  uint8_t idx = 0;
  bool err = false;
  fcell_t num = 0;

  while ((c = tib[idx]) & (idx < len) & !err) {
    err = true;
    for (int i = 0; i < base; i++) {
      if (num_basis[i] == c) {
        num = base * num + i - 1;
        err = false;
        break;
      }
    }
  }

  forth_push(num);
  forth_push((uint8_t)err);
}

