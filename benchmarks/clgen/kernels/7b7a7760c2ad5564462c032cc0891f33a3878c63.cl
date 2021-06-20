__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  int f = d + c;
  for (int g = 0; g < e; ++g) {
    c[g] = a[g] - b[g];
  }
}