
/* #define FW_MANUAL_TEST */

#ifndef FW_MANUAL_TEST
#include "acutest.h"
#endif // FW_MANUAL_TEST

#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char out_buff[256] = {0};

void print_psp_info() {
  printf("\n\nDone...\nerror: "CELL_FMT"\n", ctx_vars->error);
  printf("psp->head: %p\n", ctx_psp->head);
  printf("psp->base: %p\n", ctx_psp->base);
  printf("psp stack size: "CELL_FMT" \n\n", (fcell_t)(ctx_psp->head - ctx_psp->base));
}

void test_setup() {
  struct forth_init_sizes init_sizes = { .psp = 256,
                                         .rsp = 256,
                                         .user = 16384,
                                         .dict = 16384,
                                         .strings = 16384 };

  forth_init(init_sizes);
  forth_bootstrap();

  if (ctx_vars->tob_str)
    free(ctx_vars->tob_str);

  fcell_t tob_len = 16 << 10;
  ctx_vars->tob_idx = 0;
  ctx_vars->tob_str = calloc(1, tob_len);
  ctx_vars->tob_len = tob_len;
}

#ifdef FW_MANUAL_TEST
#define TEST_CHECK_(args...)
#endif // FW_MANUAL_TEST

void dict_print();
void docolon(FORTH_REGISTERS);

