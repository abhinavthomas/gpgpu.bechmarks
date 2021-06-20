__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    c[e] += 1;
    c[e] += c[e];
  }
  if (e > d) {
    a[e] += 2;
    a[e] = c[e] * c[e];
  }
}