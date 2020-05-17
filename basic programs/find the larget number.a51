mov r0,#10h
mov r1,#10h
mov r2,#00h
mov b,#00h
back: mov a,b
mov b,@r0
subb a,b
jc change
back1: inc r0
djnz r1,back
sjmp next
change: mov b,@r0
mov a,r0
mov r2,a
sjmp back1
next: mov psw,#80h
mov r0,b
mov r1,a
end
