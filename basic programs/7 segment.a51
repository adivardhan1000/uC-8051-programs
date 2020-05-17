ORG 0h
MAIN:	    MOV DPTR,#MY
	    MOV TMOD,#11H
	    MOV TH0,#0H
	    MOV R5,#0
	    MOV TL0,#0H
	    SETB TR0
	    SETB P3.1
LOOP1:	    JB P3.1,LOOP1
LOOP:	   MOV R7,#077H
	    MOV R6,#04H
	    MOV R0,#10H
HERE:	MOV A,R7
	    MOV P2,A
	    RL A
	    MOV R7,A
	    MOV A,@R0
	    MOVC A,@A+DPTR
	    MOV P1,A
	    ACALL DELAY
                    INC R0
                   DJNZ R6,HERE
                   JNB TF0,NEXT5
                   INC R5
NEXT5:	    CLR TF0
	    CJNE R5,#0CH,NEXT6
	    ACALL VALUE
NEXT6:	SJMP LOOP
VALUE:	MOV R0,#10H
	    MOV A,@R0
	    INC A
	    CJNE A,#0AH,NEXT
	    MOV @R0,#0
	    INC R0
	    MOV A,@R0
	    INC A
	    CJNE A,#0AH,NEXT1
	    MOV @R0,#0
	    INC R0
	    MOV A,@R0
	    INC A
	    CJNE A,#0AH,NEXT2
	    MOV @R0,#0
	    INC R0
	    MOV A,@R0
	   INC A
	CJNE A,#0AH,NEXT3
	MOV @R0,#0
NEXT1:	NOP
NEXT2:	NOP
NEXT3:	NOP
NEXT:	MOV @R0,A
	    CLR TF0
	    MOV TH0,#0H
	    MOV TL0,#0H
	    MOV R5,#0H
	    RET
		
DELAY:	MOV TH1,#0DCH
	    MOV TL1,#0
	    SETB TR1
HERE3:	JNB TF1,HERE3
	    CLR TR1
	    CLR TF1
	    RET
ORG 0090H
MY:nop
db 0c0h,0f9h,0a4h,0b0h,099h,092h,082h,0f8h, 080h,98h
END

