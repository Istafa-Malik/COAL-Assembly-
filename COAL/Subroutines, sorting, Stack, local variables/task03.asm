[org 0x0100]

jmp start

data: dw 2,2,1,2,4,3,1,3,3,4
mode: dw 0
val: dw 0

start:

mov cx,9
mov ax,0
mov bx,0

p1:

mov ax,[data + bx]
add bx,2
sub cx,1

je ending

p2:

add bx,2
sub cx,1
cmp ax,[data + bx]
je cal

jmp p2

cal:
add dx,1

jmp p2

ending:


mov  ax, 0x4c00
int  0x21