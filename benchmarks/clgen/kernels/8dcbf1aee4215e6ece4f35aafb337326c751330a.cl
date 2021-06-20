__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    c[e] = a[e] + b[e];
  }
  b[e] = 0.0;
  for (e = 0; e < 9; e++) {
    if (a[e] < 0)
      a[e] = a[e] + 0.5f;
  }
}