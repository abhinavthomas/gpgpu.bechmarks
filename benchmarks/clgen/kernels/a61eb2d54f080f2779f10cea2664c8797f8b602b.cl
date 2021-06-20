__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_local_id(0);

  if (e < 32 - 2)
    a[e] = b[e];
  barrier(1);

  a[e] = c[0];
}