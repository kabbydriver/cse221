#include "util.h"

double mean(uint64_t * data, int len) {
	double total = 0;
	int index = 0;
	while (index < len) {
		total += data[index];
		index++;
	}

	return total / (index * 1.0);
}

double std_dev(uint64_t * data, int len) {
	int index = 0;
	double total = 0;
	double mean_val = mean(data, len);
	while (index < len) {
		total += pow(mean_val - data[index], 2);
		index++;
	}
	double variance = total / len;
	return sqrt(variance);

}

void function_runner(uint64_t (*runner)(), double * std_dev_v, double * mean_v, int cycles) {

	uint64_t data[cycles];
	int index = 0;

	while(index < cycles) {
		uint64_t res = (*runner)();
		data[index] = res;
		index++;
		if (debug_on) {
			printf("%llu\n", res);
		}
	}
	*mean_v = mean(data, cycles);
	*std_dev_v = std_dev(data, cycles);
}