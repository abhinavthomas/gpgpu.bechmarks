__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < 2)
    b[e] = a[e] + a[e + 2];
  if (c[e] < 0)
    a[e] = b[e] + a[e + 8];
}