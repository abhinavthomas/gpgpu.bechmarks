__kernel void A(__global float* a, __constant float* b, __global int* c, const int d) {
  int e = get_global_id(0);

  if (e < c)
    c[e] = a[e] + b[e];
  else
    c[e] = a[e] + b[e];
}