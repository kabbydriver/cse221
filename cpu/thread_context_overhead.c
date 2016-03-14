#include "util.h"
#include <errno.h>


int cycles = 1000;
uint64_t data[1000];

struct thread_args {
	int index;
	uint64_t start;
	int * fd;
};

void * thread_func(void * args_) {
	pthread_detach(pthread_self());
	struct thread_args * args = (struct thread_args *) args_;
	int trash = 5;
	read(args->fd[1], &trash, sizeof(trash));
	data[args->index] = mach_absolute_time() - args->start;
	printf("%d, %llu\n", args->index, (data[args->index]));
	return NULL;
}

int main() {
	int cycles = 1000;
	uint64_t data[cycles];
	memset(data, 0, cycles);

	for (int i = 0; i < cycles; i++) {
		int fd[2];
		pipe(fd);

		pthread_t thread;
		struct thread_args * args = (struct thread_args *) malloc(sizeof(struct thread_args));
		args->index = i;
		args->fd = fd;
		pthread_create(&thread, NULL, thread_func, args);
		args->start = mach_absolute_time();
		write(fd[1], &(args->index), sizeof(int));
		pthread_join(thread, NULL);
		free(args);
		close(fd[0]);
		close(fd[1]);
	}
		
	double std_dev_val = std_dev(data, cycles);
	double mean_val = mean(data, cycles);
	printf("\nMean:  %f\nStand: %f\n", mean_val, std_dev_val);
	return 0;	
}
