__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  if (e < d) {
    uint f = (d + d) / 2;
    float4 g = c[e];

    a[e] = f;
    a[e] = f;
  }
}