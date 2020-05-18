#include "main.h"

int main()
{
    const int addr7bit = 0x48;      // 7 bit I2C address
    const int addr8bit = 0x48 << 1; // 8bit I2C address, 0x90
   
    char cmd[2];
    while (1) {
        cmd[0] = 0x01;
        cmd[1] = 0x00;
        TestI2C.write(addr8bit, cmd, 2);
 
        wait(0.5);
 
        cmd[0] = 0x00;
        TestI2C.write(addr8bit, cmd, 1);
        TestI2C.read( addr8bit, cmd, 2);
        
        printf("Returned Data: [1]->0x%x\t[2]->0x%x", cmd[0], cmd[1]);

    }
   
    // PlayerCOM.format(8, 0);
    // PlayerCOM.frequency(100000);
    // ThisThread::sleep_for(5000);
    // printf("\n\r\n\rStarting Com...\n\r");
    // while (true) {
    //     int UID_1 = PlayerCOM.write(0x5B);
    //     // wait_us(50);
    //     // PlayerCS = 0;
    //     // int UID_1 = PlayerCOM.write(0x00);
    //     // PlayerCS = 1;
    //     // wait_us(50);
    //     // PlayerCS = 0;
    //     // int UID_2 = PlayerCOM.write(0x00);
    //     // PlayerCS = 1;
    //     // wait_us(50);
    //     // PlayerCS = 0;
    //     // int UID_3 = PlayerCOM.write(0x00);
    //     // PlayerCS = 1;
    //     // wait_us(50);
    //     // PlayerCS = 0;
    //     // int UID_4 = PlayerCOM.write(0x00);
    //     // PlayerCS = 1;

    //     // printf("Received UID: %x %x %x %x\n\r", UID_1, UID_2, UID_3, UID_4);
    //     printf("Received UID: %x\n\r", UID_1);
    //     ThisThread::sleep_for(1000);
    // }
}
