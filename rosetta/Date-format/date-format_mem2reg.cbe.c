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

#ifdef _MSC_VER
#define __MSALIGN__(X) __declspec(align(X))
#else
#define __MSALIGN__(X)
#endif



/* Global Declarations */

/* Types Declarations */
struct l_struct_struct_OC_tm;

/* Function definitions */

/* Types Definitions */
struct l_struct_struct_OC_tm {
  uint32_t field0;
  uint32_t field1;
  uint32_t field2;
  uint32_t field3;
  uint32_t field4;
  uint32_t field5;
  uint32_t field6;
  uint32_t field7;
  uint32_t field8;
  uint64_t field9;
  uint8_t* field10;
};
struct l_array_8_uint8_t {
  uint8_t array[8];
};
struct l_array_9_uint8_t {
  uint8_t array[9];
};
struct l_array_6_uint8_t {
  uint8_t array[6];
};
struct l_array_4_uint8_t {
  uint8_t array[4];
};
struct l_array_5_uint8_t {
  uint8_t array[5];
};
struct l_array_7_uint8_t {
  uint8_t array[7];
};
struct l_array_10_uint8_t {
  uint8_t array[10];
};
struct l_array_12_uint8_t_KC_ {
  uint8_t* array[12];
};
struct l_array_7_uint8_t_KC_ {
  uint8_t* array[7];
};
struct l_array_15_uint8_t {
  uint8_t array[15];
};
struct l_array_14_uint8_t {
  uint8_t array[14];
};
struct l_array_50_uint8_t {
  uint8_t array[50];
};

/* External Global Variable Declarations */

/* Function Declarations */
int main(void) __ATTRIBUTELIST__((noinline, nothrow));
uint64_t time(uint64_t*) __ATTRIBUTELIST__((nothrow));
struct l_struct_struct_OC_tm* localtime(uint64_t*) __ATTRIBUTELIST__((nothrow));
uint32_t printf(uint8_t*, ...);
uint64_t strftime(uint8_t*, uint64_t, uint8_t*, struct l_struct_struct_OC_tm*) __ATTRIBUTELIST__((nothrow));
uint8_t* memcpy(uint8_t*, uint8_t*, uint64_t);


