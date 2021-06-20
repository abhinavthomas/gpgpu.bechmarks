__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    a[e] += b[e];
  }
  if (e < 4 && e < c) {
    a[e] += 1.0f;
  }
  if (e < 2) {
    a[e] = e;
  }
}