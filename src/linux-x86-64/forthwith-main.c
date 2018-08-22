
#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"
#include "prompt.h"

#include <stdio.h>
#include <string.h>

int main(int argc, char** argv) {

  forth_init();
  forth_bootstrap(ctx);

  char *rx_buff[128];
  char *tx_buff[128];

  printf("OK.");

  for (;;) {
    doprompt((char*)rx_buff + 0, 128, (char*)tx_buff, 128);
  } 

  return 0;
}
