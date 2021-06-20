__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    if (e == 0 && e % 2 == 0) {
      e += e;
    }
  }

  c[e] = a[d] + b[e];
  c[e] = 0;
}