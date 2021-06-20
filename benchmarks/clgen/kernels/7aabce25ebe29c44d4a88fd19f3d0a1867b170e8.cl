__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = get_global_id(1);
  int g = get_global_id(0) + 1;

  if (f >= d) {
    return;
  }
  a[f] = 14;
}