#include "util.h"

int num_forks = 0;
void helper(int fnum) {
	char buffer[40];
	memset(buffer, 0, 40);
	sprintf(buffer, "files/%d", fnum);
	char read_buf[4096];
	uint64_t start = mach_absolute_time();
	int fd = open(buffer, O_RDONLY);
	fcntl(fd, F_NOCACHE, 1);
	read(fd, read_buf, 4096);
	uint64_t end = mach_absolute_time();
	close(fd);
	printf("%d\t%llu\n", num_forks, (end - start));
}

int main(int argc, char ** argv) {
	num_forks = atoi(argv[1]);
	for(int i = 0; i < num_forks; i++) {
		int pid = fork();
		if (pid == 0) {
			helper(i);
			exit(0);
		}
	}
}
