__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }

  int f = d >> 1;
  int g = b[e];
  int h = d - g - e;
  c[e] = h + g;
}