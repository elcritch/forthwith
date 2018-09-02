#ifndef __FW_PROMPT_H__
#ifdef __cplusplus

#include "forthwith.h"
#include "dict.h"

extern "C" {
#endif

int doeval();
void print_stack();
void print_eol();
fw_call doprintstate();

void prompt_init(char *rx_buff, fcell_t rx_len, char *tx_buff, fcell_t tx_len);
int prompt_do(int read);

#ifdef __cplusplus
}
#endif

#endif // __FW_PROMPT_H__
