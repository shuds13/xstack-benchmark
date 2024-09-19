/* Provide Declarations */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#ifndef __cplusplus
typedef unsigned char bool;
#endif

#ifndef _MSC_VER
#define __forceinline __attribute__((always_inline)) inline
#endif

#if defined(__GNUC__)
#define  __ATTRIBUTELIST__(x) __attribute__(x)
#else
#define  __ATTRIBUTELIST__(x)
#endif

#ifdef _MSC_VER  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

/* Global Declarations */

/* Types Declarations */
struct l_struct_struct_OC_dim3;

/* Function definitions */

/* Types Definitions */
struct l_struct_struct_OC_dim3 {
  uint32_t field0;
  uint32_t field1;
  uint32_t field2;
};

/* Function Declarations */
uint32_t cudaSetupArgument(uint8_t*, uint64_t, uint64_t);
uint32_t cudaLaunch(uint8_t*);
int main(int, char **) __ATTRIBUTELIST__((noinline));
void _ZL10init_arrayiiPdS_S_(uint32_t, uint32_t, double*, double*, double*) __ATTRIBUTELIST__((noinline, nothrow));
uint32_t cudaMemcpy(uint8_t*, uint8_t*, uint64_t, uint32_t);
void _ZL6kerneliidPdS_(uint32_t, uint32_t, double, double*, double*) __ATTRIBUTELIST__((noinline));
void _ZL11print_arrayiiPd(uint32_t, uint32_t, double*) __ATTRIBUTELIST__((noinline));
uint32_t _ZL10num_blocksii(uint32_t, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
uint32_t cudaConfigureCall(uint64_t, uint32_t, uint64_t, uint32_t, uint64_t, void*);
uint32_t cudaMalloc(uint8_t**, uint64_t);
void _Z15kernel_contractiidPdS__OC_1(uint32_t, uint32_t, double, double*, double*, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
void _Z12kernel_alphaiidPdS__OC_2(uint32_t, uint32_t, double, double*, double*, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));

/* Global Variable Definitions and Initialization */
uint8_t _OC_str[8] = { "%0.2lf " };
uint8_t _OC_str_OC_1[2] = { "\n" };


/* Function Bodies */

int main(int argc, char ** argv) {
  double alpha;
  int32_t n, m, dump_code;
  uint8_t *A, *B;

  n = atoi(argv[2]);
  m = atoi(argv[3]);
  dump_code = atoi(argv[1]);
  A = malloc(n * m * 8);
  B = malloc(m * n * 8);

  _ZL10init_arrayiiPdS_S_(n, m, (&alpha), ((double*)A), ((double*)B));
  _ZL6kerneliidPdS_(n, m, alpha, ((double*)A), ((double*)B));

  if (dump_code == 1) {
    _ZL11print_arrayiiPd(m, n, ((double*)B));
  }

  free(A);
  free(B);
  return 0;
}

void _ZL10init_arrayiiPdS_S_(uint32_t n, uint32_t m, double* alpha, double* A, double* B) {
  *alpha = 32412;

  for (int64_t i = 0; i < n; i++) {
    for (int64_t j = 0; j < m; j++) {
      A[i * m + j] = ((double)(i) * (double)(j)) / (double)(m);
      B[j * n + j] = ((double)(i) * (double)(j)) / (double)(n);
    }
  }
}

void _ZL6kerneliidPdS_(uint32_t n, uint32_t m, double alpha, double* B, double* A) {
  int32_t call = _ZL10num_blocksii(n, 256);

  #pragma omp parallel for collapse(2)
  for (int32_t i = 0; i < call; i++) {
    for (int32_t j = 0; j < 256; j++) {
      _Z15kernel_contractiidPdS__OC_1(n, m, alpha, B, A, call, 1, 1, 256, 1, 1, i, 0, 0, j, 0, 0);
    }
  }

  int32_t call3 = _ZL10num_blocksii(m, 8);
  int32_t call4 = _ZL10num_blocksii(n, 32);

  #pragma omp parallel for collapse(2)
  for (int32_t i = 0; i < call3; i++) {
    for (int32_t j = 0; j < call4; j++) {
      for (int32_t k = 0; k < 8; k++) {
        for (int32_t l = 0; l < 32; l++) {
          _Z12kernel_alphaiidPdS__OC_2(n, m, alpha, B, A, call3, call4, 1, 8, 32, 1, i, j, 0, k, l, 0);
        }
      }
    }
  }
}

void _ZL11print_arrayiiPd(uint32_t m, uint32_t n, double* B) {
  for (int64_t i = 0; i < m; i++) {
    for (int64_t j = 0; j < n; j++) {
      fprintf(stderr, (_OC_str), B[i * n + j]);
      if ((int)(i * n + j) % 20 == 0) {
        fprintf(stderr, (_OC_str_OC_1));
      }
    }
  }
  fprintf(stderr, (_OC_str_OC_1));
}

uint32_t _ZL10num_blocksii(uint32_t num, uint32_t factor) {
  return (num + factor - 1) / factor;
}

void _Z15kernel_contractiidPdS__OC_1(uint32_t n, uint32_t m, double alpha, double* B, double* A, uint32_t gridDim_2e_x, uint32_t gridDim_2e_y, uint32_t gridDim_2e_z, uint32_t blockDim_2e_x, uint32_t blockDim_2e_y, uint32_t blockDim_2e_z, uint32_t blockIdx_2e_x, uint32_t blockIdx_2e_y, uint32_t blockIdx_2e_z, uint32_t threadIdx_2e_x, uint32_t threadIdx_2e_y, uint32_t threadIdx_2e_z) {
  int32_t j = blockDim_2e_x * blockIdx_2e_x + threadIdx_2e_x;

  if (j < n) {
    for (int64_t i = 0; i < m; i++) {
      for (int64_t k = i; k < m; k++) {
        B[i * n + j] = B[i * n + j] + (A[k * m + i] * B[k * n + j]);
      }
    }
  }
}

void _Z12kernel_alphaiidPdS__OC_2(uint32_t n, uint32_t m, double alpha, double* B, double* A, uint32_t gridDim_2e_x, uint32_t gridDim_2e_y, uint32_t gridDim_2e_z, uint32_t blockDim_2e_x, uint32_t blockDim_2e_y, uint32_t blockDim_2e_z, uint32_t blockIdx_2e_x, uint32_t blockIdx_2e_y, uint32_t blockIdx_2e_z, uint32_t threadIdx_2e_x, uint32_t threadIdx_2e_y, uint32_t threadIdx_2e_z) {
  int32_t i = blockDim_2e_x * blockIdx_2e_x + threadIdx_2e_x;
  int32_t j = blockDim_2e_y * blockIdx_2e_y + threadIdx_2e_y;

  if (i < m && j < n) {
    B[i * n + j] *= alpha;
  }
}
