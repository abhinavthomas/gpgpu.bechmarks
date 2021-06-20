__kernel void A(__global float* a, __global float* b) {
  int c = get_global_id(0);

  int d = get_global_id(0);

  int e = get_global_id(1);

  if (e < c - 1) {
    a[e] = b[e] + 2;
  }
}