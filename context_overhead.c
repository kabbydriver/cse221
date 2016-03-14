#include "util.h"

int main() {

	int fd[2];
	pipe(fd);
	//0 --> output
	//1 --> input
	printf("Read %d Write %d\n", fd[0], fd[1]);
	int pid = fork();

	if (pid == 0) {
		char * str = "hello";
		sleep(1);
		printf("Child\n");
		write(fd[1], str, strlen(str));
		close(fd[1]);
	} else {
		printf("Parent\n");
		char buffer[1024];
		memset(buffer, 0, 1024);
		read(fd[0], buffer, 1024);
		printf("Buffer: %s\n", buffer);
		close(fd[0]);9yfttttttfrtrfgtrftgrfdfgtdfdfrdfrdfrtrdftrftedrtedfrdfyuyugtyuygtyutfgtytfrtyhghytgbfvbgcvvghgfcghgfvghjbhnjknjkjhbjnjnjjnjuioujiuojuhjuiiii8ujuijuijkloijhjiojiujklp;lkjkoijuklkmn,./,mn ./.,/
		''-9,m,
	}



	/*int cycles = 1000;
	uint64_t start;
	uint64_t end;
	uint64_t data[cycles];

	for (int i = 0; i < cycles; i++) {
		start = mach_absolute_time();
		int pid = fork();
		end = mach_absolute_time();

		if (start > end) {
			fprintf(stderr, "WRONG\n");
			exit(1);
		}
		if (pid == 0) {
			return 0;
		} else {
			data[i] = (end - start);
			int ptr;
		}
	}

	double std_dev_val = std_dev(data, cycles);
	double mean_val = mean(data, cycles);
	printf("\nMean: %f\nStand: %f\n", mean_val, std_dev_val);
	*/
	return 0;
}