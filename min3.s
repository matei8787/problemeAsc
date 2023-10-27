.data
x: .space 4
y: .space 4
z: .space 4
min: .space 4
.text
.global main
main:
movl $4, x
movl $3, y
movl $2, z

mov x, %eax
mov %eax, min
etcmpy:
mov min, %eax
cmp %eax, y
jge etcmpz
mov y, %eax
mov %eax, min

etcmpz:
mov min, %eax
cmp %eax, z
jge etexit
mov z, %eax
mov %eax, min

etexit:
mov $1, %eax
mov $0, %ebx
int $0x80