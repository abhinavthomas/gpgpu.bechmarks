__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);
  const int g = get_global_id(1);

  if (f < d - 1 - f && g < c) {
    c[f] = 0.0;
  }
  if (g != 4) {
    c[f] = 2.0f * c[f] + b[f] * b[f];
  }
}