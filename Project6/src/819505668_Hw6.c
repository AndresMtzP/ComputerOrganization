/*
 ============================================================================
 Name        : 819505668_Hw6.c
 Author      : Andres Martinez Paz
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern int isNumber(int);
extern int compare(int, int);
extern int countOnes(int);
extern int returnHammingDistance(char, char);

int main(void) {
	printf("Function1: %d\n", isNumber(5));
	printf("Function2: %d\n", compare(1, 6));
	printf("Function3: %d\n", countOnes(12));
	printf("Function4: %d\n", returnHammingDistance('a','b'));
	return 0;
}
