//21BEC0109 - Tanishq Chakravarty

//Logic - Loads accumulator with 38H and then complements it 800 times

ORG 0000H
MOV A, #34H ; Loads the accumulator with the value 34H
MOV R2, #10 ; First counter to repeat stuff 10 times
NEXT: MOV R3, #80 ; Second counter to repeat stuff 80 times, in total 800 times
AGAIN: CPL A ; to complement the accumulator
DJNZ R3, AGAIN ; to decrement R3 until 0
DJNZ R2, NEXT ; to decrement R2 until 0
END
