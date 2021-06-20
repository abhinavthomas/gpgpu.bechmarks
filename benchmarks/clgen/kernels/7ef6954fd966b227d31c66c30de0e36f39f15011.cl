__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    c[e] += 1;
    barrier(1);
  }

  if (e > d - 1)
    a[e] = 0;
  else
    b[e] = 0;

  a[e] = b[e];
}