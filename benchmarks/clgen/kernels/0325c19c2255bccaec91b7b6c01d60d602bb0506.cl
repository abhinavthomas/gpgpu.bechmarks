__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    float f = (d - 1 - f) * d;
    a[e] = 0;
  }
}