__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    int f = a[d];
    b[e] = 1;
  }
  a[e] = c[e] + b[e];
}