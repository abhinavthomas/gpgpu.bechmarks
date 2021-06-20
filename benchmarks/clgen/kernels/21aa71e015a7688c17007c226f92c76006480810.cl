__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  if (e >= d) {
    return;
  }

  unsigned int f = e ? 0 : e;
  unsigned int g = b[f];
  unsigned int h = c[e];

  unsigned int i = h + e * (g / g);
  unsigned int j = (e - h) * g;

  a[e] = f;
}