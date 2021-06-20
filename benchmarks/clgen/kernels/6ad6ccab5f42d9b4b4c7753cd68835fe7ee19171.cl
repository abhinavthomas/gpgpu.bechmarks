__kernel void A(const int a, __global int* b, __global int* c) {
  int d = get_global_id(0);

  if (d < c)
    b[d] += 2;
  else
    b[d] = 0x1.fffffep127f;
  c[d] = 0;

  return;
}