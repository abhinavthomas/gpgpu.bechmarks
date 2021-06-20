__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }

  c[e] = d * 3.1415 / (0xffff0000 + a[e] + 1);
}