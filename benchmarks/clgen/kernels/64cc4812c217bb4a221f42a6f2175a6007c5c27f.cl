__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);
  const int g = get_global_id(1);

  if (f < a && f < d - 1) {
    a[f] = b[f] + a[f];
    c[f] = 1.0f;
  }
}