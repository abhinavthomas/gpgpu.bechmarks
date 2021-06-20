__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    a[e] = 0.0;
  }
  barrier(1);

  e = a;
  e = get_global_size(0);
  a[e] = b[e] + b[e];
}