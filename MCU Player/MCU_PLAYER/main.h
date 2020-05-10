#ifndef MAIN
#define MAIN

//Includes
#include "mbed.h"
#include "platform/mbed_thread.h"
#include "MFRC522.h"

//Constant Defines
    //SPI2
#define NFC1_SCLK               PB_13
#define NFC1_MISO               PB_14         //TIM16_CH1N cannot be used with SPI2 in use
#define NFC1_MOSI               PB_15         //TIM15_CH2 cannot be used with SPI2 in use
#define NFC1_RST                PB_2          //Reset for both NFC Cards
#define NFC1_CS                 PB_6          //Chip select for NFC card 1

    //SPI3
#define NFC2_SCLK               PC_10
#define NFC2_MISO               PC_11         //TIM16_CH1N cannot be used with SPI2 in use
#define NFC2_MOSI               PC_12         //TIM15_CH2 cannot be used with SPI2 in use
#define NFC2_RST                PB_7          //Reset for both NFC Cards
#define NFC2_CS                PA_4          //Chip select for NFC card 1

    //SPI
#define SPI_SLAVE_SCLK          PB_3

//Hardware Defines
MFRC522 NFC1(NFC1_MOSI, NFC1_MISO, NFC1_SCLK, NFC1_CS, NFC1_RST);
MFRC522 NFC2(NFC2_MOSI, NFC2_MISO, NFC2_SCLK, NFC2_CS, NFC2_RST);
Serial PC(USBTX, USBRX);
DigitalOut OnBoardLED(LED_RED);
DigitalIn Button(USER_BUTTON);

//Function Prototypes
void NFC1_Check();
void NFC2_Check();
bool init();

#endif
