; A program to add three numbers using byte variables

[org 0x0100]

mov ax,0x8787
xor ax,ax           ;xor is used to empty a register

mov ah,[num1]

mov bh,[num1+1]
add ah,bh

mov [num1+3],ah

mov ax,0x4c00
int 0x21

num1: db 5, 10, 15, 0