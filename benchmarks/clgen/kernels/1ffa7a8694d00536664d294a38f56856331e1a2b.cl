__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);
  const int g = get_global_id(1);

  if (f < c) {
    c[f] = 0.0;
  }
  if (f > e - 2 && f < c) {
    c[e] += 1;
    d[f] = 0.0;
  }
}