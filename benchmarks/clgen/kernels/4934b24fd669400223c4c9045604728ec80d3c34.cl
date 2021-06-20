__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  size_t f = get_global_id(0);
  if (f < d) {
    c[f] = 2.0f * c[f] + 0.5f * b[f];
  }
  barrier(2);
  if (f < c) {
    b[get_global_id(0)] = b[get_global_id(0)];
  }
}