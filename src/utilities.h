
#ifndef _FW_UTILITIES_H_
#define _FW_UTILITIES_H_

#ifdef __cplusplus
extern "C" {
#endif

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

#ifdef __cplusplus
}
#endif

#endif // _FW_UTILITIES_H_
