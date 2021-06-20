__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e < c) {
    c[e] = a[e] * b[e] + b[e];
  }

  barrier(1);

  for (int f = e + 1; f < 10; f++) {
    b[d] = a[get_global_id(0)] + b[d + f];
  }
}