void test_basic(void) {
  test_setup();

  dict_print();

  /* printf("\n\nxt_interpret: "CELL_FMT" / "CELL_FMT"\n", sizeof(xt_interpret), sizeof(xt_interpret)>>3); */
  /* for (int i = 0; i < sizeof(xt_interpret) >> 3; i++) { */
  /*   fword_t *entry = dict_lookup(xt_interpret[i]); */
  /*   char *name = entry == NULL ? NULL : entry->name; */
  /*   printf("xt_interpret["CELL_FMT"]: %p :: %s\n", i, xt_interpret[i], name); */
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
  *var2 = (fcell_xt) &xt_tick;
  *var3 = (fcell_xt) 3;
  *var4 = (fcell_xt) &xt_tick;
  *var5 = (fcell_xt) 5;
  *var6 = (fcell_xt) &xt_sadd;
  *var7 = (fcell_xt) &xt_tick;
  *var8 = (fcell_xt) 1;
  *var9 = (fcell_xt) &xt_sadd;
  *varA = (fcell_xt) &xt_semi;

  printf(" \n");
  /* for (fcell_xt *i = var1; i <= var5; i += 1) printf("\tinstr: %016p => %016p\n", i, *i); */
  printf("xt_docolon: %p <- docolon: %p \n", (fcell_xt*)xt_docolon, (fcell_xt*)docolon);
  printf("instr: %p -> %p\n\n", var1, *var1);

  forth_eval(var1);
  forth_flush_tob();


  print_psp_info();

  int cnt = forth_count();
  TEST_CHECK_(1 == cnt, "Expected "CELL_FMT", got "CELL_FMT"", 1, cnt);

  fcell_t x = 0;
  while (forth_count()) {
    x = forth_pop();
    printf("remaining stack: "CELL_FMT"\n", x);
  }

  printf("... stack done\n");
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
  TEST_CHECK_(item3 == a, "Expected "CELL_FMT", got "CELL_FMT"", a, item3);


  // test parsing 
  char *basic_words = "dup drop";

  int cnt = forth_count();
  TEST_CHECK_(0 == cnt, "Expected "CELL_FMT", got "CELL_FMT"", 0, cnt);

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
  TEST_CHECK_(expl == wl, "Expected "CELL_FMT", got "CELL_FMT"", expl, wl);
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
  char *basic_add = "1 -0xF +";
  tib = basic_add;
  tib_idx = 0;

  parse_word(tib_idx, strlen(tib), tib, &ws, &we);
  wl = we - ws;
  tib_idx = we - tib;

  expl = 1; expi = 0;
  TEST_CHECK_(expl == wl, "Expected %p, got %p", expl, wl);
  TEST_CHECK_(tib + expi == (char*)ws, "Expected %p, got %p", tib + expi, ws);
  TEST_CHECK_(strncmp(tib + expi, (char*)ws, expl) == 0, "Expected %p, got %p", tib + expi, ws);

  // test nums -- part one.a //
  parse_number(wl, (char*)ws, &number, &errcode);

  expl = 0; expi = 1;
  TEST_CHECK_(expl == errcode, "Expected "CELL_FMT", got "CELL_FMT"", expl, errcode);
  TEST_CHECK_(expi == number, "Expected "CELL_FMT", got "CELL_FMT"", expi, number);


  // test nums -- part two //
  parse_word(tib_idx, strlen(tib), tib, &ws, &we);
  printf("TEST_PARSE_WORD_PRE: tib_idx `%d`\n", tib_idx );
  wl = we - ws;
  tib_idx = we - tib;

  printf("TEST_PARSE_WORD: ws `%4s`\n", ws );
  printf("TEST_PARSE_WORD: tib_idx `%d`\n", tib_idx );
  printf("TEST_PARSE_WORD: wl `%d`\n", wl);

  expl = 4; expi = 2;
  TEST_CHECK_(expl == wl, "Expected %p, got %p", expl, wl);
  TEST_CHECK_(tib + expi == (char*)ws, "Expected %p, got %p", tib + expi, ws);
  TEST_CHECK_(strncmp(tib + expi, (char*)ws, expl) == 0, "Expected `%4s`, got `%4s`", tib + expi, ws);

  // test nums -- part two.a //
  wl = parse_number(wl, (char*)ws, &number, &errcode);
  printf("TEST_PARSE_NUM: wl `%d`\n", wl);
  printf("TEST_PARSE_NUM: number `%ld`\n", number);
  printf("TEST_PARSE_NUM: errcode `%d`\n", errcode);
  /* tib_idx = tib_idx + wl; */

  expl = 0; expi = -0xF;
  TEST_CHECK_(expl == errcode, "Expected "CELL_FMT", got "CELL_FMT"", expl, errcode);
  TEST_CHECK_(expi == number, "Expected "CELL_FMT", got "CELL_FMT"", expi, number);


  // test nums -- part three //
  printf("TEST_PARSE_WORD: idx `%d`\n", tib_idx);

  printf("TEST_PARSE_WORD: `%s`\n", (char*)(tib + tib_idx));
  wl = parse_word(tib_idx, strlen(tib), tib, &ws, &we);
  tib_idx = we - tib;

  expl = 1; expi = 7;
  TEST_CHECK_(expl == wl, "Expected len %x, got %x", expl, wl);
  TEST_CHECK_(expi == (ws - tib), "Expected idx %d, got %d", expi, (ws - tib) );
  TEST_CHECK_(tib + expi == (char*)ws, "Expected %p, got %p", tib + expi, ws);
  TEST_CHECK_(strncmp(tib + expi, (char*)ws, expl) == 0, "Expected `%1s`, got `%1s`", tib + expi, ws);

  /* char *basic_colon = ": inc 1 + "; */
  fcell_t x;

  printf("\n <<<<<<<<<<<<<< parsing test: leftover stack: \n");
  while (forth_count()) {
    x = forth_pop();
    printf("remaining stack: "CELL_FMT" (%p)\n", x, (void*)x);
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

  int i, n;

  // Vars
  i = 0; n = 7;

  fcell_xt* var[100];
  for (int j = 0; j < n; j++)
    var[i++] = forth_alloc_var();

  // Colons
  i = 0;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)3;
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)5;
  *var[i++] = dict_cfa(dict_find(1, "+"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  // Dict
  fword_t *entry = dict_create(F_NORMAL | F_WORD, 4, "tadd", var[0]);

  printf(" ");
  /* for (int j = 0; j < i; j++) printf("\tinstr: %016p => %016p\n", var[j], *var[j]); */
  printf("entry: %p\n\n", entry);

  forth_eval((fcell_xt*)dict_cfa(dict_find(4, "tadd")));
  forth_flush_tob();

  print_psp_info();

  int cnt = forth_count();
  TEST_CHECK_(1 == cnt, "Expected "CELL_FMT", got "CELL_FMT"", 1, cnt);

  fcell_t x = 0;
  while (forth_count()) {
    x = forth_pop();
    printf("remaining stack: "CELL_FMT"\n", x);
  }

  printf("... stack done\n");
  TEST_CHECK_(x == 8, "Expected "CELL_FMT", got "CELL_FMT"", 8, x);

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

void test_branches(void) {
  test_setup();

  /* dict_print(); */

  // Vars
  int i, n;
  fcell_xt* var[50] = {0};
  fcell_t cnt, x;

  i = 0; n = 45;
  for (int j = 0; j < n; j++)
    var[i++] = forth_alloc_var();

  // Colons
  i = 0;

  // test branch
  int idx_b0 = i;
  printf("<<< Run branch \n");
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)100;
  // jmp
  *var[i++] = dict_cfa(dict_find(6, "branch"));
  *var[i++] = XCELLS(3); // index
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)2;
  // end
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)5;
  *var[i++] = dict_cfa(dict_find(1, "+"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  fword_t *tjmp = dict_create(F_NORMAL | F_WORD, 4, "tjmp", var[idx_b0]);
  (void)tjmp;

  // Rust test true
  forth_eval((fcell_xt*)dict_cfa(dict_find(4, "tjmp")));
  forth_flush_tob();

  cnt = forth_count();
  x = forth_pop();
  TEST_CHECK_(1 == cnt, "Expected "CELL_FMT", got "CELL_FMT"", 1, cnt);
  TEST_CHECK_(x == 105, "Expected "CELL_FMT", got "CELL_FMT"", 105, x);


  printf("<<< Run 0branch \n");
  // test 0branch
  int idx_tifz = i;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = dict_cfa(dict_find(3, "dup"));
  // jmp
  *var[i++] = dict_cfa(dict_find(7, "0branch"));
    *var[i++] = XCELLS(3); // index
    *var[i++] = dict_cfa(dict_find(3, "[']"));
    *var[i++] = (fcell_xt)2;
  // end
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)5;
  *var[i++] = dict_cfa(dict_find(1, "+"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  // Dict
  fword_t *tifz = dict_create(F_NORMAL | F_WORD, 4, "tifz", var[idx_tifz]);
  
  printf(" ");
  /* for (int j = 0; j < i; j++) printf("\tinstr: %016p => %016p\n", var[j], *var[j]); */
  printf("entry: %p\n\n", tifz);


  // test `5 0branch` 
  int idx_tifz5 = i;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)5;
  *var[i++] = dict_cfa(dict_find(4, "tifz"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  printf("<<< test 0branch \n");
  fword_t *tifz5 = dict_create(F_NORMAL | F_WORD, 5, "tifz5", var[idx_tifz5 ]);
  (void)tifz5;

  // Rust test true
  printf("<<< Run Test True\n");
  forth_eval((fcell_xt*)dict_cfa(dict_find(5, "tifz5")));
  forth_flush_tob();

  cnt = forth_count();
  x = forth_pop();

  TEST_CHECK_(2 == cnt, "Expected "CELL_FMT", got "CELL_FMT"", 2, cnt);
  TEST_CHECK_(x == 7, "Expected "CELL_FMT", got "CELL_FMT"", 7, x);

  forth_pop();

  // test `0 0branch` 
  int idx_tifz0 = i;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)0;
  *var[i++] = dict_cfa(dict_find(4, "tifz"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  printf("<<< test 0branch \n");
  fword_t *tifz0 = dict_create(F_NORMAL | F_WORD, 5, "tifz0", var[idx_tifz0]);
  (void)tifz0;

  // Rust test true
  printf("<<< Run Test True\n");
  forth_eval((fcell_xt*)dict_cfa(dict_find(5, "tifz0")));
  forth_flush_tob();

  cnt = forth_count();
  x = forth_pop();
  TEST_CHECK_(1 == cnt, "Expected "CELL_FMT", got "CELL_FMT"", 1, cnt);
  TEST_CHECK_(x == 5, "Expected "CELL_FMT", got "CELL_FMT"", 5, x);

}

void test_ifelse(void) {
  test_setup();

  /* dict_print(); */

  // Vars
  int i, n;
  fcell_xt* var[100] = {0};

  i = 0; n = 24;
  for (int j = 0; j < n; j++)
    var[i++] = forth_alloc_var();

  // Colons
  i = 0;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  // if !x 
  *var[i++] = dict_cfa(dict_find(7, "0branch"));
    *var[i++] = XCELLS(5); // index
    *var[i++] = dict_cfa(dict_find(3, "[']"));
    *var[i++] = (fcell_xt)7;
    // else
  *var[i++] = dict_cfa(dict_find(6, "branch"));
    *var[i++] = XCELLS(3); // index
    *var[i++] = dict_cfa(dict_find(3, "[']"));
    *var[i++] = (fcell_xt)2;
  // fi
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)5;
  *var[i++] = dict_cfa(dict_find(1, "+"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  // Dict
  fword_t *tif = dict_create(F_NORMAL | F_WORD, 3, "tif", var[0]);
  
  printf(" ");
  /* for (int j = 0; j < i; j++) printf("\tinstr: %016p => %016p\n", var[j], *var[j]); */
  printf("entry: %p\n\n", tif);

  fcell_t cnt, x;


  // test true
  int idx_t = i;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt) 1;
  *var[i++] = dict_cfa(dict_find(3, "tif"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  fword_t *tst = dict_create(F_NORMAL | F_WORD, 7, "ts_true", var[idx_t]);
  (void)tst;

  // Rust test true
  printf("<<< Run Test True\n");
  forth_eval((fcell_xt*)dict_cfa(dict_find(7, "ts_true")));
  forth_flush_tob();

  cnt = forth_count();
  x = forth_pop();
  TEST_CHECK_(1 == cnt, "Expected "CELL_FMT", got "CELL_FMT"", 1, cnt);
  TEST_CHECK_(x == 12, "Expected "CELL_FMT", got "CELL_FMT"", 12, x);

  // test false
  printf("<<< Run Test False\n");
  int idx_f = i;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt) 0;
  *var[i++] = dict_cfa(dict_find(3, "tif"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  fword_t *tsf = dict_create(F_NORMAL | F_WORD, 8, "ts_false", var[idx_f]);
  (void)tsf;

  // Rust test true
  forth_eval((fcell_xt*)dict_cfa(dict_find(8, "ts_false")));
  forth_flush_tob();

  cnt = forth_count();
  x = forth_pop();
  TEST_CHECK_(1 == cnt, "Expected "CELL_FMT", got "CELL_FMT"", 1, cnt);
  TEST_CHECK_(x == 7, "Expected "CELL_FMT", got "CELL_FMT"", 7, x);

}

void test_other(void) {
  test_setup();

  int i, n;

  // Vars
  i = 0; n = 9;

  fcell_xt* var[100];
  for (int j = 0; j < n; j++)
    var[i++] = forth_alloc_var();

  // Colons
  i = 0;
  *var[i++] = (fcell_xt) dict_cfa(dict_find(7, "docolon"));
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)1;
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)2;
  *var[i++] = dict_cfa(dict_find(3, "[']"));
  *var[i++] = (fcell_xt)3;
  *var[i++] = dict_cfa(dict_find(3, "rot"));
  *var[i++] = dict_cfa(dict_find(4, "semi"));

  // Dict
  fword_t *entry = dict_create(F_NORMAL | F_WORD, 4, "tadd", var[0]);

  printf(" ");
  /* for (int j = 0; j < i; j++) printf("\tinstr: %016p => %016p\n", var[j], *var[j]); */
  printf("entry: %p\n\n", entry);

  forth_eval((fcell_xt*)dict_cfa(dict_find(4, "tadd")));
  forth_flush_tob();

  print_psp_info();

  printf("\n\n>> "); for (fcell_t *i = ctx_psp->base; i < ctx_psp->head; i++) {printf(""CELL_FMT", ", *i);}; printf("\n");

  int cnt = forth_count();
  TEST_CHECK_(3 == cnt, "Expected "CELL_FMT", got "CELL_FMT"", 3, cnt);

  fcell_t expi;

  expi = 1; fcell_t x = forth_pop();
  TEST_CHECK_(x == expi, "Expected "CELL_FMT", got "CELL_FMT"", expi, x);

  expi = 3; fcell_t y = forth_pop();
  TEST_CHECK_(y == expi, "Expected "CELL_FMT", got "CELL_FMT"", expi, y);

  expi = 2; fcell_t z = forth_pop();
  TEST_CHECK_(z == expi, "Expected "CELL_FMT", got "CELL_FMT"", expi, z);

  TEST_CHECK_(forth_errno() == 0,
              "stackunderflow: Expected "CELL_FMT", got "CELL_FMT"",
              0, forth_errno());

  forth_clear();

  TEST_CHECK_(forth_errno() == FW_OK,
              "errno: Expected "CELL_FMT", got "CELL_FMT"",
              forth_errno(),
              FW_OK);

  printf(" >>>>>>>>>>>>>> basic test \n\n\n");
}

#include "test_intp.c"

#ifndef FW_MANUAL_TEST
TEST_LIST = {
  { "basic", test_basic },
  { "parsing", test_parsing },
  { "create", test_create },
  { "branches", test_branches },
  { "ifesle", test_ifelse },
  { "other", test_other },
  { "interpreter", test_interpreter },
  { "colon", test_colon },
  { "colon2", test_colon2 },
  { 0 }
};
#endif // FW_MANUAL_TEST

#ifdef FW_MANUAL_TEST
int main() {
  test_basic();
  /* test_branches(); */
  /* test_interpreter(); */
  /* test_colon(); */

  return forth_count();
}
#endif // FW_MANUAL_TEST

