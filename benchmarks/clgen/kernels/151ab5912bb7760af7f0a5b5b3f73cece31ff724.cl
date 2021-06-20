__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  if (e < d) {
    unsigned int f = e + 2;
    a[e] += d;
  }
  barrier(1);
}