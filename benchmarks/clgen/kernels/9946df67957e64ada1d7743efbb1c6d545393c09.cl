__kernel void A(__global float* a, __constant float* b, __global float* c, __global float* d) {
  int e = get_global_id(0);

  if (e >= d)
    return;

  a[e] = a[e] + b[e];
}