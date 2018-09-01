

/* #include "acutest.h" */

#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"
#include "prompt.h"

#include <stdio.h>
#include <string.h>

/* void test_setup() { */
/*   forth_init(); */
/*   forth_bootstrap(ctx); */
/* } */

/* #define TEST_CHECK_(args...) */

void dict_print();

void test_interpreter(void) {
  test_setup();

  dict_print();
  fcell_t dlen = ctx_vars->tob_idx;
  printf("TOB SZ: %s\n", ctx_vars->tob_str);
  for (fcell_t i = 0; i < dlen; i++) {
    putchar(ctx_vars->tob_str[i]);
  }
  printf("TOB DONE\n");

  printf("ctx->rsp: %p\n", ctx_rsp);
  printf("ctx->psp: %p\n", ctx_psp);
  printf("ctx->vars: %p\n", ctx_vars);
  printf("ctx->regs: %p\n", ctx_regs);

  // Vars
  int i, n;
  fcell_xt* var[50] = {0};

  i = 0; n = 4;
  for (int j = 0; j < n; j++)
    var[j] = forth_alloc_var();

  // Colons
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = (fcell_xt) dict_cfa(dict_find(9, "interpret"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  ctx_vars->tib_str = "7 2 +";
  ctx_vars->tib_len = 5;
  ctx_vars->tib_idx = 0;

  forth_eval(var[0]);
  forth_flush_tob();

  print_psp_info();

  int cnt = forth_count();
  fcell_t x = forth_pop();
  TEST_CHECK_(1 == cnt, "Expected "CELL_FMT", got "CELL_FMT"", 1, cnt);

  print_stack(); printf("... stack done\n");

  TEST_CHECK_(x == 9, "Expected "CELL_FMT", got "CELL_FMT"", 9, x);

  x = forth_pop();
  cnt = forth_count();
  TEST_CHECK_(0 == cnt, "Expected "CELL_FMT", got "CELL_FMT"", 0, cnt);
  TEST_CHECK_(forth_errno() == FW_ERR_STACKUNDERFLOW,
              "Expected "CELL_FMT", got "CELL_FMT"",
              forth_errno(),
              FW_ERR_STACKUNDERFLOW);

  forth_clear();

  TEST_CHECK_(forth_errno() == FW_OK,
              "Expected "CELL_FMT", got "CELL_FMT"",
              forth_errno(),
              FW_OK);

  printf(" >>>>>>>>>>>>>> basic test \n\n\n");
}

void test_colon(void) {
  test_setup();

  printf("\n<<<<<<<<<<<< TEST ':' <<<<<<<<<<<< \n\n");

  printf("ctx->rsp: %p\n", ctx_rsp);
  printf("ctx->psp: %p\n", ctx_psp);
  printf("ctx->vars: %p\n", ctx_vars);
  printf("ctx->regs: %p\n", ctx_regs);

  // Vars
  int i, n;
  fcell_xt* var[50] = {0};

  i = 0; n = 15;
  for (int j = 0; j < n; j++)
    var[j] = forth_alloc_var();

  fword_t *entry_colon = dict_find(1, ":");
  printf("colon: `:` %p \n", entry_colon);
  TEST_CHECK_(entry_colon != NULL, "Expected non-null `:` word, got "CELL_FMT"", entry_colon);
  printf("colon cfa: `:` %p\n", dict_cfa(entry_colon));
  printf("xt_colon: `:` %p -> %p \n", xt_colon, *xt_colon);

  int idx_interpret = i;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = (fcell_xt) dict_cfa(dict_find(9, "interpret"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  ctx_vars->tib_str = " : a 99 ;";
  ctx_vars->tib_len = 10;
  ctx_vars->tib_idx = 0;

  forth_eval(var[0]);
  forth_flush_tob();

  dict_print();
  // Try running new word!


  fword_t *entry_a = dict_find(1, "a");
  TEST_CHECK_(entry_a != NULL, "Expected non-null `:` word, got %p for %s", entry_a, "entry_a");
  printf("entry_a: %p\n", entry_a);

  fcell_xt * cfa_a = (fcell_xt *) dict_cfa(entry_a);
  TEST_CHECK_(cfa_a != NULL, "Expected non-null `:` word, got "CELL_FMT" for %s", cfa_a, "cfa_a");

  printf("cfa_aa: %p\n", cfa_a);

  fword_t *semicolon = dict_find(1, ";");
  printf("semicolon: %p\n", semicolon);

  fcell_t expi;
  fcell_t expl;
  fcell_t cnt;
  fcell_t x;
  fcell_t err;

  // Good Case
  ctx_vars->tib_str = "a 1 +";
  ctx_vars->tib_len = 5;
  ctx_vars->tib_idx = 0;

  forth_eval(var[0]);
  forth_flush_tob();

  expi = 154;
  expl = 1;

  cnt = forth_count();
  TEST_CHECK_(cnt == expl, "Expected "CELL_FMT", got "CELL_FMT"", expl, cnt);
  x = forth_pop();
  TEST_CHECK_(x == expi, "Expected "CELL_FMT", got "CELL_FMT"", expi, x);

  err = forth_errno();
  TEST_CHECK_(err == FW_OK, "Expected "CELL_FMT", got "CELL_FMT"", FW_OK, err);

  // Bad Case
  ctx_vars->tib_str = "b 1 +";
  ctx_vars->tib_len = 5;
  ctx_vars->tib_idx = 0;

  forth_eval(var[0]);
  forth_flush_tob();

  expi = 0;
  expl = 0;

  cnt = forth_count();
  TEST_CHECK_(cnt == expl, "Expected "CELL_FMT", got "CELL_FMT"", expl, cnt);

  err = forth_errno();
  TEST_CHECK_(err == FW_ERR_NOWORD, "Expected "CELL_FMT", got "CELL_FMT"", FW_ERR_NOWORD, err);

}


void test_colon2(void) {
  test_setup();

  printf("\n<<<<<<<<<<<< TEST ':' <<<<<<<<<<<< \n\n");

  printf("ctx->rsp: %p\n", ctx_rsp);
  printf("ctx->psp: %p\n", ctx_psp);
  printf("ctx->vars: %p\n", ctx_vars);
  printf("ctx->regs: %p\n", ctx_regs);

  // Vars
  int i, n;
  fcell_xt* var[50] = {0};

  i = 0; n = 15;
  for (int j = 0; j < n; j++)
    var[j] = forth_alloc_var();

  fword_t *entry_colon = dict_find(1, ":");
  printf("colon: `:` %p \n", entry_colon);
  TEST_CHECK_(entry_colon != NULL, "Expected non-null `:` word, got "CELL_FMT"", entry_colon);
  printf("colon cfa: `:` %p\n", dict_cfa(entry_colon));
  printf("xt_colon: `:` %p -> %p \n", xt_colon, *xt_colon);

  int idx_interpret = i;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = (fcell_xt) dict_cfa(dict_find(9, "interpret"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  ctx_vars->tib_str = ": z 1 2 3 4 5 6 7 8 9 ;";
  ctx_vars->tib_len = 23;
  ctx_vars->tib_idx = 0;

  forth_eval(var[0]);
  forth_flush_tob();

  dict_print();
  // Try running new word!


  fword_t *entry_a = dict_find(1, "z");
  TEST_CHECK_(entry_a != NULL, "Expected non-null `:` word, got %p for %s", entry_a, "entry_a");
  printf("entry_a: %p\n", entry_a);

  fcell_xt * cfa_a = (fcell_xt *) dict_cfa(entry_a);
  TEST_CHECK_(cfa_a != NULL, "Expected non-null `:` word, got "CELL_FMT" for %s", cfa_a, "cfa_a");

  printf("cfa_aa: %p\n", cfa_a);

  fcell_t expi;
  fcell_t expl;
  fcell_t cnt;
  fcell_t x;
  fcell_t err;

  // Good Case
  ctx_vars->tib_str = "z";
  ctx_vars->tib_len = 1;
  ctx_vars->tib_idx = 0;

  forth_eval(var[0]);
  forth_flush_tob();

  expi = 9;
  expl = 9;

  cnt = forth_count();
  TEST_CHECK_(cnt == expl, "Expected "CELL_FMT", got "CELL_FMT"", expl, cnt);
  x = forth_pop();
  TEST_CHECK_(x == expi, "Expected "CELL_FMT", got "CELL_FMT"", expi, x);

  err = forth_errno();
  TEST_CHECK_(err == FW_OK, "Expected "CELL_FMT", got "CELL_FMT"", FW_OK, err);


}

void test_colon_failed(void) {
  test_setup();

  printf("\n<<<<<<<<<<<< TEST ':' <<<<<<<<<<<< \n\n");

  printf("ctx->rsp: %p\n", ctx_rsp);
  printf("ctx->psp: %p\n", ctx_psp);
  printf("ctx->vars: %p\n", ctx_vars);
  printf("ctx->regs: %p\n", ctx_regs);

  // Vars
  int i, n;
  fcell_xt* var[50] = {0};

  i = 0; n = 15;
  for (int j = 0; j < n; j++)
    var[j] = forth_alloc_var();

  fword_t *entry_colon = dict_find(1, ":");
  printf("colon: `:` %p \n", entry_colon);
  TEST_CHECK_(entry_colon != NULL, "Expected non-null `:` word, got "CELL_FMT"", entry_colon);
  printf("colon cfa: `:` %p\n", dict_cfa(entry_colon));
  printf("xt_colon: `:` %p -> %p \n", xt_colon, *xt_colon);

  int idx_interpret = i;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = (fcell_xt) dict_cfa(dict_find(9, "interpret"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  ctx_vars->tib_str = ": z 1 2 3 4 5 6 7 8 9 ;";
  ctx_vars->tib_len = 22;
  ctx_vars->tib_idx = 0;

  forth_eval(var[0]);
  forth_flush_tob();

  dict_print();
  // Try running new word!


  fword_t *entry_a = dict_find(1, "z");
  TEST_CHECK_(entry_a != NULL, "Expected non-null `:` word, got %p for %s", entry_a, "entry_a");
  printf("entry_a: %p\n", entry_a);

  fcell_xt * cfa_a = (fcell_xt *) dict_cfa(entry_a);
  TEST_CHECK_(cfa_a != NULL, "Expected non-null `:` word, got "CELL_FMT" for %s", cfa_a, "cfa_a");

  printf("cfa_aa: %p\n", cfa_a);

  fcell_t expi;
  fcell_t expl;
  fcell_t cnt;
  fcell_t x;
  fcell_t err;

  // Good Case
  ctx_vars->tib_str = "z";
  ctx_vars->tib_len = 1;
  ctx_vars->tib_idx = 0;

  forth_eval(var[0]);
  forth_flush_tob();

  expi = 9;
  expl = 9;

  cnt = forth_count();
  TEST_CHECK_(cnt == expl, "Expected "CELL_FMT", got "CELL_FMT"", expl, cnt);
  x = forth_pop();
  TEST_CHECK_(x == expi, "Expected "CELL_FMT", got "CELL_FMT"", expi, x);

  err = forth_errno();
  TEST_CHECK_(err == FW_OK, "Expected "CELL_FMT", got "CELL_FMT"", FW_OK, err);


}
