__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    b[e] += 21;
    if (e < c) {
      b[e] += 2;
    }
    c[e] = 0;
  }

  return;
}