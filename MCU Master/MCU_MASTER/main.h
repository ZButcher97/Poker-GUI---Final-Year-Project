#ifndef MAIN_H
#define  MAIN_H

#include "mbed.h"
#include "platform/mbed_thread.h"

#define SPI_COM_SCLK    PA_5
#define SPI_COM_MOSI    PA_7
#define SPI_COM_MISO    PA_6
#define SPI_COM_CS      PD_14

SPI PlayerCOM(SPI_COM_MOSI, SPI_COM_MISO, SPI_COM_SCLK);
DigitalOut PlayerCS(SPI_COM_CS);

#endif