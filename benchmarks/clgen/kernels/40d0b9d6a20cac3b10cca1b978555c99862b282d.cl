__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    a[e] += 1;
    b[e] += c[e];
    c[e] = a[e] * c[e];
  }
}