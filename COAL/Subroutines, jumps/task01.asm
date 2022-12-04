;Write a function in Assembly Language that will take seven numbers as 
the input and it will perform Sum operation and then return the sum of it.

[org 0x0100]

jmp start

data: dw 1,2,1,1,1,1,1 
result: dw 0

addition:

add ax,[data + bx]
add bx,2
sub cx,1

jne addition

ret

start:

xor ax,ax
xor bx,bx
mov cx,7

call addition

mov [result],ax
mov ax,0x4c00
int 0x21
