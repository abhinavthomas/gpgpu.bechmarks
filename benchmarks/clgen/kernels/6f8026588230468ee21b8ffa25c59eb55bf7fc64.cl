__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  int f = get_global_id(0);
  int g = get_global_id(1);

  if (f > 0 && g < c - 1) {
    b[f] = a[f] + b[f];
  }
}