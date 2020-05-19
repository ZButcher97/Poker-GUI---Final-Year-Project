#include "Poker.h"

//--------------------------------------------------------Poker Player Class--------------------------------------------------------//
Poker_Player::Poker_Player(){} //Constructor

Poker_Player::~Poker_Player(){} //Destructor

uint32_t Poker_Player::ReadCard(Available_Cards Card) //Function to read cards UID with thread sycronisation
{
    uint32_t ReturnUID;
    this->mutex_Card.lock();
    switch(Card)
    {
        case Poker_Player::card1:
            ReturnUID = this->Card1_UID;
        break;

        case Poker_Player::card2:
            ReturnUID = this->Card2_UID;
        break;
    }
    this->mutex_Card.unlock();
    return ReturnUID;
}

void Poker_Player::WriteCard(Available_Cards Card, uint32_t NewUID) //Function to write UID to cards with thread sycronisation
{
    this->mutex_Card.lock();
    switch(Card)
    {
        case Poker_Player::card1:
            this->Card1_UID = NewUID;
        break;

        case Poker_Player::card2:
            this->Card2_UID = NewUID;
        break;
    }
    this->mutex_Card.unlock();
}
//---------------------------------------------------------------------------------------------------------------------------------//



//--------------------------------------------------------Poker Board Class--------------------------------------------------------//
Poker_Board::Poker_Board(){} //Constructor

Poker_Board::~Poker_Board(){} //Destructor

uint32_t Poker_Board::ReadCard(Available_Cards Card) //Function to read cards UID with thread sycronisation
{
    uint32_t ReturnUID;
    this->mutex_Card.lock();
    switch(Card)
    {
        case Poker_Board::flop1:
            ReturnUID = this->flop1_UID;
        break;

        case Poker_Board::flop2:
            ReturnUID = this->flop2_UID;
        break;

        case Poker_Board::flop3:
            ReturnUID = this->flop3_UID;
        break;

        case Poker_Board::turn:
            ReturnUID = this->turn_UID;
        break;

        case Poker_Board::river:
            ReturnUID = this->river_UID;
        break;
    }
    this->mutex_Card.unlock();
    return ReturnUID;
}

void Poker_Board::WriteCard(Available_Cards Card, uint32_t NewUID) //Function to write UID to cards with thread sycronisation
{
    this->mutex_Card.lock();
    switch(Card)
    {
        case Poker_Board::flop1:
            this->flop1_UID = NewUID;
        break;

        case Poker_Board::flop2:
            this->flop2_UID = NewUID;
        break;

        case Poker_Board::flop3:
            this->flop3_UID = NewUID;
        break;

        case Poker_Board::turn:
            this->turn_UID = NewUID;
        break;

        case Poker_Board::river:
            this->river_UID = NewUID;
        break;
    }
    this->mutex_Card.unlock();
}
//---------------------------------------------------------------------------------------------------------------------------------//

