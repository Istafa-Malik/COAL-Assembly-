[org 0x0100]

jmp start

num1: dw 2
num2: dw 3
num3: db 1
num4: db 2

start:

mov ah,0
mov al,0
mov bh,0
mov bl,0

mov ah,[num3]
mov bh,[num4]
add ah,bh

mov bl,[num1]
mov al,[num2]
add al,bl

add ah,al

mov ah, 0x4c00     
int 0x21 