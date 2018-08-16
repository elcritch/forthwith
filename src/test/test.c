

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
  fcell_t x, y;

  // test dictionary 
  fword_t *a = dict_create(F_NORMAL, 5, "test2", NULL);
  fword_t *b = dict_create(F_NORMAL, 5, "test1", NULL);
  fword_t *c = dict_create(F_NORMAL, 4, "tst3", NULL);

  fword_t *item1 = dict_find(5, "test1");
  fword_t *item2 = dict_find(4, "tst3");
  fword_t *item3 = dict_find(5, "test2");

  /* printf("find word: '%s' -> %p\n", "test1", dict_find(5, "test1")); */
  TEST_CHECK_(item1 == b, "Expected %p, got %p", b, item1);
  TEST_CHECK_(item2 == c, "Expected %p, got %p", c, item2);
  TEST_CHECK_(item3 == a, "Expected %d, got %d", a, item3);


  // test parsing 
  char *basic_words = "dup drop";

  int cnt = forth_count();
  TEST_CHECK_(0 == cnt, "Expected %d, got %d", 0, cnt);

  uint8_t tib_idx = 0;
  char *tib = basic_words;
  int expi = 0, expl = 0; // expected index, expected length, resp.

  // test baisc -- part one //
  tib = basic_words;
  printf("parse test: tib: %p -- %s\n", tib, tib);

  tib_idx = parse_word(0, strlen(tib), tib);

  x = forth_pop();
  TEST_CHECK_(3 == x, "Expected %p, got %p", 3, x);
  x = forth_pop();
  TEST_CHECK_(tib + 0 == x, "Expected %p, got %p", tib + 0, x);
  TEST_CHECK_(strncmp(tib, x, 3) == 0, "Expected %p, got %p", tib + 0, x);

  tib_idx = parse_word(tib_idx, strlen(tib), tib);

  x = forth_pop();
  TEST_CHECK_(4 == x, "Expected %p, got %p", 3, x);
  x = forth_pop();
  TEST_CHECK_(tib + 4 == x, "Expected %p, got %p", tib + 4, x);
  TEST_CHECK_(strncmp(tib + 4, x, 4) == 0, "Expected %p, got %p", tib + 4, x);

  // test comments -- part one // 
  char *basic_comments = "dup (test) drop \ eol comment";
  tib = basic_comments;

  tib_idx = parse_word(0, strlen(tib), tib);

  x = forth_pop(); expl = 3;
  TEST_CHECK_(expl == x, "Expected %p, got %p", expl, x);

  x = forth_pop(); expi = 0;
  TEST_CHECK_(tib + expi == x, "Expected %p, got %p", tib + expi, x);
  TEST_CHECK_(strncmp(tib + expi, x, expl) == 0, "Expected %p, got %p", tib + expi, x);

  // test comments -- part two //
  tib_idx = parse_word(tib_idx, strlen(tib), tib);

  x = forth_pop(); expl = 4;
  TEST_CHECK_(expl == x, "Expected %p, got %p", expl, x);

  x = forth_pop(); expi = 11;
  TEST_CHECK_(tib + expi == x, "Expected %p, got %p", tib + expi, x);
  TEST_CHECK_(strncmp(tib + expi, x, expl) == 0, "Expected `%4s`, got `%4s`", tib + expi, x);


  // test nums -- part one // 
  char *basic_add = "1 -F +";
  tib = basic_add;

  tib_idx = parse_word(0, strlen(tib), tib);

  x = forth_pop(); expl = 1;
  TEST_CHECK_(expl == x, "Expected %p, got %p", expl, x);

  y = forth_pop(); expi = 0;
  TEST_CHECK_(tib + expi == y, "Expected %p, got %p", tib + expi, y);
  TEST_CHECK_(strncmp(tib + expi, y, expl) == 0, "Expected %p, got %p", tib + expi, y);

  // test nums -- part one.a //
  parse_number(16, x, y);

  x = forth_pop(); expl = 0;
  TEST_CHECK_(expl == x, "Expected %d, got %d", expl, x);

  y = forth_pop(); expi = 1;
  TEST_CHECK_(expi == y, "Expected %d, got %d", expi, y);


  // test nums -- part two //
  tib_idx = parse_word(tib_idx, strlen(tib), tib);

  x = forth_pop(); expl = 2;
  TEST_CHECK_(expl == x, "Expected %p, got %p", expl, x);

  y = forth_pop(); expi = 2;
  TEST_CHECK_(tib + expi == y, "Expected %p, got %p", tib + expi, y);
  TEST_CHECK_(strncmp(tib + expi, y, expl) == 0, "Expected `%4s`, got `%4s`", tib + expi, y);

  // test nums -- part two.a //
  parse_number(16, x, y);

  x = forth_pop(); expl = 0;
  TEST_CHECK_(expl == x, "Expected %d, got %d", expl, x);

  y = forth_pop(); expi = -0xF;
  TEST_CHECK_(expi == y, "Expected %d, got %d", expi, y);


  // test nums -- part three //
  tib_idx = parse_word(tib_idx, strlen(tib), tib);

  x = forth_pop(); expl = 1;
  TEST_CHECK_(expl == x, "Expected %p, got %p", expl, x);

  x = forth_pop(); expi = 5;
  TEST_CHECK_(tib + expi == x, "Expected %p, got %p", tib + expi, x);
  TEST_CHECK_(strncmp(tib + expi, x, expl) == 0, "Expected `%4s`, got `%4s`", tib + expi, x);


  char *basic_colon = ": inc 1 + ";

  printf("\n <<<<<<<<<<<<<< parsing test: leftover stack: \n");
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

