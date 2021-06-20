__kernel void A(__global float* a, __global float* b, __global float* c, __global int* d) {
  int e = get_global_id(0);
  float f = a[e];
  float g = 1.0f;
  float h = 0.0f;
  for (int i = 0; i < 32; i++) {
    c[e] += c[e + i];
    c[e] = h;
  }
}