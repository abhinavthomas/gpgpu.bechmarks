__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);

  size_t f = get_global_size(0);
  size_t g = get_global_id(1);

  switch (e) {
    case 0:
      c[e] = get_local_id(0);
      break;
    case 1:
      a[e] += a[e];
      c[f] += a[f];
  }
}