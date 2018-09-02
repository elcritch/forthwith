marker: -ringbuf-test

: test:ringbuf-initially-empty  
    5 ringbuf
    dup ringbuf-size 0 =assert 
    dup ringbuf-full? invert assert
        ringbuf-empty? assert ;

: test:ringbuf-ringbuf-size-increases-when-adding
    5 ringbuf
    1 over ringbuf-enqueue
    dup ringbuf-size 1 =assert 
    2 over ringbuf-enqueue
    dup ringbuf-size 2 =assert 
    dup ringbuf-empty? invert assert
        ringbuf-full? invert assert ;

: test:ringbuf-ringbuf-size-decreases-when-removing
    5 ringbuf
    1 over ringbuf-enqueue
    2 over ringbuf-enqueue
    dup ringbuf-dequeue drop
    dup ringbuf-size 1 =assert 
    dup ringbuf-dequeue drop
    dup ringbuf-size 0 =assert 
        ringbuf-empty? assert ;

: test:ringbuf-becomes-empty-after-removing-when-full
    2 ringbuf
    1 over ringbuf-enqueue
    2 over ringbuf-enqueue
    dup ringbuf-full? assert
    dup ringbuf-empty? invert assert
    dup ringbuf-dequeue drop
    dup ringbuf-dequeue drop
    dup ringbuf-empty? assert
        ringbuf-full? invert assert ;

: test:ringbuf-has-circular-property
    5 ringbuf
    1 over ringbuf-enqueue
    dup ringbuf-dequeue 1 =assert
    dup ringbuf-full? invert assert 
    1 over ringbuf-enqueue
    2 over ringbuf-enqueue
    3 over ringbuf-enqueue
    4 over ringbuf-enqueue
    5 over ringbuf-enqueue
    dup ringbuf-size 5 =assert 
    dup ringbuf-full? assert
    dup ringbuf-dequeue 1 =assert 
    dup ringbuf-dequeue 2 =assert 
    dup ringbuf-dequeue 3 =assert 
    dup ringbuf-dequeue 4 =assert 
    dup ringbuf-dequeue 5 =assert 
    dup ringbuf-size 0 =assert 
        ringbuf-empty? assert ;

: test:ringbuf-underflow-when-removing-empty
    { 8 ringbuf ringbuf-dequeue } catch EUNDERFLOW =assert ;    

: test:ringbuf-overflow-when-adding-more-than-allowed
    {
        2 ringbuf
        1 over ringbuf-enqueue
        2 over ringbuf-enqueue
        3 over ringbuf-enqueue
    } catch EOVERFLOW =assert ;
