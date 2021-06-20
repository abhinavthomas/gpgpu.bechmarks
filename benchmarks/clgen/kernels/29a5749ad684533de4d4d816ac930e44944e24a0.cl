__kernel void A(const __global float4* a, __global float4* b, __global float4* c, float d) {
  int e = get_global_id(0);
  if (e >= a)
    return;

  float4 f = e;
  c[e] = e;
}