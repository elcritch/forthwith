' TRUE @ constant: entercons
' var-handler @ constant: entervar
: ++ ( var -- ) 1 swap +! ;
: endword? ( addr -- bool ) @ ['] <exit> = ;
: >link ( xt -- link | 0 ) lastword begin ?dup while 2dup link>xt = if nip exit then @ repeat drop 0 ;

( Hex address conversion )
8 byte-array: num
: clear ( -- ) 8 0 do $0 i num c! loop ;
: /%16 ( n -- q r ) dup 4 rshift swap 15 and ;
: digit ( n -- chr ) dup 10 < if 48 + else 55 + then ;
: hex ( n -- ) clear 8 0 do /%16 digit 7 i - num c! ?dup 0= if unloop exit then loop ;
: .h ( n -- ) print: '16r' hex 0 num 8 type-counted ;

( Arrows between jump locations )
10 constant: MAX
MAX array: jumps
MAX 4 * 1+ constant: LEN
LEN buffer: arrow
variable: rownum
variable: idx
: pack ( n n -- n ) 16 lshift or ;
: unpack ( n -- n n ) dup 16rFFFF and swap 16 rshift ;
: at ( i -- dst-row src-row ) jumps @ unpack ;
: add ( dst-row src-row -- ) idx @ MAX < if pack idx @ jumps ! idx ++ else 2drop then ;
: jump? ( addr -- bool ) @ dup ['] branch0 = swap ['] branch = or ;
: positions ( branch-addr -- dst-row src-row ) cell + @ cell / rownum @ 1+ + rownum @ ;

: collect-jumps ( xt -- ) 
    0 idx ! 1 rownum !
    begin
        cell + dup jump? if dup positions add then 
        rownum ++ 
        dup endword? 
    until 
    1 rownum ! drop ;

: head ( -- )
    idx @ 0 ?do 
        i at ( dst-row src-row )
        rownum @ = if $- i 1+ 4 * 3 - arrow + c!  $> i 1+ 4 * 2 - arrow + c! then 
        rownum @ = if $< i 1+ 4 * 3 - arrow + c!  $- i 1+ 4 * 2 - arrow + c! then 
    loop ;
: sort ( n n -- n n ) 2dup > if swap then ;
: body? ( n n -- bool ) sort rownum @ > swap rownum @ < and ;
: body ( -- ) idx @ 0 ?do i at body? if $| i 1+ 4 * 1- arrow + c! then loop ; \ arrow body
: clear ( -- ) LEN 0 do 32 i arrow + c! loop ;
: .arrow ( -- ) clear body head arrow LEN type-counted cr ;

variable: longest
: update ( link -- ) link>len longest @ max longest ! ;
: find-longest ( xt -- ) 10 longest ! begin cell + dup @ >link ?dup if update then dup endword? until drop ;
: spaces ( n -- ) 0 ?do 32 emit loop ;
: pad ( word-len -- ) longest @ swap - spaces ;

( Decompiler )
: separator $: emit space space ;
: .link ( link -- ) dup link-type link>len pad ;
: .n ( n -- ) here swap >str here type here strlen pad ;
: .xt ( xt -- ) dup >link ?dup if .link drop else .n then ;

: row ( addr -- ) dup .h separator @ .xt .arrow rownum ++ ;
: header ( xt -- ) .h separator println: '<entercol>' ;
: body ( xt -- ) begin cell + dup row dup endword? until drop ;
: colon ( xt -- ) dup collect-jumps dup find-longest dup header body ;

: header ( xt -- ) dup .h separator print: '<enterdoes> dataptr: ' 2 cells + .h cr ;
: does ( xt -- ) dup header println: 'behavior:' cell + @ ( behaviorptr ) cell - body ;

: body ( xt -- ) dup .h separator @ .h cr ;
: header ( xt -- ) .h separator println: '<entercons>' ;
: cons ( xt -- ) dup header cell + body ;

: header ( xt -- ) .h separator println: '<entervar>' ;
: var ( xt -- ) dup header cell + body ;

: dump ( addr cells -- ) 0 do dup body cell + loop drop println: '...' ;

: decompile: ( "word" -- )
    ' dup @ case
        entercol  of colon endof
        enterdoes of does  endof
        entercons of cons  endof
        entervar  of var   endof
        drop ( codeword ) println: 'primitive:' @ 8 dump
    endcase ;

/end

