__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  if (e >= a) {
    return;
  }

  int f = e / d;
  int g = a[e];
  a[e] = a[e] + 1;
}