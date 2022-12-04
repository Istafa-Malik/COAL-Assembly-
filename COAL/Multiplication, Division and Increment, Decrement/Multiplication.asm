; For Multiplication

org 0x100

mov ax,3
mov bl,3

mul bl

mov ax,0x4c00

int 0x21
