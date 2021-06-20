__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    b[e] = a[e] + 2;
  } else if (e > 1 - 1) {
    b[e] += 28;
  }
}