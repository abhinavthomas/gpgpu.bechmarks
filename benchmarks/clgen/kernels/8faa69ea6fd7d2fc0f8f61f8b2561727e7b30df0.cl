__kernel void A(int a, global float* b, global float* c, global float* d) {
  int e = get_global_id(0);
  int f = get_global_id(1);

  if (f < d - 1 - e) {
    b[f] = -1;
  }
}