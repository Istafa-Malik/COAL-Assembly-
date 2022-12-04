;Program to call a function within a fuction using stack and local variables 

[org 0x100]

jmp main

result: dw 0

add2:

;push bp
;mov  bp, sp
 
mov  bx, [bp + 8]   ; frist parameter
mov  cx, [bp + 6]   ; second parameter
mov  dx, [bp + 4]   ; third parameter

add bx, cx
add bx, dx
add ax, bx

pop bp
ret

add1:

push bp
mov  bp, sp

mov  bx,[bp + 8]
mov  cx,[bp + 6] 

add bx,cx
mov ax,bx
jmp add2


main:

mov ax, 4
mov bx, 3
mov cx, 5

push ax
push bx
push cx

call add1

mov [result],ax

mov  ax, 0x4c00
int  0x21