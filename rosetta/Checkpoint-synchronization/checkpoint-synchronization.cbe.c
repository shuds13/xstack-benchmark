/* Provide Declarations */
#include <stdint.h>
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

/* Function definitions */

/* Types Definitions */
struct l_array_19_uint8_t {
  uint8_t array[19];
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};

/* External Global Variable Declarations */

/* Function Declarations */
int main(void) __ATTRIBUTELIST__((noinline, nothrow));
void omp_set_num_threads(uint32_t);
uint32_t omp_get_thread_num(void);
uint32_t printf(uint8_t*, ...);
uint32_t usleep(uint32_t);
uint32_t rand(void) __ATTRIBUTELIST__((nothrow));


/* Global Variable Definitions and Initialization */
static struct l_array_19_uint8_t _OC_str = { "%d: taking job %d\n" };
static struct l_array_14_uint8_t _OC_str_OC_1 = { "%d: done job\n" };
static struct l_array_14_uint8_t _OC_str_OC_2 = { "[%d] leaving\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}


/* Function Bodies */

int main(void) {
  uint32_t llvm_cbe_retval;    /* Address-exposed local */
  uint32_t llvm_cbe_jobs;    /* Address-exposed local */
  uint32_t llvm_cbe_tid;    /* Address-exposed local */
  uint32_t llvm_cbe_call;
  uint32_t _1;
  uint32_t _2;
  uint32_t _3;
  uint32_t _4;
  uint32_t llvm_cbe_call1;
  uint32_t llvm_cbe_call2;
  uint32_t llvm_cbe_call4;
  uint32_t _5;
  uint32_t llvm_cbe_call5;
  uint32_t _6;
  uint32_t llvm_cbe_call6;

  llvm_cbe_retval = 0;
  ;
  llvm_cbe_jobs = 41;
  ;
  omp_set_num_threads(5);
  llvm_cbe_call = omp_get_thread_num();
  llvm_cbe_tid = llvm_cbe_call;

  _1 = llvm_cbe_jobs;
while (((int32_t)_1) > ((int32_t)0u)){
  _2 = llvm_cbe_jobs;
  if (!(((_2 != 0u)&1))) {
  _6 = llvm_cbe_tid;
  llvm_cbe_call6 = printf(((&_OC_str_OC_2.array[((int64_t)0)])), _6);
  return 0;
}
  _3 = llvm_cbe_tid;
  _4 = llvm_cbe_jobs;
  llvm_cbe_jobs = (llvm_add_u32(_4, -1));
  llvm_cbe_call1 = printf(((&_OC_str.array[((int64_t)0)])), _3, _4);
  llvm_cbe_call2 = rand();
  llvm_cbe_call4 = usleep((((uint32_t)(1.0E+5 + (((((double)(int32_t)llvm_cbe_call2)) / 2147483647) * 3.0E+6)))));
  _5 = llvm_cbe_tid;
  llvm_cbe_call5 = printf(((&_OC_str_OC_1.array[((int64_t)0)])), _5);

  _1 = llvm_cbe_jobs;
}

  _6 = llvm_cbe_tid;
  llvm_cbe_call6 = printf(((&_OC_str_OC_2.array[((int64_t)0)])), _6);
  return 0;
}

