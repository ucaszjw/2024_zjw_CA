// linpack.c
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define N 1000

void matgen(double a[N][N], double b[N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            a[i][j] = drand48();
        }
        b[i] = drand48();
    }
}

void dgefa(double a[N][N], int ipvt[N]) {
    for (int k = 0; k < N; k++) {
        int max = k;
        for (int i = k + 1; i < N; i++) {
            if (fabs(a[i][k]) > fabs(a[max][k])) {
                max = i;
            }
        }
        if (max != k) {
            for (int j = 0; j < N; j++) {
                double temp = a[k][j];
                a[k][j] = a[max][j];
                a[max][j] = temp;
            }
            int temp = ipvt[k];
            ipvt[k] = ipvt[max];
            ipvt[max] = temp;
        }
        for (int i = k + 1; i < N; i++) {
            a[i][k] /= a[k][k];
            for (int j = k + 1; j < N; j++) {
                a[i][j] -= a[i][k] * a[k][j];
            }
        }
    }
}

void dgesl(double a[N][N], int ipvt[N], double b[N]) {
    for (int k = 0; k < N; k++) {
        for (int i = k + 1; i < N; i++) {
            b[i] -= a[i][k] * b[k];
        }
    }
    for (int k = N - 1; k >= 0; k--) {
        b[k] /= a[k][k];
        for (int i = 0; i < k; i++) {
            b[i] -= a[i][k] * b[k];
        }
    }
}

int main() {
    double a[N][N], b[N];
    int ipvt[N];

    matgen(a, b);
    dgefa(a, ipvt);
    dgesl(a, ipvt, b);

    return 0;
}