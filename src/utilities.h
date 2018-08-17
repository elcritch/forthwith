
#ifndef _FW_UTILITIES_H_
#define _FW_UTILITIES_H_

fcell_t parse_word(uint8_t idx, uint8_t len, char *tib,
                   char **word_start, char **word_stop);

fcell_t parse_number(uint8_t len, char *addr,
                     fcell_t *number, fcell_t *err);

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


#endif // _FW_UTILITIES_H_
