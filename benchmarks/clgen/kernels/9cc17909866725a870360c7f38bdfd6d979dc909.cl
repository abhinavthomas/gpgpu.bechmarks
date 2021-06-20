__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = get_global_id(1);

  if (e > d - 1)
    return;

  b[e] = a[e] + b[e];
}