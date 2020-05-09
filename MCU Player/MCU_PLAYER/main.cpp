#include "main.h"

int main()
{
    if(!NFC1.PCD_Init())
    {
        PC.printf("PCD Initalisation Failed...");
        ThisThread::sleep_for(osWaitForever);
    }
    PC.printf("Initalisation Success\n\r");
    
    while (true) {
        // Look for new cards
        OnBoardLED = 1;

        if (!NFC1.PICC_IsNewCardPresent())
        {
            wait_ms(500);
            continue;
        }
    
        // Select one of the cards
        if (!NFC1.PICC_ReadCardSerial())
        {
            PC.printf("Read Card Serial Failed\n\r");
            wait_ms(500);
            continue;
        }
        OnBoardLED = 0;
    
        // Print Card UID
        PC.printf("Card UID: ");
        for (uint8_t i = 0; i < NFC1.uid.size; i++)
        {
            PC.printf(" %X02 ", NFC1.uid.uidByte[i]);
        }
        PC.printf("\n\r");
    
        // Print Card type
        uint8_t piccType = NFC1.PICC_GetType(NFC1.uid.sak);
        PC.printf("PICC Type: %s \n\r", NFC1.PICC_GetTypeName(piccType));
        wait_ms(1000);
    }
}
