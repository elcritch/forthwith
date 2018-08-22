

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

  i = 0; n = 15;
  for (int j = 0; j < n; j++)
    var[j] = forth_alloc_var();

  fword_t *entry_colon = dict_find(1, ":");
  printf("colon: `:` %016p \n", entry_colon);
  TEST_CHECK_(entry_colon != NULL, "Expected non-null `:` word, got %d", entry_colon);
  printf("colon cfa: `:` %016p\n", dict_cfa(entry_colon));
  printf("xt_colon: `:` %016p -> %016p \n", xt_colon, *xt_colon);

  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = (fcell_xt) dict_cfa(dict_find(9, "interpret"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  ctx->vars->tib_str = ": aa 99 ;";
  ctx->vars->tib_len = 9;
  ctx->vars->tib_idx = 0;

  forth_eval(var[0]);

  dict_print();
  // Try running new word!


  fword_t *entry_a = dict_find(2, "aa");
  TEST_CHECK_(entry_a != NULL, "Expected non-null `:` word, got %p for %s", entry_a, "entry_a");
  printf("entry_a: %016p\n", entry_a);

  fcell_xt * cfa_a = (fcell_xt *) dict_cfa(entry_a);
  TEST_CHECK_(cfa_a != NULL, "Expected non-null `:` word, got %d for %s", cfa_a, "cfa_a");

  printf("cfa_aa: %016p\n", cfa_a);

  fword_t *entry_prior = ctx->dict->head - 2;
  fcell_xt * cfa_prior = *(fcell_xt **) dict_cfa(entry_prior);

  /* cfa_a = *cfa_a; */
  for (int j = 0; j < 6; j++) {
    fcell_xt *aj = (fcell_xt *)cfa_a[j];
    fword_t *e = (fcell_t)aj > 1000 ? dict_lookup(*aj) : (fword_t*)aj;
    printf("cfa_aa[%d]: %016p -> %s\n", j, cfa_a[j], (fcell_t)e > 1000 ? e->name : NULL);
    if (aj == cfa_prior)
      printf("prior entry: %s\n", entry_prior->name);
  }


  int idx_ra = i;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = dict_cfa(dict_find(1, "'"));
  *var[i++] = (fcell_xt) 103;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(2, "aa"));
  *var[i++] = dict_cfa(dict_find(1, "+"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  forth_eval(var[idx_ra]);

  printf("\n\nDone...\nerror: %lld\n", ctx->vars->error);
  printf("psp->head: %p\n", ctx->psp->head);
  printf("psp->base: %p\n", ctx->psp->base);
  printf("psp stack size: %ld \n\n", ctx->psp->head - ctx->psp->base);


  int expi = 256;
  int expl = 1;

  int cnt = forth_count();
  TEST_CHECK_(cnt == expl, "Expected %d, got %d", expl, cnt);

  fcell_t x = forth_pop();
  TEST_CHECK_(x == expi, "Expected %d, got %d", expi, x);

}

/* TEST_LIST = { */
/*   /\* { "basic_intp", test_basic_interpreter }, *\/ */
/*   { "test_full_interpreter", test_full_interpreter }, */
/*   { 0 } */
/* }; */


/* int main() { */
/*   test_interpreter(); */
/* } */
