__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);

  if (d < 64) {
    b[c] = 0.0f;
    b[d] = a[d] + 1;
  }
}