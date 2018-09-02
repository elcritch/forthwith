
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

  const int buff_sz = 1024;
  char *rx_buff = calloc(1, buff_sz);
  char *tx_buff = calloc(1, buff_sz);

  prompt_init((char*)rx_buff, buff_sz, (char*)tx_buff, buff_sz);

  int prompt_read = 1;
  for (;;) {
    prompt_read = prompt_do(prompt_read);
  }

}

