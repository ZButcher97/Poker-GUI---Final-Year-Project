#include "main.h"

int main()
{
    // thread_AllNFC_main();
    thread_Serial.start(callback(&eq_SerialPC, &EventQueue::dispatch_forever));
    // thread_NFC1.start(&thread_NFC1_main);
    // thread_NFC2.start(&thread_NFC2_main);
    thread_NFC3.start(&thread_NFC3_main);
    thread_NFC4.start(&thread_NFC4_main);

    while (true) {
        OnBoardGreenLED = 0;
        ThisThread::sleep_for(500);
        OnBoardGreenLED = 1;
        ThisThread::sleep_for(500);
        if(button == 1)
        {
            uint8_t val1 = NFC3.PCD_ReadRegister(MFRC522::TxControlReg);   //Initilastion check to ensure TX1 and TX2 are enabled
            uint8_t val2 = NFC4.PCD_ReadRegister(MFRC522::TxControlReg);   //Initilastion check to ensure TX1 and TX2 are enabled
            printf("NFC3 Antenna Register: %x\n\r", (val1 & 0x03));
            printf("NFC4 Antenna Register: %x\n\r", (val2 & 0x03));
        }
    }
}
void thread_AllNFC_main()
{
    if(!NFC3.PCD_Init())
    {    
        PC.printf("NFC3 Initalisation Failed... \n\r");
        ThisThread::sleep_for(osWaitForever);
    }
    PC.printf("NFC3 Initalisation Successful... \n\r");

    if(!NFC4.PCD_Init())
    {
         PC.printf("NFC4 Initalisation Failed... \n\r");
        ThisThread::sleep_for(osWaitForever);
    }
    PC.printf("NFC4 Initalisation Successful... \n\r");

    while(1)
    {
        OnBoardGreenLED = 0;
        if(NFC_Check(NFC3)){PC.printf("New Card 3 UID: %s\n\r", NFC3.POKER_ReadCardUID().c_str());}
        ThisThread::sleep_for(20);
        if(NFC_Check(NFC4)){PC.printf("New Card 4 UID: %s\n\r", NFC4.POKER_ReadCardUID().c_str());}               
        OnBoardGreenLED = 1;
        ThisThread::sleep_for(100);
        if(button)
        {
            // NFC3.PCD_Init();
            // NFC4.PCD_Init();
            uint8_t val1 = NFC3.PCD_ReadRegister(MFRC522::TxControlReg);   //Initilastion check to ensure TX1 and TX2 are enabled
            uint8_t val2 = NFC4.PCD_ReadRegister(MFRC522::TxControlReg);   //Initilastion check to ensure TX1 and TX2 are enabled
            printf("NFC3 Antenna Register: %x\n\r", (val1 & 0x03));
            printf("NFC4 Antenna Register: %x\n\r", (val2 & 0x03));

        }
    }
}

// void thread_NFC1_main()
// {
//     if(!NFC1.PCD_Init())
//     {
//         eq_SerialPC.call(printf, "NFC1 Initalisation Failed... \n\r");
//         ThisThread::sleep_for(osWaitForever);
//     }
//     eq_SerialPC.call(printf, "NFC1 Initalisation Successful... \n\r");

//     while(1)
//     {
//         while(!NFC_Check(NFC1)){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
//         eq_SerialPC.call(printf, "New Card 1 UID: %s\n\r", NFC1.POKER_ReadCardUID().c_str());
//     }
// }

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

void thread_NFC3_main()
{
    if(!NFC3.PCD_Init())
    {
        eq_SerialPC.call(printf, "NFC3 Initalisation Failed... \n\r");
        ThisThread::sleep_for(osWaitForever);
    }
    eq_SerialPC.call(printf, "NFC3 Initalisation Successful... \n\r");

    while(1)
    {
        OnBoardRedLED = 0;
        while(!NFC_Check(NFC3)){
            if(!NFC3.IsReaderResponsive())
            {
                NFC3.PCD_Init();
                eq_SerialPC.call(printf, "NFC3 Bricked! Restarting... \n\r");
            }
            ThisThread::sleep_for(100);
            OnBoardRedLED = 1;
        }               //Sleep this thread while no new card present
        eq_SerialPC.call(printf, "New Card 3 UID: %s\n\r", NFC3.POKER_ReadCardUID().c_str());
    }
}

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
        OnBoardBlueLED = 0;
        while(!NFC_Check(NFC4)){        
            ThisThread::sleep_for(100);
             OnBoardBlueLED = 1;
        }               //Sleep this thread while no new card present
        eq_SerialPC.call(printf, "New Card 4 UID: %s\n\r", NFC4.POKER_ReadCardUID().c_str());
    }
}