//21BEC0109 - Tanishq Chakravarty

//Logic - Subtracts the number as many times required till it reaches 0 

ORG 0000H ; start of the program
MOV R3, #30
MOV R0, #40
LOOP:
DEC R0
MOV A, #0
DEC R0
MOV B, #1
INC R0
INC R0
INC R0
DEC R0
MOV @R0, A
ADD A, B
DEC R0
MOV @R0, B
INC B
INC R0
INC R0
INC R0
DEC R3
DJNZ R3, LOOP
HERE: SJMP HERE
END