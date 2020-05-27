#include "Poker.h"

//------Testing/simulating data------//
uint32_t SIM_CARD1UID = 0xD057FEAB;
uint32_t SIM_CARD2UID = 0x5745B812;
uint32_t SIM_CARD3UID = 0x235B489A;
uint32_t SIM_CARD4UID = 0x8624B930;
uint32_t SIM_CARD5UID = 0xB0ABC432;
uint32_t SIM_CARD6UID = 0x70B09701;
uint32_t SIM_CARD7UID = 0x59CBDA98;

Poker_Player Player1(SPI_COM_MOSI, SPI_COM_MISO, SPI_COM_SCLK, SPI_PLAYER1_CS);
// Poker_Player Player2;
// Poker_Player Player3;
// Poker_Player Player4;
// Poker_Player Player5;
// Poker_Player Player6;
// Poker_Player Player7;
// Poker_Player Player8;
Poker_Board Board(SPI_COM_MOSI, SPI_COM_MISO, SPI_COM_SCLK, SPI_BOARD_CS);

//--------------------------------------------------------Poker Player Class--------------------------------------------------------//
Poker_Player::Poker_Player( //Constructor
    PinName _MOSI,
    PinName _MISO,
    PinName _SCLK,
    PinName _CS
) : spi(_MOSI, _MISO, _SCLK), cs(_CS)

{
    spi.format(8,0);
    spi.frequency(1000000);
    cs = 1;
} 

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

void Poker_Player::GetCardsSPI()
{
    this->spi.lock();
    this->cs = 0;

    uint32_t Card1 = 0;
    uint32_t Card2 = 0;

              this->spi.write(0x11); //                     Request Card 1  byte 1
    Card1 &= (this->spi.write(0x12) << 8*3); //Read card 1  byte 1, Request Card 1  byte 2
    Card1 &= (this->spi.write(0x13) << 8*2); //Read card 1  byte 2, Request Card 1  byte 3
    Card1 &= (this->spi.write(0x14) << 8*1); //Read card 1  byte 3, Request Card 1  byte 4
    Card1 &= (this->spi.write(0x21) << 8*0); //Read card 1  byte 4, Request Card 2  byte 1
    Card2 &= (this->spi.write(0x22) << 8*3); //Read card 2  byte 1, Request Card 2  byte 2
    Card2 &= (this->spi.write(0x23) << 8*2); //Read card 2  byte 2, Request Card 2  byte 3
    Card2 &= (this->spi.write(0x24) << 8*1); //Read card 2  byte 3, Request Card 2  byte 4
    Card2 &= (this->spi.write(0x00) << 8*0); //Read card 2  byte 4, clear

    this->cs = 1;
    this->spi.unlock();

    //For testing, this will use pre-defined UIDs to show functionallity
    // this->WriteCard(Available_Cards::card1, Card1);
    // this->WriteCard(Available_Cards::card2, Card2);
    this->WriteCard(Available_Cards::card1, SIM_CARD1UID);
    this->WriteCard(Available_Cards::card2, SIM_CARD2UID);
}
//---------------------------------------------------------------------------------------------------------------------------------//



//--------------------------------------------------------Poker Board Class--------------------------------------------------------//
Poker_Board::Poker_Board( //Constructor
    PinName _MOSI,
    PinName _MISO,
    PinName _SCLK,
    PinName _CS
) : spi(_MOSI, _MISO, _SCLK), cs(_CS)

{
    spi.format(8,0);
    spi.frequency(1000000);
    cs = 1;
} 

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

void Poker_Board::GetCardsSPI()
{
    this->spi.lock();
    this->cs = 0;
    
    uint32_t Flop1 = 0;
    uint32_t Flop2 = 0;
    uint32_t Flop3 = 0;
    uint32_t Turn = 0;
    uint32_t River = 0;

              this->spi.write(0x11); //                             Request Flop 1  byte 1
    Flop1 &= (this->spi.write(0x12) << 8*3); //Read Flop 1  byte 1, Request Flop 1  byte 2
    Flop1 &= (this->spi.write(0x13) << 8*2); //Read Flop 1  byte 2, Request Flop 1  byte 3
    Flop1 &= (this->spi.write(0x14) << 8*1); //Read Flop 1  byte 3, Request Flop 1  byte 4
    Flop1 &= (this->spi.write(0x21) << 8*0); //Read Flop 1  byte 4, Request Flop 2  byte 1
    Flop2 &= (this->spi.write(0x22) << 8*3); //Read Flop 2  byte 1, Request Flop 2  byte 2
    Flop2 &= (this->spi.write(0x23) << 8*2); //Read Flop 2  byte 2, Request Flop 2  byte 3
    Flop2 &= (this->spi.write(0x24) << 8*1); //Read Flop 2  byte 3, Request Flop 2  byte 4
    Flop2 &= (this->spi.write(0x31) << 8*0); //Read Flop 2  byte 4, Request Flop 3  byte 1
    Flop3 &= (this->spi.write(0x32) << 8*3); //Read Flop 3  byte 1, Request Flop 3  byte 2
    Flop3 &= (this->spi.write(0x33) << 8*2); //Read Flop 3  byte 2, Request Flop 3  byte 3
    Flop3 &= (this->spi.write(0x34) << 8*1); //Read Flop 3  byte 3, Request Flop 3  byte 4
    Flop3 &= (this->spi.write(0x41) << 8*0); //Read Flop 3  byte 4, Request Turn    byte 1
    Turn &=  (this->spi.write(0x42) << 8*3); //Read Turn    byte 1, Request Turn    byte 2
    Turn &=  (this->spi.write(0x43) << 8*2); //Read Turn    byte 2, Request Turn    byte 3
    Turn &=  (this->spi.write(0x44) << 8*1); //Read Turn    byte 3, Request Turn    byte 4
    Turn &=  (this->spi.write(0x51) << 8*0); //Read Turn    byte 4, Request River   byte 1
    River &= (this->spi.write(0x52) << 8*3); //Read River   byte 1, Request River   byte 2
    River &= (this->spi.write(0x53) << 8*2); //Read River   byte 2, Request River   byte 3
    River &= (this->spi.write(0x54) << 8*1); //Read River   byte 3, Request River   byte 4
    River &= (this->spi.write(0x00) << 8*0); //Read River   byte 4, clear

    this->cs = 1;
    this->spi.unlock();

    //For testing, this will use pre-defined UIDs to show functionallity
    // this->WriteCard(Available_Cards::card1, Card1);
    // this->WriteCard(Available_Cards::card2, Card2);

    this->WriteCard(Available_Cards::flop1, SIM_CARD3UID);
    this->WriteCard(Available_Cards::flop2, SIM_CARD4UID);
    this->WriteCard(Available_Cards::flop3, SIM_CARD5UID);
    this->WriteCard(Available_Cards::turn, SIM_CARD6UID);
    this->WriteCard(Available_Cards::river, SIM_CARD7UID);
    
    
}
//---------------------------------------------------------------------------------------------------------------------------------//

