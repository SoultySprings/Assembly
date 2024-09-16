//21BEC0109 - Tanishq Chakravarty

ORG 0000H
MOV TMOD, #01 ; Timer 0, mode 16 bit
HERE: MOV TL0, #0F2H ; TL0=F2H, the low byte
MOV TH0, #0FFH ; TH0=FFH, the high byte
CPL P2.1 ; toggle P1.5
ACALL DELAY
SJMP HERE
DELAY:
SETB TR0 ; start the timer 0
AGAIN: JNB TF0, AGAIN ; monitor timer flag 0
CLR TR0 ; stop timer 0
CLR TF0 ; clear timer 0 flag
RET
END