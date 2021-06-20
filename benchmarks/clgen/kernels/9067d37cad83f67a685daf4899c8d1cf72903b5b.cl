__kernel void A(__global float* a, __global float* b, __global float* c) {
  int d = get_global_size(0);
  int e = get_global_id(0);
  if (e < d) {
    c[e] = 0.0f;
    c[e] = a[e] + b[e];
  }
}