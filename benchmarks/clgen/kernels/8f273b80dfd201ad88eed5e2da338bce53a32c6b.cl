__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = e / d;
  int g = e * d;

  c[f] = a[f] + b[f] + c[f] + c[f] + c[f] + b[f] + a[f] + b[f] + g - d;
  c[f] = -1;
}