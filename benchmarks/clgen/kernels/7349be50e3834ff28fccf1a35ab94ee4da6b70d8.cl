__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);

  if (d <= c) {
    a[d] = c;
  } else {
    b[d] = a[d] * a[d] * a[d + 4];
  }
}