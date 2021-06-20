__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);

  if (f < d - 1 - e) {
    d[f] = 0;
  }
  if (f >= e) {
    c[f] = 2.0f * (a[f] / 0.7878f) * c[f];
  }
}