#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

/* Function declarations */
void initialize_arrays(uint32_t n, uint32_t m, double* alpha, double* A, double* B);
void matrix_kernel(uint32_t n, uint32_t m, double alpha, double* B, double* A);
void print_matrix(uint32_t m, uint32_t n, double* B);
uint32_t compute_num_blocks(uint32_t num, uint32_t factor);
void contraction_kernel(uint32_t n, uint32_t m, double alpha, double* B, double* A, uint32_t gridDim_2e_x, uint32_t blockDim_2e_x, uint32_t blockIdx_2e_x, uint32_t threadIdx_2e_x);
void scale_kernel(uint32_t n, uint32_t m, double alpha, double* B, uint32_t blockDim_2e_x, uint32_t blockDim_2e_y, uint32_t blockIdx_2e_x, uint32_t blockIdx_2e_y, uint32_t threadIdx_2e_x, uint32_t threadIdx_2e_y);

/* Global Variable Definitions and Initialization */
uint8_t format_string[8] = { "%0.2lf " };
uint8_t newline[2] = { "\n" };

/* Main function */
int main(int argc, char ** argv) {
  double alpha;
  int32_t n, m, dump_code;
  uint8_t *A, *B;

  n = atoi(argv[2]);
  m = atoi(argv[3]);
  dump_code = atoi(argv[1]);
  A = malloc(n * m * 8);
  B = malloc(m * n * 8);

  initialize_arrays(n, m, (&alpha), ((double*)A), ((double*)B));


  if (dump_code == 1) {
    print_matrix(m, n, ((double*)B));
  }

  matrix_kernel(n, m, alpha, ((double*)A), ((double*)B));

  if (dump_code == 1) {
    print_matrix(m, n, ((double*)B));
  }

  free(A);
  free(B);
  return 0;
}

/* Initialize the matrices */
void initialize_arrays(uint32_t n, uint32_t m, double* alpha, double* A, double* B) {
  *alpha = 32412;

  for (int64_t i = 0; i < n; i++) {
    for (int64_t j = 0; j < m; j++) {
      A[i * m + j] = ((double)(i) * (double)(j)) / (double)(m);
      B[j * n + j] = ((double)(i) * (double)(j)) / (double)(n);
    }
  }
}

/* Matrix kernel */
void matrix_kernel(uint32_t n, uint32_t m, double alpha, double* B, double* A) {
  int32_t block_count = compute_num_blocks(n, 256);

  #pragma omp parallel for collapse(2)
  for (int32_t i = 0; i < block_count; i++) {
    for (int32_t j = 0; j < 256; j++) {
      contraction_kernel(n, m, alpha, B, A, block_count, 256, i, j);
    }
  }

  int32_t block_m = compute_num_blocks(m, 8);
  int32_t block_n = compute_num_blocks(n, 32);

  printf("Matrix B after contraction stage:\n");
  print_matrix(m, n, B);

  #pragma omp parallel for collapse(2)
  for (int32_t i = 0; i < block_m; i++) {
    for (int32_t j = 0; j < block_n; j++) {
      for (int32_t k = 0; k < 8; k++) {
        for (int32_t l = 0; l < 32; l++) {
          scale_kernel(n, m, alpha, B, 8, 32, i, j, k, l);
        }
      }
    }
  }

  printf("Matrix B after scale stage:\n");
//   print_matrix(m, n, B);
  print_matrix(m, n, ((double*)B));


}

/* Print the matrix */
void print_matrix(uint32_t m, uint32_t n, double* B) {
  for (int64_t i = 0; i < m; i++) {
    for (int64_t j = 0; j < n; j++) {
      fprintf(stderr, (format_string), B[i * n + j]);
      if ((int)(i * n + j) % 20 == 0) {
        fprintf(stderr, (newline));
      }
    }
  }
  fprintf(stderr, (newline));
}

/* Compute number of blocks */
uint32_t compute_num_blocks(uint32_t num, uint32_t factor) {
  return (num + factor - 1) / factor;
}

/* Contraction kernel function */
void contraction_kernel(uint32_t n, uint32_t m, double alpha, double* B, double* A, uint32_t gridDim_2e_x, uint32_t blockDim_2e_x, uint32_t blockIdx_2e_x, uint32_t threadIdx_2e_x) {
  int32_t j = blockDim_2e_x * blockIdx_2e_x + threadIdx_2e_x;

  if (j < n) {
    for (int64_t i = 0; i < m; i++) {
      for (int64_t k = i; k < m; k++) {
        B[i * n + j] = B[i * n + j] + (A[k * m + i] * B[k * n + j]);
      }
    }
  }
}

/* Scale kernel function */
void scale_kernel(uint32_t n, uint32_t m, double alpha, double* B, uint32_t blockDim_2e_x, uint32_t blockDim_2e_y, uint32_t blockIdx_2e_x, uint32_t blockIdx_2e_y, uint32_t threadIdx_2e_x, uint32_t threadIdx_2e_y) {
  int32_t i = blockDim_2e_x * blockIdx_2e_x + threadIdx_2e_x;
  int32_t j = blockDim_2e_y * blockIdx_2e_y + threadIdx_2e_y;

  if (i < m && j < n) {
    B[i * n + j] *= alpha;
  }
}
