#include <stdio.h>
#include "Hw5function.h"

int main() { 
	
	int in1, in2;
	int out1, out2;
	
	// Sample input value (It may be tested with other input values)
	// Do not hard code these values inside the function
	in1 = 0xAABBCCDD;
	out1 = toBigEndian(in1);
	printf("\nOutput1: %d", out1);
	
	// Sample input value (It may be tested with other input values)
	// Do not hard code these values inside the function
	
	out2 = isLittleEndian(5);
	printf("\nOutput2: %d", out2);

	return 0;
}
