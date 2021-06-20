__kernel void A(__global float2* a, __global float* b, const unsigned int c) {
  int d = get_global_id(0);

  if (d < c + 1) {
    a[d] += 42;
    a[d] = a[d] + b[d];
  }
}