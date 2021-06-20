__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);

  if (get_global_id(0) <= c) {
    a[d] = b[d] + 2;
    b[d] = a[d] * b[d];
  }
}