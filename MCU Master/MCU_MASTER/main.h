#ifndef MAIN_H
#define  MAIN_H

#include "mbed.h"
#include "platform/mbed_thread.h"
#include "Poker.h"
#include "Network.h"
#include <string> 
#include "LocalDisplay.h"



#define SPI_LOCALDIS_SCLK   PF_7
#define SPI_LOCALDIS_MOSI   PF_9
#define SPI_LOCALDIS_MISO   PF_8
#define SPI_LOCALDIS_CS     PF_6

SPI spi_LocalDisplay(SPI_LOCALDIS_MOSI, SPI_LOCALDIS_MISO, SPI_LOCALDIS_SCLK);
DigitalOut spi_LocalDisplay_CS(SPI_LOCALDIS_CS);

Thread thread_HTTP;
Thread thread_GetData;
Thread thread_LocalDisplay;
Thread thread_Serial;

EventQueue eq_Serial;

DigitalOut LED(LED1);

void HTTP_thread_main();
void GetData_thread_main();
void LocalDisplay_thread_main();


#endif