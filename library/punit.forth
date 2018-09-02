marker: -punit

\ Asserts that the top-most item of the stack is true.
: assert ( bool -- | throws:EASSERT ) invert if EASSERT throw then ;

\ Asserts that two top-most items on the stack are equal. 
: =assert ( n1 n2 -- | throws:EASSERT )
    2dup <> if 
        swap print: '(' . space . print: ' <>)' 
        EASSERT throw 
    else
        2drop
    then ;

: test? ( link -- bool )
    ['] link>name
    ['] link>len bi 5 <= if
        FALSE     
    else        
        TRUE
        over 0 + c@ $t = and
        over 1 + c@ $e = and
        over 2 + c@ $s = and
        over 3 + c@ $t = and
        over 4 + c@ $: = and
    then        
    nip ;   

3 byte-array: test-report
: passed ( -- n ) 0 test-report ;
: failed ( -- n ) 1 test-report ;
: errors ( -- n ) 2 test-report ;

: test-run ( link -- )
    dup link-type
    link>xt catch
    case
        0 of 
            cr
            1 passed c+!
        endof 
        EASSERT of 
            println: " FAIL" 
            1 failed c+!
        endof
        print: " ERROR: " ex-type cr
        1 errors c+!
    endcase ;

: test-reset ( -- )
    0 passed c! 0 failed c! 0 errors c! ;

: test-report ( -- )
    passed c@ failed c@ errors c@ + + . print: " tests, "
    passed c@ . print: " passed, " 
    failed c@ . print: " failed, "
    errors c@ . print: " errors"
    cr
    errors c@ 0= failed c@ 0= and if
        println: "All passed"
    else
        println: "There were failures"
    then
    cr ;

\ Runs all unit tests then prints out a test report.
\ Words with name starting with test: prefix are treated as unit tests.
: test ( -- )
    cr
    test-reset
    lastword
    begin
        dup
    while
        dup test? if dup test-run then
        @
    repeat
    drop
    test-report ;

\ Runs a single unit tests then prints out the test report.
: test: ( "testname" -- )
    cr test-reset
    word find ?dup if
        test-run
    else
        println: "No such test"
    then ;

/end

