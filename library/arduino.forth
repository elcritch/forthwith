
\ SPI Configs

: 100khz 0x186A0 ;
: 500khz 0x7A120 ;
: 1mhz 0xF4240 ;
: 2mhz 0x1E8480 ;

: lsb-first 0 ;
: msb-first 1 ;

: mode0 0x02 ;
: mode1 0x00 ;
: mode2 0x03 ;
: mode3 0x01 ;

: spi0 0x00 ;
: spi1 0x01 ;
: spi2 0x02 ;

\ : config-spi ( spi-settings-num spi-clock spi-order spi-mode -- valid? )
\ example: spi0 1mhz spi-order spi-mode -- config-spi

\ SPI Configs

