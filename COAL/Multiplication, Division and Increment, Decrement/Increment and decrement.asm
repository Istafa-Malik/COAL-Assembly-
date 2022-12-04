; for increment and decrement

org 0x100

mov ax,5
inc ax

dec ax

mov ax,0x4c00
int 0x21
