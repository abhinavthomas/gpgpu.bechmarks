__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < d) {
    const int f = a[d];

    c[e] = 0.0f;
  }
}