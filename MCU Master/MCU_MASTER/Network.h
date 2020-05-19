// #ifndef NETWORK_H
// #define NETWORK_H

// #include "mbed.h"
// #include "HTML.h"
// #include "EthernetInterface.h"
// #include "TCPServer.h"
// #include "TCPSocket.h"
// #include <iostream>

// #define IP        "10.0.0.10"
// #define NETMASK   "255.0.0.0"
// #define GATEWAY   "10.0.0.1"

// EthernetInterface eth;
// TCPServer srv;           //TCP/IP Server
// TCPSocket clt_sock;      //Socket for communication
// SocketAddress clt_addr;  //Address of incoming connection

// extern int Network_Init();

// #endif

#ifndef MBED_NETWORKBITS_H
#define MBED_NETWORKBITS_H

#include "mbed.h"
#include "EthernetInterface.h"
#include "TCPServer.h"
#include "TCPSocket.h"
#include <iostream>
#include <string> 


#define HTTP_STATUS_LINE "HTTP/1.0 200 OK"
#define HTTP_HEADER_FIELDS "Content-Type: text/html; charset=utf-8"
#define HTTP_MESSAGE_BODY1 ""                                    \
"<html>" "\r\n"                                                  \
"  <body style=\"display:flex;text-align:center\">" "\r\n"       \
"    <div style=\"margin:auto\">" "\r\n"                         \
"      <h1>Hello World</h1>" "\r\n"                              \
"      <p>The temperature is "                                     

#define HTTP_MESSAGE_BODY2 ""                                    \
       "</p>" "\r\n"                                             \
"    </div>" "\r\n"                                              \
"  </body>" "\r\n"                                               \
"</html>"

#define HTTP_RESPONSE HTTP_STATUS_LINE "\r\n"   \
                      HTTP_HEADER_FIELDS "\r\n" \
                      "\r\n"                    \
                      HTTP_MESSAGE_BODY "\r\n"

#define IP        "10.0.0.10"
#define NETMASK   "255.0.0.0"
#define GATEWAY   "10.0.0.1"

extern void networktest();

#endif