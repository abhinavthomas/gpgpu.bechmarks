__kernel void A(__global int2* a, __global int* b, __global int* c, int d) {
  int e = get_global_id(0);
  if (e >= d)
    return;

  a[e] = false;
  c[e] = d;
}