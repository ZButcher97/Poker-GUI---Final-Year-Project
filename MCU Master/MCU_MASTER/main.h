#ifndef MAIN_H
#define  MAIN_H

#include "mbed.h"
#include "platform/mbed_thread.h"

#define SPI_COM_SCLK    PA_0
#define SPI_COM_MOSI    PA_0
#define SPI_COM_MISO    PA_0
#define SPI_COM_CS      PA_0

SPI PlayerCOM(SPI_COM_MOSI, SPI_COM_MISO, SPI_COM_SCLK);

#endif