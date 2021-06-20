__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = get_global_id(1);
  int g = get_global_size(1);
  int h = get_global_size(0);

  int i = d + e * g;
  int j = e * d + e;

  a[e] = f;
}