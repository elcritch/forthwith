

/* #include "acutest.h" */

#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"

#include <stdio.h>
#include <string.h>

void test_setup() {
  forth_init();
  forth_bootstrap(ctx);
}

#define TEST_CHECK_(args...)

void dict_print();

void test_interpreter(void) {
  test_setup();

  dict_print();

  /* printf("\n\nxt_interpret: %d / %d\n", sizeof(xt_interpret), sizeof(xt_interpret)>>3); */
  /* for (int i = 0; i < sizeof(xt_interpret) >> 3; i++) { */
  /*   fword_t *entry = dict_lookup(&(xt_interpret[i])); */
  /*   char *name = entry == NULL ? NULL : entry->name; */
  /*   fcell_xt *ipptr = &entry->body; */
  /*   printf("xt_interpret[%d]: %p -> %p -> *%p -> (%p) :: %s\n", i, entry, ipptr, *ipptr, xt_interpret[i], name); */
  /* } */
  /* printf("\n\n"); */

  // test basic if / else (and thereby branch/0branch)
  // test basic find usage
  // Vars
  fcell_xt* var1 = forth_alloc_var();
  fcell_xt* var2 = forth_alloc_var();

  // Colons
  *var1 = (fcell_xt) &xt_docolon;
  *var2 = (fcell_xt) &xt_interpret;

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

/* TEST_LIST = { */
/*   /\* { "basic_intp", test_basic_interpreter }, *\/ */
/*   { "test_full_interpreter", test_full_interpreter }, */
/*   { 0 } */
/* }; */


int main() {
  test_interpreter();
}
