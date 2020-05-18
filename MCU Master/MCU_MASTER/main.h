#ifndef MAIN_H
#define  MAIN_H

#include "mbed.h"
#include "platform/mbed_thread.h"

#define SPI_COM_SCLK    PA_5
#define SPI_COM_MOSI    PA_7
#define SPI_COM_MISO    PA_6
#define SPI_COM_CS      PA_4

#define I2C_SCL         PF_1
#define I2C_SDA         PF_0

// SPI PlayerCOM(SPI_COM_MOSI, SPI_COM_MISO, SPI_COM_SCLK, SPI_COM_CS);
I2C TestI2C(I2C_SDA, I2C_SCL);
#endif