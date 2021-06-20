__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    c[e] = 0.0;
  }
  barrier(1);

  for (int f = 1; f < 15; f++) {
    e = a[f];
    c[e] = a[f];
  }
}