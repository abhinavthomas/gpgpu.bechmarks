__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);

  if (d == 0) {
    a[d] = c;
  }

  barrier(1);

  a[d] = 0;
  a[d] = 2;
  a[d] = 22;
}