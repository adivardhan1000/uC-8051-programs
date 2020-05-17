mov r0,#11h
mov r1,#21h
mov a,@r0
inc r0
inc r0
mov b,@r0
add a,b
mov @r1,a
mov r0,#10h
mov r1,#20h
jnb psw.7,forward
inc @r0
forward: mov a,@r0
inc r0
inc r0
mov b,@r0
add a,b
mov @r1,a
jnb psw.7,forward2
inc r1
inc @r1
forward2: nop
end