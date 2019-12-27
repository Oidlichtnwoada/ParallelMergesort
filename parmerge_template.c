#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <stdbool.h>
#include "parmerge.h"

array_t min(array_t a, array_t b) {
  return a < b ? a : b;
}

array_t max(array_t a, array_t b) {
  return a > b ? a : b;
}

void corank(long i, array_t A[], long n, long *j, array_t B[], long m, long *k) {
  *j = min(i,n); *k = i-*j;
  long d, klow = *k, jlow = max(0,i-m);
  while (true) {
    if (*j > 0 && *k < m && A[*j-1] > B[*k]) {
      d = (1+*j-jlow)/2; klow = *k;
      *j -= d; *k += d;
    } else {
      if (*k > 0 && *j < n && B[*k-1] >= A[*j]) {
        d = (1+*k-klow)/2; jlow = *j;
        *k -= d; *j += d;
      } else {
        break;
      }
    }
  }
}

void merge(array_t A[], long n, array_t B[], long m, array_t C[]) {
  #pragma omp parallel
  {
    long i, p, j1, j2, k1, k2;
    i = omp_get_thread_num();
    p = omp_get_num_threads();
    corank(i*(n+m)/p, A, n, &j1, B, m, &k1);
    corank((i+1)*(n+m)/p, A, n, &j2, B, m, &k2);
    seq_merge1(&A[j1], j2-j1, &B[k1], k2-k1, &C[i*(n+m)/p]);
  }
}