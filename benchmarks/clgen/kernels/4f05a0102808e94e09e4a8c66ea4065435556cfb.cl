__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);

  if (d < a[d] || b[d] > 0.0f) {
    b[d] = 0.000000f;
    b[d] = 2.0f;
  }
}