/**
 * covariance.c: This file is part of the PolyBench/C 3.2 test suite.
 *
 *
 * Contact: Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>
 * Web address: http://polybench.sourceforge.net
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

static
void init_array (int m, int n,
   double *data)
{
  int i, j;


  for (i = 0; i < n; i++)
    for (j = 0; j < m; j++)
      data[i*m+j] = ((double) i*j) / 1000;
}




static
void print_array(int m,
   double *cov)

{
  int i, j;

  for (i = 0; i < m; i++)
    for (j = 0; j < m; j++) {
      fprintf (stderr, "%0.2lf ", cov[i*m+j]);
      if ((i * m + j) % 20 == 0) fprintf (stderr, "\n");
    }
  fprintf (stderr, "\n");
}




static void kernel(int m, int n,
                   double* data,
                   double* cov,
                   double* mean) {
  #pragma omp parallel
  {
  #pragma omp for schedule(static)
  for (int j = 0; j < m; j++) {
    mean[j] = 0.0;
    for (int i = 0; i < n; i++)
      mean[j] += data[i*m+j];
    mean[j] /= n;
  }

  #pragma omp for schedule(static)
  for (int i = 0; i < n; i++)
    for (int j = 0; j < m; j++)
      data[i*m+j] -= mean[j];

  #pragma omp for
  for (int i = 0; i < m; i++)
    for (int j = i; j < m; j++) {
      cov[i*m+j] = 0.0;
      for (int k = 0; k < n; k++)
        cov[i*m+j] += data[k*m+i] * data[k*m+j];
      cov[i*m+j] /= (n - 1.0);
      cov[j*m+i] = cov[i*m+j];
    }
 }
}


int main(int argc, char** argv)
{

  int dump_code = atoi(argv[1]);
  int n = atoi(argv[2]);
  int m = atoi(argv[3]);

  double *data = (double*)malloc(n*m*sizeof(double));
  double *mean = (double*)malloc(m*sizeof(double));
  double *cov = (double*)malloc(m*m*sizeof(double));



  init_array (m, n, data);




  kernel (m, n,
       data,
       cov,
       mean);





  if (dump_code == 1) print_array(m, cov);


  free((void*)data);
  free((void*)cov);
  free((void*)mean);

  return 0;
}
