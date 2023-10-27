.data
eprim: .long 1
x: .long 17
d: .space 4
zero: .long 0
.text
.global main
main:
movl $2, d

etloop:
mov d, %eax
mul %eax
cmp x, %eax
jg etexit
mov x, %eax
mov d, %ebx
div %ebx
cmp %edx, zero
je nuprim
inc %ebx
mov %ebx, d
jmp etloop


nuprim:
movl $0, eprim
jmp etexit

etexit:
mov $1, %eax
mov $0, %ebx
int $0x80