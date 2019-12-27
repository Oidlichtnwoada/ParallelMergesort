
#ifndef CODE_SRC_SEQ_COMMON_H_
#define CODE_SRC_SEQ_COMMON_H_

typedef double array_t;

void seq_merge1(array_t a[], long n, array_t b[], long m, array_t c[]);

void seq_merge2(array_t *a, array_t *x, long n, long m);

void seq_merge_sort(array_t *a, array_t *x, long n);

extern int is_verbose();

#endif
