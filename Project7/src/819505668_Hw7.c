/*
 ============================================================================
 Name        : homework7.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern int computeMagicNumber(char *);

int main() {
	char name[255]="Yusuf Ozturk";
	int magic;

	magic=computeMagicNumber(name);
	printf("\n Magic number is %d\n",magic);

	return 0;
}
