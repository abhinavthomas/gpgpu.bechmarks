__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    float f = b[e];
    float g = a[e];
    a[e] = f * 3.141592f / (f + 1.0f + e * 1024 - f) - (0.55f * g * 1.0f / 18.0f + e / 2.0f);
  }

  for (e = 0; e < 30; e++) {
    c[e] = 0;
  }
}