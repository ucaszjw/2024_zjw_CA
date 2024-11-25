#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>

void matrix_multiply(int m, int p, int n, double *A, double *B, double *C, int size) {
    int i, j, k;
    int rows_per_proc = m / size;
    double *local_A = (double *)malloc(rows_per_proc * p * sizeof(double));
    double *local_C = (double *)malloc(rows_per_proc * n * sizeof(double));

    // Scatter rows of A to all processes
    MPI_Scatter(A, rows_per_proc * p, MPI_DOUBLE, local_A, rows_per_proc * p, MPI_DOUBLE, 0, MPI_COMM_WORLD);

    // Broadcast B to all processes
    MPI_Bcast(B, p * n, MPI_DOUBLE, 0, MPI_COMM_WORLD);

    // Perform local computation
    for (i = 0; i < rows_per_proc; i++) {
        for (j = 0; j < n; j++) {
            local_C[i * n + j] = 0.0;
            for (k = 0; k < p; k++) 
                local_C[i * n + j] += local_A[i * p + k] * B[k * n + j];
        }
    }

    // Gather results from all processes
    MPI_Gather(local_C, rows_per_proc * n, MPI_DOUBLE, C, rows_per_proc * n, MPI_DOUBLE, 0, MPI_COMM_WORLD);

    free(local_A);
    free(local_C);
}

int main(int argc, char *argv[]) {
    int m = 4, p = 4, n = 4;
    double *A, *B, *C;
    int rank, size;

    MPI_Init(&argc, &argv);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    if (rank == 0) {
        // Allocate and initialize matrices A, B, and C
        A = (double *)malloc(m * p * sizeof(double));
        B = (double *)malloc(p * n * sizeof(double));
        C = (double *)malloc(m * n * sizeof(double));

        for (int i = 0; i < m; i++)
            for (int j = 0; j < p; j++)
                A[i * p + j] = i + j;

        for (int i = 0; i < p; i++)
            for (int j = 0; j < n; j++)
                B[i * n + j] = i * j;
    }
    else 
        B = (double *)malloc(p * n * sizeof(double));

    // Perform matrix multiplication
    matrix_multiply(m, p, n, A, B, C, size);

    if (rank == 0) {
        // Print result matrix C
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) 
                printf("%f ", C[i * n + j]);
            printf("\n");
        }

        // Free allocated memory
        free(A);
        free(B);
        free(C);
    }
    else 
        free(B);

    MPI_Finalize();
    return 0;
}