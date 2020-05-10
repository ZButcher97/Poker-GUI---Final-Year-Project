#include "main.h"

int main()
{
    if(!init())
    {        
        ThisThread::sleep_for(osWaitForever);
    }
    PC.printf("Initalisation Success\n\r");
    
    while (true) {
        // Look for new cards
        OnBoardLED = 1;
        NFC1_Check();
        NFC2_Check();    
        wait_ms(10);
    }
}


void NFC1_Check()
{
    if (NFC1.PICC_IsNewCardPresent())
    {
        if (NFC1.PICC_ReadCardSerial())
        {                   
            // Print Card UID
            PC.printf("NFC1: Card UID: ");
            for (uint8_t i = 0; i < NFC1.uid.size; i++)
            {
                PC.printf(" %X", NFC1.uid.uidByte[i]);
            }
            PC.printf("\n\r");
        
            // Print Card type
            uint8_t piccType = NFC1.PICC_GetType(NFC1.uid.sak);
            PC.printf("NFC1: PICC Type: %s \n\r", NFC1.PICC_GetTypeName(piccType));
        }
        else
        {
            PC.printf("NFC1: Read Card Serial Failed\n\r");
        }
    }            
}

void NFC2_Check()
{
    if (NFC2.PICC_IsNewCardPresent())
    {
        if (NFC2.PICC_ReadCardSerial())
        {                   
            // Print Card UID
            PC.printf("NFC2: Card UID: ");
            for (uint8_t i = 0; i < NFC2.uid.size; i++)
            {
                PC.printf(" %X", NFC2.uid.uidByte[i]);
            }
            PC.printf("\n\r");
        
            // Print Card type
            uint8_t piccType = NFC2.PICC_GetType(NFC2.uid.sak);
            PC.printf("NFC2: PICC Type: %s \n\r", NFC2.PICC_GetTypeName(piccType));
        }
        else
        {
            PC.printf("NFC2: Read Card Serial Failed\n\r");
        }
    }            
}

bool init()
{
    if(!NFC1.PCD_Init())
    {
        PC.printf("NFC1: Initalisation Failed...\n\r");
        return false;
    }
    if(!NFC2.PCD_Init())
    {
        PC.printf("NFC2: Initalisation Failed...\n\r");
        return false;
    }
    return true; 
}