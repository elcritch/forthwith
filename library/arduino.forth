
\ SPI Configs

: $spi-100khz 0x186A0 ;
: $spi-500khz 0x7A120 ;
: $spi-1mhz 0xF4240 ;
: $spi-2mhz 0x1E8480 ;

: $spi-lsb-first 0 ;
: $spi-msb-first 1 ;

: $spi-mode0 0x02 ;
: $spi-mode1 0x00 ;
: $spi-mode2 0x03 ;
: $spi-mode3 0x01 ;

: $spi-dev-0 0x00 ;
: $spi-dev-1 0x01 ;
: $spi-dev-2 0x02 ;

\ : config-spi ( spi-settings-num spi-clock spi-order spi-mode -- valid? )
\ example: spi0 1mhz spi-order spi-mode -- config-spi

\ SPI Configs

