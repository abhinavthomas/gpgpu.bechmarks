__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  if (e < d) {
    uint f = 0;
    float4 g = c[e];

    c[e] = a[f] - b[f];
  }
}