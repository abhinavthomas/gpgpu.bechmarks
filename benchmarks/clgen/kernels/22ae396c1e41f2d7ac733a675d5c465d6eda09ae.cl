__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  if (e < d) {
    c[e] = a[e] * (1.f - a[e] - 3.141592f * e);
  }
  if (d == 0) {
    a[e] = -1;
  }
}