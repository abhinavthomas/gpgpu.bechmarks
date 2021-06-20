__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);
  const int e = get_global_id(1);
  b[d] = 0.0f;
  if (e) {
    b[d] = 0.0f;
  }
}