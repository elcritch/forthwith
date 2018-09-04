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

: begin immediate compile-time HERE ;
: again immediate compile-time ['] branch , backref, ;
: until immediate compile-time ['] 0branch , backref, ;

: dip ( a xt -- a ) swap >r exec r> ;
: keep ( a xt -- xt.a a ) over >r exec r> ;
: 2over ( ) over over ;

: 2drop ( a b -- ) drop drop ;
: 3dup ( a b c -- a b c a b c) dup 2over rot ;
: 3drop ( a b c -- ) 2drop drop ;

: cr ( -- ) 13 emit 10 emit ;
: space ( -- ) 32 emit ;

: prepare-forward-ref ( -- a ) HERE @ 0 , ;
: resolve-forward-ref ( a -- ) HERE @ over - swap ! ;

: ifthen immediate compile-time ['] 0branch , prepare-forward-ref ;
: else immediate compile-time ['] branch , prepare-forward-ref swap resolve-forward-ref ;
: fi immediate compile-time resolve-forward-ref ;


dict: 

: a ifthen 7 fi ;


