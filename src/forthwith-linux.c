
#include "forthwith-linux.h"
#include "forthwith.h"

#include "inner.c"
#include "core.c"
#include "dict.c"
#include "forthwith.c"

#include <stdio.h>
#include <string.h>

fcell_xt xt_docolon = (fcell_xt)&docolon;
fcell_xt xt_doconst = (fcell_xt)&doconst;
fcell_xt xt_add = (fcell_xt)&add;
fcell_xt xt_quits = (fcell_xt)&quits;

int main(int argc, char** argv) {

  forth_init();
  forth_bootstrap(ctx);

  printf("word: %p\n", dict_create(ctx, 5, "test2"));
  printf("word: %p\n", dict_create(ctx, 5, "test1"));
  printf("word: %p\n", dict_create(ctx, 5, "test3"));

  printf("find word: '%s' -> %p\n", "test1", find(ctx, 5, "test1"));

  IP_t* var1 = forth_alloc_var(ctx);
  IP_t* var2 = forth_alloc_var(ctx);
  IP_t* var3 = forth_alloc_var(ctx);
  IP_t* var4 = forth_alloc_var(ctx);
  IP_t* var5 = forth_alloc_var(ctx);
  IP_t* var6 = forth_alloc_var(ctx);
  IP_t* var7 = forth_alloc_var(ctx);

  printf("var1: %p\n", var1);
  printf("var2: %p\n", var2);
  printf("var3: %p\n", var3);
  printf("var4: %p\n", var4);
  printf("var5: %p\n", var5);
  printf("var6: %p\n", var6);
  printf("var7: %p\n", var7);

  *var1 = (IP_t) &xt_docolon;
  /* *var2 = (IP_t) &xt_doconst; */
  /* *var3 = (IP_t) 3; */
  /* *var4 = (IP_t) &xt_doconst; */
  /* *var5 = (IP_t) 5; */
  /* *var6 = (IP_t) &xt_add; */
  /* *var7 = (IP_t) &xt_quits; */
  *var2 = (IP_t) &xt_add;
  *var3 = (IP_t) &xt_quits;

  forth_push(ctx, 3);
  forth_push(ctx, 5);

  printf(" ");
  for (IP_t *i = var1; i <= var3; i += 1)
    printf("\tinstr: %p => %p\n", i, *i);

  forth_eval(var1);

  printf("Done...\n\n");
  fcell_t *x;
  while ((x = forth_pop(ctx)) != NULL) {
    printf("remaining stack: %d, %p\n", *x, x);
  }

  return 0;
}

