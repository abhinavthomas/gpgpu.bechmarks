__kernel void A(const int a, __global int* b, __global int* c) {
  int d = get_global_id(0);

  int e, f, g, h;

  uint i = atomic_add(&c[h], 1);

  c[e] = c[f];
}