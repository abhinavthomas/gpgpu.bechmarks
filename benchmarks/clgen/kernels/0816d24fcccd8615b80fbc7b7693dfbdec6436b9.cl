__kernel void A(const int a, __global int* b, __global int* c) {
  int d = get_global_id(0);
  c[d] = c[d] + 7;

  for (unsigned int e = d; e < d; e++) {
    *c += b[e];
  }
}