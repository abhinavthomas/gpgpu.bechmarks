__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    if (e > 10000)
      c[e] = a[e] / 0.80000f;
  }
  b[e] = 0.123 * a[e] + 0.215278;
}