#include "mbed.h"
#include "platform/mbed_thread.h"

//SPI1
#define SPI1_SCLK        PA_5
#define SPI1_MISO        PA_6
#define SPI1_MOSI        PA_7
#define SPI1_CS          PA_4

//SPI2
#define SPI2_SCLK        PB_13
#define SPI2_MISO        PB_14
#define SPI2_MOSI        PB_15
#define SPI2_CS          PB_12

//SPI3
#define SPI3_SCLK        PB_3
#define SPI3_MISO        PB_4
#define SPI3_MOSI        PB_5
#define SPI3_CS          PB_2

//SPI4
#define SPI4_SCLK        PE_2
#define SPI4_MISO        PE_5
#define SPI4_MOSI        PE_6
#define SPI4_CS          PE_4

//SPI5
#define SPI5_SCLK        PF_7
#define SPI5_MISO        PF_8
#define SPI5_MOSI        PF_9
#define SPI5_CS          PF_6

//SPI6
#define SPI6_SCLK        PG_13
#define SPI6_MISO        PG_12
#define SPI6_MOSI        PG_14
#define SPI6_CS          PG_8

// Initialise the digital pin LED1 as an output
DigitalOut led(LED1);

SPI spi1(SPI1_MOSI, SPI1_MISO, SPI1_SCLK);
SPI spi2(SPI2_MOSI, SPI2_MISO, SPI2_SCLK);
SPI spi3(SPI3_MOSI, SPI3_MISO, SPI3_SCLK);
SPI spi4(SPI4_MOSI, SPI4_MISO, SPI4_SCLK);
SPI spi5(SPI5_MOSI, SPI5_MISO, SPI5_SCLK);
SPI spi6(SPI6_MOSI, SPI6_MISO, SPI6_SCLK);

void SPI_INIT();
