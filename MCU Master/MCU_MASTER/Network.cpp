#include "Network.h"

// int Network_Init()
// {
//     //Configure an ethernet connection
    
//     eth.set_network(IP, NETMASK, GATEWAY);
//     eth.connect();

//     /* Open the server on ethernet stack */
//     if(srv.open(&eth) < 0)
//     {
//         return 0;
//     }
    
//     /* Bind the HTTP port (TCP 80) to the server */
//     if(srv.bind(eth.get_ip_address(), 80) < 0)
//     {
//         return 0;
//     }
    
//     /* Can handle 5 simultaneous connections */
//     if(srv.listen(5) < 0)
//     {
//         return 0;
//     }

//     //Response Builder
//     string response;

//     response = HTTP_HEAD_TITLE_START;
//     response += "Test Page";
//     response += HTTP_HEAD_TITLE_END;
//     response += HTTP_BODY_START;
//     response += ">\n\r";
//     response += "<h1>Test Header</h1>\n\r";
//     response += HTTP_BODY_END;
//     //End response Builder

//     srv.accept(&clt_sock, &clt_addr);    
//     clt_sock.send(response.c_str(), response.size()+6);    
//     return 1;
// }

// void thread_Network()
// {
    
// }


//Network thread - responsible for listening for connectinos and responding with updated tempature values
void networktest()
{    
    //Configure an ethernet connection
    EthernetInterface eth;
    eth.set_network(IP, NETMASK, GATEWAY);
    eth.connect();
    
    //Now setup a web server
    TCPServer srv;           //TCP/IP Server
    TCPSocket clt_sock;      //Socket for communication
    SocketAddress clt_addr;  //Address of incoming connection
    
    /* Open the server on ethernet stack */
    srv.open(&eth);
    //clt_sock.open(&eth);
    
    /* Bind the HTTP port (TCP 80) to the server */
    srv.bind(eth.get_ip_address(), 80);
    //clt_sock.bind(eth.get_ip_address(),80);

    /* Can handle 5 simultaneous connections */
    srv.listen(5);
    //clt_sock.listen();
    
    printf("Open 10.0.0.10 on browser...\n\r");
    while (1) {
        using namespace std;

        //Block and wait on an incoming connection
        printf("Waiting to accept incoming connection\n\r");
        //clt_sock.accept();        
        srv.accept(&clt_sock, &clt_addr);
        printf("Accepted incoming connection\n\r");
        //printf("accept %s:%d\n", clt_addr.get_ip_address(), clt_addr.get_port());
        
        //Uses a C++ string to make it easier to concatinate
        string response;
        //This is a C string
        char ldr_str[64];
        
        //Build the C++ string response
        response = HTTP_MESSAGE_BODY1;
        response += "TEST";
        response += HTTP_MESSAGE_BODY2;
        
        //Send static HTML response (as a C string)
        clt_sock.send(response.c_str(), response.size()+6);   

        clt_sock.close(); 
    }
}