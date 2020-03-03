/*
 ============================================================================
 Name        : 819505668_Hw2.c
 Author      : Andres Martinez Paz
 Version     : Final Version
 Copyright   : Unauthorized distribution will be entirely disregarded
 Description : Function "checkEndiannes" determines if the system's architecture
  	  	  	   is big endian or little endian. It returns 0 if it's little endian,
  	  	  	  	and 1 if it's big endian
 ============================================================================
 */


int checkEndianess(){
	int n=1;     //declare and set int variable "n" to 1
	if(((char*)&n)[0]==1)  //the term "((char*)&n)[i]" lets us analyze the ith byte of the int
		return 0;         //if the least significant byte (0x01) is stored in the first byte, system is little endian
	else if (((char*)&n)[3]==1)  //else, if it is in the last byte, system is big endian
		return 1;
}
