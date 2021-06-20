__kernel void A(__global float* a, __global float* b, const int c) {
  int d = get_global_id(0);

  if (d < 2) {
    a[d] *= c;

    if (d >= c) {
      return;
    }

    a[d] += c;
  }
}