
#include "seq_common.h"

void seq_merge1(array_t a[], long n, array_t b[], long m, array_t c[]) {
  long i, j, k;

  i = 0;
  j = 0;
  k = 0;

  while (i < n && j < m) {
    c[k++] = (a[i] <= b[j]) ? a[i++] : b[j++];
  }

  while (i < n) {
    c[k++] = a[i++];
  }

  while (j < m) {
    c[k++] = b[j++];
  }

}


void seq_merge2(array_t *a, array_t *x, long n, long m) {
    long i, j, k;
    for (i = 0, j = m, k = 0; k < n; k++) {
        x[k] = j == n      ? a[i++]
             : i == m      ? a[j++]
             : a[j] < a[i] ? a[j++]
             :               a[i++];
    }
    for (i = 0; i < n; i++) {
        a[i] = x[i];
    }
}

/**
 * sequential mergesort, adapted from https://rosettacode.org/wiki/Sorting_algorithms/Merge_sort
 *
 * a input and output
 * x is only a temporary buffer to merge elements
 * n nb of elements of a (and x)
 */

void seq_merge_sort(array_t *a, array_t *x, long n) {
  if (n < 2)
    return;
  long m = n / 2;
  seq_merge_sort(a, x, m);
  seq_merge_sort(a + m, x + m, n - m);
  seq_merge2(a, x, n, m);
}
