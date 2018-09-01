
#include "forthwith.h"
#include "dict.h"

#ifdef __FW_PROMPT_H__
#ifdef __cplusplus
extern "C" {
#endif

int doeval();
void print_stack();
void print_eol();
void prompt_init();
int prompt_do(char *rx_buff, size_t rx_len, char *tx_buff, size_t tx_len);
fw_call doprintstate();


#ifdef __cplusplus
}
#endif

#endif // __FW_PROMPT_H__
