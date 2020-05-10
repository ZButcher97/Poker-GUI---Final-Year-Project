#include "main.h"

int main()
{   
    void SPI_INIT();
    while (true) {
        spi1.write(0xA1);
        spi2.write(0xB2);
        spi3.write(0xC3);
        spi4.write(0xD4);
        spi5.write(0xE5);
        spi6.write(0xF6);
        wait_ms(100);
    }
}

void SPI_INIT()
{
    spi1.format(8,3);
    spi1.frequency(500000);

    spi2.format(8,3);
    spi2.frequency(500000);

    spi3.format(8,3);
    spi3.frequency(500000);

    spi4.format(8,3);
    spi4.frequency(500000);

    spi5.format(8,3);
    spi5.frequency(500000);

    spi6.format(8,3);
    spi6.frequency(500000);
}
