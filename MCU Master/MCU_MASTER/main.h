#ifndef MAIN_H
#define  MAIN_H

#include "mbed.h"
#include "platform/mbed_thread.h"
// #include "Poker.h"
// #include "Network.h"
#include <string> 

    //SPI 4
#define SPI_COM_SCLK    PE_2
#define SPI_COM_MOSI    PE_6
#define SPI_COM_MISO    PE_5
#define SPI_COM_CS      PE_4

SPI PlayerCOM(SPI_COM_MOSI, SPI_COM_MISO, SPI_COM_SCLK);
DigitalOut CS(SPI_COM_CS);

// Poker_Player Player1;
// Poker_Board Board;

//------Testing/simulating data------//
uint32_t SIM_CARD1UID = 0xD057FEAB;
uint32_t SIM_CARD2UID = 0x5745B812;
uint32_t SIM_CARD3UID = 0x235B489A;
uint32_t SIM_CARD4UID = 0x8624B930;
uint32_t SIM_CARD5UID = 0xB0ABC432;
uint32_t SIM_CARD6UID = 0x70B09701;
uint32_t SIM_CARD7UID = 0x005ABA34;
uint32_t SIM_CARD8UID = 0xE2574576;
uint32_t SIM_CARD9UID = 0x51134462;
uint32_t SIM_CARD10UID = 0x45245632;
//-----------------------------------//

#endif