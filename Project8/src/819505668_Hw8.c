/*
============================================================================
 Name        : Homework8.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : 
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern void toPostFix(char *,char *);
extern void toInFix(char *,char *);

int main(void) {

    char convertedstring2[255];
    char convertedstring1[255],checkstring1[255],checkstring2[255];
    char string1[255]="A*B+(C*D)+E";
    char string2[255]="(A+B)*(C+D)+E";

    toPostFix(string1,convertedstring1);
    printf("\n String 1- Infix to Postfix is %s\n", convertedstring1);

    toPostFix(string2,convertedstring2);
    printf("\n String 2- Infix to Postfix is %s\n", convertedstring2);

    toInFix(convertedstring1, checkstring1);
    printf("\n String 1- Postfix to Infix is %s\n", checkstring1);

    toInFix(convertedstring2, checkstring2);
    printf("\n String 2- Postfix to Infix is %s\n", checkstring2);
    
    return 0;
}
