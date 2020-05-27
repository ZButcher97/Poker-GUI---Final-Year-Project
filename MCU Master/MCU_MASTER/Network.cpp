#include "Network.h"

string P1_C1_Dir;
string P1_C1_Value;
string P1_C2_Dir;
string P1_C2_Value;
string P2_C1_Dir;
string P2_C1_Value;
string P2_C2_Dir;
string P2_C2_Value;
string P3_C1_Dir;
string P3_C1_Value;
string P3_C2_Dir;
string P3_C2_Value;
string P4_C1_Dir;
string P4_C1_Value;
string P4_C2_Dir;
string P4_C2_Value;
string P5_C1_Dir;
string P5_C1_Value;
string P5_C2_Dir;
string P5_C2_Value;
string P6_C1_Dir;
string P6_C1_Value;
string P6_C2_Dir;
string P6_C2_Value;
string P7_C1_Dir;
string P7_C1_Value;
string P7_C2_Dir;
string P7_C2_Value;
string P8_C1_Dir;
string P8_C1_Value;
string P8_C2_Dir;
string P8_C2_Value;
string B1_Dir;
string B1_Value;
string B2_Dir;
string B2_Value;
string B3_Dir;
string B3_Value;
string B4_Dir;
string B4_Value;
string B5_Dir;
string B5_Value;

const char* UID_Lookup[7][3] = {
    {"D057FEAB", "A", "S"},
    {"5745B812", "2", "C"},
    {"235B489A", "4", "H"},
    {"8624B930", "5", "D"},
    {"B0ABC432", "10", "S"},
    {"70B09701", "J", "C"},
    {"59CBDA98", "K", "H"}
};

int Network()
{
    EthernetInterface eth;

    //NetworkInterface *net = NetworkInterface::get_default_instance();
    //EthInterface *eth = net->ethInterface();

    TCPSocket srv;
    TCPSocket *clt_sock;      //Socket for communication

    // if(!eth)
    // {
    //     printf("Ethernet Not available...\n\r");
    //     return 0;
    // }
    // printf("Ethernet Available\n\r");

    //Configure an ethernet connection
    //eth->set_network(IP, NETMASK, GATEWAY);    
    //eth->connect();
    eth.set_network(IP, NETMASK, GATEWAY);  
    eth.connect();

    /* Open the server on ethernet stack */
    srv.open(&eth); 
    int err = 0;
    //err = srv.bind(eth->get_ip_address(), 80);
    //printf("IP Address confirm at : %s\n\r",eth->get_ip_address());
    err = srv.bind(eth.get_ip_address(), 80);
    if(err<0) 
    {
        printf("Bind error=%d\n\r",err);
        return err;
        
    }

    err=srv.listen(5);
    if(err<0) 
    {
        printf("Listen error=%d\n\r",err);
        return err;
    }    

    printf("Open %s in a browser...\n\r",eth.get_ip_address());
    //printf("Open %s in a browser...\n\r",eth->get_ip_address());
    while(1)
    {
        // ACCEPT Accepting connections now.....
        clt_sock=srv.accept();
        HTTP_UpdatePlayer(Player1, 1);
        HTTP_UpdateBoard(Board);
        //Response Builder
        string response = Network_SetCards();

        err = clt_sock->send(response.c_str(), strlen(response.c_str() + 1));
        if(err<0) { //Only error if negative! If positive, returns number of bytes sent
            clt_sock->close(); 
            return err;                  
        }
        clt_sock->close(); 
    }
    
}


