__kernel void A(__global char* a, __global char* b) {
  int c = get_global_id(0);
  int d = get_group_id(0);

  b[c] = a[c];

  if (c == 0) {
    *a = 0;

    b[c]++;
  }
}