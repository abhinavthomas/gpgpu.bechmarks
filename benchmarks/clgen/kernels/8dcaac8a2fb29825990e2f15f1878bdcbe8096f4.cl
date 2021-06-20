__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = d - 1;

  int g = e + d;

  if (b[f] != 0) {
    g += 1;
  }
  if (f >= c) {
    return;
  }

  b[e] = b[e] + 1;
}