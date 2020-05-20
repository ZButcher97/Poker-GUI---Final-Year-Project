#ifndef POKER_H
#define POKER_H

#include "mbed.h"

const char* UID_Lookup[52][2] = {
    {"D057FEA", "5S"},
    {"D057FEA", "5S"},
    {"D057FEA", "5S"},
    {"D057FEA", "5S"},
    {"D057FEA", "5S"},
    {"D057FEA", "5S"},
    {"D057FEA", "5S"},
    {"D057FEA", "5S"},
    {"D057FEA", "5S"},
    {"D057FEA", "5S"},
    {"D057FEA", "5S"},
    {"D057FEA", "5S"},
    {"D057FEA", "5S"}
};

class Poker_Player
{
public:
    Poker_Player();
    ~Poker_Player();
    enum Available_Cards : int
    {
        card1, 
        card2
    };
    uint32_t ReadCard(Available_Cards Card);
    void WriteCard(Available_Cards Card, uint32_t NewUID);
    
protected:
   
private:
    uint32_t Card1_UID;
    uint32_t Card2_UID;
    Mutex mutex_Card;
};

class Poker_Board
{
public:
    Poker_Board();
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
    void WriteCard(Available_Cards Card, uint32_t NewUID);
   
protected:
    
private:
    //private members
    uint32_t flop1_UID;
    uint32_t flop2_UID;
    uint32_t flop3_UID;
    uint32_t turn_UID;
    uint32_t river_UID;
    Mutex mutex_Card;
};

#endif