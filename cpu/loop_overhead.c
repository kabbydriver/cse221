#include "util.h"

int main() {
	int i = 10;
	uint64_t start = mach_absolute_time();
	while(i--) {}
	uint64_t end = mach_absolute_time();
	printf("%llu,\n", (end - start));
}
