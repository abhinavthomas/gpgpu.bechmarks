__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    c[e] += 1;
    barrier(1);
  }
  c[d] = c[d] + d + (b[0] * c[e]);
}