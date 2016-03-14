#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>
#include <errno.h>

#include "util.h"

void Die(char * err) {
	fprintf(stderr, "%s\n", err);
	exit(1);
}

int main(int argc, char ** argv) {
	int sock;
 	struct sockaddr_in server;
	char * server_ip = "128.54.131.42";

	if (argc == 2) {
		server_ip = argv[1];
	}
	
	int server_port = 12002;
	memset(&server, 0, sizeof(server));

	server.sin_family = AF_INET;
	server.sin_addr.s_addr = inet_addr(server_ip);
	server.sin_port = htons(server_port);
	uint64_t start = mach_absolute_time();
	sock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (connect(sock, (struct sockaddr *) &server, sizeof(server)) < 0) {
		perror("connect");
		Die("connect() failed");
	}
	close(sock);
	uint64_t end = mach_absolute_time();
	printf("%llu\n", (end - start));
}
