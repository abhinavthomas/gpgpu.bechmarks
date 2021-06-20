__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    b[e] += 1;
  }
  if (e < 2) {
    a[e] = c[e] * b[e];
  }
}