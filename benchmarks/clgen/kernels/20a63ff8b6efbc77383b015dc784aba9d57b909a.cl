__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  c[e] = a[e] + b[e];

  if (d > e) {
    c[e] = 0;
  }
}