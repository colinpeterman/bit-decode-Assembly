all: lab6 lab6.zip

lab6.zip: Makefile bit_decode.c lab6Readme get_key.s
	zip lab6 bit_decode.c Makefile lab6Readme get_key.s -o lab6.zip

lab6: bit_decode.o get_key.o
	gcc bit_decode.o get_key.o -o lab6

bit_decode.o: bit_decode.c
	gcc -ansi -pedantic -g -c bit_decode.c

get_key.o: get_key.s
	gcc -ansi -pedantic -g -c get_key.s

clean: 
	rm -rf *.o lab6.zip
