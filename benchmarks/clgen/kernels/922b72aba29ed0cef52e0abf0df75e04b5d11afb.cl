__kernel void A(__global float* a, __global float* b, const unsigned int c) {
  const unsigned int d = get_global_id(0);
  const unsigned int e = get_global_id(1);

  if (e < d * c + d + d + d) {
    b[d] -= b[d];
  }
}