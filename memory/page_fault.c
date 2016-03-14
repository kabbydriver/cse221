#include <sys/stat.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/mman.h>
#include <errno.h>
#include <string.h>
#include <mach/mach_time.h>
#include <sys/resource.h>

int main(int argc, char ** argv) {

	printf("%d", argc);
	uint64_t start;
	uint64_t end;
	char * path = "page";
	int fd = open(path, O_RDONLY);
	int pagesize = getpagesize();
	char buffer[8192];
	memset(buffer, 0, 8192);
	errno = 0;

	start = mach_absolute_time();
	char * ptr = (char *) mmap(NULL, pagesize*2, PROT_READ, MAP_PRIVATE, fd, 0);
	char a = ptr[0];
	end = mach_absolute_time();
	printf("%llu,", (end - start));

	
	close(fd);

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
