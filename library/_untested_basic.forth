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

: +! ( n var -- ) tuck @ + swap ! ;
: -! ( n var -- ) tuck @ swap - swap ! ;
: c+! ( n var -- ) tuck c@ + swap c! ;

: prepare-forward-ref ( -- a ) HERE 0 , ;
: resolve-forward-ref ( a -- ) HERE over - swap ! ;

: ifthen immediate compile-time ['] 0branch , prepare-forward-ref ;
: else immediate compile-time ['] branch , prepare-forward-ref swap resolve-forward-ref ;
: fi immediate compile-time resolve-forward-ref ;

: ?dup ( a -- a a | 0 ) dup ifthen dup fi ;

: . ( n -- )
    dup 0< ifthen 45 emit -1 * fi
    10 /mod ?dup ifthen . fi
    48 + emit ;

: ? ( a -- ) @ . ;

: unloop r> r> r> 2drop >r ;
: do immediate compile-time ['] swap , ['] >r , ['] >r , 0 ( do ) HERE @ ( backref ) ;
: ?do immediate compile-time
    ['] 2dup , ['] swap , ['] >r , ['] >r ,
    ['] <> , ['] 0branch , prepare-forward-ref
    1 ( ?do ) HERE ( backref ) ;

: bounds ( start len -- limit start ) over + swap ;

: loop immediate compile-time
    ['] r> , ['] 1+ , ['] >r ,
    ['] i , ['] rp@ , ['] cell , ['] + , ['] @ , \ index limit
    ['] >= ,
    ['] 0branch , backref,
    ifthen ( ?do ) resolve-forward-ref fi
    ['] unloop , ;

: end? ( increment -- bool )
    rp@ cell + @                   \ i+increment
    rp@ 2 cells + @                \ limit
    - dup rot - xor 0< ;           \ (index-limit) and (index-limit+increment) have difthenferent sign?

: +loop immediate compile-time
    ['] dup ,                      \ increment
    ['] rp@ , ['] +! ,
    ['] end? ,
    ['] 0branch , backref,
    ifthen ( ?do ) resolve-forward-ref fi
    ['] unloop , ;

: while immediate compile-time ['] 0branch , prepare-forward-ref ;
: repeat immediate compile-time swap ['] branch , backref, resolve-forward-ref ;


