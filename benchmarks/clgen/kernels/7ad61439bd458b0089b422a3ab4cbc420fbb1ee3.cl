__kernel void A(__global float* a, __global float* b) {
  int c = get_global_id(0);
  if (c >= 2) {
    c = 0;
  }

  b[c] = 0x00000000;
}