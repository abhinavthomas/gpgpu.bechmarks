__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);
  const int g = get_global_id(1);

  if (f >= c || f > 8 && g < 128) {
    a[f] = 0;
  }
  d[f] = 1;
  b[f] = 0;
}