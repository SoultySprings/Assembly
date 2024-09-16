//21BEC0109 - Tanishq Chakravarty

//Logic - Subtracts the number as many times required till it reaches 0 

ORG 0000H ; start of the program

MOV R0, #24 ; storing first number in r0
MOV R1, #2 ; storing second number in r1
MOV R2, #0
CLR A ; clearing A
MOV A, R1 ; storing R1's value to A
CPL A ; calculating 1s complement of A
MOV R3, A ; storing 1s complement in A
MOV A, R0 ; restoring value of A to R0 for futher calculations 
LOOP:
INC R2 ; stores quotient to R2
SUBB A, R1 ; subtracts to A with R0 every loop
JZ PART ; jumps as soon as A is 0
JNZ LOOP ; decrements as many times the number has to be multiplied
PART: 
SUBB A, B ; calculates remainder
MOV R3, B ; store remainder to R3
MOV P0, #2 ; toggling pin to HIGH to specify 0 division
HERE:
 SJMP HERE ; infinite looping
END ; end of program