__kernel void A(__global float4* a, __global float4* b, __global float* c) {
  size_t d = get_global_id(0);

  a[d] = 0.0;

  if (d == 1) {
    *a = 0.0;
  } else {
    c[d] = 2.0;

    barrier(1);
  }
}