__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = get_global_id(1);
  int g = e * 4;
  int h = d + g * f;

  if (h < a && e < d - 1 && e >= b ? d - 1 : d + 1 - e) {
    b[f * f + e] = g;
  }
}