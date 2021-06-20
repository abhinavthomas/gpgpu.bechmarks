__kernel void A(__global float* a, __global float* b, __global float* c, __global int* d) {
  uint e = get_global_id(0);
  if (e >= d) {
    return;
  }
  c[e] = 0;
  c[e] = 0;
}