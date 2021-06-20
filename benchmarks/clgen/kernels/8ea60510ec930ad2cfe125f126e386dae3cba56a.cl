__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = get_global_id(1);

  if (e < c + 1 && f < d - 1) {
    c[e] = 2;
  }
  barrier(2);
  if (c == 0) {
    a[e + 1] = a[e + 1] + a[e + 1];
  }
}