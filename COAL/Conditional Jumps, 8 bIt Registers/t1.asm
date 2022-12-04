[org 0x0100]

jmp start

num1: db 1,2,3,2,1
result: db 0

start:

mov ah, 0       
mov cl, 5   
mov bh, 0        

outerloop:

add ah, [num1 + bx]
add bx, 1
sub cl, 1

jnz outerloop

mov [result],ah

mov ah, 0x4c00     
int 0x21

