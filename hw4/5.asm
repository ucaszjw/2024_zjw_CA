section .bss
buffer resb 1  ; 用于存储输入的字符

section .text
global _start

_start:
    ; 系统调用号 (sys_read)
    mov rax, 0          ; 系统调用号 (sys_read)
    mov rdi, 0          ; 文件描述符 (stdin)
    mov rsi, buffer     ; 缓冲区地址
    mov rdx, 1          ; 读取的字节数
    syscall             ; 调用内核

    ; 系统调用号 (sys_write)
    mov rax, 1          ; 系统调用号 (sys_write)
    mov rdi, 1          ; 文件描述符 (stdout)
    mov rsi, buffer     ; 缓冲区地址
    mov rdx, 1          ; 写入的字节数
    syscall             ; 调用内核

    ; 系统调用号 (sys_exit)
    mov rax, 60         ; 系统调用号 (sys_exit)
    xor rdi, rdi        ; 退出状态码
    syscall             ; 调用内核