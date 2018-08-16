
#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"

#include <stdio.h>
#include <string.h>

int main(int argc, char** argv) {

  forth_init();
  forth_bootstrap(ctx);

  printf("word: %p\n", dict_create(F_NORMAL, 5, "test2", NULL));
  printf("word: %p\n", dict_create(F_NORMAL, 5, "test1", NULL));
  printf("word: %p\n", dict_create(F_NORMAL, 5, "test3", NULL));

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
  /* *var2 = (IP_t) &xt_add; */
  /* *var3 = (IP_t) &xt_quits; */

  /* forth_push(ctx, 30); */
  /* forth_push(ctx, 50); */

  printf(" ");
  for (fcell_xt *i = var1; i <= var5; i += 1)
    printf("\tinstr: %p => %p\n", i, *i);

  forth_eval(var1);

  printf("Done...\nerror: %d\n", (int)ctx->vars->error);
  fcell_t x;
  while ((x = forth_pop(ctx)) && (ctx->vars->error == 0)) {
    printf("remaining stack: %lld\n", x);
  }
  printf("... stack done\n");

  return 0;
}
