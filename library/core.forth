: 0> 0 > ;
: >0 0 < ;
: 0= 0 = ;

: 1+ 1 + ;
: 1- 1 - ;
: nop ;
: compile-time nop ;

: cells cell * ;

: interpret? STATE @ 0= ;
: backref, HERE - , ;

: begin compile-time HERE ; immediate
: again compile-time ['] branch , backref, ; immediate
: until compile-time ['] 0branch , backref, ; immediate

: dip ( a xt -- a ) swap >r exec r> ;
: keep ( a xt -- xt.a a ) over >r exec r> ;
: 2over ( ) over over ;

: 2drop ( a b -- ) drop drop ;
: 3dup ( a b c -- a b c a b c) dup 2over rot ;
: 3drop ( a b c -- ) 2drop drop ;

: cr ( -- ) 13 emit 10 emit ;
: space ( -- ) 32 emit ;

: prepare-forward-ref ( -- a ) HERE 0 , ;
: resolve-forward-ref ( a -- ) HERE over - swap ! ;

: ifthen compile-time ['] 0branch , prepare-forward-ref ; immediate
: else compile-time ['] branch , prepare-forward-ref swap resolve-forward-ref ; immediate
: fi compile-time resolve-forward-ref ; immediate

