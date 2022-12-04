; A program to add three numbers using byte variables

[org 0x0100]

mov ax, 0x8787
mov ax, 0         ;reset the accumulator      

mov cx, 3         ;set the iterator count
mov bx, num1      ;set the base

outerloop:

add ax, [bx]
add bx, 2

sub cx, 1
jnz outerloop

mov [result], ax

mov ax,0x4c00
int 0x21

num1: dw 5, 10, 15, 0
result: dw 0	