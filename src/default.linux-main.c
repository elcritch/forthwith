
#define FW_CUSTOM_TOB_FLUSH

#include "forthwith.h"
#include "dict.h"
#include "prompt.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {
  struct forth_init_sizes init_sizes = { .psp = 512,
                                         .rsp = 512,
                                         .user = 16384,
                                         .dict = 16384,
                                         .strings = 16384 };

  forth_init(init_sizes);
  forth_bootstrap();

  const int buff_sz = 8192;
  char *rx_buff = calloc(1, buff_sz);
  char *tx_buff = calloc(1, buff_sz);

  prompt_init((char*)rx_buff, buff_sz, (char*)tx_buff, buff_sz);

  prompt_load_core();

  int prompt_read = 1;
  for (;;) {
    prompt_read = prompt_do(prompt_read);
  }

}

