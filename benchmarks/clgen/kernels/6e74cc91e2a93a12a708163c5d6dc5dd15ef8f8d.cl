__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }

  int f = e == 0 ? 1 : 0;
  int g = e << 2;
  c[2 * f + e] = a[f + 2] * b[f + 2] + a[f + 2] * b[f + 2] + a[f + 3] * b[f + 3];
}