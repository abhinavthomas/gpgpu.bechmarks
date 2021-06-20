__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    int f = a[d];
    c[e] = c[d] + b[e];
    c[e] = 0.1f * (e);
  }
}