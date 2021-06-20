__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = get_global_id(1);
  if (f < d - 1 - e) {
    b[f] = 1;
  } else {
    *c = a[f];
    c[f] = 0.0f;
  }
}