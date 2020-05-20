#include "Network.h"

EthernetInterface eth;

//NetworkInterface *net = NetworkInterface::get_default_instance();
//EthInterface *eth = net->ethInterface();

TCPSocket srv;
TCPSocket *clt_sock;      //Socket for communication

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


int Network_Init()
{

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
    printf("IP Address confirm at : %s\n\r",eth.get_ip_address());
    
    if(err!=0) 
    {
        printf("Bind error=%d\n\r",err);
        return 0;
        
    }
    printf("Bind OK\n\r");

    err=srv.listen(5);
    if(err!=0) 
    {
        printf("Listen error=%d\n\r",err);
        return 0;
    }    
    printf("Listening OK\n\r");

    printf("Open %s in a browser...\n\r",eth.get_ip_address());
    //printf("Open %s in a browser...\n\r",eth->get_ip_address());
    static int test = 0;
    // ACCEPT Accepting connections now.....
    clt_sock=srv.accept();

    //Response Builder
    string response = Network_SetCards();

    // response = HTTP_HEAD_TITLE_START;
    // response += "Test Page";
    // response += HTTP_HEAD_TITLE_END;
    // response += HTTP_BODY_START;
    // response += "\">\n\r";
    // response += HTTP_DIV_START;
    // response += ">\n\r";
    // if(test == 0)
    // {
    //     response += "       <h1>Test 1 Header</h1>\n\r";
    //     test = 1;
    // }
    // else
    // {
    //     response += "       <h1>Test 2 Header</h1>\n\r";
    // }    
    // response += HTTP_DIV_END;
    // response += HTTP_BODY_END;
    //End response Builder

    //printf("%s STRING LENGTH is:%d\n\r",response.c_str(),strlen(response.c_str()));
    err = clt_sock->send(response.c_str(), strlen(response.c_str()));
    if(err!=0) {
        printf("Send error=%d\n\r",err);
        clt_sock->close(); 
        return 0;       
    }
    printf("Sent OK!\n\r");
    clt_sock->close(); 
    return 1;
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