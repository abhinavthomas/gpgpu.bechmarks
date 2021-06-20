__kernel void A(__global float2* a, __global float2* b, __global float2* c, int d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }

  a[e] = a[e] + b[e];
}