__kernel void A(__global float* a, __global float* b, __global float* c) {
  int d = get_global_id(0);

  if (d < c) {
    a[d] = a[d] * b[d];
  }
  b[d] = a[d] * a[d];
}