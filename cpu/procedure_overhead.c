#include "util.h"

void empty_procedure() {}
void one_procedure(int a) {}
void two_procedure(int a, int b) {}
void three_procedure(int a, int b, int c) {}
void four_procedure(int a, int b, int c, int d) {}
void five_procedure(int a, int b, int c, int d, int e) {}
void six_procedure(int a, int b, int c, int d, int e, int f) {}
void seven_procedure(int a, int b, int c, int d, int e, int f, int g) {}


uint64_t proc_0() {
	int cycles_high0;
	int cycles_low0;
	int cycles_high1;
	int cycles_low1;
	uint64_t start;
	uint64_t end;

	asm volatile ("rdtscp\n\t"
		"rdtsc\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		: "=r" (cycles_high0), "=r" (cycles_low0)
		:: "%rax", "%rbx", "%rcx", "%rdx");
	empty_procedure();
	asm volatile ("rdtscp\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		"cpuid\n\t"
		: "=r" (cycles_high1), "=r" (cycles_low1)
		:: "%rax", "%rbx", "%rcx", "%rdx");

	start = ((((uint64_t)cycles_high0) << 32) | cycles_low0);
	end   = ((((uint64_t)cycles_high1) << 32) | cycles_low1);
	return (end - start);
}

uint64_t proc_1() {
	int cycles_high0;
	int cycles_low0;
	int cycles_high1;
	int cycles_low1;
	uint64_t start;
	uint64_t end;

	asm volatile ("rdtscp\n\t"
		"rdtsc\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		: "=r" (cycles_high0), "=r" (cycles_low0)
		:: "%rax", "%rbx", "%rcx", "%rdx");
	one_procedure(1);
	asm volatile ("rdtscp\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		"cpuid\n\t"
		: "=r" (cycles_high1), "=r" (cycles_low1)
		:: "%rax", "%rbx", "%rcx", "%rdx");

	start = ((((uint64_t)cycles_high0) << 32) | cycles_low0);
	end   = ((((uint64_t)cycles_high1) << 32) | cycles_low1);
	return (end - start);
}

uint64_t proc_2() {
	int cycles_high0;
	int cycles_low0;
	int cycles_high1;
	int cycles_low1;
	uint64_t start;
	uint64_t end;

	asm volatile ("rdtscp\n\t"
		"rdtsc\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		: "=r" (cycles_high0), "=r" (cycles_low0)
		:: "%rax", "%rbx", "%rcx", "%rdx");
	two_procedure(1,2);
	asm volatile ("rdtscp\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		"cpuid\n\t"
		: "=r" (cycles_high1), "=r" (cycles_low1)
		:: "%rax", "%rbx", "%rcx", "%rdx");

	start = ((((uint64_t)cycles_high0) << 32) | cycles_low0);
	end   = ((((uint64_t)cycles_high1) << 32) | cycles_low1);
	return (end - start);
}

uint64_t proc_3() {
	int cycles_high0;
	int cycles_low0;
	int cycles_high1;
	int cycles_low1;
	uint64_t start;
	uint64_t end;

	asm volatile ("rdtscp\n\t"
		"rdtsc\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		: "=r" (cycles_high0), "=r" (cycles_low0)
		:: "%rax", "%rbx", "%rcx", "%rdx");
	three_procedure(1,2,3);
	asm volatile ("rdtscp\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		"cpuid\n\t"
		: "=r" (cycles_high1), "=r" (cycles_low1)
		:: "%rax", "%rbx", "%rcx", "%rdx");

	start = ((((uint64_t)cycles_high0) << 32) | cycles_low0);
	end   = ((((uint64_t)cycles_high1) << 32) | cycles_low1);
	return (end - start);
}

uint64_t proc_4() {
	int cycles_high0;
	int cycles_low0;
	int cycles_high1;
	int cycles_low1;
	uint64_t start;
	uint64_t end;

	asm volatile ("rdtscp\n\t"
		"rdtsc\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		: "=r" (cycles_high0), "=r" (cycles_low0)
		:: "%rax", "%rbx", "%rcx", "%rdx");
	four_procedure(1,2,3,4);
	asm volatile ("rdtscp\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		"cpuid\n\t"
		: "=r" (cycles_high1), "=r" (cycles_low1)
		:: "%rax", "%rbx", "%rcx", "%rdx");

	start = ((((uint64_t)cycles_high0) << 32) | cycles_low0);
	end   = ((((uint64_t)cycles_high1) << 32) | cycles_low1);
	return (end - start);
}

