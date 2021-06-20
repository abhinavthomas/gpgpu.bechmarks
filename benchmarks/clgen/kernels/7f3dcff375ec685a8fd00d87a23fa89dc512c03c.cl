__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    c[e] = a[e] * b[e] - 1;
  } else if (e < d) {
    c[e] = 0;
  }
}