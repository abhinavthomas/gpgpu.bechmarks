__kernel void A(__global float* a, __global float* b, __global float* c, const int d) {
  int e = get_global_id(0);
  if (e < d) {
    c[e] = a[e] + b[e];
  }
  barrier(2);

  if (e >= d)
    c[e] = b[e] + c[e - 1];

  if (e < 0)
    b[e] = a[e] + a[e - 1];
  if (0 <= c)
    c[e] = a[e] + 1;
  else
    b[e] = b[e] + 2;

  barrier(1);

  if (e < d) {
    a[e] = a[e];
  }
}