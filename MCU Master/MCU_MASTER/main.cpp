#include "main.h"

int main()
{
    PlayerCOM.format(8, 0);
    PlayerCOM.frequency(8000000);
    while (true) {
        PlayerCOM.write(0x50);
        int UID_1 = PlayerCOM.write(0x00);
        int UID_2 = PlayerCOM.write(0x00);
        int UID_3 = PlayerCOM.write(0x00);
        int UID_4 = PlayerCOM.write(0x00);
        printf("Received UID: %x%x%x%x", UID_1, UID_2, UID_3, UID_4);
        ThisThread::sleep_for(1000);
    }
}
