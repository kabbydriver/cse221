#include "util.h"
#include <errno.h>
int main() {
	int cycles = 1000;
	uint64_t data[cycles];

	for (int i = 0; i < cycles; i++) {
		uint64_t start;
		uint64_t end;
		int fd[2];
		int pipe_stat = pipe(fd);
		//0 --> output
		//1 --> input
		int pid = fork();
		if (pipe_stat < 0) {
			perror("pipe failed");
			return 0;
		}
		if (pid < 0) {
			perror("fork failed");
			return 0;
		}
		if (pid == 0) {
			start = mach_absolute_time();
			write(fd[1], &start, sizeof(start));
			return 0;
		} else {
			read(fd[0], &start, sizeof(start));
			end = mach_absolute_time();
			data[i] = (end - start);
			//printf("%llu\n", data[i]);
			close(fd[0]);
			close(fd[1]);
			int status;
			waitpid(pid, &status, 0);
		}
	}
	double std_dev_val = std_dev(data, cycles);
	double mean_val = mean(data, cycles);
	// for (int i = 0; i < cycles; i++) {
	// 	printf("%llu\n", data[i]);
	// }
	printf("\nMean:  %f\nStand: %f\n", mean_val, std_dev_val);
	return 0;	
}