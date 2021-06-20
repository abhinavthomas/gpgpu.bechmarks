__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);

  if (f < a) {
    b[f] += b[f];
  }
  b[f] = e;
}