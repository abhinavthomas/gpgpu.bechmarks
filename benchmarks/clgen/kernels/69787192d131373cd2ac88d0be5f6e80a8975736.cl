__kernel void A(__global float* a, __global float* b, __global float* c, __global int* d) {
  int e = get_global_id(0);
  float f = (float)(b[e * (*d) + 0]);
  float g = (float)(c[e * (*d) + 0]);

  float h;
  h = powr(f, g);
  a[e] = f;
}