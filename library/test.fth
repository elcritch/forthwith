
: t0 5 0 do -1 loop ;
: t1 5 0 do -1 i loop ;
: t2 4 begin 7 swap 1- dup 0< until drop ;

: t3 9 4 begin swap 1- dup 0> while 7 repeat ;

: time-loop micros t0 3drop 2drop micros swap - ;

: time-loop-t2 micros t2 3drop 2drop micros swap - ;

