__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    c[e] = a[e] + b[e];
  }
  b[e] = 0.0;
  for (c = 0; c < 3; c++) {
    b[e] = 0;
  }
}