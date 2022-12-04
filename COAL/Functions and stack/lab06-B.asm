; Functions in Assembly

[org 0x0100]

jmp start

sum:

add ax,bx

subt:

sub ax,bx

ret               ; return

start:

mov ax,3
mov bx,4

call sum
call subt

mov ax,0x4c00
int 0x21