__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }
  c[e] = b[e] + 0x1.921fb6p+1f;
}