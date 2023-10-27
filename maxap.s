.data
v: .long 5, 6, 7, 7, 2, 7, 5, 8, 8, 3
n: .long 10
max: .long 1
ap: .long 0
.text
.global main
main:
lea v, %edi
mov $0, %ecx
mov (%edi, %ecx, 4), %edx
mov %edx, max
mov $1, %ecx

etloop:
cmp n, %ecx
jge etexit
mov max, %edx
cmp %edx, (%edi, %ecx, 4)
jl finloop
cmp %edx, (%edi, %ecx, 4)
je etegal
mov (%edi, %ecx, 4), %edx
mov %edx, max
movl $1, ap
jmp finloop


etegal:
mov ap, %edx
inc %edx
mov %edx, ap
jmp finloop

finloop:
inc %ecx
jmp etloop

etexit:
mov $1, %eax
mov $0, %ebx
int $0x80