__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  if (e < d) {
    c[e] = 0.0f;
    b[e] = 0.0f;
  }
  if (e > 1024)
    c[e] = a[e] + b[e];
}