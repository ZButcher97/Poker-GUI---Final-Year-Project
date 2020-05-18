#ifndef MAIN_H
#define  MAIN_H

#include "mbed.h"
#include "platform/mbed_thread.h"

#define SPI_COM_SCLK    PE_2
#define SPI_COM_MOSI    PE_6
#define SPI_COM_MISO    PE_5
#define SPI_COM_CS      PE_4


SPI PlayerCOM(SPI_COM_MOSI, SPI_COM_MISO, SPI_COM_SCLK, SPI_COM_CS);
// I2C TestI2C(I2C_SDA, I2C_SCL);
#endif