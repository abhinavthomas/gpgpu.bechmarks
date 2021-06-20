__kernel void A(__global float* a, __global float* b, __global float* c, float d) {
  int e = get_global_id(0);
  int f = get_global_id(1);

  if (f < d - 1 - e) {
    const float g = 0.31938153f;
    const float h = f * g * g;

    c[e] = 1.0f - g;
  }
}