string Network_SetCards()
{
    string Return = HTTP_START;

    Return += P1_C1_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER1_CARD1_DIR;
    Return += P1_C1_Value;
    Return += HTTP_PLAYER1_CARD1_VAL;
    Return += P1_C2_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER1_CARD2_DIR;
    Return += P1_C2_Value;
    Return += HTTP_PLAYER1_CARD2_VAL;   

    Return += B1_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_BOARD_CARD1_DIR;
    Return += B1_Value;
    Return += HTTP_BOARD_CARD1_VAL;
    Return += B2_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_BOARD_CARD2_DIR;
    Return += B2_Value;
    Return += HTTP_BOARD_CARD2_VAL;
    Return += B3_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_BOARD_CARD3_DIR;
    Return += B3_Value;
    Return += HTTP_BOARD_CARD3_VAL;
    Return += B4_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_BOARD_CARD4_DIR;
    Return += B4_Value;
    Return += HTTP_BOARD_CARD4_VAL;
    Return += B5_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_BOARD_CARD5_DIR;
    Return += B5_Value;
    Return += HTTP_BOARD_CARD5_VAL;

    Return += P8_C1_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER8_CARD1_DIR;
    Return += P8_C1_Value;
    Return += HTTP_PLAYER8_CARD1_VAL;
    Return += P8_C2_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER8_CARD2_DIR;
    Return += P8_C2_Value;
    Return += HTTP_PLAYER8_CARD2_VAL;  
    
    Return += P2_C1_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER2_CARD1_DIR;
    Return += P2_C1_Value;
    Return += HTTP_PLAYER2_CARD1_VAL;
    Return += P2_C2_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER2_CARD2_DIR;
    Return += P2_C2_Value;
    Return += HTTP_PLAYER2_CARD2_VAL;  

    Return += P7_C1_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER7_CARD1_DIR;
    Return += P7_C1_Value;
    Return += HTTP_PLAYER7_CARD1_VAL;
    Return += P7_C2_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER7_CARD2_DIR;
    Return += P7_C2_Value;
    Return += HTTP_PLAYER7_CARD2_VAL; 

    Return += P3_C1_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER3_CARD1_DIR;
    Return += P3_C1_Value;
    Return += HTTP_PLAYER3_CARD1_VAL;
    Return += P3_C2_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER3_CARD2_DIR;
    Return += P3_C2_Value;
    Return += HTTP_PLAYER3_CARD2_VAL;   

    Return += P4_C1_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER4_CARD1_DIR;
    Return += P4_C1_Value;
    Return += HTTP_PLAYER4_CARD1_VAL;
    Return += P4_C2_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER4_CARD2_DIR;
    Return += P4_C2_Value;
    Return += HTTP_PLAYER4_CARD2_VAL;   
    
    Return += P5_C1_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER5_CARD1_DIR;
    Return += P5_C1_Value;
    Return += HTTP_PLAYER5_CARD1_VAL;
    Return += P5_C2_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER5_CARD2_DIR;
    Return += P5_C2_Value;
    Return += HTTP_PLAYER5_CARD2_VAL;   
    
    Return += P6_C1_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER6_CARD1_DIR;
    Return += P6_C1_Value;
    Return += HTTP_PLAYER6_CARD1_VAL;
    Return += P6_C2_Value != "" ? "Card" : "Card_Back";
    Return += HTTP_PLAYER6_CARD2_DIR;
    Return += P6_C2_Value;
    Return += HTTP_PLAYER6_CARD2_VAL;   

    return Return;   
}
string Card_Value(CARD_SUITS Suit, string Value)
{
    string ReturnString;
    switch(Suit)
    {
        case CARD_SUITS::Club:
            ReturnString = Value + "<span style=\"color: black;\">&clubs;<span>";
        break;

        case CARD_SUITS::Heart:
            ReturnString = Value + "<span style=\"color: red;\">&hearts;<span>";
        break;

        case CARD_SUITS::Diamond:
            ReturnString = Value + "<span style=\"color: red;\">&diams;<span>";
        break;

        case CARD_SUITS::Spade:
            ReturnString = Value + "<span style=\"color: black;\">&clubs;<span>";
        break;
    }

    return ReturnString;
}

