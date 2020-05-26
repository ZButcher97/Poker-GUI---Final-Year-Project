#include "main.h"

//start up function
int main()
{

    //Set up threads
    
    // MasterComCS.fall(&test);
    SPI_Slave.format(8, 0);
    SPI_Slave.frequency(1000000);
    thread_Serial.start(callback(&eq_SerialPC, &EventQueue::dispatch_forever));
    thread_NFC1.start(&thread_NFC1_main);    
    thread_NFC2.start(&thread_NFC2_main);
    thread_MasterCom.start(&thread_MasterCom_main);
    thread_MasterCom.set_priority(osPriorityAboveNormal);
    MasterComCS.fall(&test);
    // int v = 0;
    // PC.printf("Start...\n\r");
    // SPI_Slave.reply(0x5A);   
    // while(1)
    // {
        
    //     while(SPI_Slave.receive() == 1)
    //     {
    //         v = SPI_Slave.read();
    //         SPI_Slave.reply(0x5A);         // Make this the next reply
    //         PC.printf("Received Value: %x\n\r", v);
    //     }        
    // }
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
        while(!NFC_Check(NFC2)){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
        eq_SerialPC.call(printf, "New Card 2 UID: %s\n\r", NFC2.POKER_ReadCardUID().c_str());
    }
}

//SPI communication to Master board main loop (SPISlave)
void thread_MasterCom_main()
{
    PC.printf("\n\rEntering Master Thread\n\r");
    SPI_Slave.reply(0x5A);  
    while(1)
    {            
        ThisThread::flags_wait_all(0x20);
        eq_SerialPC.call(printf, "SPI Master requesting Data...\n\r");
        char *UID1_array;
        string UID1_string = NFC1.POKER_ReadCardUID();

        char *UID2_array;
        string UID2_string = NFC2.POKER_ReadCardUID();
        
        memcmp(UID1_array, UID1_string.data(), UID1_string.length());
        memcmp(UID2_array, UID2_string.data(), UID2_string.length());
        if(!SPI_Slave_Debug)
        {
            if(SPI_Slave.receive())
            {
                int DATA = SPI_Slave.read();
                switch(DATA)
                {
                    case 0x10:
                        eq_SerialPC.call(printf, "Sending %X\n\r", UID1_array[0]);
                        SPI_Slave.reply(UID1_array[0]); //make string into int
                        for(int i = 1; i < 4; i++)
                        {
                            while(!SPI_Slave.receive());  
                            eq_SerialPC.call(printf, "Sending %X", UID1_array[i]);
                            SPI_Slave.reply(UID1_array[i]); //make string into int
                        }
                        eq_SerialPC.call(printf, "\n\r");
                    break;

                    case 0x20:
                        eq_SerialPC.call(printf, "Sending %X\n\r", UID2_array[0]);
                        SPI_Slave.reply(UID2_array[0]); //make string into int
                        for(int i = 1; i < 4; i++)
                        {
                            while(!SPI_Slave.receive());  
                            eq_SerialPC.call(printf, "Sending %X", UID2_array[i]);
                            SPI_Slave.reply(UID2_array[i]); //make string into int
                        }
                        eq_SerialPC.call(printf, "\n\r");
                    break;
                }
            }
        }        
        eq_SerialPC.call(printf, "Finished Sending data to Master MCU\n\r\n\r");              
    }
}

void test()
{
    thread_MasterCom.flags_set(0x20);
}
