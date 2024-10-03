#include <stdio.h>

int main() {
    char buffer;

    // 调用sys_read系统调用
    asm volatile (
        "mov $0, %%rax\n"      // 系统调用号 (sys_read)
        "mov $0, %%rdi\n"      // 文件描述符 (stdin)
        "mov %1, %%rsi\n"      // 缓冲区地址
        "mov $1, %%rdx\n"      // 读取的字节数
        "syscall\n"            // 调用内核
        : "=m" (buffer)        // 输出操作数
        : "r" (&buffer)        // 输入操作数
        : "rax", "rdi", "rsi", "rdx" // 被修改的寄存器
    );

    // 调用sys_write系统调用
    asm volatile (
        "mov $1, %%rax\n"      // 系统调用号 (sys_write)
        "mov $1, %%rdi\n"      // 文件描述符 (stdout)
        "mov %0, %%rsi\n"      // 缓冲区地址
        "mov $1, %%rdx\n"      // 写入的字节数
        "syscall\n"            // 调用内核
        :
        : "r" (&buffer)        // 输入操作数
        : "rax", "rdi", "rsi", "rdx" // 被修改的寄存器
    );

    return 0;
}