__kernel void A(__global float4* a, __global float4* b, int c, int d) {
  int e = get_global_id(0);
  int f = get_global_id(1);

  int g = get_global_size(0);
  int h = get_global_size(1);
  int i = i + g * 2;
  int j = d / 4;
  int k = j - j / 2;

  if (h <= i) {
    b[h] = 0;
  }
}