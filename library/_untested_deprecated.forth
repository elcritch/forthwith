: char: immediate word drop c@ interpret? invert if postpone: literal then ; ( deprecated )

: str: ( "<separator>string content<separator>" ) immediate ( deprecated )
    separator
    interpret? if
        dp swap c,-until 0 c,
    else
        [str swap c,-until str]
    then ;

: hex: immediate ( deprecated )
    word hex>int'
    interpret? invert if postpone: literal then ;
