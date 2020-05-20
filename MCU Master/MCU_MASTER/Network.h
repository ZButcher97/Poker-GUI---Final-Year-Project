#ifndef NETWORK_H
#define NETWORK_H

#include "mbed.h"
#include "HTML.h"
#include "EthernetInterface.h"
#include "TCPServer.h"
#include "TCPSocket.h"
#include <iostream>
#include <string>

#define IP        "10.0.0.15"
#define NETMASK   "255.0.0.0"
#define GATEWAY   "10.0.0.1"

extern int Network_Init();
extern void thread_Network();
enum CARD_SUITS { Spade, Heart, Diamond, Club};

extern string Network_SetCards();
extern string Card_Value(CARD_SUITS Suit, string Value);

extern string P1_C1_Dir;
extern string P1_C1_Value;
extern string P1_C2_Dir;
extern string P1_C2_Value;

extern string P2_C1_Dir;
extern string P2_C1_Value;
extern string P2_C2_Dir;
extern string P2_C2_Value;

extern string P3_C1_Dir;
extern string P3_C1_Value;
extern string P3_C2_Dir;
extern string P3_C2_Value;

extern string P4_C1_Dir;
extern string P4_C1_Value;
extern string P4_C2_Dir;
extern string P4_C2_Value;

extern string P5_C1_Dir;
extern string P5_C1_Value;
extern string P5_C2_Dir;
extern string P5_C2_Value;

extern string P6_C1_Dir;
extern string P6_C1_Value;
extern string P6_C2_Dir;
extern string P6_C2_Value;

extern string P7_C1_Dir;
extern string P7_C1_Value;
extern string P7_C2_Dir;
extern string P7_C2_Value;

extern string P8_C1_Dir;
extern string P8_C1_Value;
extern string P8_C2_Dir;
extern string P8_C2_Value;

extern string B1_Dir;
extern string B1_Value;
extern string B2_Dir;
extern string B2_Value;
extern string B3_Dir;
extern string B3_Value;
extern string B4_Dir;
extern string B4_Value;
extern string B5_Dir;
extern string B5_Value;



#endif
