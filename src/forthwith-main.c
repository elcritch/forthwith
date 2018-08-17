
#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"

#include <stdio.h>
#include <string.h>

int main(int argc, char** argv) {

  forth_init();
  forth_bootstrap(ctx);

  // TODO: read in stdin...

  char *input = "1 2 add ";

  forth_eval_string(input);

  // Finish info
  printf("Done...\nerror: %d\n", (int)ctx->vars->error);
  fcell_t x;
  while ((x = forth_pop(ctx)) && (ctx->vars->error == 0)) {
    printf("remaining stack: %lld\n", x);
  }
  printf("... stack done\n");

  return 0;
}
