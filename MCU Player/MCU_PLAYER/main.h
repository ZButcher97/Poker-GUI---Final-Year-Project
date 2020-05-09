#ifndef MAIN
#define MAIN

//Includes
#include "mbed.h"
#include "platform/mbed_thread.h"
#include "MFRC522.h"

//Constant Defines
#define NFC_SCLK               PB_13
#define NFC_MISO               PB_14         //TIM16_CH1N cannot be used with SPI2 in use
#define NFC_MOSI               PB_15         //TIM15_CH2 cannot be used with SPI2 in use
#define NFC_RST                PB_2          //Reset for both NFC Cards

#define NFC1_CS                PB_6          //Chip select for NFC card 1
#define NFC2_CS                PB_5          //Chip select for NFC card 2

//Hardware Defines
MFRC522 NFC1(NFC_MOSI, NFC_MISO, NFC_SCLK, NFC1_CS, NFC_RST);
//MFRC522 NFC2(NFC_MOSI, NFC_MISO, NFC_SCLK, NFC2_CS, NFC_RST);
Serial PC(USBTX, USBRX);
DigitalOut OnBoardLED(LED_RED);
DigitalIn Button(USER_BUTTON);

//Function Prototypes

#endif
