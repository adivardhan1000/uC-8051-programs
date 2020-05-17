mov r0,#10h
mov r1,#11h
mov a,@r0
mov b,@r1
mul ab
inc r1
mov @r1,a
inc r1
mov @r1,b
end