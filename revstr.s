;// ne mai uitam alta data

.data
s: .space 12
t: .space 12
n: .long 12
.text
.global main
main:
citestes:
mov $3, %eax
mov $0, %ebx
mov s, %ecx
mov $12, %edx
int $0x80

mov $0, %ecx
mov n, %ebx

etloop:
cmp %ebx, %ecx
jge etexit
lea s, %edi
sub %ecx, n
mov n, %edx
mov (%edi, %edx, 1), %eax
lea t, %edi
mov %eax, (%edi, %ecx, 1)
inc %ecx
jmp etloop

etexit:
mov $1, %eax
mov $0, %ebx
int $0x80
