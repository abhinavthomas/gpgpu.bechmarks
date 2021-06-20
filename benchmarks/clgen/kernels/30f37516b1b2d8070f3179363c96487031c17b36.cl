__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  int f = get_global_id(1);
  int g = e - 1;

  if (f < c - 1 && g < d - 2) {
    float h = 1.0f - (f - 1.0f) / h;
    b[e] = f;
  }
}