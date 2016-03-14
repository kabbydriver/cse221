#include <sys/param.h>
#include <sys/mount.h>
#include <stdio.h>

int main() {
	struct statfs fs;
	statfs("/", &fs);
	printf("%d\n", fs.f_iosize);
}
