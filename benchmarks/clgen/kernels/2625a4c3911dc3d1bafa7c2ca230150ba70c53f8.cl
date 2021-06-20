__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, __global float* e) {
  unsigned int f = get_global_id(0);
  unsigned int g = get_global_id(1);

  if (f < c - 1) {
    a[f] += f;
  }
}