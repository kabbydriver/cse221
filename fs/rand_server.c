#include <sys/stat.h>
#include <sys/socket.h>
#include <time.h>

#include "util.h"

size_t get_fsize(int fd) {
	struct stat info;
	fstat(fd, &info);
	return info.st_size;
}

u_long block_size(int fd) {
	struct stat info;
	fstat(fd, &info);
	//printf("%d\n", info.st_blksize);
	return info.st_blksize;
}

double get_rand() {
	return (double) rand() / (double) RAND_MAX;
}

int main(int argc, char ** argv) {

	int fd = open(argv[1], O_RDONLY);
	size_t size = get_fsize(fd);
	u_long chunk = block_size(fd);
	char buffer[chunk];
	memset(buffer, 0, chunk);

	int res = fcntl(fd, F_NOCACHE, 1);
	printf("%d\n", res);
	srand(time(NULL));

	int server_socket;
	int client_sock;
	struct sockaddr_in server_addr;
	struct sockaddr_in client_addr;
	unsigned short server_port = 12001;

	memset(&server_addr, 0, sizeof(server_addr));
	server_addr.sin_family = AF_INET;
	server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
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
		lseek(fd, r * (size - chunk), SEEK_SET);
		ssize_t bytes_read = read(fd, buffer, chunk);
		send(client_sock, buffer, bytes_read)
	}


}
