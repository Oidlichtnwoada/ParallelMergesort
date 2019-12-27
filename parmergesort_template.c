#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <omp.h>
#include "parmerge.h"

long getStartIndex(long index, long n, long packets) {
  return index >= packets ? n : index*(n/packets);
}

void par_mergesort(array_t a[], long n) {
  array_t *in, *out, *c, *b = malloc(n*sizeof(array_t));
  long packets, index, limit, f, start0, start1, start2, length0, length1;
  #pragma omp parallel
  {  
    long i, p, len, start;
    i = omp_get_thread_num();
    p = omp_get_num_threads();
    len = i < p-1 ? n/p : n/p+n%p;
    start = i*(n/p);
    seq_merge_sort(&a[start], &b[start], len);
    #pragma omp single
    packets = limit = p;
  }
  in = a; out = b;
  for (f = 1; f < packets; f *= 2, limit -= limit/2) {
    for (index = 0; index < limit; index += 2) {
      start0 = getStartIndex((index+0)*f, n, packets);
      start1 = getStartIndex((index+1)*f, n, packets);
      start2 = getStartIndex((index+2)*f, n, packets);
      length0 = start1 - start0;
      length1 = start2 - start1;
      merge(&in[start0], length0, &in[start1], length1, &out[start0]);
    } 
    c = in; in = out; out = c; 
  }
  if (in == b) {
    #pragma omp parallel
    {
      long i, p, len, start;
      i = omp_get_thread_num();
      p = omp_get_num_threads();
      len = i < p-1 ? n/p : n/p+n%p;
      start = i*(n/p);
      while (len-- > 0) {
        a[start] = b[start];
        start++;
      }
    }
  }
  free(b);
}