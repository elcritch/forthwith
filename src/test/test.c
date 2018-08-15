

#include "acutest.h"

#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"

#include <stdio.h>
#include <string.h>

void test_setup() {
  forth_init();
  forth_bootstrap(ctx);
}

void test_basic(void) {
  int a = 1;
  int b = 2;
  TEST_CHECK_(a + b == 3, "Expected %d, got %d", 3, a + b);

  test_setup();

  printf("word: %p\n", dict_create(F_NORMAL, 5, "test2"));
  printf("word: %p\n", dict_create(F_NORMAL, 5, "test1"));
  printf("word: %p\n", dict_create(F_NORMAL, 5, "test3"));

  printf("find word: '%s' -> %p\n", "test1", dict_find(5, "test1"));

  fcell_xt* var1 = forth_alloc_var();
  fcell_xt* var2 = forth_alloc_var();
  fcell_xt* var3 = forth_alloc_var();
  fcell_xt* var4 = forth_alloc_var();
  fcell_xt* var5 = forth_alloc_var();
  fcell_xt* var6 = forth_alloc_var();
  fcell_xt* var7 = forth_alloc_var();

  printf("var1: %p\n", var1);
  printf("var2: %p\n", var2);
  printf("var3: %p\n", var3);
  printf("var4: %p\n", var4);
  printf("var5: %p\n", var5);
  printf("var6: %p\n", var6);
  printf("var7: %p\n", var7);


  *var1 = (fcell_xt) &xt_docolon;
  *var2 = (fcell_xt) &xt_lit;
  *var3 = (fcell_xt) 3;
  *var4 = (fcell_xt) &xt_lit;
  *var5 = (fcell_xt) 5;
  *var6 = (fcell_xt) &xt_add;
  *var7 = (fcell_xt) &xt_quits;

  printf(" ");
  for (fcell_xt *i = var1; i <= var5; i += 1)
    printf("\tinstr: %p => %p\n", i, *i);

  forth_eval(var1);

  printf("\n\nDone...\nerror: %ld\n", ctx->vars->error);
  printf("psp->head: %p\n", ctx->psp->head);
  printf("psp->base: %p\n", ctx->psp->base);
  printf("psp stack size: %u\n\n", ctx->psp->head - ctx->psp->base);

  fcell_t x = forth_pop(ctx);
  /* do { */
  /*   x = forth_pop(ctx); */
  /*   printf("remaining stack: %ld\n", x); */
  /* } while (ctx->vars->error == 0); */

  printf("... stack done\n");
  TEST_CHECK_(x == 8, "Expected %d, got %d", 8, x);

}

void test_parsing(void)
{
  int a = 1;
  int b = 2;

  test_setup();

  char *basic_words = "dup";
  char *basic_add = "1 2 +";
  char *basic_colon = ": inc 1 + ";


  TEST_CHECK_(a + b == 3, "Expected %d, got %d", 3, a + b);


}


TEST_LIST = {
  { "basic", test_basic },
  { "parsing", test_parsing },
  { 0 }
};

