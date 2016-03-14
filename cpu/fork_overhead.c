#include "util.h"

int main() {

	int cycles = 1000;
	uint64_t start;
	uint64_t end;
	uint64_t data[cycles];

	for (int i = 0; i < cycles; i++) {
		start = mach_absolute_time();
		//int pid = fork();
		int pid = vfork();
		end = mach_absolute_time();

		if (start > end) {
			fprintf(stderr, "WRONG\n");
			exit(1);
		}
		if (pid == 0) {
			exit(0);
		} else {
			data[i] = (end - start);
			int ptr;
		}
	}

	double std_dev_val = std_dev(data, cycles);
	double mean_val = mean(data, cycles);
	printf("\nMean: %f\nStand: %f\n", mean_val, std_dev_val);
	return 0;
}
