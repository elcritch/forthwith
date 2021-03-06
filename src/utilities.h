
#ifndef _FW_UTILITIES_H_
#define _FW_UTILITIES_H_

#ifdef __cplusplus
extern "C" {
#endif

fcell_t parse_word(uint8_t idx, uint8_t len, char *tib,
                   char **word_start, char **word_stop);

fcell_t parse_number(uint8_t len, char *addr,
                     fcell_t *number, fcell_t *err);

void write_str(fcell_t len, char *n);
void write_number(fcell_t n);
void write_char(char c);

// {*tib} {tib_idx++} ( -- cp n )
void docreate();
// ( n -- ) {*user} 
void docomma();
// ( -- ) {*var->state}
void dolbrac();
// ( -- ) {*var->state}
void dorbrac();
// ( -- cp n ) {tib} {tib_idx++} 
void doword();
// ( cp n -- ep )
void dofind();
void docfa();
void doemit();
void donumber();

#ifdef __cplusplus
}
#endif

#endif // _FW_UTILITIES_H_
