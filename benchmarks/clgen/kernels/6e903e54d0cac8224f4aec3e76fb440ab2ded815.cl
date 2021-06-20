__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }
  c[e] = 1;
  for (int f = e >> 1; f > 0; f >>= 1) {
    if (d < f) {
      a[d] = a[f] * a[d];
    }
    b[d] = c[e] + 2;
  }
}