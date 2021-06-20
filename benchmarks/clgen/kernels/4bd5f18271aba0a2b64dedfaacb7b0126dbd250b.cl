__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  c[e] = (e > get_global_id(0)) ? 1 : 0;
  barrier(1);

  if (0 < c && e < d) {
    b[e] += b[e];
  }
  b[e] = 0;
}