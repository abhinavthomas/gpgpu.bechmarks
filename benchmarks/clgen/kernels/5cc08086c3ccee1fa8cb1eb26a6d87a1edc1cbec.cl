__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = d - 1;

  int g = e - 1;
  int h = f + d * g;

  c[e] = h;
}