

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

/* #define TEST_CHECK_(args...) */

void dict_print();
void docolon(FORTH_REGISTERS);

void test_basic(void) {
  test_setup();

  dict_print();

  /* printf("\n\nxt_interpret: %d / %d\n", sizeof(xt_interpret), sizeof(xt_interpret)>>3); */
  /* for (int i = 0; i < sizeof(xt_interpret) >> 3; i++) { */
  /*   fword_t *entry = dict_lookup(xt_interpret[i]); */
  /*   char *name = entry == NULL ? NULL : entry->name; */
  /*   printf("xt_interpret[%d]: %p :: %s\n", i, xt_interpret[i], name); */
  /* } */
  /* printf("\n\n"); */

  // Vars
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

  // Colons
  *var1 = (fcell_xt) xt_docolon;
  *var2 = (fcell_xt) &xt_lit;
  *var3 = (fcell_xt) 3;
  *var4 = (fcell_xt) &xt_lit;
  *var5 = (fcell_xt) 5;
  *var6 = (fcell_xt) &xt_add;
  *var7 = (fcell_xt) &xt_lit;
  *var8 = (fcell_xt) 1;
  *var9 = (fcell_xt) &xt_add;
  *varA = (fcell_xt) &xt_semi;

  printf(" ");
  for (fcell_xt *i = var1; i <= var5; i += 1)
    printf("\tinstr: %16p => %16p\n", i, *i);

  printf("xt_docolon: %16p <- docolon: %16p \n\n", xt_docolon, docolon);

  forth_eval(var1);

  printf("\n\nDone...\nerror: %lld\n", ctx->vars->error);
  printf("psp->head: %p\n", ctx->psp->head);
  printf("psp->base: %p\n", ctx->psp->base);
  printf("psp stack size: %ld \n\n", ctx->psp->head - ctx->psp->base);

  int cnt = forth_count();
  TEST_CHECK_(1 == cnt, "Expected %d, got %d", 1, cnt);

  fcell_t x = 0;
  while (forth_count()) {
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

void test_parsing(void)
{
  test_setup();

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

  char *tib = basic_words;
  fcell_t tib_idx = 0;
  int expi = 0, expl = 0; // expected index, expected length, resp.

  char *ws;
  char *we;
  fcell_t wl;

  fcell_t number;
  fcell_t errcode;

  // test baisc -- part one //
  tib = basic_words;
  printf("parse test: tib: %p -- %s\n", tib, tib);

  wl = parse_word(tib_idx, strlen(tib), tib, &ws, &we);
   tib_idx = tib_idx + wl;

  expl = 3; expi = 0; /* x = forth_pop(); */
  TEST_CHECK_(expl == wl, "Expected %p, got %p", expl, wl);
  TEST_CHECK_(tib + expi == (char*)ws, "Expected %p, got %p", tib + expi, ws);
  TEST_CHECK_(strncmp(tib, (char*)ws, expl) == 0, "Expected %p, got %p", tib + expi, ws);

  wl = parse_word(tib_idx, strlen(tib), tib, &ws, &we);
  tib_idx = tib_idx + wl;

  expl = 4; expi = 4;
  TEST_CHECK_(expl == wl, "Expected %ld, got %ld", expl, wl);
  TEST_CHECK_(tib + expi == (char*)ws, "Expected %p, got %p", tib + expi, ws);
  TEST_CHECK_(strncmp(tib + expi, (char*)ws, expl) == 0, "Expected %p, got %p", tib + expi, ws);

  // test comments -- part one // 
  char *basic_comments = "dup (test) drop \\ eol comment";
  tib = basic_comments;
  tib_idx = 0;

  parse_word(tib_idx, strlen(tib), tib, &ws, &we);
  wl = we - ws; tib_idx = tib_idx + wl;

  expl = 3; expi = 0;
  TEST_CHECK_(expl == wl, "Expected %p, got %p", expl, wl);
  TEST_CHECK_(tib + expi == (char*)ws, "Expected %p, got %p", tib + expi, ws);
  TEST_CHECK_(strncmp(tib + expi, (char*)ws, expl) == 0, "Expected %p, got %p", tib + expi, ws);

  // test comments -- part two //
  parse_word(tib_idx, strlen(tib), tib, &ws, &we);
  wl = we - ws; tib_idx = tib_idx + wl;

  expl = 4; expi = 11;
  TEST_CHECK_(expl == wl, "Expected %p, got %p", expl, wl);
  TEST_CHECK_(tib + expi == (char*)ws, "Expected %p, got %p", tib + expi, ws);
  TEST_CHECK_(strncmp(tib + expi, (char*)ws, expl) == 0, "Expected `%4s`, got `%4s`", tib + expi, ws);

  // test nums -- part one // 
  char *basic_add = "1 -F +";
  tib = basic_add;
  tib_idx = 0;

  parse_word(tib_idx, strlen(tib), tib, &ws, &we);
  wl = we - ws; tib_idx = tib_idx + wl;

  expl = 1; expi = 0;
  TEST_CHECK_(expl == wl, "Expected %p, got %p", expl, wl);
  TEST_CHECK_(tib + expi == (char*)ws, "Expected %p, got %p", tib + expi, ws);
  TEST_CHECK_(strncmp(tib + expi, (char*)ws, expl) == 0, "Expected %p, got %p", tib + expi, ws);

  // test nums -- part one.a //
  parse_number(wl, (char*)ws, &number, &errcode);

  expl = 0; expi = 1;
  TEST_CHECK_(expl == errcode, "Expected %d, got %d", expl, errcode);
  TEST_CHECK_(expi == number, "Expected %d, got %d", expi, number);


  // test nums -- part two //
  parse_word(tib_idx, strlen(tib), tib, &ws, &we);
  wl = we - ws; tib_idx = tib_idx + wl;

  expl = 2; expi = 2;
  TEST_CHECK_(expl == wl, "Expected %p, got %p", expl, wl);
  TEST_CHECK_(tib + expi == (char*)ws, "Expected %p, got %p", tib + expi, ws);
  TEST_CHECK_(strncmp(tib + expi, (char*)ws, expl) == 0, "Expected `%4s`, got `%4s`", tib + expi, ws);

  // test nums -- part two.a //
  wl = parse_number(wl, (char*)ws, &number, &errcode);
  tib_idx = tib_idx + wl;

  expl = 0; expi = -0xF;
  TEST_CHECK_(expl == errcode, "Expected %d, got %d", expl, errcode);
  TEST_CHECK_(expi == number, "Expected %d, got %d", expi, number);


  // test nums -- part three //
  wl = parse_word(tib_idx, strlen(tib), tib, &ws, &we);
  tib_idx = tib_idx + wl;

  expl = 1; expi = 5;
  TEST_CHECK_(expl == wl, "Expected %p, got %p", expl, wl);
  TEST_CHECK_(tib + expi == (char*)ws, "Expected %p, got %p", tib + expi, ws);
  TEST_CHECK_(strncmp(tib + expi, (char*)ws, expl) == 0, "Expected `%1s`, got `%1s`", tib + expi, ws);

  /* char *basic_colon = ": inc 1 + "; */
  fcell_t x;

  printf("\n <<<<<<<<<<<<<< parsing test: leftover stack: \n");
  while (forth_count()) {
    x = forth_pop();
    printf("remaining stack: %lld (%p)\n", x, (void*)x);
  }

  printf(" >>>>>>>>>>>>>> parsing test \n\n\n");
}
void test_basic_interpreter(void) {
  test_setup();

  // test basic if / else (and thereby branch/0branch)
  // test basic find usage
}

void test_create(void) {
  test_setup();


  // Vars
  fcell_xt* var1 = forth_alloc_var();
  fcell_xt* var2 = forth_alloc_var();
  fcell_xt* var3 = forth_alloc_var();
  fcell_xt* var4 = forth_alloc_var();
  fcell_xt* var5 = forth_alloc_var();
  fcell_xt* var6 = forth_alloc_var();
  fcell_xt* var7 = forth_alloc_var();
  /* fcell_xt* var8 = forth_alloc_var(); */
  /* fcell_xt* var9 = forth_alloc_var(); */
  /* fcell_xt* varA = forth_alloc_var(); */

  // Colons
  *var1 = *dict_cfa(dict_find(7, "docolon"));
  *var2 = dict_cfa(dict_find(3, "lit"));
  *var3 = 3;
  *var4 = dict_cfa(dict_find(3, "lit"));
  *var5 = 5;
  *var6 = dict_cfa(dict_find(3, "add"));
  *var7 = dict_cfa(dict_find(4, "semi"));

  // Dict
  fword_t *entry = dict_create(F_NORMAL, 4, "tadd", var1);

  printf(" ");
  for (fcell_xt *i = var1; i <= var5; i += 1)
    printf("\tinstr: %16p => %16p\n", i, *i);
  printf(" ");

  forth_eval(*dict_cfa(dict_find(4, "tadd")));

  printf("\n\nDone...\nerror: %lld\n", ctx->vars->error);
  printf("psp->head: %p\n", ctx->psp->head);
  printf("psp->base: %p\n", ctx->psp->base);
  printf("psp stack size: %ld \n\n", ctx->psp->head - ctx->psp->base);

  int cnt = forth_count();
  TEST_CHECK_(1 == cnt, "Expected %d, got %d", 1, cnt);

  fcell_t x = 0;
  while (forth_count()) {
    x = forth_pop();
    printf("remaining stack: %lld\n", x);
  }

  printf("... stack done\n");
  TEST_CHECK_(x == 8, "Expected %d, got %d", 8, x);

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

TEST_LIST = {
  { "basic", test_basic },
  { "parsing", test_parsing },
  { "create", test_create },
  { 0 }
};

/* int main() { */
/*   test_basic(); */

/*   return forth_count(); */
/* } */
