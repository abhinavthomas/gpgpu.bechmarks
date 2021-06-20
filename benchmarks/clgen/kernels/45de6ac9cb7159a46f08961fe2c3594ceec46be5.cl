__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    c[e] = 0.0f;
  }
  if (a[e] > 0)
    c[e] = a[e] + b[e] + 1;
  else
    b[d] = 2 * b[e] * a[e];
}