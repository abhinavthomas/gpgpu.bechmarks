__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);
  const int g = get_global_id(1);

  if ((e < c) && (g < d)) {
    float h = 0;
    for (int i = 0; i < 9 && h < (e - 1); ++i) {
      float j = c[g];
      c[e] = c[f];
      c[f] = h;
    }
  }
}