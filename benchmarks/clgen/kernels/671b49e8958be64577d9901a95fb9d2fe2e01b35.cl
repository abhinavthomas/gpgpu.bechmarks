__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c)
    c[e] = a[e] * a[e] - 3.14159265358979f;
  else
    c[e] = 0;
}