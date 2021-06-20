__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    c[e] = a[e] + b[e];
    a[e] = e;
  }

  barrier(1);

  a[e] = a[e];
}