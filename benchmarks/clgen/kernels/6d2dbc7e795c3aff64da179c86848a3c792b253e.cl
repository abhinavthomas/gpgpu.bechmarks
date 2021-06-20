__kernel void A(__global float* a, __global float* b) {
  int c = get_global_id(0);

  a[c] = b[c] * a[c];

  barrier(1);

  a[c] *= a[c];
}