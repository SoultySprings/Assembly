//21BEC0109 - Tanishq Chakravarty

ORG 0000H 
BACK: MOV P2,#16 
ACALL DELAY 
ACALL DELAY 
MOV P2,#0000H 
ACALL DELAY 
SJMP BACK 
DELAY: MOV R3, #200 
HERE: DJNZ R3, HERE 
RET
END