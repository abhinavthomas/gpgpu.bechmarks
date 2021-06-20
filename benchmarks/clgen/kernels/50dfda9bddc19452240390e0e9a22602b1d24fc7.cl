__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }

  b[e] = (e > get_global_id(0)) ? a[e + d] : 0;
}