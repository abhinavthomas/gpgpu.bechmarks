__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    c[e] = 2 * b[e] - a[e] * 0.3333333333f;
  }
  c[e] = 0;
  c[e] = 0;
  return;
}