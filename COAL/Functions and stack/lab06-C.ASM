[org 0x100]

jmp main

Sum:
    push bp
    mov  bp, sp
 
    mov  bx, [bp + 6]   ; frist parameter
    mov  cx, [bp + 4]   ; second parameter
    add bx, cx
    mov ax, bx
    pop bp
ret 4


main:
 mov ax, 4
 mov bx, 3

 push ax
 push bx

call Sum

    mov  ax, 0x4c00
    int  0x21