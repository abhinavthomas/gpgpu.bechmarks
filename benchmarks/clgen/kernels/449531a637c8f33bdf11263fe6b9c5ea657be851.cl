__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  int f = get_global_id(0);
  int g = get_global_id(1);

  if (f < d - 1 - e && f < c - 1) {
    c[f] = a[f] + b[f];
    b[f] = 0;
  }
}