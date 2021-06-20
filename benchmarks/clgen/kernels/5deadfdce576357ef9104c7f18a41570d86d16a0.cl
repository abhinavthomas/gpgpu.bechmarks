__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  size_t f = get_global_id(0);
  size_t g = get_global_id(1);

  float h = 0.313735130f;
  float i = 0.30f * (1.0f - f) + 0.5f;

  b[f] = h;
}