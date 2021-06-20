__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    b[e] = a[e] + b[e];
    c[e] = 0;
  }
}