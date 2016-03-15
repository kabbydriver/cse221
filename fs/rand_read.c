#include <sys/stat.h>
#include <time.h>

#include "util.h"

size_t get_fsize(int fd) {
	struct stat info;
	fstat(fd, &info);
	return info.st_size;
}

double get_rand() {
	return (double) rand() / (double) RAND_MAX;
}

int main(int argc, char ** argv) {
	int iterations = 1000;
	int fd = open(argv[1], O_RDONLY);
	size_t size = get_fsize(fd);
	u_long chunk = 4096;
	char buffer[chunk];
	memset(buffer, 0, chunk);

	int res = fcntl(fd, F_NOCACHE, 1);
	printf("%d\n", res);
	srand(time(NULL));


	double randoms[iterations];
	for (int i = 0; i < iterations; i++) {
		randoms[i] = get_rand() * (size - chunk);
	}
	ssize_t bytes_read = 0;
	uint64_t start = mach_absolute_time();
	while (iterations--) {
		lseek(fd, randoms[iterations], SEEK_SET);
		bytes_read += read(fd, buffer, chunk);
	}
	uint64_t end = mach_absolute_time();
	printf("%zu\t%zu\t%llu\n", size, bytes_read,(end - start)/256);



}
