#include "mbed.h"
#include "platform/mbed_thread.h"

//SPI1
// #define SPI_SCLK        PA_5
// #define SPI_MISO        PA_6
// #define SPI_MOSI        PA_7
// #define SPI_CS          PA_4

//SPI2
// #define SPI_SCLK        PB_13
// #define SPI_MISO        PB_14
// #define SPI_MOSI        PB_15
// #define SPI_CS          PB_12

//SPI3 --To use this, Do not include CS in the SPI definition...
#define SPI_SCLK        PB_3
#define SPI_MISO        PB_4
#define SPI_MOSI        PB_5
#define SPI_CS          PB_2

//SPI4
// #define SPI_SCLK        PE_2
// #define SPI_MISO        PE_5
// #define SPI_MOSI        PE_6
// #define SPI_CS          PE_4

//SPI5
// #define SPI_SCLK        PF_7
// #define SPI_MISO        PF_8
// #define SPI_MOSI        PF_9
// #define SPI_CS          PF_6

//SPI6
// #define SPI_SCLK        PG_13
// #define SPI_MISO        PG_12
// #define SPI_MOSI        PG_14
// #define SPI_CS          PG_8

// Initialise the digital pin LED1 as an output
DigitalOut led(LED1);

SPI spi(SPI_MOSI, SPI_MISO, SPI_SCLK);
