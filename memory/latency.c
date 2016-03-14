#include "util.h"



uint64_t * make_list(uint64_t size, uint64_t step)
{
	uint64_t * ptr = ((uint64_t *) malloc(size * sizeof(uint64_t)));
	memset(ptr, 0, size * sizeof(uint64_t));
	uint64_t index = 0;
	while (!ptr[index]) {
		uint64_t offset = (index + step) % (size);
		ptr[index] = (uint64_t)(ptr + offset);
		index++;
	}
	return ptr;
}
int main(int argc, char ** argv) {

	if (argc < 2) {
		fprintf(stderr, "Wrong num args\n");
		exit(0);
	}

	int data_points = 1000000;
	uint64_t size = (uint64_t) pow(2, atoi(argv[1]));
	uint64_t step = (uint64_t) (atoi(argv[2]));

	uint64_t start;
	uint64_t end;
	uint64_t * list = make_list(size, step);
	uint64_t * ptr = list;
	int index = 0;
	uint64_t data[data_points];
	memset(data, 0, data_points);

	while (index < data_points) {
		uint64_t * old_ptr = ptr;
		start = mach_absolute_time();
		ptr = *ptr;
		end = mach_absolute_time();
		data[index] = (end - start);
		index++;
	}
	free(list);
	double std_dev_val = std_dev(data, data_points);
	double mean_val = mean(data, data_points);
	fprintf(stderr, "%f\n", mean_val);
	printf("%llu\t%llu\t%f\n", step, (uint64_t) atoi(argv[1]), mean_val);
}