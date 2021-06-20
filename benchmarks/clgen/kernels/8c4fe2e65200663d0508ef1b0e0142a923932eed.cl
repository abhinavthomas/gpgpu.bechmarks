__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, __global float* e, __global int* f) {
  int g[9];
  float h[8];

  int i = g[0];
  int j = get_global_id(0);
  int k = get_global_id(1);
  j = get_local_id(0);
  a[get_local_id(0)] = g[0];
  b[get_global_id(0)] = get_local_id(0);
}