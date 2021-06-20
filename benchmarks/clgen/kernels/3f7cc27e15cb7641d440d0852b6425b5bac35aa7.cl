__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  if (e < d) {
    c[e] = a[e] * c[e] + 2 * a[e];
    c[e] = (b[e] * c[e]) * c[e];
    a[e] = a[e] + b[e];
  }
}