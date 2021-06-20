__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < get_num_groups(0)) {
    c[e] += b[e];
  }
  b[e] = 0;
  c[e] = d;
}