/* Global Variable Definitions and Initialization */
static struct l_array_8_uint8_t _OC_str = { "January" };
static struct l_array_9_uint8_t _OC_str_OC_1 = { "February" };
static struct l_array_6_uint8_t _OC_str_OC_2 = { "March" };
static struct l_array_6_uint8_t _OC_str_OC_3 = { "April" };
static struct l_array_4_uint8_t _OC_str_OC_4 = { "May" };
static struct l_array_5_uint8_t _OC_str_OC_5 = { "June" };
static struct l_array_5_uint8_t _OC_str_OC_6 = { "July" };
static struct l_array_7_uint8_t _OC_str_OC_7 = { "August" };
static struct l_array_10_uint8_t _OC_str_OC_8 = { "September" };
static struct l_array_8_uint8_t _OC_str_OC_9 = { "October" };
static struct l_array_9_uint8_t _OC_str_OC_10 = { "November" };
static struct l_array_9_uint8_t _OC_str_OC_11 = { "December" };
static __MSALIGN__(16) struct l_array_12_uint8_t_KC_ __const_OC_main_OC_months __attribute__((aligned(16))) = { { ((&_OC_str.array[((int32_t)0)])), ((&_OC_str_OC_1.array[((int32_t)0)])), ((&_OC_str_OC_2.array[((int32_t)0)])), ((&_OC_str_OC_3.array[((int32_t)0)])), ((&_OC_str_OC_4.array[((int32_t)0)])), ((&_OC_str_OC_5.array[((int32_t)0)])), ((&_OC_str_OC_6.array[((int32_t)0)])), ((&_OC_str_OC_7.array[((int32_t)0)])), ((&_OC_str_OC_8.array[((int32_t)0)])), ((&_OC_str_OC_9.array[((int32_t)0)])), ((&_OC_str_OC_10.array[((int32_t)0)])), ((&_OC_str_OC_11.array[((int32_t)0)])) } };
static struct l_array_7_uint8_t _OC_str_OC_12 = { "Sunday" };
static struct l_array_7_uint8_t _OC_str_OC_13 = { "Monday" };
static struct l_array_8_uint8_t _OC_str_OC_14 = { "Tuesday" };
static struct l_array_10_uint8_t _OC_str_OC_15 = { "Wednesday" };
static struct l_array_9_uint8_t _OC_str_OC_16 = { "Thursday" };
static struct l_array_7_uint8_t _OC_str_OC_17 = { "Friday" };
static struct l_array_9_uint8_t _OC_str_OC_18 = { "Saturday" };
static __MSALIGN__(16) struct l_array_7_uint8_t_KC_ __const_OC_main_OC_days __attribute__((aligned(16))) = { { ((&_OC_str_OC_12.array[((int32_t)0)])), ((&_OC_str_OC_13.array[((int32_t)0)])), ((&_OC_str_OC_14.array[((int32_t)0)])), ((&_OC_str_OC_15.array[((int32_t)0)])), ((&_OC_str_OC_16.array[((int32_t)0)])), ((&_OC_str_OC_17.array[((int32_t)0)])), ((&_OC_str_OC_18.array[((int32_t)0)])) } };
static struct l_array_10_uint8_t _OC_str_OC_19 = { "%d-%d-%d\n" };
static struct l_array_15_uint8_t _OC_str_OC_20 = { "%s, %s %d, %d\n" };
static struct l_array_14_uint8_t _OC_str_OC_21 = { "%A, %B %e, %Y" };
static struct l_array_4_uint8_t _OC_str_OC_22 = { "%s\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}


/* Function Bodies */

int main(void) {
  __MSALIGN__(16) struct l_array_50_uint8_t llvm_cbe_buf __attribute__((aligned(16)));    /* Address-exposed local */
  uint64_t llvm_cbe_seconds;    /* Address-exposed local */
  __MSALIGN__(16) struct l_array_12_uint8_t_KC_ llvm_cbe_months __attribute__((aligned(16)));    /* Address-exposed local */
  __MSALIGN__(16) struct l_array_7_uint8_t_KC_ llvm_cbe_days __attribute__((aligned(16)));    /* Address-exposed local */
  uint64_t llvm_cbe_call;
  struct l_struct_struct_OC_tm* now;
  uint8_t* _1;
  uint8_t* _2;
  uint32_t _3;
  uint32_t _4;
  uint32_t _5;
  uint32_t llvm_cbe_call3;
  uint32_t _6;
  uint8_t* _7;
  uint32_t _8;
  uint8_t* _9;
  uint32_t _10;
  uint32_t _11;
  uint32_t llvm_cbe_call10;
  uint64_t llvm_cbe_call11;
  uint32_t llvm_cbe_call13;

  ;
  ;
  llvm_cbe_call = time(((uint64_t*)/*NULL*/0));
  llvm_cbe_seconds = llvm_cbe_call;
  now = localtime((&llvm_cbe_seconds));
  ;
  ;
  _1 = memcpy((((uint8_t*)(&llvm_cbe_months))), ((uint8_t*)(&__const_OC_main_OC_months)), 96);
  ;
  _2 = memcpy((((uint8_t*)(&llvm_cbe_days))), ((uint8_t*)(&__const_OC_main_OC_days)), 56);
  _3 = *((&now->field5));
  _4 = *((&now->field4));
  _5 = *((&now->field3));
  llvm_cbe_call3 = printf(((&_OC_str_OC_19.array[((int64_t)0)])), (llvm_add_u32(_3, 1900)), (llvm_add_u32(_4, 1)), _5);
  _6 = *((&now->field6));
  _7 = *((&llvm_cbe_days.array[((int64_t)(((int64_t)(int32_t)_6)))]));
  _8 = *((&now->field4));
  _9 = *((&llvm_cbe_months.array[((int64_t)(((int64_t)(int32_t)_8)))]));
  _10 = *((&now->field3));
  _11 = *((&now->field5));
  llvm_cbe_call10 = printf(((&_OC_str_OC_20.array[((int64_t)0)])), _7, _9, _10, (llvm_add_u32(_11, 1900)));
  llvm_cbe_call11 = strftime(((&llvm_cbe_buf.array[((int64_t)0)])), 50, ((&_OC_str_OC_21.array[((int64_t)0)])), now);
  llvm_cbe_call13 = printf(((&_OC_str_OC_22.array[((int64_t)0)])), ((&llvm_cbe_buf.array[((int64_t)0)])));
  return 0;
}

