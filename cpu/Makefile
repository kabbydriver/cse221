all: timer_overhead procedure_overhead syscall_overhead task_overhead context_overhead


default: util.o
	gcc -O0 -o timer timer.c
	gcc -S timer.c
	./timer

util.o: util.c util.h
	gcc -c util.c

to: timer_overhead.c util.o
	gcc -o to timer_overhead.c util.o
	gcc -S timer_overhead.c 
	./to -x

po: procedure_overhead.c util.o
	gcc -o po procedure_overhead.c util.o
	gcc -S procedure_overhead.c
	./po

so: syscall_overhead.c util.o
	gcc -o so syscall_overhead.c util.o
	gcc -S syscall_overhead.c
	
fo: fork_overhead.c util.o
	gcc -pthread -o fo fork_overhead.c util.o
	gcc -S fork_overhead.c

tho: thread_overhead.c util.o
	gcc -o tho thread_overhead.c util.o
	gcc -S thread_overhead.c

fco: fork_context_overhead.c util.o
	gcc -o fco fork_context_overhead.c util.o
	gcc -S fork_context_overhead.c

tco: thread_context_overhead.c util.o
	gcc -o tco thread_context_overhead.c util.o
	gcc -S thread_context_overhead.c
	./tco

clean:
	rm -f so
	rm -f co
	rm -f fco
	rm -f tho
	rm -f po
	rm -f to
	rm -f fo
	rm -f task


