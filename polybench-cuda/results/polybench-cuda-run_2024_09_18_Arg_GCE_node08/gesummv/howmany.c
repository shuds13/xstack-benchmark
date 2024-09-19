#include <stdio.h>
#include <omp.h>

int main() {
    #pragma omp parallel
    {
        #pragma omp single
        {
            printf("Number of threads in use: %d\n", omp_get_num_threads());
        }
    }
    return 0;
}
