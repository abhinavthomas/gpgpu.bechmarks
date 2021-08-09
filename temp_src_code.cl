__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e > d - 1)
    return;

  float4 f[9];

  for (e = 0; e < 2; e++) {
    c[e] = 1.0f / b[e];
  }
}