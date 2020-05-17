mov r0,#10h
mov a,@r0
cpl a
inc a
inc r0
mov @r0,a
end