/*
 ============================================================================
 Name        : 819505668_HomeWork1.c
 Author      : Andres Martinez Paz
 Version     : 1.1
 Copyright   : The contents of this program are for exclusive use by author
 	 	 	   for credit in SDSU Spring 2016 COMPE 271 course
 Description : Homework 1 for Prof. Ozturk's COMPE 271 class. This program
 	 	 	   consists of declaration of variables to analyze their memory
 	 	 	   addresses and the memory allocated to pointers by using
 	 	 	   function malloc()
 ============================================================================
 */

//include standard Input/Output, and string libraries
#include <stdio.h>
#include <string.h>

//declaration of intPointer variable, a pointer to an int
int *intPointer;

int main() {

	//declaration of variables to be analyzed
	char   nameVar[30];
	short exampleVar;
	short  shortVar1;
	short  shortVar2;
	int   intVar1;
	int   intVar2;
	int   intVar3;
	char   *charPointer;
	float  floatVar1;
	float  floatVar2;

	//assigning different values to variables
	exampleVar = 99;
	shortVar1 = 12;
	shortVar2 = 24;
	intVar1 = 16;
	intVar2 = 78;
	intVar3 = 10;
	floatVar1 = 6;
	floatVar2 = 3;

	//dynamic memory allocation to pointers charPointer and intPointer
	charPointer = (char *)malloc(2000);  //allocate 2000 bytes to charPointer
	intPointer = (int *)malloc(1000);   //allocate 1000 bytes to intPointer
	strcpy(charPointer, "Andres Martinez Paz");  //copy the string into the charPointer

	//printf statements to print the memory address of each of the variables in an organized way
	printf("\n The address of variable shortVar1  is : %p", &shortVar1);
	printf("\n The address of variable shortVar2  is : %p", &shortVar2);
	printf("\n The address of variable charPointer  is : %p", &charPointer);
	printf("\n The address of variable nameVar  is : %p", &nameVar);
	printf("\n The address of variable intVar1  is : %p", &intVar1);
	printf("\n The address of variable intVar2  is : %p", &intVar2);
	printf("\n The address of variable intVar3  is : %p", &intVar3);
	printf("\n The address of variable intPointer  is : %p", &intPointer);
	printf("\n The address of variable floatVar1  is : %p", &floatVar1);
	printf("\n The address of variable floatVar2  is : %p", &floatVar2);

	//printf statements to print the memory address and amount of memory allocated to both pointers
	printf("\n The address of pointer variable charPointer is: %p", &charPointer);
	printf(", and the memory allocated to it was: 0x%02X", 2000);
	printf(" bytes, or %02d", 2000);
	printf(" bytes.");
	//since there is no standard function in c to get the memory allocated to a pointer,
	//both printf statements have the memory allocated to the pointers hard coded
	printf("\n The address of pointer variable intPointer is: %p", &intPointer);
	printf(", and the memory allocated to it was: 0x%02X", 1000);
	printf(" bytes, or %02d", 1000);
	printf(" bytes. ");
	return 0;
}
