__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);

  if (f < e) {
    a[f] = 1;
    a[f] = 0;
  }
}