uint64_t proc_5() {
	int cycles_high0;
	int cycles_low0;
	int cycles_high1;
	int cycles_low1;
	uint64_t start;
	uint64_t end;

	asm volatile ("rdtscp\n\t"
		"rdtsc\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		: "=r" (cycles_high0), "=r" (cycles_low0)
		:: "%rax", "%rbx", "%rcx", "%rdx");
	five_procedure(1,2,3,4,5);
	asm volatile ("rdtscp\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		"cpuid\n\t"
		: "=r" (cycles_high1), "=r" (cycles_low1)
		:: "%rax", "%rbx", "%rcx", "%rdx");

	start = ((((uint64_t)cycles_high0) << 32) | cycles_low0);
	end   = ((((uint64_t)cycles_high1) << 32) | cycles_low1);
	return (end - start);
}

uint64_t proc_6() {
	int cycles_high0;
	int cycles_low0;
	int cycles_high1;
	int cycles_low1;
	uint64_t start;
	uint64_t end;

	asm volatile ("rdtscp\n\t"
		"rdtsc\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		: "=r" (cycles_high0), "=r" (cycles_low0)
		:: "%rax", "%rbx", "%rcx", "%rdx");
	six_procedure(1,2,3,4,5,6);
	asm volatile ("rdtscp\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		"cpuid\n\t"
		: "=r" (cycles_high1), "=r" (cycles_low1)
		:: "%rax", "%rbx", "%rcx", "%rdx");

	start = ((((uint64_t)cycles_high0) << 32) | cycles_low0);
	end   = ((((uint64_t)cycles_high1) << 32) | cycles_low1);
	return (end - start);
}


uint64_t proc_7() {
	int cycles_high0;
	int cycles_low0;
	int cycles_high1;
	int cycles_low1;
	uint64_t start;
	uint64_t end;

	asm volatile ("rdtscp\n\t"
		"rdtsc\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		: "=r" (cycles_high0), "=r" (cycles_low0)
		:: "%rax", "%rbx", "%rcx", "%rdx");
	seven_procedure(1,2,3,4,5,6,7);
	asm volatile ("rdtscp\n\t"
		"mov %%edx, %0\n\t"
		"mov %%eax, %1\n\t"
		"cpuid\n\t"
		: "=r" (cycles_high1), "=r" (cycles_low1)
		:: "%rax", "%rbx", "%rcx", "%rdx");

	start = ((((uint64_t)cycles_high0) << 32) | cycles_low0);
	end   = ((((uint64_t)cycles_high1) << 32) | cycles_low1);
	return (end - start);
}


int main(int argc, char ** argv) {

	double std_dev;
	double mean;

	function_runner(proc_0, &std_dev, &mean, 1000);
	printf("0:\nMean: %f\nStand: %f\n", mean, std_dev);
	function_runner(proc_1, &std_dev, &mean, 1000);
	printf("1:\nMean: %f\nStand: %f\n", mean, std_dev);
	function_runner(proc_2, &std_dev, &mean, 1000);
	printf("2:\nMean: %f\nStand: %f\n", mean, std_dev);	
	function_runner(proc_3, &std_dev, &mean, 1000);
	printf("3:\nMean: %f\nStand: %f\n", mean, std_dev);	
	function_runner(proc_4, &std_dev, &mean, 1000);
	printf("4:\nMean: %f\nStand: %f\n", mean, std_dev);	
	function_runner(proc_5, &std_dev, &mean, 1000);
	printf("5:\nMean: %f\nStand: %f\n", mean, std_dev);	
	function_runner(proc_6, &std_dev, &mean, 1000);
	printf("6:\nMean: %f\nStand: %f\n", mean, std_dev);	
	function_runner(proc_7, &std_dev, &mean, 1000);
	printf("7:\nMean: %f\nStand: %f\n", mean, std_dev);	

}