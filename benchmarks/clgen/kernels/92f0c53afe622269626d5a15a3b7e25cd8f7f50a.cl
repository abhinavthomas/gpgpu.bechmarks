__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f;
  float g = 0;
  for (e = 0; e < d; e++) {
    c[e] = 1.0f - f;
  }
}