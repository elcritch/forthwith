
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

  printf("word: %x\n", dict_create(ctx, 5, "test2"));
  printf("word: %x\n", dict_create(ctx, 5, "test1"));
  printf("word: %x\n", dict_create(ctx, 5, "test3"));

  printf("find word: '%s' -> %x\n", "test1", find(ctx, 5, "test1"));

  return 0;
}

