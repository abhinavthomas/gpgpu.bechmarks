__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    if (e < c) {
      float f = a[e];
      a[e] = a[e] * (float)((float)(c[e]));
    }
  }
}