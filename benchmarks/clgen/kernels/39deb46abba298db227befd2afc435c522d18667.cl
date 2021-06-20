__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    c[e] += 28;
    a[e] = b[e] + a[e - d];
  }
  barrier(1);

  if (e < d) {
    a[e] = get_global_id(0);
    c[e] = c[e] * c[e];
  }
}