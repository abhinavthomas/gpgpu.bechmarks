__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  uint f = get_global_id(0);

  if (f < d - 1 - e) {
    c[f] = a[f] * b[f];
  }
  barrier(1);

  if (f >= a) {
    b[e] = a[f] - b[e];
  }
  barrier(2);
  if (c == 0) {
    a[e] = c[e] + b[e];
    a[e] = b[e];
  }
}