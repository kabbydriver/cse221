#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>

#include "util.h"

void Die(char * err) {
	fprintf(stderr, "%s\n", err);
	exit(1);
}

int main(int argc, char ** argv) {
	int server_socket;
	int client_sock;
	struct sockaddr_in server_addr;
	struct sockaddr_in client_addr;
	unsigned short server_port = 12001;

	memset(&server_addr, 0, sizeof(server_addr));
	server_addr.sin_family = AF_INET;
	server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	server_addr.sin_port = htons(server_port);

	server_socket = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (bind(server_socket, (struct sockaddr *) &server_addr, sizeof(server_addr)) < 0) {
		Die("bind() failed");
	}

	if (listen(server_socket, 5) < 0) {
		Die("listen() failed");
	}

	for (;;) {
		unsigned int client_len = 0;
		int client_sock = accept(server_socket, (struct sockaddr *) &client_addr, &client_len);
		close(client_sock);
	}
}
