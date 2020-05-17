data1 equ p2
rs equ p3.5
rw equ p3.6
en equ p3.7


org   0000h
ljmp main
lcdint:		mov a,#38h
		acall cmnd
		mov a,#0fh
		acall cmnd
		mov a,#01h
		acall cmnd
		mov a,#06h
		acall cmnd
		mov a,#80h
		acall cmnd
		mov a,#3ch
		acall cmnd
		ret
cmnd: 		  mov data1,A
		  clr rs
		  clr rw
		  setb en
		  acall delay
		  clr en
		  ret
disp: 		  mov data1,A
		  setb rs
		  clr rw
		  setb en
		  acall delay
		  clr en
		  ret
delay:	mov r0,#50
      l1: mov r2,#50
      l2: djnz r2,l2
      djnz r0,l1
      ret
main:	nop
	 acall lcdint
label1: mov p1,#0feh
             mov r1,p1
             mov a,r1
             cjne a,#0eeh,label2
             mov a,#'3'
             acall disp
label2:      mov a,r1
             cjne a,#0deh,label3
             mov a,#'2'
             acall disp
label3:      mov a,r1
             cjne a,#0beh,label4
             mov a,#'1'
             acall disp
label4: mov p1,#0fdh
             mov r1,p1
             mov a,r1
             cjne a,#0edh,label5
             mov a,#'6'
             acall disp
label5:      mov a,r1
             cjne a,#0ddh,label6
             mov a,#'5'
             acall disp
label6: mov a,r1
             cjne a,#0bdh,label7
             mov a,#'4'
             acall disp
label7: mov p1,#0fbh
             mov r1,p1
             mov a,r1
             cjne a,#0ebh,label8
             mov a,#'9'
             acall disp
label8:      mov a,r1
             cjne a,#0dbh,label9
             mov a,#'8'
             acall disp
label9:      mov a,r1
	     cjne a,#0bbh,label10
             mov a,#'7'
             acall disp
label10: mov p1,#0f7h
             mov r1,p1
             mov a,r1
             cjne a,#0e7h,label11
	     mov a,#'#'
             acall disp
label11:     mov a,r1
             cjne a,#0d7h,label12
             mov a,#'0'
             acall disp
label12:     mov a,r1
             cjne a,#0b7h,label13
             mov a,#'*'
             acall disp
label13:     ljmp label1
      END



