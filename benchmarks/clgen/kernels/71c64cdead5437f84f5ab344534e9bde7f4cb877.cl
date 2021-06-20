__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  float f = 0.f;

  for (int g = 0; g < d; g++) {
    c[g] = 0;
  }
}