;A program to understand difference between, (Jz, Jnz, Je Jne)

[org 0x0100]

l1:

mov cx,2
jz l1

l2:

sub cx,1
cmp cx,1
je l4

l3:

cmp cx,0
jne l4

l4:

cmp cx,1
je l3

mov ax,0x4c00
int 0x21 