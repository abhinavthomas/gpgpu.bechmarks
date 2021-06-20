__kernel void A(__global float* a, __global float* b, const int c) {
  const int d = get_global_id(0);
  const int e = get_global_id(1);

  if (d < c) {
    b[d] = a[d] * b[d];
  }
}