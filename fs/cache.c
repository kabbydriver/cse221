#include "util.h"

ssize_t min(ssize_t a, ssize_t b) {
	if ( a < b) { return a; }
	else { return b; }
}

size_t get_fsize(int fd) {
	struct stat info;
	fstat(fd, &info);
	return info.st_size;
}

int main(int argc, char ** argv) {
	int fd = open(argv[1], O_RDONLY);
	int iter = atoi(argv[2]);
	int num_records = iter;
	ssize_t size = get_fsize(fd);
	char * buf = (char *) malloc(size);
	read(fd, buf, min(1073741824, size)); // warmup
	close(fd);
	uint64_t start = mach_absolute_time();
	off_t offset = 0;
	while (iter--) {
		fd = open(argv[1], O_RDONLY);
		while (offset < size) {
			offset += read(fd, buf, min(1073741824, size)); // warmup
		}
		close(fd);
	}
	uint64_t end = mach_absolute_time();
	printf("%zu\t%llu\n", size,  (end - start)/num_records);
}
