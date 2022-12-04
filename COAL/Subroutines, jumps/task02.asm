;. Write the subroutine that will perform Multiplication and Division of two 
numbers.


[org 0x0100]

result: dw 0

jmp start

op:

mul bx
mov cx,ax
div bx

ret                        ;Single function but two arithematic operations with 2 outputs

start:

mov ax,3    ; the value you want in ax
mov bx,2     ; the value you want in bx 

call op

mov [result],cx         ;Following address will have multiplication output
mov [result + 2],ax     ;Following address will have division output

mov ax,0x04c00
int 0x21