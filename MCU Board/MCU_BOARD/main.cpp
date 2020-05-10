#include "main.h"

int main()
{   
    spi.format(8,3);
    spi.frequency(500000);
    while (true) {
        spi.write(0x3C);
        wait_ms(10);
    }
}
