.data
x: .long 5
y: .long 7
.text
.global main
main:
mov x, %eax
mov y, %ebx
mov %ebx, x
mov %eax, y

mov $1, %eax
mov $0, %ebx
int $0x80