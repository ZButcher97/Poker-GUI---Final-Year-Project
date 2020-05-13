#include "mbed.h"
#include "platform/mbed_thread.h"
#include "MFRC522.h"
#include <string>

//SPI1
#define NFC1_SCLK           PA_5
#define NFC1_MISO           PA_6
#define NFC1_MOSI           PA_7
#define NFC1_CS             PA_4
#define NFC1_RST            PE_0

//SPI2
#define NFC2_SCLK           PB_13
#define NFC2_MISO           PB_14
#define NFC2_MOSI           PB_15
#define NFC2_CS             PB_12
#define NFC2_RST            PB_0

//SPI3
#define NFC3_SCLK           PB_3
#define NFC3_MISO           PB_4
#define NFC3_MOSI           PB_5
#define NFC3_CS             PB_2
#define NFC3_RST            PA_0

//SPI4
#define NFC4_SCLK           PE_2
#define NFC4_MISO           PE_5
#define NFC4_MOSI           PE_6
#define NFC4_CS             PE_4
#define NFC4_RST            PB_11

//SPI5
#define NFC5_SCLK           PF_7
#define NFC5_MISO           PF_8
#define NFC5_MOSI           PF_9
#define NFC5_CS             PF_6
#define NFC5_RST            PB_10

//SPI6
#define NFC6_MISO           PG_12
#define NFC6_SCLK           PG_13
#define NFC6_MOSI           PG_14
#define NFC6_CS             PG_8
#define NFC6_RST            PE_15

MFRC522 NFC1(NFC1_MOSI, NFC1_MISO, NFC1_SCLK, NFC1_CS, NFC1_RST);
// MFRC522 NFC2(NFC2_MOSI, NFC2_MISO, NFC2_SCLK, NFC2_CS, NFC2_RST);
// MFRC522 NFC3(NFC3_MOSI, NFC3_MISO, NFC3_SCLK, NFC3_CS, NFC3_RST);
MFRC522 NFC4(NFC4_MOSI, NFC4_MISO, NFC4_SCLK, NFC4_CS, NFC4_RST);

// Initialise the digital pin LED1 as an output
DigitalOut OnBoardGreenLED(LED1);
Serial PC(USBTX, USBRX);




//RtOS
Thread      thread_NFC1;
Thread      thread_NFC2;
Thread      thread_NFC3;
Thread      thread_NFC4;
Thread      thread_MasterCom;
Thread      thread_Serial;

EventQueue  eq_SerialPC;

void thread_NFC1_main();
void thread_NFC2_main();
void thread_NFC3_main();
void thread_NFC4_main();
