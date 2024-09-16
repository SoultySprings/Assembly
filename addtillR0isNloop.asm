//21BEC0109 - Tanishq Chakravarty

//Logic - Keeps adding R1 and R2 repeatedly till N = 30,

ORG 0000H ; start of the program
MOV R3, #30 ; R3 here acts as a counter to reach N till 30
MOV R0, #40 ; location of R0 till where this function should save the values
MOV R1, #1 ; R1 acts as first variable to run the Fibonacci series
MOV R2, #1 ; R2 acts as second variable to run the Fibonacci series
MOV A, R1 ; A takes value of R1
MOV @R0, A ; stores R1 value in 30H location of RAM and so forth
INC R0 ; increment
LOOP:
MOV A, R2 ; A takes value of R2
MOV @R0, A ; stores R2 value in 31H location of RAM and so forth
INC R0 ; increment
ADD A, R1 ; adds R1 with R2
MOV B, R2 ; stores R2 value to B
MOV R1, B ; stores B value to R1 to act as second variable for next loop
MOV R2, A ; stores A value to R2 to act as third variable for next loop
DJNZ R3, LOOP; makes sure loop runs for N = 30 times
HERE: SJMP HERE ; infinite loop
END ;end of program
