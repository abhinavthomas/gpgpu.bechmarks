__kernel void A(__global float4* a, __global float4* b, __global float4* c, __global float4* d, __global float4* e, float f) {
  unsigned int g = get_global_id(0);
  unsigned int h = get_global_id(1);

  if (g >= e || h >= g)
    return;

  a[g] = h;
}