__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);

  if (d >= a) {
    return;
  }
  local const long e[8][2][64];
  local float f;
  b[0] = 0;
  f += 4;
  b[2] = 1;
}