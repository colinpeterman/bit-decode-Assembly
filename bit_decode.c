
/* Colin Peterman */
/* BY SUBMITTING THIS FILE TO CARMEN, I CERTIFY THAT I HAVE STRICTLY ADHERED TO THE TENURES OF THE OHIO STATE UNIVERSITY’S ACADEMIC INTEGRITY POLICY WITH RESPECT TO THIS ASSIGNMENT. */


#include<stdio.h>      /* this tells the preprocessor to copy the IO library prototypes and other in                       -formation from the file/usr/incluce/stdio.h     */

/* This takes a 4-bit key and creates a 8-bit key and then takes encoded text and decodes it using the 8-bit key. */

unsigned int get_key();

int main(void)
{
        /* Initializing two variables */
        int key;
	/* Calls get_key which propmpts the user for input and creates the binary key */
        int binary_key = get_key();
        printf("Enter encoded messae: ");

        /* Do While loop to read in the encoded text and then put out the decoded text */
        do {
                scanf("%x", &key);
                putchar(binary_key^key);
        } while(getchar() != '\n');
        return(0);
}
