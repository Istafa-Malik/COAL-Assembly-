; x * (x-1)! code to find this equation with fictorial

[org 0x100]

jmp start

result: dw 0

outerlp:

sub ax,1
mov dx,ax
mov cx,ax
cmp ax,1
je ending 

innerlp:

sub cx,1
mul cx
mov dx,ax
cmp cx,1
jne innerlp

mul bx
jmp ending

start:

mov ax,3
mov bx,ax
cmp ax,1

je ending

call outerlp

ending:

mov [result],ax
mov ax, 0x4c00
int 0x21