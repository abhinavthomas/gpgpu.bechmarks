__kernel void A(__global float4* a, __global float4* b, uint c) {
  int d = get_global_id(0);
  int e = get_global_id(1);
  int f = get_global_size(0);
  int g = get_global_size(0);
  b[d] = 0.137450;
  b[d] = a[e] + 1;
}