#include <stdio.h>
#include <time.h>

int main() {
    long long operations = 0; // 浮点操作计数
    double x = 1.0, y = 2.0, z;
    clock_t start, end;

    // 开始计时
    start = clock();

    // 执行浮点运算（乘法）
    while (operations < 1e9) { // 1 billion iterations
        z = x * y;
        operations++;
    }

    // 结束计时
    end = clock();

    // 计算时间（秒）
    double elapsed_time = (double)(end - start) / CLOCKS_PER_SEC;

    // 计算 MFLOPS
    double mflops = (operations / 1e6) / elapsed_time;

    printf("Elapsed time: %.2f seconds\n", elapsed_time);
    printf("MFLOPS: %.2f\n", mflops);

    return 0;
}