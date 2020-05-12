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
        while(!NFC1_Check()){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
        eq_SerialPC.call(printf, "New Card 1 UID: %s\n\r", CARD1_UID.c_str());
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
        while(!NFC2_Check()){ThisThread::sleep_for(100);}               //Sleep this thread while no new card present
        eq_SerialPC.call(printf, "New Card 2 UID: %s\n\r", CARD2_UID.c_str());
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

//Check if new card is present on NFC reader 1
bool NFC1_Check()
{
    if (!NFC1.PICC_IsNewCardPresent() || !NFC1.PICC_ReadCardSerial())   //Check if new card is present and readable on NFC reader
    {
        return false;
    }      

    char UID_received[100];
    std::string UID_Rec;
    for (uint8_t i = 0; i < NFC1.uid.size; i++)                         //Get new cards UID
    {
        sprintf(UID_received, "%X", NFC1.uid.uidByte[i]);
        UID_Rec = UID_Rec + UID_received;
    }

    CARD1.lock();
    if(UID_Rec == CARD1_UID)                                       //Check if current card is different from last card
    {
        CARD1.unlock();
        return false;
    }    
    CARD1_UID = UID_Rec;                                           //Update current UID and return true;
    CARD1.unlock();

    return true;           
}

//Check if new card is present on NFC reader 2
bool NFC2_Check()
{
    if (!NFC2.PICC_IsNewCardPresent() || !NFC2.PICC_ReadCardSerial())   //Check if new card is present and readable on NFC reader
    {
        return false;
    }      

    char UID_received[100];
    std::string UID_Rec;
    for (uint8_t i = 0; i < NFC2.uid.size; i++)                         //Get new cards UID
    {
        sprintf(UID_received, "%X", NFC2.uid.uidByte[i]);
        UID_Rec = UID_Rec + UID_received;
    }
    
    CARD2.lock();
    if(UID_Rec == CARD2_UID)                                       //Check if current card is different from last card
    {
        CARD2.unlock();
        return false;
    }   
    CARD2_UID = UID_Rec;                                           //Update current UID and return true;
    CARD2.unlock();

    return true;            
}