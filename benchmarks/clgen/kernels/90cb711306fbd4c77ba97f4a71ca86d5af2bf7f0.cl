__kernel void A(const int a, __global int* b, __global int* c) {
  int d = get_global_id(0);
  int e = get_global_id(1);

  if (e < c - 1 - e) {
    c[e] /= c[e];
  }
}