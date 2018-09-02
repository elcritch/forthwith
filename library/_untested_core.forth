: 0> ' 0 > ;
: >0 ' 0 < ;

: 1+ ' 1 + ;
: 1- ' 1 - ;
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
: bi ( a xt1 xt2 -- xt1.a xt2.a ) ['] keep dip exec ;
: bi* ( a b xt1 xt2 -- xt1.a xt2.b ) ['] dip dip exec ;
: bi@ ( a b xt -- xt.a xt.b ) dup bi* ;

: 3dup ( a b c -- a b c a b c) dup 2over rot ;
: 3drop ( a b c -- ) 2drop drop ;

: cr ( -- ) 13 emit 10 emit ;
: space ( -- ) 32 emit ;

: % ( n -- remainder ) /mod drop ;
: / ( n -- quotient ) /mod nip ;

: +! ( n var -- ) tuck @ + swap ! ;
: -! ( n var -- ) tuck @ swap - swap ! ;
: c+! ( n var -- ) tuck c@ + swap c! ;

: prepare-forward-ref ( -- a ) HERE 0 , ;
: resolve-forward-ref ( a -- ) HERE over - swap ! ;

: if immediate compile-time ['] 0branch , prepare-forward-ref ;
: else immediate compile-time ['] branch , prepare-forward-ref swap resolve-forward-ref ;
: then immediate compile-time resolve-forward-ref ;

: ?dup ( a -- a a | 0 ) dup if dup then ;

: . ( n -- )
    dup 0< if 45 emit -1 * then
    10 /mod ?dup if . then
    48 + emit ;

: ? ( a -- ) @ . ;

: unloop r> r> r> 2drop >r ;
: do immediate compile-time ['] swap , ['] >r , ['] >r , 0 ( do ) HERE ( backref ) ;
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
    if ( ?do ) resolve-forward-ref then
    ['] unloop , ;

: end? ( increment -- bool )
    rp@ cell + @                   \ i+increment
    rp@ 2 cells + @                \ limit
    - dup rot - xor 0< ;           \ (index-limit) and (index-limit+increment) have different sign?

: +loop immediate compile-time
    ['] dup ,                      \ increment
    ['] rp@ , ['] +! ,
    ['] end? ,
    ['] 0branch , backref,
    if ( ?do ) resolve-forward-ref then
    ['] unloop , ;

: while immediate compile-time ['] 0branch , prepare-forward-ref ;
: repeat immediate compile-time swap ['] branch , backref, resolve-forward-ref ;

: case ( -- branch-counter ) immediate compile-time 0 ;

: of immediate compile-time
    ['] over , ['] = ,
    ['] 0branch , prepare-forward-ref
    ['] drop , ;

: endof immediate compile-time
    swap 1+ swap                            \ increase number of branches
    ['] branch , prepare-forward-ref swap
    resolve-forward-ref
    swap ;                                  \ keep branch counter at TOS

: endcase ( #branches #branchesi*a -- ) immediate compile-time 0 do resolve-forward-ref loop ;

: override immediate ( -- ) lastword hide ;

: create: createheader enterdoes , ['] nop cell + , ; \ default behaviour is nop, does> overwrites this
: does> r> lastword link>body ! ;

: variable: 0 init-variable: ;

-1 constant: TRUE
 0 constant: FALSE

: exception: ( "name" -- ) ( -- xt ) create: lastword , does> @ ;

exception: EUNDERFLOW
exception: EOVERFLOW
exception: EASSERT
exception: ENOTFOUND
exception: ECONVERT
exception: EESCAPE

: defer: ( "name" -- ) create: ['] nop , does> @ exec ;
: defer! ( dst-xt src-xt -- ) swap 2 cells + ! ; \ store xt as body

defer: unhandled
defer: handler
variable: var-handler                   \ stores the address of the nearest exception handler
: single-handler ( -- a ) var-handler ; \ single threaded global handler

: catch ( xt -- exception | 0 )
    sp@ >r handler @ >r          \ save current stack pointer and previous handler (RS: sp h)
    rp@ handler !                \ set the currend handler to this
    exec                      \ exec word that potentially throws exception
    r> handler !                 \ word returned without exception, restore previous handler
    r> drop 0 ;                  \ drop the saved sp return 0 indicating no error

: throw ( i*x exception -- i*x exception | 0 )
    ?dup 0= if exit then    \ 0 means no error, drop errorcode exit from exec
    handler @ 0= if         \ this was an uncaught exception
        unhandled
        exit
    then
    handler @ rp!           \ restore rstack, now it is the same as it was before exec
    r> handler !            \ restore next handler
    r> swap >r sp!          \ restore the data stack as it was before the most recent catch
    drop r> ;               \ return to the caller of most recent catch with the errcode

: ' ( -- xt | throws:ENOTFOUND ) \ find the xt of the next word in the inputstream
    word find dup if link>xt else ENOTFOUND throw then ;

: postpone: ( -- | throws:ENOTFOUND ) ' , ; immediate \ force compile semantics of an immediate word
: ['], ['] ['] , ;

: { immediate compile-time
    ['], HERE 3 cells + ,
    ['] branch , prepare-forward-ref
    entercol , ;

: } immediate compile-time ['] exit , resolve-forward-ref ;

' handler ' single-handler defer!

: is: immediate interpret? if ' defer! else ['], ' , ['] defer! , then ;

: array: ( size "name" -- ) ( index -- addr ) create: cells allot does> swap cells + ;
: byte-array: ( size "name" -- ) ( index -- addr ) create: allot does> swap + ;
: buffer: ( size "name" -- ) ( -- addr ) create: allot ;

: struct 0 ;
: field: create: over , + does> @ + ;

: abs ( n -- n ) dup 0< if invert 1+ then ;
: max ( n n -- n ) 2dup < if begin nip ;
: min ( n n -- n ) 2dup < until then drop ;
: between? ( min-inclusive num max-inclusive -- bool ) over >= -rot <= and ;

: cmove ( src-addr dst-addr count -- )
    ?dup 0> if
        0 do
            2dup { c@ } dip c!
            { 1+ } bi@
        loop
    then
    2drop ;

: [str ( -- forward-ref )
    ['], HERE 3 cells + , ( str pushes its own addr. at runtime )
    ['] branch , prepare-forward-ref ;

: str] ( forward-ref -- ) 0 c, resolve-forward-ref ;

: eschr ( char -- char ) \ read next char from stdin
    dup 92 ( \ ) = if
        drop key case
            114 ( r ) of 13 endof
            110 ( n ) of 10 endof
            116 ( t ) of 9  endof
            92  ( \ ) of 92 endof
            34  ( " ) of 34 endof
            39  ( ' ) of 39 endof
            EESCAPE throw
        endcase
    then ;

: whitespace? ( char -- bool )
    case
        32 of TRUE exit endof
        13 of TRUE exit endof
        10 of TRUE exit endof
        9 of TRUE exit endof
        drop FALSE
    endcase ;

: c,-until ( separator -- )
    begin key 2dup <> while dup crlf? if drop else eschr c, then repeat
    2drop ; \ last key and separator

: hexchar>int ( char -- n | throws:ECONVERT )
    48 over 57 between? if 48 - exit then
    65 over 70 between? if 55 - exit then
    97 over 102 between? if 87 - exit then
    ECONVERT throw ;

: hex>int' ( str len -- n | throws:ECONVERT )
    dup 0= if ECONVERT throw then
    dup 1- 2 lshift 0 swap
    2swap 0 do
        dup >r
        c@ hexchar>int
        over lshift rot +
        swap 4 -
        r> 1+
    loop
    2drop ;

\ recognizers
: str, ( len -- ) >in -! 34 ( " ) c,-until ;
: chr? 2 = swap c@ 36 ( $ ) = and ;
: str? c@ 34 ( " ) = ;
: hex? 3 > over c@ 49 ( 1 ) = and over 1+ c@ 54 ( 6 ) = and swap 2 + c@ 114 ( r ) = and ;
: _ ( addr len -- ? )
    2dup chr? if drop ['], 1+ c@ , exit then
    over str? if nip [str >r str, r> str] exit then
    2dup hex? if 3 - swap 3 + swap hex>int' ['], , exit then
    eundef ;
' _ eundefc !

: _ ( addr len -- ? )
    2dup chr? if drop 1+ c@ exit then
    over str? if nip dp >r str, 0 c, r> exit then
    2dup hex? if 3 - swap 3 + swap hex>int' exit then
    eundef ;
' _ eundefi !

: separator ( -- char ) begin key dup whitespace? while drop repeat ;

: strlen ( str -- len ) dup begin dup c@ while 1+ repeat swap - ;

: =str ( str1 str2 -- bool )
    begin
        2dup ['] c@ bi@
        2dup ['] 0<> bi@ and
        -rot = and
    while
        ['] 1+ bi@
    repeat
    ['] c@ bi@ ['] 0= bi@ and ;

: str-starts? ( str substr -- bool )
    begin
        2dup ['] c@ bi@
        dup 0= if                       \ end of substr
            4drop TRUE exit
        then
        swap
        dup 0= if                       \ end of str
            4drop FALSE exit
        then
        <> if                           \ character mismatch
            2drop FALSE exit
        then
        ['] 1+ bi@
    again ;

: str-in? ( str substr -- bool )
    begin
        2dup str-starts? if
            2drop TRUE exit
        then
        swap dup c@ 0= if
            2drop FALSE exit
        then
        1+ swap
    again ;

: >s' ( ? addr n -- addr2 ? )
    10 /mod ?dup if rot swap >s' then
    48 + over c! 1+ swap ;

: >str ( addr n -- )
    dup 0< if abs >r 45 over c! 1+ r> then
    0 -rot >s'
    0 rot c! drop ;

: hex>int ( str -- n | throws:ECONVERT ) dup strlen hex>int' ;

: print: ( "<separator>string<separator>" ) immediate
    separator
    interpret? if
        begin key 2dup <> while eschr emit repeat 2drop
    else
        [str swap c,-until str] ['] type ,
    then ;

: println: ( "<separator>string<separator>" ) immediate postpone: print: interpret? if cr else ['] cr , then ;

defer: s0 ' s0 is: _s0
defer: r0 ' r0 is: _r0

: depth ( -- n ) s0 sp@ - cell / 1- ;
: rdepth ( -- n ) r0 rp@ - cell / 1- ;

: marker: ( "name" -- )
    create: lastword ,
    does> @ dup @ var-lastword ! var-dp ! ;

: link-type ( link -- ) ['] link>name ['] link>len bi type-counted ;

: help ( -- ) lastword begin ?dup while dup link-type cr @ repeat ;

: stack-print ( -- )
    depth 0= if exit then
    depth 10 > if print: ".. " then
    0 depth 2 - 9 min \ maximalize depth to print
    do
        space sp@ i cells + @ .
    -1 +loop ;

: stack-clear ( i*x -- ) begin depth while drop repeat ;

: stack-show ( -- )
    {
        depth 0< if EUNDERFLOW throw then
        loading? if exit then
        interpret? if
            print: '(stack' stack-print $) emit space
        else
            print: '.. '
        then
    } prompt ! ;

: stack-hide ( -- ) ['] exit prompt ! ;

: heap? ( a -- bool ) heap-start swap heap-end between? ;
: freemem ( -- n ) heap-end dp - ;
: usedmem ( -- n ) dp heap-start - ;

: ex-type ( exception -- ) dup heap? if link-type else . then ;

: traceback ( code -- )
    cr print: "Exeption: " ex-type
    print: " rdepth: " rdepth . cr
    rdepth 1+ 3 do                         \ include ret address in outer interpreter
        print: "  at "
        rp@ i cells + @                    \ i. return address
        lastword
        begin 2dup < over 0<> and while @ repeat
        ?dup if link-type space else print: '??? ' then
        $( emit . $) emit cr
    loop
    depth 0> if print: '(stack' stack-print $) emit then
    abort ;

' unhandled is: traceback

/end

