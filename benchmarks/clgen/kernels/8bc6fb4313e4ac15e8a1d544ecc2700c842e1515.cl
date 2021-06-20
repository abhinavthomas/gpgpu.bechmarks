__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    b[e] *= 2;
    a[e] *= 1;
  }
  b[e] = a[e] + 0.01f;
}