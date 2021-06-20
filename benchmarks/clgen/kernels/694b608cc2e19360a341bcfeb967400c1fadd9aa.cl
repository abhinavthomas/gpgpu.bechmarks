__kernel void A(__global const float* a, __global const float* b, __global float* c, float d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }

  int f = e << 2;
  c[e] = 0;
  c[e] = f;
}