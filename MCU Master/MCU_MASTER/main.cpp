#include "main.h"

int main()
{
    CS = 1;
    PlayerCOM.format(8,0);
    PlayerCOM.frequency(1000000);
    printf("Master Start...\n\r");
    ThisThread::sleep_for(5000);
    while(1)
    {        
        CS = 0;
        int Data1 = PlayerCOM.write(0x23);
        CS = 1;
        ThisThread::sleep_for(100);
        CS = 0;
        int Data2 = PlayerCOM.write(0x45);
        CS = 1;
        printf("Data1: %X\tData2: %X\n\r", Data1, Data2);
        ThisThread::sleep_for(1000);
    }
    //This is for testing while communicating over SPI between STM boards doesnt work...
    //Once this communication works, that will just need drop in replacing for these pre-set values and continouse updating
    // Player1.WriteCard(Poker_Player::card1, SIM_CARD1UID);
    // Player1.WriteCard(Poker_Player::card2, SIM_CARD2UID);
    // Board.WriteCard(Poker_Board::flop1, SIM_CARD3UID);
    // Board.WriteCard(Poker_Board::flop2, SIM_CARD4UID);
    // Board.WriteCard(Poker_Board::flop3, SIM_CARD5UID);
    // Board.WriteCard(Poker_Board::turn, SIM_CARD6UID);
    // Board.WriteCard(Poker_Board::river, SIM_CARD7UID);
    //End of sim data
    // printf("Start\n\r");
    // P1_C1_Value = Card_Value(CARD_SUITS::Spade, "4");
    // P1_C2_Value = Card_Value(CARD_SUITS::Diamond, "A");
    // P2_C1_Value = Card_Value(CARD_SUITS::Heart, "Q");
    // P2_C2_Value = Card_Value(CARD_SUITS::Club, "K");
    // P3_C1_Value = Card_Value(CARD_SUITS::Spade, "J");
    // P3_C2_Value = Card_Value(CARD_SUITS::Diamond, "1");
    // B1_Value = Card_Value(CARD_SUITS::Heart, "4");
    // B2_Value = Card_Value(CARD_SUITS::Club, "5");
    // B3_Value = Card_Value(CARD_SUITS::Spade, "7");
    // B4_Value = Card_Value(CARD_SUITS::Diamond, "8");
    // B5_Value = Card_Value(CARD_SUITS::Heart, "10");
    // B4_Value = "";
    
    // if(!Network_Init())
    // {
    //     printf("Network Initalisation failed...\n\r");
    //     ThisThread::sleep_for(osWaitForever);
    // }

    // while (true) {
    //     printf("Player1 Card1 Should be: %x\n\r", SIM_CARD1UID);
    //     printf("Player1 Card1 Will be:   %x\n\r", Player1.ReadCard(Poker_Player::card1));
    //     ThisThread::sleep_for(osWaitForever);
    // }
}
