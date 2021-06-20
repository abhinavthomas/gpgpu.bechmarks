__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e) {
  const int f = get_global_id(0);

  if (f < a) {
    c[f] = 0.0;
  }
  barrier(1);

  wait_group_events(1, &d);
  barrier(1);
}