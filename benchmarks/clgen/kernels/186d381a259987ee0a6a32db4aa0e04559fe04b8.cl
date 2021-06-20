__kernel void A(__global const float* a, __global const float* b, __global float* c, const int d, const int e) {
  int f = get_global_id(0);
  int g = get_global_id(1);

  if (f < a && g < d) {
    c[f] = 0;
  }
}