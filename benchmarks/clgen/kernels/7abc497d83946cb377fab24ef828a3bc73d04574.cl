__kernel void A(__global int* a) {
  size_t b = get_global_id(0);
  size_t c = get_global_id(1);

  if (c < b) {
    a[c] = 1;
  }
}