#include "main.h"

int main()
{   
    thread_Serial.start(callback(&eq_SerialPC, &EventQueue::dispatch_forever));     
    thread_NFC1.start(&thread_NFC1_main);
    // thread_NFC2.start(&thread_NFC2_main);
    // thread_NFC3.start(&thread_NFC3_main);
    thread_NFC4.start(&thread_NFC4_main);

    while (true) {
        OnBoardGreenLED = 0;
        ThisThread::sleep_for(500);
        OnBoardGreenLED = 1;
        ThisThread::sleep_for(500);
        
    }
}

void thread_NFC1_main()
{
    if(!NFC1.PCD_Init())
    {
        eq_SerialPC.call(printf, "NFC1 Initalisation Failed... \n\r");
        ThisThread::sleep_for(osWaitForever);
    }
    eq_SerialPC.call(printf, "NFC1 Initalisation Successful... \n\r");

    while(1)
    {
        while(!NFC_Check(NFC1)){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
        eq_SerialPC.call(printf, "New Card 1 UID: %s\n\r", NFC1.POKER_ReadCardUID().c_str());
    }
}

// void thread_NFC2_main()
// {
//     if(!NFC2.PCD_Init())
//     {
//         eq_SerialPC.call(printf, "NFC2 Initalisation Failed... \n\r");
//         ThisThread::sleep_for(osWaitForever);
//     }
//     eq_SerialPC.call(printf, "NFC2 Initalisation Successful... \n\r");

//     while(1)
//     {
//         while(!NFC_Check(NFC2)){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
//         eq_SerialPC.call(printf, "New Card 2 UID: %s\n\r", NFC2.POKER_ReadCardUID().c_str());
//     }
// }

// void thread_NFC3_main()
// {
//     if(!NFC3.PCD_Init())
//     {
//         eq_SerialPC.call(printf, "NFC3 Initalisation Failed... \n\r");
//         ThisThread::sleep_for(osWaitForever);
//     }
//     eq_SerialPC.call(printf, "NFC3 Initalisation Successful... \n\r");

//     while(1)
//     {
//         while(!NFC_Check(NFC3)){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
//         eq_SerialPC.call(printf, "New Card 3 UID: %s\n\r", NFC3.POKER_ReadCardUID().c_str());
//     }
// }

void thread_NFC4_main()
{
    if(!NFC4.PCD_Init())
    {
        eq_SerialPC.call(printf, "NFC4 Initalisation Failed... \n\r");
        ThisThread::sleep_for(osWaitForever);
    }
    eq_SerialPC.call(printf, "NFC4 Initalisation Successful... \n\r");

    while(1)
    {
        while(!NFC_Check(NFC4)){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
        eq_SerialPC.call(printf, "New Card 4 UID: %s\n\r", NFC4.POKER_ReadCardUID().c_str());
    }
}