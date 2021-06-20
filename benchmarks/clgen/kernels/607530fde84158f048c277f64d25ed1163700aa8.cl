__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);

  if (d < d) {
    a[d] = 0;
    a[d] = 0;
    a[d] = 22;
  }
  a[d] = 255 - 1;
}