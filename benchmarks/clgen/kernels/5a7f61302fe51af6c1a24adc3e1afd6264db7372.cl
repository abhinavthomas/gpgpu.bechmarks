__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    if (e == 2) {
      c[e] = 0;
    }
  } else {
    c[e] = 0;
  }
}