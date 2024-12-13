#include <stdio.h>
#include <time.h>

int main() {
    long long instructions = 0; // 指令计数
    int a = 0;
    clock_t start, end;

    // 开始计时
    start = clock();

    // 执行整数加法指令
    while (instructions < 1e9) { // 1 billion iterations
        a += 1;
        instructions++;
    }

    // 结束计时
    end = clock();

    // 计算时间（秒）
    double elapsed_time = (double)(end - start) / CLOCKS_PER_SEC;

    // 计算 MIPS
    double mips = (instructions / 1e6) / elapsed_time;

    printf("Elapsed time: %.2f seconds\n", elapsed_time);
    printf("MIPS: %.2f\n", mips);

    return 0;
}