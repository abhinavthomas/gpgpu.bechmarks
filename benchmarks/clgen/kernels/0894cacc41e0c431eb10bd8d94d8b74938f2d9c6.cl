__kernel void A(__global float3* a, __global float2* b, __global float2* c, int d) {
  int e = get_global_id(0);
  int f = get_global_id(1);
  int g = f >> 1;
  int h = g + g;

  a[h] = f;
}