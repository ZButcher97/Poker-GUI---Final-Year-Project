#include "main.h"

int main()
{
    //This is for testing while communicating over SPI between STM boards doesnt work...
    //Once this communication works, that will just need drop in replacing for these pre-set values and continouse updating
    Player1.WriteCard(Poker_Player::card1, SIM_CARD1UID);
    Player1.WriteCard(Poker_Player::card2, SIM_CARD2UID);
    Board.WriteCard(Poker_Board::flop1, SIM_CARD3UID);
    Board.WriteCard(Poker_Board::flop2, SIM_CARD4UID);
    Board.WriteCard(Poker_Board::flop3, SIM_CARD5UID);
    Board.WriteCard(Poker_Board::turn, SIM_CARD6UID);
    Board.WriteCard(Poker_Board::river, SIM_CARD7UID);
    //End of sim data
    printf("Start\n\r");
    networktest();

    while (true) {
        printf("Player1 Card1 Should be: %x\n\r", SIM_CARD1UID);
        printf("Player1 Card1 Will be:   %x\n\r", Player1.ReadCard(Poker_Player::card1));
        ThisThread::sleep_for(osWaitForever);
    }
}
