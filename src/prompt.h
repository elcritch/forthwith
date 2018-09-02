
#include "forthwith.h"
#include "dict.h"

#ifdef __FW_PROMPT_H__
#ifdef __cplusplus
extern "C" {
#endif

int doeval();
void print_stack();
void print_eol();
void prompt_init(char *rx_buff, fcell_t rx_len, char *tx_buff, fcell_t tx_len);
int prompt_do(int read);
fw_call doprintstate();


#ifdef __cplusplus
}
#endif

#endif // __FW_PROMPT_H__
