[org 0x100]

jmp start

data: dw 47h,72h,31h
Values: dw 0,0,0
result: dw 0,0,0

start:

mov ax,0
mov cx,10h

mov ax,[data]
div cx
add ax,dx
mov [Values],ax

xor dx,dx

mov ax,[data + 2]
div cx
add ax,dx
mov [Values + 2],ax

xor dx,dx

mov ax,[data + 4]
div cx
add ax,dx
mov [Values + 4],ax

xor ax,ax
xor bx,bx
xor cx,cx

compare:

mov ax,[Values]
mov bx,[Values + 2]
cmp ax,bx
jb swap

noswap:

mov bx,[Values + 4]
cmp ax,bx
jbswap
mov [result],ax
mov  ax, 0x4c00
int  0x21

swap:

mov ax,bx
jmp compare


mov  ax, 0x4c00
int  0x21