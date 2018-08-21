

/* #include "acutest.h" */

#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"

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

  printf("ctx->rsp: %p\n", ctx->rsp);
  printf("ctx->psp: %p\n", ctx->psp);
  printf("ctx->vars: %p\n", ctx->vars);
  printf("ctx->regs: %p\n", ctx->regs);

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

  ctx->vars->tib_str = "7 2 +";
  ctx->vars->tib_len = 5;
  ctx->vars->tib_idx = 0;

  forth_eval(var[0]);

  printf("\n\nDone...\nerror: %lld\n", ctx->vars->error);
  printf("psp->head: %p\n", ctx->psp->head);
  printf("psp->base: %p\n", ctx->psp->base);
  printf("psp stack size: %ld \n\n", ctx->psp->head - ctx->psp->base);

  int cnt = forth_count();
  TEST_CHECK_(1 == cnt, "Expected %d, got %d", 1, cnt);

  fcell_t x = 0;
  while (forth_count() > 0) {
    x = forth_pop();
    printf("remaining stack: %lld\n", x);
  }

  printf("... stack done\n");
  TEST_CHECK_(x == 9, "Expected %d, got %d", 9, x);

  x = forth_pop();
  cnt = forth_count();
  TEST_CHECK_(0 == cnt, "Expected %d, got %d", 0, cnt);
  TEST_CHECK_(forth_errno() == FW_ERR_STACKUNDERFLOW,
              "Expected %d, got %d",
              forth_errno(),
              FW_ERR_STACKUNDERFLOW);

  forth_clear();

  TEST_CHECK_(forth_errno() == FW_OK,
              "Expected %d, got %d",
              forth_errno(),
              FW_OK);

  printf(" >>>>>>>>>>>>>> basic test \n\n\n");
}

void test_colon(void) {
  test_setup();


  printf("\n<<<<<<<<<<<< TEST ':' <<<<<<<<<<<< \n\n");

  printf("ctx->rsp: %p\n", ctx->rsp);
  printf("ctx->psp: %p\n", ctx->psp);
  printf("ctx->vars: %p\n", ctx->vars);
  printf("ctx->regs: %p\n", ctx->regs);

  // Vars
  int i, n;
  fcell_xt* var[50] = {0};

  i = 0; n = 4;
  for (int j = 0; j < n; j++)
    var[j] = forth_alloc_var();

  fword_t *entry_colon = dict_find(1, ":");
  printf("colon: `:` %016p \n", entry_colon);
  TEST_CHECK_(entry_colon != NULL, "Expected non-null `:` word, got %d", entry_colon);
  if (entry_colon)
    printf("colon cfa: `:` %016p\n", dict_cfa(entry_colon));

  printf("xt_colon: `:` %016p -> %016p \n", xt_colon, *xt_colon);

  // Colons
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = (fcell_xt) dict_cfa(dict_find(9, "interpret"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  ctx->vars->tib_str = ": a 99";
  ctx->vars->tib_len = 6;
  ctx->vars->tib_idx = 0;

  forth_eval(var[0]);

  printf("\n\nDone...\nerror: %lld\n", ctx->vars->error);
  printf("psp->head: %p\n", ctx->psp->head);
  printf("psp->base: %p\n", ctx->psp->base);
  printf("psp stack size: %ld \n\n", ctx->psp->head - ctx->psp->base);

  int expi = 99;
  int expl = 1;

  int cnt = forth_count();
  TEST_CHECK_(cnt == expl, "Expected %d, got %d", expl, cnt);

  fcell_t x = forth_pop();
  TEST_CHECK_(x == expi, "Expected %d, got %d", expi, x);

  dict_print();
}

/* TEST_LIST = { */
/*   /\* { "basic_intp", test_basic_interpreter }, *\/ */
/*   { "test_full_interpreter", test_full_interpreter }, */
/*   { 0 } */
/* }; */


/* int main() { */
/*   test_interpreter(); */
/* } */
