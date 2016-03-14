#include "util.h"

int main() {
	uint64_t start = mach_absolute_time();
	syscall(SYS_getpid);
	uint64_t end = mach_absolute_time(); 
	printf("%llu,", (end-start));
}
