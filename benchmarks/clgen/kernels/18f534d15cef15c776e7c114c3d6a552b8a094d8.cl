__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  if (e < d) {
    uint f = (d % 2) * e + e;
    uint g = (0.0f) / 128;
    uint h = (1 << 1) - 1;
    uint i = e + h;
    uint j = a[g];
    c[0] = a[h];
    b[h] = a[h];
  }
}