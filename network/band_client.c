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

	int block_size = 0;
	int runs = 0;
	if (argc >= 2) {
		block_size = atoi(argv[1]);
		runs = atoi(argv[2]);
	}
	char * buffer = (char *) malloc(block_size);
	memset(buffer, 0, block_size);
	int sock;
	struct sockaddr_in server;
	char * server_ip = "128.54.131.42";

	int server_port = 12001;

	memset(&server, 0, sizeof(server));
	server.sin_family = AF_INET;
	server.sin_addr.s_addr = inet_addr(server_ip);
	server.sin_port = htons(server_port);

	sock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);

	if (sock < 0) {
		perror("socket");
		Die("socket() failed");
	}
	if (connect(sock, (struct sockaddr *) &server, sizeof(server)) < 0) {
		perror("connect");
		Die("connect() failed");
	}
	uint64_t start;
	uint64_t end;
	while (runs--) {
		start = mach_absolute_time();
		send(sock, buffer, block_size, 0);
		end = mach_absolute_time();
		//printf("%d\t%llu\n", block_size, (end - start));
		double time = (end - start) / 1000.0;
		double bwidth = block_size / time;
		printf("%d\t%f\n", block_size, bwidth);
	}
	close(sock);
}
