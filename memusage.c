#include <sys/time.h>
#include <stdio.h>
#include <string.h>
#include <sys/resource.h>
#include <errno.h>
#include <stdlib.h>

int main() {
	struct rusage usage;
	int res = getrusage(RUSAGE_SELF, &usage);
	printf("User Time: %ld.%d\n", usage.ru_utime.tv_sec, usage.ru_utime.tv_usec);
	printf("System Time: %ld.%d\n", usage.ru_stime.tv_sec, usage.ru_stime.tv_usec);
	printf("Max Resident Size: %ld\n", usage.ru_maxrss);
	printf("Shared Text: %ld\n", usage.ru_ixrss); 
	printf("Unshared Data: %ld\n", usage.ru_idrss); 
	printf("Unshared stack: %ld\n", usage.ru_isrss); 
	printf("Page Reclaims: %ld\n", usage.ru_minflt); 
	printf("Page Faults: %ld\n", usage.ru_majflt); 
	printf("Swaps: %ld\n", usage.ru_nswap);
	printf("Input: %ld\n", usage.ru_inblock);
	printf("Output: %ld\n", usage.ru_oublock);
	printf("IPC Sent: %ld\n", usage.ru_msgsnd);
	printf("IPC Rcv: %ld\n", usage.ru_msgrcv);
	printf("Signals: %ld\n", usage.ru_nsignals);
	printf("Context Switch V: %ld\n", usage.ru_nvcsw);
	printf("Context Switch F: %ld\n", usage.ru_nivcsw);
}


