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
struct l_array_92_uint8_t {
  uint8_t array[92];
};
struct l_array_54_uint8_t {
  uint8_t array[54];
};
struct l_array_9_uint8_t {
  uint8_t array[9];
};

/* External Global Variable Declarations */

/* Function Declarations */
int main(void) __ATTRIBUTELIST__((noinline, nothrow));
uint32_t printf(uint8_t*, ...);
uint32_t rand(void) __ATTRIBUTELIST__((nothrow));


/* Global Variable Definitions and Initialization */
static struct l_array_92_uint8_t _OC_str = { "<table style=\"text-align:center; border: 1px solid\"><th></th><th>X</th><th>Y</th><th>Z</th>" };
static struct l_array_54_uint8_t _OC_str_OC_1 = { "<tr><th>%d</th><td>%d</td><td>%d</td><td>%d</td></tr>" };
static struct l_array_9_uint8_t _OC_str_OC_2 = { "</table>" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_srem_u32(int32_t a, int32_t b) {
  uint32_t r = a % b;
  return r;
}


/* Function Bodies */

int main(void) {
  uint32_t llvm_cbe_call;
  uint32_t i;
  uint32_t i__PHI_TEMPORARY;
  uint32_t llvm_cbe_call1;
  uint32_t llvm_cbe_call2;
  uint32_t llvm_cbe_call4;
  uint32_t llvm_cbe_call6;
  uint32_t llvm_cbe_call7;

  llvm_cbe_call = printf(((&_OC_str.array[((int64_t)0)])));
  ;
  i__PHI_TEMPORARY = 0;   /* for PHI node */

  i = i__PHI_TEMPORARY;
  ;
while (((int32_t)i) < ((int32_t)4u)){
  llvm_cbe_call1 = rand();
  llvm_cbe_call2 = rand();
  llvm_cbe_call4 = rand();
  llvm_cbe_call6 = printf(((&_OC_str_OC_1.array[((int64_t)0)])), i, (llvm_srem_u32(llvm_cbe_call1, 10000)), (llvm_srem_u32(llvm_cbe_call2, 10000)), (llvm_srem_u32(llvm_cbe_call4, 10000)));

  i = llvm_add_u32(i, 1);
  ;
  i__PHI_TEMPORARY = i;   /* for PHI node */

  i = i__PHI_TEMPORARY;
  ;
}
  llvm_cbe_call7 = printf(((&_OC_str_OC_2.array[((int64_t)0)])));
  return 0;
}

