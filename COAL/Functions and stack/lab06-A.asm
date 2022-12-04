; Functions in Assembly

[org 0x0100]

jmp start

sum:

   add ax,bx

ret               ; return

start:

mov ax,2
mov bx,3

call sum

mov ax,0x4c00
int 0x21