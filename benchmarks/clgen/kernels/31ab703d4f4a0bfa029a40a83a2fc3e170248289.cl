__kernel void A(__global int* a, __global int* b) {
  const int c = get_global_id(0);
  if (c >= a) {
    return;
  }
  if (c < 128) {
    a[c] = 1;
    b = 0;
  } else {
    a[c] = 1;
  }
}