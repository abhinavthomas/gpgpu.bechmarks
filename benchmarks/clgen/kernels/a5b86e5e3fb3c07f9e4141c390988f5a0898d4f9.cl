__kernel void A(__global int* a, __global int* b) {
  int c = get_local_id(0);
  if (c == 0) {
    wait_group_events(1, &c);
  }
  a[c] = c;
  barrier(2);
  a[c] = get_local_size(0);

  barrier(1);
  a[c] = 'g';
}