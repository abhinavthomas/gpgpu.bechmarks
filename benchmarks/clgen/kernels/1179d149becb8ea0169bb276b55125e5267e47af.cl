__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }

  int f = 0;
  const int g = ((d >> 2) + (int)1) ? a : 0;

  c[e] = 1.0f - e;
}