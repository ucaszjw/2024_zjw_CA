#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

void matrix_multiply(int m, int p, int n, double **A, double **B, double **C) {
    int i, j, k;

    #pragma omp parallel for private(i, j, k) shared(A, B, C)
    for (i = 0; i < m; i++) {
        for (j = 0; j < n; j++) {
            C[i][j] = 0.0;
            for (k = 0; k < p; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

int main() {
    int m = 3, p = 3, n = 3;
    double **A, **B, **C;

    // 动态分配矩阵
    A = (double **)malloc(m * sizeof(double *));
    B = (double **)malloc(p * sizeof(double *));
    C = (double **)malloc(m * sizeof(double *));
    for (int i = 0; i < m; i++) A[i] = (double *)malloc(p * sizeof(double));
    for (int i = 0; i < p; i++) B[i] = (double *)malloc(n * sizeof(double));
    for (int i = 0; i < m; i++) C[i] = (double *)malloc(n * sizeof(double));

    // 初始化矩阵 A 和 B
    for (int i = 0; i < m; i++)
        for (int j = 0; j < p; j++)
            A[i][j] = i + j;

    for (int i = 0; i < p; i++)
        for (int j = 0; j < n; j++)
            B[i][j] = i * j;

    // 计算矩阵乘法
    matrix_multiply(m, p, n, A, B, C);

    // 打印结果矩阵 C
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            printf("%f ", C[i][j]);
        }
        printf("\n");
    }

    // 释放内存
    for (int i = 0; i < m; i++) free(A[i]);
    for (int i = 0; i < p; i++) free(B[i]);
    for (int i = 0; i < m; i++) free(C[i]);
    free(A);
    free(B);
    free(C);

    return 0;
}