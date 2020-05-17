mov dptr,#2000h
mov a,#00h
movc a,@a+dptr
mov b,a
anl a,#0fh
DA a
mov r0,a
mov a,b
anl a,#0f0h
swap a
da a
mov r1,a
end