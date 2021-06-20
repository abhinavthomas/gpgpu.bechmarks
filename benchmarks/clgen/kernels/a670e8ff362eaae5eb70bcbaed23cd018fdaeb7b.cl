__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);

  if (f < d - 1 - e) {
    c[f] = a[f] * c[f] + 2 * a[f];
    a[f] = b[f];
  }
}