#include "main.h"

int main()
{
    //init
    thread_HTTP.start(HTTP_thread_main);
    thread_GetData.start(GetData_thread_main);
    thread_LocalDisplay.start(LocalDisplay_thread_main);
    thread_Serial.start(callback(&eq_Serial, &EventQueue::dispatch_forever));
    HTTP_UpdatePlayer(Player1, 1);
    HTTP_UpdateBoard(Board);
    eq_Serial.call(printf,"Start\n\r");

    while (true) {
        ThisThread::sleep_for(500);
        LED = 1;
        ThisThread::sleep_for(500);
        LED = 0;
    }
}

void HTTP_thread_main()
{
    //Repeat for all active players
    
    //eq_Serial.call(printf,"Player1 Card1 Value: %s\n\r", Player1.ReadCard(Poker_Player::card1));
    ThisThread::sleep_for(10000);
    int error = Network();
    eq_Serial.call(printf,"NETWORK ERROR: %d\n\r",error);
    ThisThread::sleep_for(osWaitForever);
}

void GetData_thread_main()
{    
    while(1)
    {
        //Repeat for all active players
        Player1.GetCardsSPI();
        Board.GetCardsSPI(); 

        ThisThread::sleep_for(3000);              
    }
}

void LocalDisplay_thread_main()
{
    spi_LocalDisplay.format(8, 0);
    spi_LocalDisplay.frequency(1000000);
    while(1)
    {
        ThisThread::sleep_for(1000);
        //Update frame to send with newest card values received

        //send frame to FPGA
        for(int i = 0; i < 640; i += 4) //Adding 4 to represent QSPI sending 4 bits per transaction
        {
            for(int j = 0; j < 480; j += 4)
            {
                uint8_t Pixel = 0xAE;//(HexDisplay[i][j][0]<<5) | (HexDisplay[i][j][1]<<2) | (HexDisplay[i][j][0]<<0);
                spi_LocalDisplay.write(Pixel);
            }
        }
    }
}
