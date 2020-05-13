#include "main.h"

//start up function
int main()
{
    //Set up threads
    thread_Serial.start(callback(&eq_SerialPC, &EventQueue::dispatch_forever));
    thread_NFC1.start(&thread_NFC1_main);    
    thread_NFC2.start(&thread_NFC2_main);
    thread_MasterCom.start(&thread_MasterCom_main);

    //Heartbeat LED
    while (true) {
        OnBoardLED = 1;
        ThisThread::sleep_for(500);
        OnBoardLED = 0;
        ThisThread::sleep_for(500);
    }
}

//NFC 1 thread main function
void thread_NFC1_main()
{
    //NFC 1 initalisation
    if(!NFC1.PCD_Init())
    {
        eq_SerialPC.call(printf, "NFC1 Initalisation Failed... \n\r");
        ThisThread::sleep_for(osWaitForever);        
    }
    eq_SerialPC.call(printf, "NFC1 Initalisation Successful... \n\r");

    //NFC1 Main loop
    while(1)
    {
        // while(!NFC1_Check()){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
        // eq_SerialPC.call(printf, "New Card 1 UID: %s\n\r", CARD1_UID.c_str());
        while(!NFC_Check(NFC1)){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
        eq_SerialPC.call(printf, "New Card 1 UID: %s\n\r", NFC1.POKER_ReadCardUID().c_str());
    }
}

//NFC 2 thread main function
void thread_NFC2_main()
{
    if(!NFC2.PCD_Init())
    {
        eq_SerialPC.call(printf, "NFC2 Initalisation Failed... \n\r");
        ThisThread::sleep_for(osWaitForever);        
    }
    eq_SerialPC.call(printf, "NFC2 Initalisation Successful... \n\r");

    while(1)
    {
        // while(!NFC2_Check()){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
        // eq_SerialPC.call(printf, "New Card 2 UID: %s\n\r", CARD2_UID.c_str());
        while(!NFC_Check(NFC2)){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
        eq_SerialPC.call(printf, "New Card 2 UID: %s\n\r", NFC2.POKER_ReadCardUID().c_str());
    }
}

//SPI communication to Master board main loop (SPISlave)
void thread_MasterCom_main()
{
    while(1)
    {
        ThisThread::sleep_for(osWaitForever);
    }
}
