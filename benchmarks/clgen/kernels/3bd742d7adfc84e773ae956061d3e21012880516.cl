__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d)
    b[e] = a[e] + 0xb1fe6fff;
  else
    c[e] = 0;
}