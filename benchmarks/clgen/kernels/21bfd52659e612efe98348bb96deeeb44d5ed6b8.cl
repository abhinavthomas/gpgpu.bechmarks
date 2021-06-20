__kernel void A(__global float4* a, __global float4* b, __global float4* c, __global float4* d, float e) {
  int f = get_global_id(0);
  unsigned int g = get_global_id(1);
  if ((f < c) && (g < d)) {
    c[f] = b[f];
    c[f] = f;
  }
}