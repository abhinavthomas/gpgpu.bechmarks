__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    a[e] = c[e] + 0x1.fffffep127f;
    c[e] = 0.0f;
  }
}