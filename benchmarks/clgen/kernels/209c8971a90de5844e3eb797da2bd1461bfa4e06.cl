__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < 0.0005) {
    b[e] += get_global_size(0);
  }
  a[e] = c[0];
}