[org 0x0100]
mov cx, 5
outerloop:
mov bx,0

innerloop:
mov ax,[data+bx]
cmp ax ,[data+bx+2]
ja donothing

mov dx, [data+bx+2]
mov [data+bx+2], ax
mov [data+bx], dx
donothing:
add bx,2
cmp bx,8
jne innerloop

loop outerloop
mov ax,0x4c00
int 0x21

data: dw 1, 3, 2, 4, 5
