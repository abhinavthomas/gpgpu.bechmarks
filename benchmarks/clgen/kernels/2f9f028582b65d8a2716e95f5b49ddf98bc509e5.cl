__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  size_t f = get_global_id(0);
  size_t g = get_global_id(1);
  if (f < b) {
    c[f] = a[f] * b[f];
  }
}