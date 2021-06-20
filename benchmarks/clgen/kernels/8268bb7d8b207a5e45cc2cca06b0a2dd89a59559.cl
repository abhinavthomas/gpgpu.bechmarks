__kernel void A(__global float* a, __global float* b, __global float* c, float d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }

  int f = a[e];
  c[e] = 0;
}