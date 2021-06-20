__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);

  if (d < d - 1)
    return;

  a[d] = b[d] * a[d];
}