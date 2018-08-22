
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

  int status = 0;

  printf("OK.");

  for (;;) {
    status = doprompt(rx_buff, 128, tx_buff, 128);
  } 

  return 0;
}