void HTTP_UpdatePlayer(Poker_Player &Player, int PlayerNumber)
{
    uint32_t Card1 = Player.ReadCard(Poker_Player::card1);
    uint32_t Card2 = Player.ReadCard(Poker_Player::card2);
    char Card1_UID[20];
    char Card2_UID[20];

    sprintf(Card1_UID, "%X", Card1);
    sprintf(Card2_UID, "%X", Card2);
    

    for(unsigned int index = 0; index < sizeof(UID_Lookup)/12; index++)
    {
        char* UID = (char*)UID_Lookup[index][0];
        char* Value = (char*)UID_Lookup[index][1];
        char* Suit = (char*)UID_Lookup[index][2];
        string Card_value = Card_Value(!strncmp("H", Suit, 1) ? CARD_SUITS::Heart : !strncmp("D", Suit, 1) ? CARD_SUITS::Diamond : !strncmp("C", Suit, 1) ? CARD_SUITS::Club : CARD_SUITS::Spade, Value);
        bool Card1Set = false;
        bool Card2Set = false;

        //printf("Card1_UID: %s\tUID: %s\n\r", Card1_UID, UID);

        if((Card1Set || !strncmp(Card1_UID, "", 1)) && (Card2Set || !strncmp(Card2_UID, "", 1))) //If both cards have been set, or the cards are not set initally, then exti loop
        {
            break;
        }
        
        if(!strncmp(Card1_UID, UID, 8) && !Card1Set) //strncmp returns 0 if matches
        {
            switch(PlayerNumber)
            {
                case 1: P1_C1_Value = Card_value; break;  
                case 2: P2_C1_Value = Card_value; break;  
                case 3: P3_C1_Value = Card_value; break;  
                case 4: P4_C1_Value = Card_value; break;  
                case 5: P5_C1_Value = Card_value; break;  
                case 6: P6_C1_Value = Card_value; break;  
                case 7: P7_C1_Value = Card_value; break;  
                case 8: P8_C1_Value = Card_value; break;                
                default: break;
            }
            Card1Set = true;
        }
        else if(!strncmp(Card2_UID, UID, 8) && !Card2Set)
        {
            switch(PlayerNumber)
            {
                case 1: P1_C2_Value = Card_value; break;  
                case 2: P2_C2_Value = Card_value; break;  
                case 3: P3_C2_Value = Card_value; break;  
                case 4: P4_C2_Value = Card_value; break;  
                case 5: P5_C2_Value = Card_value; break;  
                case 6: P6_C2_Value = Card_value; break;  
                case 7: P7_C2_Value = Card_value; break;  
                case 8: P8_C2_Value = Card_value; break;                
                default: break;
            }
            Card2Set = true;
        }
    }
}

void HTTP_UpdateBoard(Poker_Board &Board)
{
    uint32_t flop1 = Board.ReadCard(Poker_Board::flop1);
    uint32_t flop2 = Board.ReadCard(Poker_Board::flop2);
    uint32_t flop3 = Board.ReadCard(Poker_Board::flop3);
    uint32_t turn = Board.ReadCard(Poker_Board::turn);
    uint32_t river = Board.ReadCard(Poker_Board::river);

    char Flop1_UID[20];
    char Flop2_UID[20];
    char Flop3_UID[20];
    char Turn_UID[20];
    char River_UID[20];
    bool Flop1Set = false;
    bool Flop2Set = false;
    bool Flop3Set = false;
    bool TurnSet = false;
    bool RiverSet = false;

    sprintf(Flop1_UID, "%X", flop1);
    sprintf(Flop2_UID, "%X", flop2);
    sprintf(Flop3_UID, "%X", flop3);
    sprintf(Turn_UID, "%X", turn);
    sprintf(River_UID, "%X", river);

    

    for(unsigned int index = 0; index < sizeof(UID_Lookup)/12; index++)
    {
        char* UID = (char*)UID_Lookup[index][0];
        char* Value = (char*)UID_Lookup[index][1];
        char* Suit = (char*)UID_Lookup[index][2];
        string Card_value = Card_Value(!strncmp("H", Suit, 1) ? CARD_SUITS::Heart : !strncmp("D", Suit, 1) ? CARD_SUITS::Diamond : !strncmp("C", Suit, 1) ? CARD_SUITS::Club : CARD_SUITS::Spade, Value);
        
        if((Flop1Set || !strncmp(Flop1_UID, "", 1)) && (Flop2Set || !strncmp(Flop2_UID, "", 1)) && (Flop3Set || !strncmp(Flop3_UID, "", 1)) && (TurnSet || !strncmp(Turn_UID, "", 1)) && (RiverSet || !strncmp(River_UID, "", 1))) //If both cards have been set, or the cards are not set initally, then exti loop
        {
            break;
        }
        
        if(!strncmp(Flop1_UID, UID, 8) && !Flop1Set)
        {
            B1_Value = Card_value;
            Flop1Set = true;
        }
        else if(!strncmp(Flop2_UID, UID, 8) && !Flop2Set)
        {
            B2_Value = Card_value;
            Flop2Set = true;
        }
        else if(!strncmp(Flop3_UID, UID, 8) && !Flop3Set)
        {
            B3_Value = Card_value;
            Flop3Set = true;
        }
        else if(!strncmp(Turn_UID, UID, 8) && !TurnSet)
        {
            B4_Value = Card_value;
            TurnSet = true;
        }
        else if(!strncmp(River_UID, UID, 8) && !RiverSet)
        {
            B5_Value = Card_value;
            RiverSet = true;
        }
        
    }
}
