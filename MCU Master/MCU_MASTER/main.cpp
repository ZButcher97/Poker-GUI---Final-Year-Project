#include "main.h"

int main()
{
   
    PlayerCOM.format(8, 0);
    PlayerCOM.frequency(100000);
    ThisThread::sleep_for(5000);
    printf("\n\r\n\rStarting Com...\n\r");
    while (true) {
        int UID_1 = PlayerCOM.write(0xA6);
        // wait_us(50);
        // PlayerCS = 0;
        // int UID_1 = PlayerCOM.write(0x00);
        // PlayerCS = 1;
        // wait_us(50);
        // PlayerCS = 0;
        // int UID_2 = PlayerCOM.write(0x00);
        // PlayerCS = 1;0
        // wait_us(50);
        // PlayerCS = 0;
        // int UID_3 = PlayerCOM.write(0x00);
        // PlayerCS = 1;
        // wait_us(50);
        // PlayerCS = 0;
        // int UID_4 = PlayerCOM.write(0x00);
        // PlayerCS = 1;

        // printf("Received UID: %x %x %x %x\n\r", UID_1, UID_2, UID_3, UID_4);
        printf("Received UID: %x\n\r", UID_1);
        ThisThread::sleep_for(1000);
    }
}
