
#include "forthwith-linux.h"
#include "forthwith.h"

#include "inner.c"
#include "core.c"
#include "dict.c"
#include "forthwith.c"

#include <stdio.h>
#include <string.h>

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

  printf("var1: %p\n", var1);
  printf("var2: %p\n", var2);
  printf("var3: %p\n", var3);
  printf("var4: %p\n", var4);
  printf("var5: %p\n", var5);
  printf("var6: %p\n", var6);

  *var1 = &docolon;
  *var2 = &doconst;
  *var3 = 3;
  *var4 = &doconst;
  *var5 = 5;
  *var4 = &add;

  forth_eval(ctx, var1);

  return 0;
}

