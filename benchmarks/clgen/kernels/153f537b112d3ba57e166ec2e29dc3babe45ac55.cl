__kernel void A(__global float* a, __global float* b, __global int* c, __global int* d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }

  c[e] = a[e] + b[e];
}