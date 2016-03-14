#include "util.h"

int main() {
	uint64_t start = mach_absolute_time();
	sleep(1);
	uint64_t end = mach_absolute_time();
	printf("%llu,", (end - start));
	printf("\n");
}
