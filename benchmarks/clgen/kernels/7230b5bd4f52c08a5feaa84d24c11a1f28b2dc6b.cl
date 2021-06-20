__kernel void A(__global float4* a, __global float4* b) {
  int c = get_global_id(0);
  const int d = get_global_id(1);
  const int e = get_global_size(0);
  const int f = get_global_size(1);
  int g = get_global_size(0) - 1;
  int h = h * c + f;

  float4 i = (-0.0f * i + e) * 0.5f;

  a[get_global_id(1) + get_global_id(0)] = h;
}