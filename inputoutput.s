.data
s: .space 12
.text
.global main
main:
mov $3, %eax
mov $0, %ebx
mov s, %ecx
mov $12, %edx
int $0x80

mov $1, %eax
mov $0, %ebx
int $0x80