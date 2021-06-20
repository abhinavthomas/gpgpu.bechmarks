__kernel void A(__global float4* a, __global float4* b) {
  int c = get_global_id(0);
  b[c] = a[c] - 1;
  barrier(2);

  if (c == 0) {
    a[c] = 0;
  }
}