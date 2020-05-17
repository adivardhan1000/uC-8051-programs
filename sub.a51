mov r0,#11h
mov r1,#21h
mov a,@r0
inc r0
inc r0
mov b,@r0
subb a,b
mov @r1,a
mov r0,#10h
mov r1,#20h
mov a,@r0
inc r0
inc r0
mov b,@r0
subb a,b
mov @r1,a
end