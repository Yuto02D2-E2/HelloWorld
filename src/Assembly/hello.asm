# written by Yuto02D2 on 2021/06/13
# update on 2021/07/18 (updated syntax. AT&T comment out(;) -> intel comment out(#))


.intel_syntax noprefix

global _start
section .text

_start:
    # write syscall := write(int fd, const void *buf, size_t const)#
    # tips : 'man 2 write' use in terminal
    mov rax, 1          # call number. if call with int 0x80, using 0x4
    mov rdi, 1          # 1st arg of syscall. use stdout as the fd(file descriptor)
    mov rsi, message    # 2nd arg of syscall
    mov rdx, message_len# 3rd arg of syscall
    syscall             # call

    # exit syscall := exit(status)#
    # tips : 'man 3 exit' use in terminal
    mov rax, 60 # call number. if call with int 0x80, using 0x1
    mov rdi, 0  # 1st arg of syscall. return 0. successfully exit
    syscall     # call

# if use int 0x80 instead of syscall(line 12 and 17)
# call          syscall -> int 0x80
# call number   rax     -> eax
# 1st arg       rdi     -> ebx
# 2nd arg       rsi     -> ecx
# 3rd arg       rdx     -> edx
# 4th arg       r10     -> esi
# 5th arg       r8      -> edi
# 6th arg       r9      -> ebp
# return value  rax     -> eax


section .data
    message db 'hello world with assembly', 0x0A
    # define variable 'message'
    # db means <define directive>. allocates 1byte of storage
    # and 0x0A means ASCII '\n'

    message_len equ $-message
    # define variable 'message_len'
    # $ is the address immediately after the 'message'.
    # So, subtract that from the first address of the 'message' to get the length.



# usage :
# hoge@hige $ apt install nasm
# hoge@hige $ nasm -f elf64 -o hello.obj hello.asm # compile
# hoge@hige $ ld -s -o hello.bin hello.obj # link
# hoge@hige $ ./hello.bin

