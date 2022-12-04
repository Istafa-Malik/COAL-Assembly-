[org 0x0100]

jmp start

num1: dw 1,1,2,3,2,1,3,0,1,2,1
result: dw 0

start:

mov ax,0
mov bx,0
mov cx,11
mov dx,0

loop1:

mov ax,[num1 + bx]
cmp ax,2

jz skip

add dx,ax
add bx,2
sub cx,1

jnz loop1

skip: 

add bx,2
sub cx,1

jnz loop1


mov [result],ax

mov ax, 0x4c00     
int 0x21

