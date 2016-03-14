#include "util.h"

int cycles = 1000;
uint64_t data[1000];

struct thread_args {
	int index;
	uint64_t start;
};

void * thread_func(void * args_) {
	pthread_detach(pthread_self());
	struct thread_args * args = (struct thread_args *) args_;
	data[args->index] = mach_absolute_time() - args->start;
	printf("\n%llu,", (data[args->index]));
	free(args_);
	return NULL;
}

int main() {

	uint64_t start;
	uint64_t end;
	pthread_t threads[cycles];
	for (int i = 0; i < cycles; i++) {
		struct thread_args * args = (struct thread_args *) malloc(sizeof(struct thread_args));
		args->index = i;
		args->start = mach_absolute_time();
		pthread_create(&threads[i], NULL, thread_func, args);
	}
	for (int i = 0; i < cycles; i++) {
		pthread_join(threads[i], NULL);
	}
	double std_dev_val = std_dev(data, cycles);
	double mean_val = mean(data, cycles);
	printf("\nMean: %f\nStand: %f\n", mean_val, std_dev_val);
	return 0;
}