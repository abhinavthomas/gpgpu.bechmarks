__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  if (e >= c) {
    return;
  }

  int f = e << (d - 7 - 1);
  int g = e + d;

  barrier(1);

  a[e] += d;
}