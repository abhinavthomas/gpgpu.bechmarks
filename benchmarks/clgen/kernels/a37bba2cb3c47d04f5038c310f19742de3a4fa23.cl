__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = get_global_id(1);
  int g = e + d - e;

  int h = 1 << (b - c);
  int i = g + d * e;

  a[h] = -0.2f;
}