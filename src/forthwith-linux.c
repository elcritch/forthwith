
#include "forthwith-linux.h"
#include "forthwith.h"

#include "inner.c"
#include "core.c"
#include "dict.c"

int main(int argc, char** argv) {


  forth_init();
  forth_bootstrap(ctx);

  return 0;
}

