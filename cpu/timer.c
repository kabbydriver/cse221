




void timer_overhead() {
	uint64_t start;
	uint64_t end;

	int trials = 1000;
	int index = 0;
	int data[trials];
	while (index < trials) {
		start = mach_absolute_time();
		end = mach_absolute_time();
		data[index] = end - start;
		index++;
	}
	double mean_val = mean(data, trials);
	double std_dev_val = std_dev(data, trials);
	printf("\tMean: %f\n\tStandard Devation: %f\n", mean_val, std_dev_val);
}

void loop_overhead() {
	int outer_index = 0;
	int inner_index = 0;
	int trials = 1000;
	int iterations = 1000;
	int data[trials];

	while (outer_index < trials) {

		uint64_t start = mach_absolute_time();

		while (inner_index < iterations) {
			inner_index++;
		}

		uint64_t end = mach_absolute_time();
		data[outer_index] = end - start;
		outer_index++;

	}

	double mean_val = mean(data, trials);
	double std_dev_val = std_dev(data, trials);
	printf("\tMean: %f\n\tStandard Deviation: %f\n", mean_val, std_dev_val);

}

void empty_procedure() {}
void one_procedure(int a) {}
void two_procedure(int a, int b) {}
void three_procedure(int a, int b, int c) {}
void four_procedure(int a, int b, int c, int d) {}
void five_procedure(int a, int b, int c, int d, int e) {}
void six_procedure(int a, int b, int c, int d, int e, int f) {}
void seven_procedure(int a, int b, int c, int d, int e, int f, int g) {}

void procedure_overhead() {

	int trials = 1000;
	int data[trials];
	int index = 0;

	while (index < trials) {

		uint64_t start = mach_absolute_time();
		empty_procedure();
		uint64_t end = mach_absolute_time();
		data[index] = end - start;
		index++;

	}

	double mean_val = mean(data, trials);
	double std_dev_val = std_dev(data, trials);
	printf("\tEmpty Procedure\n");
	printf("\tMean: %f\n\tStandard Deviation: %f\n", mean_val, std_dev_val);


	index = 0;
	while (index < trials) {

		uint64_t start = mach_absolute_time();
		one_procedure(1);
		uint64_t end = mach_absolute_time();
		data[index] = end - start;
		index++;

	}

	mean_val = mean(data, trials);
	std_dev_val = std_dev(data, trials);
	printf("\n\tOne Procedure\n");
	printf("\tMean: %f\n\tStandard Deviation: %f\n", mean_val, std_dev_val);

	index = 0;
	while (index < trials) {

		uint64_t start = mach_absolute_time();
		two_procedure(1, 2);
		uint64_t end = mach_absolute_time();
		data[index] = end - start;
		index++;

	}

	mean_val = mean(data, trials);
	std_dev_val = std_dev(data, trials);
	printf("\n\tTwo Procedure\n");
	printf("\tMean: %f\n\tStandard Deviation: %f\n", mean_val, std_dev_val);

	index = 0;
	while (index < trials) {

		uint64_t start = mach_absolute_time();
		three_procedure(1, 2, 3);
		uint64_t end = mach_absolute_time();
		data[index] = end - start;
		index++;

	}

	mean_val = mean(data, trials);
	std_dev_val = std_dev(data, trials);
	printf("\n\tThree Procedure\n");
	printf("\tMean: %f\n\tStandard Deviation: %f\n", mean_val, std_dev_val);

	index = 0;
	while (index < trials) {

		uint64_t start = mach_absolute_time();
		four_procedure(1, 2, 3, 4);
		uint64_t end = mach_absolute_time();
		data[index] = end - start;
		index++;

	}

	mean_val = mean(data, trials);
	std_dev_val = std_dev(data, trials);
	printf("\n\tFour Procedure\n");
	printf("\tMean: %f\n\tStandard Deviation: %f\n", mean_val, std_dev_val);

	index = 0;
	while (index < trials) {

		uint64_t start = mach_absolute_time();
		five_procedure(1, 2, 3, 4, 5);
		uint64_t end = mach_absolute_time();
		data[index] = end - start;
		index++;

	}	mean_val = mean(data, trials);
	std_dev_val = std_dev(data, trials);
	printf("\n\tFive Procedure\n");
	printf("\tMean: %f\n\tStandard Deviation: %f\n", mean_val, std_dev_val);

	index = 0;
	while (index < trials) {

		uint64_t start = mach_absolute_time();
		six_procedure(1, 2, 3, 4, 5, 6);
		uint64_t end = mach_absolute_time();
		data[index] = end - start;
		index++;

	}

	mean_val = mean(data, trials);
	std_dev_val = std_dev(data, trials);
	printf("\n\tSix Procedure\n");
	printf("\tMean: %f\n\tStandard Deviation: %f\n", mean_val, std_dev_val);


	index = 0;
	while (index < trials) {

		uint64_t start = mach_absolute_time();
		seven_procedure(1, 2, 3, 4, 5, 6, 7);
		uint64_t end = mach_absolute_time();
		data[index] = end - start;
		index++;

	}

	mean_val = mean(data, trials);
	std_dev_val = std_dev(data, trials);
	printf("\n\tSeven Procedure\n");
	printf("\tMean: %f\n\tStandard Deviation: %f\n", mean_val, std_dev_val);

}

void process_overhead() {

	uint64_t start;
	uint64_t end;
	int trials = 1000;
	int index = 0;
	int data[trials];
	while (index < trials) {
		start = mach_absolute_time();
		int pid = fork();
		end = mach_absolute_time();
		if (pid) {
			return;
		} else {
			data[index] = (end - start);
			index++;
		}
	}

	double mean_val = mean(data, trials);
	double std_dev_val = std_dev(data, trials);
	printf("\tMean: %f\n\tStandard Deviation: %f\n", mean_val, std_dev_val);
		
}

void system_call_overhead() {
	uint64_t start;
	uint64_t end;
	int trials = 1000;
	int index = 0;
	int data[trials];
	while (index < trials) {
		start = mach_absolute_time();
		syscall(SYS_getpid);
		end = mach_absolute_time();
		data[index] = (end - start);
		index++;
	}

	double mean_val = mean(data, trials);
	double std_dev_val = std_dev(data, trials);

	printf("\tMean: %f\n\tStandard Deviation: %f\n", mean_val, std_dev_val);

}

struct thread_args {
	uint64_t start;
};

void * thread_func(void * args) {
	pthread_detach(pthread_self());
	printf("%llu\n", (mach_absolute_time()) - ( (struct thread_args *)  (args))->start);	
	return NULL;
}

void thread_overhead() {

	int index = 0;
	int trials = 1000;

	while (index < trials) {
		struct thread_args * args = (struct thread_args *) 
																malloc(sizeof(struct thread_args));
		pthread_t thread_id;
		args->start = mach_absolute_time();
		pthread_create(&thread_id, NULL, thread_func, args);
		index++;
	}
}


int main() {
	/*
	printf("Timer Overhead\n");
	timer_overhead();
	printf("\nLoop Overhead\n");
	loop_overhead();
	printf("\nProcedure Overhead\n");
	procedure_overhead();
	printf("\nSystem Call Overhead\n");
	system_call_overhead();
	*/
	//printf("\nThread Overhead\n");
	thread_overhead();

	/*
	printf("\nProcess Overhead\n");
	process_overhead();
	*/
	sleep(1);
	return 0;
}

