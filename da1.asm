//21BEC0109 - Tanishq Chakravarty

//Logic - As 2*3 means 2+2+2, in a similar fashion, R0 is added as many times R1 is mentioned using loops.

ORG 0000H ; start of the program
MOV R0, #2H ; storing first unsigned number in r0
MOV R1, #10H ; storing second unsigned number in r1
CLR A ; clearing ACC for adding multiple times
LOOP: ADD A, R0 ; adds to A with R0 every loop
JNC NEXT ; to check if the value has crossed 255
INC B ; verification of crossing by incrementing R4 register
NEXT: 
DJNZ R1, LOOP ; decrements as many times the number has to be multiplied
MOV R2, A ; stores lower byte to R2
MOV R3, B ; store upper byte to R3
HERE: SJMP HERE ; infinite looping
END ; end of program