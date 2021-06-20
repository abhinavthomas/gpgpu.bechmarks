__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);

  if (f < a) {
    d[f] = d[f] * d[f];
  }
  b[f] = 0;
  b[f] = c[f];
  b[f] = c[f] + e;
}