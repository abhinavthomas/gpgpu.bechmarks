__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);
  const int e = get_global_id(1);
  int f;
  if (get_global_id(2) == 0) {
    b[d] *= -1;
    b[d] = 0;
  }
}