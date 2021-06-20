__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);
  const int g = get_global_id(1);

  if (f < d - 1 - e) {
    c[f] = 0.0;
  }
  c[f] = 0.0;
  b[f] = 0.0f;
  b[f] = e;
}