
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
  forth_bootstrap();

  char *rx_buff[128];
  char *tx_buff[128];

  prompt_init((char*)rx_buff, 128, (char*)tx_buff, 128);

  int prompt_read = 1;
  for (;;) {
    prompt_read = prompt_do(prompt_read);
  }

}

