__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);

  if (d < d) {
    a[d] = 0.0;
  }

  barrier(1);

  a[d] = c;
}