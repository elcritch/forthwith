
: /  /mod swap drop ;
: %  /mod drop ;

\ : var-arr-alloca ( count size idx -- ptr ) ;
\ : var-ptr ( idx -- ptr )
\ : var-ptr-off ( offset idx -- ptr )
\ : var-free ( idx -- )
\ : var-idx! ( val offset idx -- )
\ : var-idx@ ( offset idx -- val )
\ : user-cb ( idx -- <call-results> )

: 1st 0 ;
: 2nd 1 ;
: 3rd 2 ;
: 4th 3 ;

: var-alloca ( size var-id -- ) 1 rot rot var-arr-alloca ;
: var! ( val var-id -- ) 0 swap var-elem! ;
: var@ ( var-id -- val ) 0 swap var-elem@ ;

: 0> 0 > ;
: 0< 0 < ;
: 0= 0 = ;
: 0<> 0 <> ;

: 1+ 1 + ;
: 1- 1 - ;

: nop ;
: compile-time ;
: |> ;

: cells ( n1 -- n2 ) cell * ;

: interpret? STATE @ 0= ;
: backref, HERE @ - , ;

: begin immediate compile-time HERE @ ;
: again immediate compile-time ['] branch , backref, ;
: until immediate compile-time ['] 0branch , backref, ;

: dip ( a xt -- a ) swap >r exec r> ;
: keep ( a xt -- xt.a a ) over >r exec r> ;
: 2over ( ) over over ;

: 2drop ( a b -- ) drop drop ;
: 3dup ( a b c -- a b c a b c) dup 2over rot ;
: 3drop ( a b c -- ) 2drop drop ;

: nl ( -- ) 0xA emit ;
: space ( -- ) 0x20 emit ;
: tab ( -- )  0x9 emit ;

: +! ( n var -- ) tuck @ + swap ! ;
: -! ( n var -- ) tuck @ swap - swap ! ;
: i ( -- n ) rp@ 2 cells - @ ;
: n ( -- n ) rp@ cell 3 * - @ ;
: j ( -- n ) rp@ cell 4 * - @ ;
: o ( -- n ) rp@ cell 5 * - @ ;

: prepare-forward-ref ( -- a ) HERE @ 0 , ;
: resolve-forward-ref ( a -- ) HERE @ over - swap ! ;

: ifthen immediate compile-time ['] 0branch , prepare-forward-ref ;
: else immediate compile-time ['] branch , prepare-forward-ref swap resolve-forward-ref ;
: fi immediate compile-time resolve-forward-ref ;

: ?dup ( a -- a a | 0 ) dup ifthen dup fi ;

: do immediate compile-time ['] swap , ['] >r , ['] >r , 0 HERE @ ;

: unloop r> r> r> 2drop >r ;
: bounds ( start len -- limit start ) over + swap ;


: loop immediate compile-time
       ['] r> , ['] 1+ , ['] >r ,
       ['] i , ['] n , ( index limit )
       ['] >= ,
       ['] 0branch , backref,
       ifthen ( ?do ) resolve-forward-ref fi
       ['] unloop , ;


: while immediate compile-time ['] 0branch , prepare-forward-ref ;
: repeat immediate compile-time swap ['] branch , backref, resolve-forward-ref ;

