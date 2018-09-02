struct
    cell field: .i
    cell field: .j
    cell field: .capacity
    cell field: .size
constant: RingBuf

: ringbuf ( capacity -- ringbuffer )
    here tuck
    over cells RingBuf + allot
    0 over .i !
    0 over .j !
    0 over .size !
    .capacity ! ;

: ringbuf: ( capacity ) ( -- ringbuffer )
    create: ringbuf drop ;

: ringbuf-size ( ringbuffer -- n ) .size @ ;

: ringbuf-empty? ( ringbuffer -- bool ) ringbuf-size 0= ;

: ringbuf-full? ( ringbuffer -- bool )
    { .size @ } { .capacity @ } bi = ;   

: slot ( index ringbuffer -- adr )
    RingBuf + swap cells + ;

: back-slot ( ringbuffer -- adr )
    dup .j @
    swap slot ;

: front-slot ( ringbuffer -- adr )
    dup .i @
    swap slot ;    

: increase-size ( ringbuffer -- ) .size 1 swap +! ;

: added ( ringbuffer -- )
    dup
    dup increase-size
    { .capacity @ } { .j @ } bi
    1+ swap %
    swap .j ! ;

: decrease-size ( ringbuffer -- ) .size -1 swap +! ;

: removed ( ringbuffer -- )
    dup
    dup decrease-size
    { .capacity @ } { .i @ } bi
    1+ swap %
    swap .i ! ;

: ringbuf-enqueue ( element ringbuffer -- | EOVERFLOW )
    dup ringbuf-full? if
        EOVERFLOW throw
    then
    tuck
    back-slot !
    added ;

: ringbuf-dequeue ( ringbuffer -- element | EUNDERFLOW )
    dup ringbuf-empty? if
        EUNDERFLOW throw
    then
    dup
    front-slot @
    swap
    removed ;

/end

