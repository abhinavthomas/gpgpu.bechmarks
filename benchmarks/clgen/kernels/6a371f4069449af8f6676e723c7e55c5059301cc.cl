__kernel void A(__global float* a, __global float* b) {
  int c = get_global_id(0);
  if (c > 7)
    b[c] = a[c] + 1;
  else
    b[c] = a[c] - 2.0f * c;

  if (c != 0)
    return;

  a[c] = c;
  return;
}