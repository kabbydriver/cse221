l: latency.c util.o
	gcc -o l latency.c util.o
	gcc -S latency.c

b: bandwidth.c util.o
	gcc -o b bandwidth.c util.o
	gcc -S bandwidth.c
	
p: page_fault.c util.o
	gcc -o p page_fault.c util.o

util.o: util.c util.h
	gcc -c util.c
