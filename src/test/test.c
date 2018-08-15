

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
  test_setup();


  fcell_xt* var1 = forth_alloc_var();
  fcell_xt* var2 = forth_alloc_var();
  fcell_xt* var3 = forth_alloc_var();
  fcell_xt* var4 = forth_alloc_var();
  fcell_xt* var5 = forth_alloc_var();
  fcell_xt* var6 = forth_alloc_var();
  fcell_xt* var7 = forth_alloc_var();
  fcell_xt* var8 = forth_alloc_var();
  fcell_xt* var9 = forth_alloc_var();
  fcell_xt* varA = forth_alloc_var();

  /* printf("var1: %p\n", var1); */
  /* printf("var2: %p\n", var2); */
  /* printf("var3: %p\n", var3); */
  /* printf("var4: %p\n", var4); */
  /* printf("var5: %p\n", var5); */
  /* printf("var6: %p\n", var6); */
  /* printf("var7: %p\n", var7); */


  *var1 = (fcell_xt) &xt_docolon;
  *var2 = (fcell_xt) &xt_lit;
  *var3 = (fcell_xt) 3;
  *var4 = (fcell_xt) &xt_lit;
  *var5 = (fcell_xt) 5;
  *var6 = (fcell_xt) &xt_add;
  /* *var7 = (fcell_xt) &xt_quits; */
  *var7 = (fcell_xt) &xt_lit;
  *var8 = (fcell_xt) 1;
  *var9 = (fcell_xt) &xt_add;
  *varA = (fcell_xt) &xt_quits;

  printf(" ");
  for (fcell_xt *i = var1; i <= var5; i += 1)
    printf("\tinstr: %p => %p\n", i, *i);

  forth_eval(var1);

  printf("\n\nDone...\nerror: %ld\n", ctx->vars->error);
  printf("psp->head: %p\n", ctx->psp->head);
  printf("psp->base: %p\n", ctx->psp->base);
  printf("psp stack size: %ld \n\n", ctx->psp->head - ctx->psp->base);

  int cnt = forth_count();
  TEST_CHECK_(1 == cnt, "Expected %d, got %d", 1, cnt);

  fcell_t x;
  while (forth_count()) {
    x = forth_pop();
    printf("remaining stack: %ld\n", x);
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

void test_parsing(void)
{
  test_setup();
  fcell_t x;

  // test dictionary 
  fword_t *a = dict_create(F_NORMAL, 5, "test2");
  fword_t *b = dict_create(F_NORMAL, 5, "test1");
  fword_t *c = dict_create(F_NORMAL, 4, "tst3");

  fword_t *item1 = dict_find(5, "test1");
  fword_t *item2 = dict_find(4, "tst3");
  fword_t *item3 = dict_find(5, "test2");

  /* printf("find word: '%s' -> %p\n", "test1", dict_find(5, "test1")); */
  TEST_CHECK_(item1 == b, "Expected %p, got %p", b, item1);
  TEST_CHECK_(item2 == c, "Expected %p, got %p", c, item2);
  TEST_CHECK_(item3 == a, "Expected %d, got %d", a, item3);


  // test parsing 
  char *basic_words = "dup drop";
  char *basic_add = "1 2 +";
  char *basic_colon = ": inc 1 + ";

  int cnt = forth_count();
  TEST_CHECK_(0 == cnt, "Expected %d, got %d", 0, cnt);

  /* char tib_buff[128] = {0}; */

  uint8_t tib_idx = 0;
  /* uint8_t tib_len = 0; */
  /* char *tib_str = basic_words; */

  printf("parse test: basic_words: %p -- %s\n", basic_words, basic_words);

  tib_idx = parse_word(0, strlen(basic_words), basic_words);


  x = forth_pop();
  TEST_CHECK_(3 == x, "Expected %p, got %p", 3, x);
  x = forth_pop();
  TEST_CHECK_(basic_words == x, "Expected %p, got %p", 3, basic_words);

  while (forth_count()) {
    x = forth_pop();
    printf("remaining stack: %ld (%p)\n", x, (void*)x);
  }

  printf(" >>>>>>>>>>>>>> parsing test \n\n\n");
}


TEST_LIST = {
  { "basic", test_basic },
  { "parsing", test_parsing },
  { 0 }
};

