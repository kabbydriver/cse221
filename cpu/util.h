#include <mach/mach_time.h>
#include <stdio.h>
#include <math.h>
#include <pthread.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/syscall.h>
#include <string.h>

int debug_on;
double mean(uint64_t * data, int len);
double std_dev(uint64_t * data, int len);
void function_runner(uint64_t (*runner)(), double * std_dev_v, double * mean_v, int cycles);
