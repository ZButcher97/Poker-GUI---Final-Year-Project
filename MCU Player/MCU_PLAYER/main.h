#ifndef MAIN
#define MAIN

//Includes
#include "mbed.h"
#include "platform/mbed_thread.h"
#include "MFRC522.h"
#include <string>

#define SPI_Slave_Debug             0

    //SPI2
#define     NFC1_SCLK               PB_13
#define     NFC1_MISO               PB_14         //TIM16_CH1N cannot be used with SPI2 in use
#define     NFC1_MOSI               PB_15         //TIM15_CH2 cannot be used with SPI2 in use
#define     NFC1_RST                PB_2          //Reset for both NFC Cards
#define     NFC1_CS                 PB_6          //Chip select for NFC card 1

    //SPI3
#define     NFC2_SCLK               PC_10
#define     NFC2_MISO               PC_11           //TIM16_CH1N cannot be used with SPI2 in use
#define     NFC2_MOSI               PC_12           //TIM15_CH2 cannot be used with SPI2 in use
#define     NFC2_RST                PB_7            //Reset for both NFC Cards
#define     NFC2_CS                 PB_5            //Chip select for NFC card 1

    //SPI1
#define     SPI_SLAVE_SCLK          PA_5
#define     SPI_SLAVE_MISO          PA_6
#define     SPI_SLAVE_MOSI          PA_7
//#define     SPI_SLAVE_CS            PA_4
#define     SPI_SLAVE_CS            PA_15


//Hardware Defines
MFRC522     NFC1(NFC1_MOSI, NFC1_MISO, NFC1_SCLK, NFC1_CS, NFC1_RST);
MFRC522     NFC2(NFC2_MOSI, NFC2_MISO, NFC2_SCLK, NFC2_CS, NFC2_RST);
SPISlave    SPI_Slave(SPI_SLAVE_MOSI, SPI_SLAVE_MISO, SPI_SLAVE_SCLK, SPI_SLAVE_CS);
Serial      PC(USBTX, USBRX);
DigitalOut  OnBoardLED(LED_RED);
InterruptIn MasterComCS(SPI_SLAVE_CS);
DigitalIn button(USER_BUTTON);

//Function Prototypes
void        thread_NFC1_main();                     //NFC 1 thread main function
void        thread_NFC2_main();                     //NFC 2 thread main function
void        thread_MasterCom_main();                //SPI communication to Master board main loop (SPISlave)

//RtOS
Thread      thread_NFC1;
Thread      thread_NFC2;
Thread      thread_MasterCom;
Thread      thread_Serial;

EventQueue  eq_SerialPC;

void test();

#endif
