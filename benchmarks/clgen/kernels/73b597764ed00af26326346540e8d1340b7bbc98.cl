__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = get_global_id(1);
  int g = e + d * (e + d * 1020) + d;

  int h = f / 2;
  int i = e / 2;

  c[i] = f;
}