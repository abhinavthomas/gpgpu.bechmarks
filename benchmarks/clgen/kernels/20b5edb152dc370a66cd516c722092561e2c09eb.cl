__kernel void A(__global float* a, __global float* b, __global float* c, const uint d) {
  const int e = get_global_id(0);
  const int f = get_global_id(1);
  const int g = get_global_id(0);
  const int h = get_global_id(1);
  const int i = c;
  const int j = e + c - g;

  const int k = e + f * 2;
  const int l = i * d + d;

  b[h] = -3.14159265f;
}