/* The port number is passed as an argument */
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>

void error(const char *msg){
    perror(msg);
        exit(1);
}

int main (){

	int server_socket = socket(AF_INET,SOCK_STREAM,0);
	int portNumber = 5000;
	int client_socket;
	char buffer[256];
	if(server_socket<0){
        	error ("ERROR Establisng Socket");
        }

 

        struct sockaddr_in server_address, cli_addr;
        server_address.sin_family = AF_INET;
        server_address.sin_addr.s_addr =  INADDR_ANY;
        server_address.sin_port = htons(portNumber);

	if(bind(server_socket, (struct sockaddr*) &server_address, sizeof(server_address)) < 0){
		error("Error on binding");
	}

	// clear address structure
	bzero((char *) &server_address, sizeof(server_address));

	listen(server_socket, 12);

	//client address length
     	socklen_t clilen = sizeof(cli_addr);
     	
	client_socket = accept(server_socket, (struct sockaddr *) &cli_addr, &clilen);

	if(client_socket < 0){
	error("ERROR on accept");
	}

	printf("server: got connection from %s port %d\n", inet_ntoa(cli_addr.sin_addr), ntohs(cli_addr.sin_port));

	bzero(buffer,256);

        }





