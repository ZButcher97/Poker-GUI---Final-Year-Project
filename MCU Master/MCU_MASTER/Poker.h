#ifndef POKER_H
#define POKER_H

#include "mbed.h"

    //SPI 4
#define SPI_COM_SCLK    PE_2
#define SPI_COM_MOSI    PE_6
#define SPI_COM_MISO    PE_5

#define SPI_PLAYER1_CS    PE_4
#define SPI_BOARD_CS      PE_0

class Poker_Player
{
public:
    Poker_Player(PinName MOSI, PinName MISO, PinName SCLK, PinName CS);
    ~Poker_Player();
    enum Available_Cards : int
    {
        card1, 
        card2
    };
    uint32_t ReadCard(Available_Cards Card);    
    void GetCardsSPI();
    
protected:
   void WriteCard(Available_Cards Card, uint32_t NewUID);

private:
    uint32_t Card1_UID;
    uint32_t Card2_UID;
    SPI spi;
    DigitalOut cs;
    Mutex mutex_Card;
};

class Poker_Board
{
public:
    Poker_Board(PinName MOSI, PinName MISO, PinName SCLK, PinName CS);
    ~Poker_Board();
    enum Available_Cards : int
    {
        flop1, 
        flop2, 
        flop3, 
        turn, 
        river
    };
    uint32_t ReadCard(Available_Cards Card);
    void GetCardsSPI();
   
protected:
    void WriteCard(Available_Cards Card, uint32_t NewUID);
private:
    //private members
    uint32_t flop1_UID;
    uint32_t flop2_UID;
    uint32_t flop3_UID;
    uint32_t turn_UID;
    uint32_t river_UID;
    Mutex mutex_Card;
    SPI spi;
    DigitalOut cs;
};

extern Poker_Player Player1;
// Poker_Player Player2;
// Poker_Player Player3;
// Poker_Player Player4;
// Poker_Player Player5;
// Poker_Player Player6;
// Poker_Player Player7;
// Poker_Player Player8;
extern Poker_Board Board;

#endif