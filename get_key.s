#BY SUBMITTING THIS FILE TO CARMEN, I CERTIFY THAT I STRICTLY ADHERED TO THE TENURES OF THE OHIO STATE UNIVERSITY’S ACADEMIC INTEGRITY POLICY.
# Colin Peterman

# Initializing everything needed for get_key.s and creating the string prompting the user for input 
.file "get_key.s"
.section .rodata
string_input:
.string "Enter the Binary Key: "
.data
.globl get_key
        .type   get_key, @function

.text
get_key:
        pushq %rbp              #stack housekeeping
        movq %rsp, %rbp
	pushq %r12

	#Prompting the user for input and resetting rax
	
	movq $string_input, %rdi
	xorq %rax, %rax
	call printf

	#Resetting r12

	xorq %r12, %r12

	#Getting the first number and if it is a 1 preforming an or with 1000 1000

	call getchar
	cmpl $49, %eax
	jne firstBit
	orl $0x88, %r12d

        #Getting the second number and if it is a 1 preforming an or with 0100 0100

	firstBit:
	call getchar
        cmpl $49, %eax
	jne secondBit
	orl $0x44, %r12d

        #Getting the third  number and if it is a 1 preforming an or with 0010 0010

	secondBit:
        call getchar
        cmpl $49, %eax
        jne thirdBit
        orl $0x22, %r12d

        #Getting the fourth number and if it is a 1 preforming an or with 0001 0001

	thirdBit:
        call getchar
        cmpl $49, %eax
        jne finished
        orl $0x11, %r12d

	finished:

	#final touched and returning rax

	movq %r12, %rax
	popq %r12
	leave
	ret
.size get_key, .-get_key
