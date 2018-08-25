
#define FW_CUSTOM_TOB_FLUSH

#include "forthwith-linux.h"
#include "forthwith.h"
#include "dict.h"
#include "prompt.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {

  forth_init();
  forth_bootstrap(ctx);

  char *rx_buff[128];
  char *tx_buff[128];

  for (;;) {
    doprompt((char*)rx_buff + 0, 128, (char*)tx_buff, 128);
  } 

}
