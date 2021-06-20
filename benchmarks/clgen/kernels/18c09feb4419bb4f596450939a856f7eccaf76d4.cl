__kernel void A(__global float* a, __global float* b, __global uchar* c) {
  int d = get_global_id(0);
  float e = (float)(b[d * (*c) + 0]);

  float f;
  f = logb(e);
  a[d] = f;
}