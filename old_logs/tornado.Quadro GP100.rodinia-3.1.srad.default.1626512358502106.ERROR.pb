
tornadoQuadro GP100rodinia-3.1"srad*default2ñÁñ˜√ù´/…ƒclCreateCommandQueue ; GPU ; Quadro GP100
clCreateProgramWithSource
clBuildProgram ; program
clCreateKernel ; program ; extract_kernel
clCreateKernel ; program ; prepare_kernel
clCreateKernel ; program ; reduce_kernel
clCreateKernel ; program ; srad_kernel
clCreateKernel ; program ; srad2_kernel
clCreateKernel ; program ; compress_kernel
clCreateBuffer ; 919664 ; NULL ; CL_MEM_READ_WRITE
clCreateBuffer ; 2008 ; NULL ; CL_MEM_READ_WRITE
clCreateBuffer ; 2008 ; NULL ; CL_MEM_READ_WRITE
clCreateBuffer ; 1832 ; NULL ; CL_MEM_READ_WRITE
clCreateBuffer ; 1832 ; NULL ; CL_MEM_READ_WRITE
clCreateBuffer ; 919664 ; NULL ; CL_MEM_READ_WRITE
clCreateBuffer ; 919664 ; NULL ; CL_MEM_READ_WRITE
clCreateBuffer ; 919664 ; NULL ; CL_MEM_READ_WRITE
clCreateBuffer ; 919664 ; NULL ; CL_MEM_READ_WRITE
clCreateBuffer ; 919664 ; NULL ; CL_MEM_READ_WRITE
clCreateBuffer ; 919664 ; NULL ; CL_MEM_READ_WRITE
clCreateBuffer ; 919664 ; NULL ; CL_MEM_READ_WRITE
clEnqueueWriteBuffer ; d_I ; 919664 ; 320576
clEnqueueWriteBuffer ; d_iN ; 2008 ; 19136
clEnqueueWriteBuffer ; d_iS ; 2008 ; 11744
clEnqueueWriteBuffer ; d_jE ; 1832 ; 10368
clEnqueueWriteBuffer ; d_jW ; 1832 ; 11136
clSetKernelArg ; extract_kernel ; 0 ; 8 ; (void *) &Ne
clSetKernelArg ; extract_kernel ; 1 ; 8 ; (void *) &d_I
clEnqueueNDRangeKernel ; extract_kernel ; 230144 ; 256 ; 35744
clSetKernelArg ; prepare_kernel ; 0 ; 8 ; (void *) &Ne
clSetKernelArg ; prepare_kernel ; 1 ; 8 ; (void *) &d_I
clSetKernelArg ; prepare_kernel ; 2 ; 8 ; (void *) &d_sums
clSetKernelArg ; prepare_kernel ; 3 ; 8 ; (void *) &d_sums2
clSetKernelArg ; reduce_kernel ; 0 ; 8 ; (void *) &Ne
clSetKernelArg ; reduce_kernel ; 3 ; 8 ; (void *) &d_sums
clSetKernelArg ; reduce_kernel ; 4 ; 8 ; (void *) &d_sums2
clSetKernelArg ; srad_kernel ; 0 ; 4 ; (void *) &lambda
clSetKernelArg ; srad_kernel ; 1 ; 4 ; (void *) &Nr
clSetKernelArg ; srad_kernel ; 2 ; 4 ; (void *) &Nc
clSetKernelArg ; srad_kernel ; 3 ; 8 ; (void *) &Ne
clSetKernelArg ; srad_kernel ; 4 ; 8 ; (void *) &d_iN
clSetKernelArg ; srad_kernel ; 5 ; 8 ; (void *) &d_iS
clSetKernelArg ; srad_kernel ; 6 ; 8 ; (void *) &d_jE
clSetKernelArg ; srad_kernel ; 7 ; 8 ; (void *) &d_jW
clSetKernelArg ; srad_kernel ; 8 ; 8 ; (void *) &d_dN
clSetKernelArg ; srad_kernel ; 9 ; 8 ; (void *) &d_dS
clSetKernelArg ; srad_kernel ; 10 ; 8 ; (void *) &d_dW
clSetKernelArg ; srad_kernel ; 11 ; 8 ; (void *) &d_dE
clSetKernelArg ; srad_kernel ; 13 ; 8 ; (void *) &d_c
clSetKernelArg ; srad_kernel ; 14 ; 8 ; (void *) &d_I
clSetKernelArg ; srad2_kernel ; 0 ; 4 ; (void *) &lambda
clSetKernelArg ; srad2_kernel ; 1 ; 4 ; (void *) &Nr
clSetKernelArg ; srad2_kernel ; 2 ; 4 ; (void *) &Nc
clSetKernelArg ; srad2_kernel ; 3 ; 8 ; (void *) &Ne
clSetKernelArg ; srad2_kernel ; 4 ; 8 ; (void *) &d_iN
clSetKernelArg ; srad2_kernel ; 5 ; 8 ; (void *) &d_iS
clSetKernelArg ; srad2_kernel ; 6 ; 8 ; (void *) &d_jE
clSetKernelArg ; srad2_kernel ; 7 ; 8 ; (void *) &d_jW
clSetKernelArg ; srad2_kernel ; 8 ; 8 ; (void *) &d_dN
clSetKernelArg ; srad2_kernel ; 9 ; 8 ; (void *) &d_dS
clSetKernelArg ; srad2_kernel ; 10 ; 8 ; (void *) &d_dW
clSetKernelArg ; srad2_kernel ; 11 ; 8 ; (void *) &d_dE
clSetKernelArg ; srad2_kernel ; 12 ; 8 ; (void *) &d_c
clSetKernelArg ; srad2_kernel ; 13 ; 8 ; (void *) &d_I
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 25152
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 25440
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 17600
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 15072
clEnqueueReadBuffer ; d_sums ; 4 ; 16160
clEnqueueReadBuffer ; d_sums2 ; 4 ; 10336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 29888
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 29952
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14816
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22240
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12512
clEnqueueReadBuffer ; d_sums ; 4 ; 18336
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7936
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24992
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28224
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22784
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14176
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12960
clEnqueueReadBuffer ; d_sums ; 4 ; 8192
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7552
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23776
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28288
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13440
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 23008
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14144
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12096
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7264
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23520
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28864
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13632
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21760
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14240
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12608
clEnqueueReadBuffer ; d_sums ; 4 ; 8192
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7200
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23296
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27552
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 20032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22528
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14400
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12224
clEnqueueReadBuffer ; d_sums ; 4 ; 8448
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7328
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23424
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27872
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14720
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21632
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12288
clEnqueueReadBuffer ; d_sums ; 4 ; 8192
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7456
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24352
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27808
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13664
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22720
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14528
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12064
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7392
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23584
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27488
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14304
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22496
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14400
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12256
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7712
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23840
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27808
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14048
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 13216
clEnqueueReadBuffer ; d_sums ; 4 ; 8160
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7264
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23392
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27200
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13760
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 23104
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12192
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7840
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23648
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27712
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22432
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14048
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12000
clEnqueueReadBuffer ; d_sums ; 4 ; 8064
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7616
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23456
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26848
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 19232
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 23008
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14464
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12640
clEnqueueReadBuffer ; d_sums ; 4 ; 8320
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7264
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23680
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27424
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14368
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14176
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11936
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7360
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24096
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26880
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13344
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22464
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14464
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12320
clEnqueueReadBuffer ; d_sums ; 4 ; 8192
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7232
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23392
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27744
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14048
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12096
clEnqueueReadBuffer ; d_sums ; 4 ; 8160
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7616
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23872
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28160
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13728
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22048
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14048
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12608
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7456
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23456
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27904
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13632
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 23360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11872
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7168
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23136
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27424
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13536
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12608
clEnqueueReadBuffer ; d_sums ; 4 ; 8064
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7264
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23392
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27584
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13600
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22592
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14816
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12192
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7104
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23200
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27104
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14368
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21632
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12032
clEnqueueReadBuffer ; d_sums ; 4 ; 8224
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7200
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23680
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26944
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22208
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14656
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11968
clEnqueueReadBuffer ; d_sums ; 4 ; 7968
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7840
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23296
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27488
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22144
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13920
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12704
clEnqueueReadBuffer ; d_sums ; 4 ; 8096
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7232
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24032
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28160
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13664
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21632
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14304
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12512
clEnqueueReadBuffer ; d_sums ; 4 ; 8320
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7264
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23616
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28032
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13280
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22368
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12672
clEnqueueReadBuffer ; d_sums ; 4 ; 8224
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7040
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23200
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28096
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13888
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11808
clEnqueueReadBuffer ; d_sums ; 4 ; 8224
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7296
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23168
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27712
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13248
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 15136
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12192
clEnqueueReadBuffer ; d_sums ; 4 ; 8192
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7584
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23392
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27936
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14144
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22752
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11968
clEnqueueReadBuffer ; d_sums ; 4 ; 8096
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7328
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24000
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27648
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14048
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22400
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14624
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12640
clEnqueueReadBuffer ; d_sums ; 4 ; 8064
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7200
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22880
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27648
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14176
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22144
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12128
clEnqueueReadBuffer ; d_sums ; 4 ; 8000
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7264
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23232
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28384
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13728
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21696
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12448
clEnqueueReadBuffer ; d_sums ; 4 ; 8256
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7296
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23424
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28160
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13344
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22720
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11872
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7328
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24512
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27904
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13632
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22240
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12800
clEnqueueReadBuffer ; d_sums ; 4 ; 8064
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7520
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23360
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27520
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13536
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21792
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 20480
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12704
clEnqueueReadBuffer ; d_sums ; 4 ; 8416
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7616
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23296
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27744
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21248
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12352
clEnqueueReadBuffer ; d_sums ; 4 ; 8000
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7264
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23872
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27680
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13376
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21280
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14560
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11968
clEnqueueReadBuffer ; d_sums ; 4 ; 8064
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7360
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23232
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27520
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14080
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21504
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12192
clEnqueueReadBuffer ; d_sums ; 4 ; 8064
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7424
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23200
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 33312
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13760
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14400
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12384
clEnqueueReadBuffer ; d_sums ; 4 ; 8544
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7424
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23264
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27360
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22688
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14048
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12000
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7296
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23456
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27328
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13504
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22400
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13952
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12192
clEnqueueReadBuffer ; d_sums ; 4 ; 8256
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7200
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23328
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28064
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13440
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21696
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14528
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12032
clEnqueueReadBuffer ; d_sums ; 4 ; 8352
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7200
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24160
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26944
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13952
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22304
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14080
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11904
clEnqueueReadBuffer ; d_sums ; 4 ; 7968
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7552
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24128
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26304
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13728
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14400
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12096
clEnqueueReadBuffer ; d_sums ; 4 ; 8000
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7168
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23744
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27936
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21504
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13888
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12320
clEnqueueReadBuffer ; d_sums ; 4 ; 8672
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7232
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23584
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28128
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21536
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12544
clEnqueueReadBuffer ; d_sums ; 4 ; 8352
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7232
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 25856
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27200
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 23904
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 14528
clEnqueueReadBuffer ; d_sums ; 4 ; 8160
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7328
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24576
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28480
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13312
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 24192
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 15040
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12416
clEnqueueReadBuffer ; d_sums ; 4 ; 9568
clEnqueueReadBuffer ; d_sums2 ; 4 ; 9056
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23584
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27552
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14592
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 23040
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 15424
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 17536
clEnqueueReadBuffer ; d_sums ; 4 ; 8320
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7520
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24192
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 29184
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14976
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21760
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 15008
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 13184
clEnqueueReadBuffer ; d_sums ; 4 ; 9056
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7616
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 25184
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27616
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14400
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22144
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14336
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12800
clEnqueueReadBuffer ; d_sums ; 4 ; 8192
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7296
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23200
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28992
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14560
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22624
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14080
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 14784
clEnqueueReadBuffer ; d_sums ; 4 ; 9600
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7552
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23712
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 30208
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 23104
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 15456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12416
clEnqueueReadBuffer ; d_sums ; 4 ; 8992
clEnqueueReadBuffer ; d_sums2 ; 4 ; 8544
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23232
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27744
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21792
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14368
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12480
clEnqueueReadBuffer ; d_sums ; 4 ; 8032
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7168
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23104
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27840
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13920
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13920
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12096
clEnqueueReadBuffer ; d_sums ; 4 ; 8224
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7168
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23296
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27008
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13792
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14464
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 13024
clEnqueueReadBuffer ; d_sums ; 4 ; 8832
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7200
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23168
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27296
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14240
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21728
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14176
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12256
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7456
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23616
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27168
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13184
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22496
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14592
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12320
clEnqueueReadBuffer ; d_sums ; 4 ; 8224
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7264
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23072
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27744
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21760
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14240
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11904
clEnqueueReadBuffer ; d_sums ; 4 ; 8064
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7200
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23008
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27328
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14240
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21472
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12864
clEnqueueReadBuffer ; d_sums ; 4 ; 8160
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7424
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23136
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27584
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13696
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22656
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11968
clEnqueueReadBuffer ; d_sums ; 4 ; 8160
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7264
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23040
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28736
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13696
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21792
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12544
clEnqueueReadBuffer ; d_sums ; 4 ; 8064
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7392
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22976
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27520
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13472
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22336
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14528
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11936
clEnqueueReadBuffer ; d_sums ; 4 ; 8480
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7232
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23584
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26880
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21472
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14304
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11936
clEnqueueReadBuffer ; d_sums ; 4 ; 8064
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7360
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24032
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27168
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21632
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14656
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12064
clEnqueueReadBuffer ; d_sums ; 4 ; 8096
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7136
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23072
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27712
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13952
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21888
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14144
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11776
clEnqueueReadBuffer ; d_sums ; 4 ; 8224
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7296
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23424
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28480
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 19008
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12192
clEnqueueReadBuffer ; d_sums ; 4 ; 8736
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7488
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23616
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27584
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13536
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22304
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13888
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11936
clEnqueueReadBuffer ; d_sums ; 4 ; 8224
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7328
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23680
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27904
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13280
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22592
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14144
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11872
clEnqueueReadBuffer ; d_sums ; 4 ; 8096
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7200
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23200
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27712
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13728
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21696
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14432
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12224
clEnqueueReadBuffer ; d_sums ; 4 ; 8096
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7616
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23552
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27136
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14144
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12320
clEnqueueReadBuffer ; d_sums ; 4 ; 8256
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7232
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23648
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27200
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13472
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21792
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14720
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12288
clEnqueueReadBuffer ; d_sums ; 4 ; 8032
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7552
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23008
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27008
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13920
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12000
clEnqueueReadBuffer ; d_sums ; 4 ; 8000
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7136
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23200
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28224
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13408
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 27296
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14304
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12448
clEnqueueReadBuffer ; d_sums ; 4 ; 8288
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7328
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23488
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27904
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13600
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12256
clEnqueueReadBuffer ; d_sums ; 4 ; 8192
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7264
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23232
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28512
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13664
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21440
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14048
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12928
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7360
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23264
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27840
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13792
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14400
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12000
clEnqueueReadBuffer ; d_sums ; 4 ; 8032
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7456
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 27840
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27552
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21792
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14304
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12032
clEnqueueReadBuffer ; d_sums ; 4 ; 8576
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7200
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24032
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27392
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21728
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14976
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11840
clEnqueueReadBuffer ; d_sums ; 4 ; 8128
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7264
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23680
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27872
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21728
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12512
clEnqueueReadBuffer ; d_sums ; 4 ; 8000
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7200
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23136
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28352
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13888
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21600
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14944
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12512
clEnqueueReadBuffer ; d_sums ; 4 ; 8672
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7360
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23584
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26560
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22208
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13888
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11840
clEnqueueReadBuffer ; d_sums ; 4 ; 8768
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7584
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23616
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27936
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13696
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13888
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11840
clEnqueueReadBuffer ; d_sums ; 4 ; 8096
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7296
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23680
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27712
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13184
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21376
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14400
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12032
clEnqueueReadBuffer ; d_sums ; 4 ; 8160
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7392
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22976
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27712
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14080
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21504
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14592
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12096
clEnqueueReadBuffer ; d_sums ; 4 ; 8256
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7392
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23776
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27616
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14688
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12032
clEnqueueReadBuffer ; d_sums ; 4 ; 8320
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7232
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23264
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27360
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22368
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14144
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11968
clEnqueueReadBuffer ; d_sums ; 4 ; 8032
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7808
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23456
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28480
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13376
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21696
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 18848
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12640
clEnqueueReadBuffer ; d_sums ; 4 ; 8256
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7296
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23648
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27232
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13312
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 23136
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13920
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12064
clEnqueueReadBuffer ; d_sums ; 4 ; 8480
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7232
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23584
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28256
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13408
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22080
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13952
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12992
clEnqueueReadBuffer ; d_sums ; 4 ; 8192
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7104
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23168
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25728
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12416
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21120
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13120
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10656
clEnqueueReadBuffer ; d_sums ; 4 ; 7264
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6560
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21952
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25696
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13248
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20960
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12576
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10528
clEnqueueReadBuffer ; d_sums ; 4 ; 7296
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6656
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22304
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26624
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12320
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13344
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10688
clEnqueueReadBuffer ; d_sums ; 4 ; 7232
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6496
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22016
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26240
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20512
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10912
clEnqueueReadBuffer ; d_sums ; 4 ; 7168
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6816
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21792
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26848
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12672
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20672
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12576
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10976
clEnqueueReadBuffer ; d_sums ; 4 ; 7264
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6464
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21664
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26208
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12512
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12864
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10688
clEnqueueReadBuffer ; d_sums ; 4 ; 7488
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6560
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21792
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26912
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12352
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20704
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13056
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11136
clEnqueueReadBuffer ; d_sums ; 4 ; 7168
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6688
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22624
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26368
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12512
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20704
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13376
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10848
clEnqueueReadBuffer ; d_sums ; 4 ; 7232
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6432
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22016
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26048
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12960
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20768
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10720
clEnqueueReadBuffer ; d_sums ; 4 ; 7104
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6720
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22240
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27040
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12160
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 25184
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13408
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10720
clEnqueueReadBuffer ; d_sums ; 4 ; 7520
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6464
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22080
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25920
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12992
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20288
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12800
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10944
clEnqueueReadBuffer ; d_sums ; 4 ; 7232
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6624
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21568
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27264
clSetKernelArg ; compress_kernel ; 0 ; 8 ; (void *) &Ne
clSetKernelArg ; compress_kernel ; 1 ; 8 ; (void *) &d_I
clEnqueueNDRangeKernel ; compress_kernel ; 230144 ; 256 ; 13760
clEnqueueReadBuffer ; d_I ; 919664 ; 145984"ÔWG size of kernel = 256 
Platform: NVIDIA Corporation
Device: Quadro GP100
-----OpenCL Compiler Output-----
--------------------------------
max # of workgroups = 899, # of threads/workgroup = 256 (ensure that device can handle)
Iterations Progress: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 
The file was not created/opened for writing
Time spent in different stages of the application:
0.000007000000 s, 0.004781420808 % : READ COMMAND LINE PARAMETERS
0.009618000127 s, 6.569672584534 % : READ AND RESIZE INPUT IMAGE FROM FILE
0.000002000000 s, 0.001366120297 % : SETUP
0.136764004827 s, 93.418029785156 % : KERNEL
0.000009000000 s, 0.006147541106 % : WRITE OUTPUT IMAGE TO FILE
0.000153000001 s, 0.104508198798 % : FREE MEMORY
Total time:
0.146400004625 s
* 2$
extract_kernelÄÜÄ Ä√¡(Äü0†ó2$
prepare_kernelÄÜÄ Ä√¡(Äü0¿ƒ2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡∆2"
reduce_kernelÄÄ Ä√¡(Äü0¿â2!
reduce_kernelÄÄ Ä√¡(Äü0‡u2!
srad_kernelÄÜÄ Ä√¡(Äü0¿È2"
srad2_kernelÄÜÄ Ä√¡(Äü0ÄÍ2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡s2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡≠2!
reduce_kernelÄÄ Ä√¡(Äü0†n2!
reduce_kernelÄÄ Ä√¡(Äü0‡a2!
srad_kernelÄÜÄ Ä√¡(Äü0†√2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿‹2#
prepare_kernelÄÜÄ Ä√¡(Äü0†l2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä≤2!
reduce_kernelÄÄ Ä√¡(Äü0‡n2!
reduce_kernelÄÄ Ä√¡(Äü0†e2!
srad_kernelÄÜÄ Ä√¡(Äü0‡π2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä›2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äi2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡≥2!
reduce_kernelÄÄ Ä√¡(Äü0¿n2!
reduce_kernelÄÄ Ä√¡(Äü0¿^2!
srad_kernelÄÜÄ Ä√¡(Äü0‡∑2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿·2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿j2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä™2!
reduce_kernelÄÄ Ä√¡(Äü0†o2!
reduce_kernelÄÄ Ä√¡(Äü0¿b2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä∂2"
srad2_kernelÄÜÄ Ä√¡(Äü0†◊2$
prepare_kernelÄÜÄ Ä√¡(Äü0¿ú2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä∞2!
reduce_kernelÄÄ Ä√¡(Äü0¿p2!
reduce_kernelÄÄ Ä√¡(Äü0¿_2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä∑2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡Ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äs2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä©2!
reduce_kernelÄÄ Ä√¡(Äü0†n2!
reduce_kernelÄÄ Ä√¡(Äü0Ä`2!
srad_kernelÄÜÄ Ä√¡(Äü0†æ2"
srad2_kernelÄÜÄ Ä√¡(Äü0†Ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡j2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿±2!
reduce_kernelÄÄ Ä√¡(Äü0¿q2!
reduce_kernelÄÄ Ä√¡(Äü0†^2!
srad_kernelÄÜÄ Ä√¡(Äü0†∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡÷2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡o2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡Ø2!
reduce_kernelÄÄ Ä√¡(Äü0¿p2!
reduce_kernelÄÄ Ä√¡(Äü0‡_2!
srad_kernelÄÜÄ Ä√¡(Äü0†∫2"
srad2_kernelÄÜÄ Ä√¡(Äü0†Ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äl2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡¨2!
reduce_kernelÄÄ Ä√¡(Äü0‡m2!
reduce_kernelÄÄ Ä√¡(Äü0†g2!
srad_kernelÄÜÄ Ä√¡(Äü0‡∂2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿‘2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿k2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿¥2!
reduce_kernelÄÄ Ä√¡(Äü0¿m2!
reduce_kernelÄÄ Ä√¡(Äü0†_2!
srad_kernelÄÜÄ Ä√¡(Äü0‡∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0†l2#
reduce_kernelÄÜÄ Ä√¡(Äü0†Ø2!
reduce_kernelÄÄ Ä√¡(Äü0‡m2!
reduce_kernelÄÄ Ä√¡(Äü0‡]2!
srad_kernelÄÜÄ Ä√¡(Äü0†∑2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡—2$
prepare_kernelÄÜÄ Ä√¡(Äü0†ñ2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡≥2!
reduce_kernelÄÄ Ä√¡(Äü0Äq2!
reduce_kernelÄÄ Ä√¡(Äü0‡b2!
srad_kernelÄÜÄ Ä√¡(Äü0Äπ2"
srad2_kernelÄÜÄ Ä√¡(Äü0†÷2#
prepare_kernelÄÜÄ Ä√¡(Äü0†p2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿™2!
reduce_kernelÄÄ Ä√¡(Äü0‡n2!
reduce_kernelÄÄ Ä√¡(Äü0†]2!
srad_kernelÄÜÄ Ä√¡(Äü0†º2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä“2#
prepare_kernelÄÜÄ Ä√¡(Äü0†h2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿Ø2!
reduce_kernelÄÄ Ä√¡(Äü0Äq2!
reduce_kernelÄÄ Ä√¡(Äü0†`2!
srad_kernelÄÜÄ Ä√¡(Äü0‡∂2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡m2#
reduce_kernelÄÜÄ Ä√¡(Äü0ÄÆ2!
reduce_kernelÄÄ Ä√¡(Äü0¿m2!
reduce_kernelÄÄ Ä√¡(Äü0¿^2!
srad_kernelÄÜÄ Ä√¡(Äü0¿∫2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä‹2#
prepare_kernelÄÜÄ Ä√¡(Äü0†k2#
reduce_kernelÄÜÄ Ä√¡(Äü0†¨2!
reduce_kernelÄÄ Ä√¡(Äü0‡m2!
reduce_kernelÄÄ Ä√¡(Äü0¿b2!
srad_kernelÄÜÄ Ä√¡(Äü0†∑2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä⁄2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿j2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿∂2!
reduce_kernelÄÄ Ä√¡(Äü0†m2!
reduce_kernelÄÄ Ä√¡(Äü0‡\2!
srad_kernelÄÜÄ Ä√¡(Äü0‡¥2"
srad2_kernelÄÜÄ Ä√¡(Äü0†÷2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡i2#
reduce_kernelÄÜÄ Ä√¡(Äü0ÄÆ2!
reduce_kernelÄÄ Ä√¡(Äü0¿o2!
reduce_kernelÄÄ Ä√¡(Äü0¿b2!
srad_kernelÄÜÄ Ä√¡(Äü0‡∂2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿◊2#
prepare_kernelÄÜÄ Ä√¡(Äü0†j2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿∞2!
reduce_kernelÄÄ Ä√¡(Äü0‡s2!
reduce_kernelÄÄ Ä√¡(Äü0†_2!
srad_kernelÄÜÄ Ä√¡(Äü0†µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡”2#
prepare_kernelÄÜÄ Ä√¡(Äü0†p2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä©2!
reduce_kernelÄÄ Ä√¡(Äü0¿m2!
reduce_kernelÄÄ Ä√¡(Äü0Ä^2!
srad_kernelÄÜÄ Ä√¡(Äü0Äπ2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿“2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äl2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿≠2!
reduce_kernelÄÄ Ä√¡(Äü0¿r2!
reduce_kernelÄÄ Ä√¡(Äü0¿]2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä∂2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡÷2#
prepare_kernelÄÜÄ Ä√¡(Äü0†m2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä≠2!
reduce_kernelÄÄ Ä√¡(Äü0‡l2!
reduce_kernelÄÄ Ä√¡(Äü0†c2!
srad_kernelÄÜÄ Ä√¡(Äü0‡ª2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä‹2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡j2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä©2!
reduce_kernelÄÄ Ä√¡(Äü0‡o2!
reduce_kernelÄÄ Ä√¡(Äü0‡a2!
srad_kernelÄÜÄ Ä√¡(Äü0¿∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä€2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡g2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡Æ2!
reduce_kernelÄÄ Ä√¡(Äü0Äl2!
reduce_kernelÄÄ Ä√¡(Äü0Äc2!
srad_kernelÄÜÄ Ä√¡(Äü0†µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿€2#
prepare_kernelÄÜÄ Ä√¡(Äü0†l2#
reduce_kernelÄÜÄ Ä√¡(Äü0ÄÆ2!
reduce_kernelÄÄ Ä√¡(Äü0¿l2!
reduce_kernelÄÄ Ä√¡(Äü0†\2!
srad_kernelÄÜÄ Ä√¡(Äü0Äµ2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿g2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡´2!
reduce_kernelÄÄ Ä√¡(Äü0†v2!
reduce_kernelÄÄ Ä√¡(Äü0†_2!
srad_kernelÄÜÄ Ä√¡(Äü0‡∂2"
srad2_kernelÄÜÄ Ä√¡(Äü0†⁄2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿n2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡±2!
reduce_kernelÄÄ Ä√¡(Äü0¿o2!
reduce_kernelÄÄ Ä√¡(Äü0¿]2!
srad_kernelÄÜÄ Ä√¡(Äü0¿ª2"
srad2_kernelÄÜÄ Ä√¡(Äü0Äÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡m2#
reduce_kernelÄÜÄ Ä√¡(Äü0ÄØ2!
reduce_kernelÄÄ Ä√¡(Äü0†r2!
reduce_kernelÄÄ Ä√¡(Äü0‡b2!
srad_kernelÄÜÄ Ä√¡(Äü0‡≤2"
srad2_kernelÄÜÄ Ä√¡(Äü0Äÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡n2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä≠2!
reduce_kernelÄÄ Ä√¡(Äü0†n2!
reduce_kernelÄÄ Ä√¡(Äü0‡^2!
srad_kernelÄÜÄ Ä√¡(Äü0¿µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡›2#
prepare_kernelÄÜÄ Ä√¡(Äü0†k2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿©2!
reduce_kernelÄÄ Ä√¡(Äü0†n2!
reduce_kernelÄÄ Ä√¡(Äü0†a2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä∑2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä‹2#
prepare_kernelÄÜÄ Ä√¡(Äü0†h2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿±2!
reduce_kernelÄÄ Ä√¡(Äü0†m2!
reduce_kernelÄÄ Ä√¡(Äü0‡\2!
srad_kernelÄÜÄ Ä√¡(Äü0¿ø2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä⁄2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿j2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡≠2!
reduce_kernelÄÄ Ä√¡(Äü0¿o2!
reduce_kernelÄÄ Ä√¡(Äü0Äd2!
srad_kernelÄÜÄ Ä√¡(Äü0¿∂2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä◊2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡i2#
reduce_kernelÄÜÄ Ä√¡(Äü0†™2"
reduce_kernelÄÄ Ä√¡(Äü0Ä†2!
reduce_kernelÄÄ Ä√¡(Äü0†c2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä∂2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0†m2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä¶2!
reduce_kernelÄÄ Ä√¡(Äü0†l2!
reduce_kernelÄÄ Ä√¡(Äü0¿`2!
srad_kernelÄÜÄ Ä√¡(Äü0¿∫2"
srad2_kernelÄÜÄ Ä√¡(Äü0†ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿h2#
reduce_kernelÄÜÄ Ä√¡(Äü0†¶2!
reduce_kernelÄÄ Ä√¡(Äü0‡q2!
reduce_kernelÄÄ Ä√¡(Äü0¿]2!
srad_kernelÄÜÄ Ä√¡(Äü0¿µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä◊2#
prepare_kernelÄÜÄ Ä√¡(Äü0Än2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä®2!
reduce_kernelÄÄ Ä√¡(Äü0¿m2!
reduce_kernelÄÄ Ä√¡(Äü0†_2!
srad_kernelÄÜÄ Ä√¡(Äü0†µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0†Ñ2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿k2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡´2!
reduce_kernelÄÄ Ä√¡(Äü0¿p2!
reduce_kernelÄÄ Ä√¡(Äü0‡`2!
srad_kernelÄÜÄ Ä√¡(Äü0‡µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡’2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äj2#
reduce_kernelÄÜÄ Ä√¡(Äü0†±2!
reduce_kernelÄÄ Ä√¡(Äü0‡m2!
reduce_kernelÄÄ Ä√¡(Äü0‡]2!
srad_kernelÄÜÄ Ä√¡(Äü0†∑2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿’2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿i2#
reduce_kernelÄÜÄ Ä√¡(Äü0ÄØ2!
reduce_kernelÄÄ Ä√¡(Äü0Äm2!
reduce_kernelÄÄ Ä√¡(Äü0†_2!
srad_kernelÄÜÄ Ä√¡(Äü0†∂2"
srad2_kernelÄÜÄ Ä√¡(Äü0†€2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äi2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿©2!
reduce_kernelÄÄ Ä√¡(Äü0¿q2!
reduce_kernelÄÄ Ä√¡(Äü0Ä^2!
srad_kernelÄÜÄ Ä√¡(Äü0‡º2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿“2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äm2#
reduce_kernelÄÜÄ Ä√¡(Äü0†Æ2!
reduce_kernelÄÄ Ä√¡(Äü0Än2!
reduce_kernelÄÄ Ä√¡(Äü0Ä]2!
srad_kernelÄÜÄ Ä√¡(Äü0¿º2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿Õ2#
prepare_kernelÄÜÄ Ä√¡(Äü0†k2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡¨2!
reduce_kernelÄÄ Ä√¡(Äü0¿p2!
reduce_kernelÄÄ Ä√¡(Äü0¿^2!
srad_kernelÄÜÄ Ä√¡(Äü0¿π2"
srad2_kernelÄÜÄ Ä√¡(Äü0†⁄2#
prepare_kernelÄÜÄ Ä√¡(Äü0†m2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä®2!
reduce_kernelÄÄ Ä√¡(Äü0¿l2!
reduce_kernelÄÄ Ä√¡(Äü0†`2!
srad_kernelÄÜÄ Ä√¡(Äü0†∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡€2#
prepare_kernelÄÜÄ Ä√¡(Äü0†n2#
reduce_kernelÄÜÄ Ä√¡(Äü0†®2!
reduce_kernelÄÄ Ä√¡(Äü0¿m2!
reduce_kernelÄÄ Ä√¡(Äü0Äb2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä 2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿‘2#
prepare_kernelÄÜÄ Ä√¡(Äü0†l2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡∫2!
reduce_kernelÄÄ Ä√¡(Äü0¿m2!
reduce_kernelÄÄ Ä√¡(Äü0¿q2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä¿2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿ﬁ2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äh2#
reduce_kernelÄÜÄ Ä√¡(Äü0ÄΩ2!
reduce_kernelÄÄ Ä√¡(Äü0¿u2!
reduce_kernelÄÄ Ä√¡(Äü0Äa2!
srad_kernelÄÜÄ Ä√¡(Äü0†∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0†◊2#
prepare_kernelÄÜÄ Ä√¡(Äü0Är2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä¥2!
reduce_kernelÄÄ Ä√¡(Äü0¿x2"
reduce_kernelÄÄ Ä√¡(Äü0Äâ2!
srad_kernelÄÜÄ Ä√¡(Äü0ÄΩ2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä‰2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äu2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä™2!
reduce_kernelÄÄ Ä√¡(Äü0†u2!
reduce_kernelÄÄ Ä√¡(Äü0Äg2!
srad_kernelÄÜÄ Ä√¡(Äü0‡ƒ2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡◊2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿p2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä≠2!
reduce_kernelÄÄ Ä√¡(Äü0Äp2!
reduce_kernelÄÄ Ä√¡(Äü0Äd2!
srad_kernelÄÜÄ Ä√¡(Äü0†µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿‚2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡q2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡∞2!
reduce_kernelÄÄ Ä√¡(Äü0Än2!
reduce_kernelÄÄ Ä√¡(Äü0¿s2!
srad_kernelÄÜÄ Ä√¡(Äü0†π2"
srad2_kernelÄÜÄ Ä√¡(Äü0ÄÏ2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿o2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿¥2!
reduce_kernelÄÄ Ä√¡(Äü0‡x2!
reduce_kernelÄÄ Ä√¡(Äü0Äa2!
srad_kernelÄÜÄ Ä√¡(Äü0¿µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äj2#
reduce_kernelÄÜÄ Ä√¡(Äü0†™2!
reduce_kernelÄÄ Ä√¡(Äü0†p2!
reduce_kernelÄÄ Ä√¡(Äü0¿a2!
srad_kernelÄÜÄ Ä√¡(Äü0¿¥2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿Ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡l2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿®2!
reduce_kernelÄÄ Ä√¡(Äü0‡l2!
reduce_kernelÄÄ Ä√¡(Äü0¿^2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä∂2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä”2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡k2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡´2!
reduce_kernelÄÄ Ä√¡(Äü0Äq2!
reduce_kernelÄÄ Ä√¡(Äü0‡e2!
srad_kernelÄÜÄ Ä√¡(Äü0Äµ2"
srad2_kernelÄÜÄ Ä√¡(Äü0†’2#
prepare_kernelÄÜÄ Ä√¡(Äü0†o2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡©2!
reduce_kernelÄÄ Ä√¡(Äü0‡n2!
reduce_kernelÄÄ Ä√¡(Äü0‡_2!
srad_kernelÄÜÄ Ä√¡(Äü0¿∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0†‘2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äg2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡Ø2!
reduce_kernelÄÄ Ä√¡(Äü0Är2!
reduce_kernelÄÄ Ä√¡(Äü0†`2!
srad_kernelÄÜÄ Ä√¡(Äü0†¥2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿m2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä™2!
reduce_kernelÄÄ Ä√¡(Äü0†o2!
reduce_kernelÄÄ Ä√¡(Äü0Ä]2!
srad_kernelÄÜÄ Ä√¡(Äü0‡≥2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿’2#
prepare_kernelÄÜÄ Ä√¡(Äü0†o2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡ß2!
reduce_kernelÄÄ Ä√¡(Äü0†l2!
reduce_kernelÄÄ Ä√¡(Äü0¿d2!
srad_kernelÄÜÄ Ä√¡(Äü0‡¥2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿◊2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äk2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä±2!
reduce_kernelÄÄ Ä√¡(Äü0†n2!
reduce_kernelÄÄ Ä√¡(Äü0¿]2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä¥2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿‡2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äk2#
reduce_kernelÄÜÄ Ä√¡(Äü0†™2!
reduce_kernelÄÄ Ä√¡(Äü0†m2!
reduce_kernelÄÄ Ä√¡(Äü0Äb2!
srad_kernelÄÜÄ Ä√¡(Äü0¿≥2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä◊2#
prepare_kernelÄÜÄ Ä√¡(Äü0†i2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿Æ2!
reduce_kernelÄÄ Ä√¡(Äü0¿q2!
reduce_kernelÄÄ Ä√¡(Äü0†]2!
srad_kernelÄÜÄ Ä√¡(Äü0†∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä“2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿m2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡ß2!
reduce_kernelÄÄ Ä√¡(Äü0‡o2!
reduce_kernelÄÄ Ä√¡(Äü0†]2!
srad_kernelÄÜÄ Ä√¡(Äü0‡ª2"
srad2_kernelÄÜÄ Ä√¡(Äü0†‘2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äj2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä©2!
reduce_kernelÄÄ Ä√¡(Äü0¿r2!
reduce_kernelÄÄ Ä√¡(Äü0†^2!
srad_kernelÄÜÄ Ä√¡(Äü0†¥2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äm2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä´2!
reduce_kernelÄÄ Ä√¡(Äü0¿n2!
reduce_kernelÄÄ Ä√¡(Äü0Ä\2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä∑2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿ﬁ2$
prepare_kernelÄÜÄ Ä√¡(Äü0¿î2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿™2!
reduce_kernelÄÄ Ä√¡(Äü0†n2!
reduce_kernelÄÄ Ä√¡(Äü0†_2!
srad_kernelÄÜÄ Ä√¡(Äü0¿∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿◊2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡i2#
reduce_kernelÄÜÄ Ä√¡(Äü0†Æ2!
reduce_kernelÄÄ Ä√¡(Äü0¿l2!
reduce_kernelÄÄ Ä√¡(Äü0†]2!
srad_kernelÄÜÄ Ä√¡(Äü0Äπ2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä⁄2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡g2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿∞2!
reduce_kernelÄÄ Ä√¡(Äü0¿n2!
reduce_kernelÄÄ Ä√¡(Äü0‡\2!
srad_kernelÄÜÄ Ä√¡(Äü0†µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0†k2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿©2!
reduce_kernelÄÄ Ä√¡(Äü0‡p2!
reduce_kernelÄÄ Ä√¡(Äü0¿_2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä‘2#
prepare_kernelÄÜÄ Ä√¡(Äü0†n2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡™2!
reduce_kernelÄÄ Ä√¡(Äü0¿n2!
reduce_kernelÄÄ Ä√¡(Äü0†`2!
srad_kernelÄÜÄ Ä√¡(Äü0‡∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿‘2#
prepare_kernelÄÜÄ Ä√¡(Äü0†i2#
reduce_kernelÄÜÄ Ä√¡(Äü0†™2!
reduce_kernelÄÄ Ä√¡(Äü0Äs2!
reduce_kernelÄÄ Ä√¡(Äü0Ä`2!
srad_kernelÄÜÄ Ä√¡(Äü0‡≥2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä”2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡l2#
reduce_kernelÄÜÄ Ä√¡(Äü0ÄÆ2!
reduce_kernelÄÄ Ä√¡(Äü0¿m2!
reduce_kernelÄÄ Ä√¡(Äü0‡]2!
srad_kernelÄÜÄ Ä√¡(Äü0†µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿‹2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡h2#
reduce_kernelÄÜÄ Ä√¡(Äü0†’2!
reduce_kernelÄÄ Ä√¡(Äü0‡o2!
reduce_kernelÄÄ Ä√¡(Äü0†a2!
srad_kernelÄÜÄ Ä√¡(Äü0¿∑2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä⁄2#
prepare_kernelÄÜÄ Ä√¡(Äü0†j2#
reduce_kernelÄÜÄ Ä√¡(Äü0ÄÆ2!
reduce_kernelÄÄ Ä√¡(Äü0†m2!
reduce_kernelÄÄ Ä√¡(Äü0‡_2!
srad_kernelÄÜÄ Ä√¡(Äü0¿µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡ﬁ2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡j2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿ß2!
reduce_kernelÄÄ Ä√¡(Äü0‡m2!
reduce_kernelÄÄ Ä√¡(Äü0Äe2!
srad_kernelÄÜÄ Ä√¡(Äü0‡µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿Ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡k2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä¨2!
reduce_kernelÄÄ Ä√¡(Äü0¿p2!
reduce_kernelÄÄ Ä√¡(Äü0‡]2!
srad_kernelÄÜÄ Ä√¡(Äü0¿Ÿ2"
srad2_kernelÄÜÄ Ä√¡(Äü0†◊2#
prepare_kernelÄÜÄ Ä√¡(Äü0†n2#
reduce_kernelÄÜÄ Ä√¡(Äü0†™2!
reduce_kernelÄÄ Ä√¡(Äü0‡o2!
reduce_kernelÄÄ Ä√¡(Äü0Ä^2!
srad_kernelÄÜÄ Ä√¡(Äü0‡ª2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä÷2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äj2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡©2!
reduce_kernelÄÄ Ä√¡(Äü0Äu2!
reduce_kernelÄÄ Ä√¡(Äü0¿\2!
srad_kernelÄÜÄ Ä√¡(Äü0Äπ2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡Ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0†l2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡©2!
reduce_kernelÄÄ Ä√¡(Äü0†m2!
reduce_kernelÄÄ Ä√¡(Äü0‡a2!
srad_kernelÄÜÄ Ä√¡(Äü0‡¥2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿›2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿l2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡®2!
reduce_kernelÄÄ Ä√¡(Äü0‡t2!
reduce_kernelÄÄ Ä√¡(Äü0‡a2!
srad_kernelÄÜÄ Ä√¡(Äü0†∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿œ2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äj2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿≠2!
reduce_kernelÄÄ Ä√¡(Äü0¿l2!
reduce_kernelÄÄ Ä√¡(Äü0¿\2!
srad_kernelÄÜÄ Ä√¡(Äü0¿∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0†⁄2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äk2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿®2!
reduce_kernelÄÄ Ä√¡(Äü0¿l2!
reduce_kernelÄÄ Ä√¡(Äü0¿\2!
srad_kernelÄÜÄ Ä√¡(Äü0Äπ2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äg2#
reduce_kernelÄÜÄ Ä√¡(Äü0Äß2!
reduce_kernelÄÄ Ä√¡(Äü0¿p2!
reduce_kernelÄÄ Ä√¡(Äü0Ä^2!
srad_kernelÄÜÄ Ä√¡(Äü0¿≥2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿ÿ2#
prepare_kernelÄÜÄ Ä√¡(Äü0Än2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä®2!
reduce_kernelÄÄ Ä√¡(Äü0Är2!
reduce_kernelÄÄ Ä√¡(Äü0¿^2!
srad_kernelÄÜÄ Ä√¡(Äü0‡π2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡◊2#
prepare_kernelÄÜÄ Ä√¡(Äü0†l2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä¨2!
reduce_kernelÄÄ Ä√¡(Äü0‡r2!
reduce_kernelÄÄ Ä√¡(Äü0Ä^2!
srad_kernelÄÜÄ Ä√¡(Äü0‡µ2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡’2#
prepare_kernelÄÜÄ Ä√¡(Äü0†m2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡Æ2!
reduce_kernelÄÄ Ä√¡(Äü0¿n2!
reduce_kernelÄÄ Ä√¡(Äü0¿]2!
srad_kernelÄÜÄ Ä√¡(Äü0†∑2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿ﬁ2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿h2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿©2"
reduce_kernelÄÄ Ä√¡(Äü0†ì2!
reduce_kernelÄÄ Ä√¡(Äü0‡b2!
srad_kernelÄÜÄ Ä√¡(Äü0‡∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡‘2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äh2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡¥2!
reduce_kernelÄÄ Ä√¡(Äü0‡l2!
reduce_kernelÄÄ Ä√¡(Äü0†^2!
srad_kernelÄÜÄ Ä√¡(Äü0†∏2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡‹2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡h2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿¨2!
reduce_kernelÄÄ Ä√¡(Äü0Äm2!
reduce_kernelÄÄ Ä√¡(Äü0¿e2!
srad_kernelÄÜÄ Ä√¡(Äü0Äµ2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä…2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äa2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä•2!
reduce_kernelÄÄ Ä√¡(Äü0¿f2!
reduce_kernelÄÄ Ä√¡(Äü0†S2!
srad_kernelÄÜÄ Ä√¡(Äü0¿´2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡»2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿g2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡£2!
reduce_kernelÄÄ Ä√¡(Äü0†b2!
reduce_kernelÄÄ Ä√¡(Äü0†R2!
srad_kernelÄÜÄ Ä√¡(Äü0†Æ2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä–2#
prepare_kernelÄÜÄ Ä√¡(Äü0†`2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡¢2!
reduce_kernelÄÄ Ä√¡(Äü0†h2!
reduce_kernelÄÄ Ä√¡(Äü0¿S2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä¨2"
srad2_kernelÄÜÄ Ä√¡(Äü0ÄÕ2#
prepare_kernelÄÜÄ Ä√¡(Äü0†d2#
reduce_kernelÄÜÄ Ä√¡(Äü0††2!
reduce_kernelÄÄ Ä√¡(Äü0¿c2!
reduce_kernelÄÄ Ä√¡(Äü0†U2!
srad_kernelÄÜÄ Ä√¡(Äü0†™2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡—2#
prepare_kernelÄÜÄ Ä√¡(Äü0Äc2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿°2!
reduce_kernelÄÄ Ä√¡(Äü0†b2!
reduce_kernelÄÄ Ä√¡(Äü0‡U2!
srad_kernelÄÜÄ Ä√¡(Äü0†©2"
srad2_kernelÄÜÄ Ä√¡(Äü0‡Ã2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡a2#
reduce_kernelÄÜÄ Ä√¡(Äü0Ä¨2!
reduce_kernelÄÄ Ä√¡(Äü0¿d2!
reduce_kernelÄÄ Ä√¡(Äü0¿S2!
srad_kernelÄÜÄ Ä√¡(Äü0†™2"
srad2_kernelÄÜÄ Ä√¡(Äü0†“2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿`2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡°2!
reduce_kernelÄÄ Ä√¡(Äü0Äf2!
reduce_kernelÄÄ Ä√¡(Äü0ÄW2!
srad_kernelÄÜÄ Ä√¡(Äü0‡∞2"
srad2_kernelÄÜÄ Ä√¡(Äü0ÄŒ2#
prepare_kernelÄÜÄ Ä√¡(Äü0‡a2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡°2!
reduce_kernelÄÄ Ä√¡(Äü0¿h2!
reduce_kernelÄÄ Ä√¡(Äü0‡T2!
srad_kernelÄÜÄ Ä√¡(Äü0Ä¨2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿À2#
prepare_kernelÄÜÄ Ä√¡(Äü0†e2#
reduce_kernelÄÜÄ Ä√¡(Äü0†¢2!
reduce_kernelÄÄ Ä√¡(Äü0¿c2!
reduce_kernelÄÄ Ä√¡(Äü0‡S2!
srad_kernelÄÜÄ Ä√¡(Äü0‡≠2"
srad2_kernelÄÜÄ Ä√¡(Äü0†”2#
prepare_kernelÄÜÄ Ä√¡(Äü0Ä_2#
reduce_kernelÄÜÄ Ä√¡(Äü0‡ƒ2!
reduce_kernelÄÄ Ä√¡(Äü0‡h2!
reduce_kernelÄÄ Ä√¡(Äü0‡S2!
srad_kernelÄÜÄ Ä√¡(Äü0¿¨2"
srad2_kernelÄÜÄ Ä√¡(Äü0¿ 2#
prepare_kernelÄÜÄ Ä√¡(Äü0¿e2#
reduce_kernelÄÜÄ Ä√¡(Äü0¿û2!
reduce_kernelÄÄ Ä√¡(Äü0Äd2!
reduce_kernelÄÄ Ä√¡(Äü0¿U2!
srad_kernelÄÜÄ Ä√¡(Äü0¿®2"
srad2_kernelÄÜÄ Ä√¡(Äü0Ä’2$
compress_kernelÄÜÄ Ä√¡(Äü0¿k8∏Ó˙`BÔq//========================================================================================================================================================================================================200
//	DEFINE / INCLUDE
//========================================================================================================================================================================================================200

//======================================================================================================================================================150
//	MAIN FUNCTION HEADER
//======================================================================================================================================================150

#include "./main.h"

//======================================================================================================================================================150
//	End
//======================================================================================================================================================150

//========================================================================================================================================================================================================200
//	Extract KERNEL
//========================================================================================================================================================================================================200

__kernel void
extract_kernel(long d_Ne,
				__global fp* d_I){											// pointer to input image (DEVICE GLOBAL MEMORY)

	// indexes
	int bx = get_group_id(0);												// get current horizontal block index
	int tx = get_local_id(0);													// get current horizontal thread index
	int ei = (bx*NUMBER_THREADS)+tx;										// unique thread id, more threads than actual elements !!!

	// copy input to output & log uncompress
	if(ei<d_Ne){															// do only for the number of elements, omit extra threads

		d_I[ei] = exp(d_I[ei]/255);												// exponentiate input IMAGE and copy to output image

	}

}

//========================================================================================================================================================================================================200
//	Prepare KERNEL
//========================================================================================================================================================================================================200

__kernel void
prepare_kernel(	long d_Ne,
				__global fp* d_I,											// pointer to output image (DEVICE GLOBAL MEMORY)
				__global fp* d_sums,										// pointer to input image (DEVICE GLOBAL MEMORY)
				__global fp* d_sums2){

	// indexes
	int bx = get_group_id(0);												// get current horizontal block index
	int tx = get_local_id(0);												// get current horizontal thread index
	int ei = (bx*NUMBER_THREADS)+tx;										// unique thread id, more threads than actual elements !!!

	// copy input to output & log uncompress
	if(ei<d_Ne){															// do only for the number of elements, omit extra threads

		d_sums[ei] = d_I[ei];
		d_sums2[ei] = d_I[ei]*d_I[ei];

	}

}

//========================================================================================================================================================================================================200
//	Reduce KERNEL
//========================================================================================================================================================================================================200

__kernel void
reduce_kernel(	long d_Ne,													// number of elements in array
				long d_no,													// number of sums to reduce
				int d_mul,													// increment
				__global fp* d_sums,										// pointer to partial sums variable (DEVICE GLOBAL MEMORY)
				__global fp* d_sums2,
				int gridDim){

	// indexes
    int bx = get_group_id(0);												// get current horizontal block index
	int tx = get_local_id(0);												// get current horizontal thread index
	int ei = (bx*NUMBER_THREADS)+tx;										// unique thread id, more threads than actual elements !!!
	// int gridDim = (int)get_group_size(0)/(int)get_local_size(0);			// number of workgroups
	int nf = NUMBER_THREADS-(gridDim*NUMBER_THREADS-d_no);				// number of elements assigned to last block
	int df = 0;															// divisibility factor for the last block

	// statistical
	__local fp d_psum[NUMBER_THREADS];										// data for block calculations allocated by every block in its shared memory
	__local fp d_psum2[NUMBER_THREADS];

	// counters
	int i;

	// copy data to shared memory
	if(ei<d_no){															// do only for the number of elements, omit extra threads

		d_psum[tx] = d_sums[ei*d_mul];
		d_psum2[tx] = d_sums2[ei*d_mul];

	}

    // Lingjie Zhang modificated at Nov 1, 2015
	//	barrier(CLK_LOCAL_MEM_FENCE);
	barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE); // Lukasz proposed, Ke modified 2015/12/12 22:31:00
    // end Lingjie Zhang modification

	// reduction of sums if all blocks are full (rare case)
	if(nf == NUMBER_THREADS){
		// sum of every 2, 4, ..., NUMBER_THREADS elements
		for(i=2; i<=NUMBER_THREADS; i=2*i){
			// sum of elements
			if((tx+1) % i == 0){											// every ith
				d_psum[tx] = d_psum[tx] + d_psum[tx-i/2];
				d_psum2[tx] = d_psum2[tx] + d_psum2[tx-i/2];
			}
			// synchronization
			barrier(CLK_LOCAL_MEM_FENCE);
		}
		// final sumation by last thread in every block
		if(tx==(NUMBER_THREADS-1)){											// block result stored in global memory
			d_sums[bx*d_mul*NUMBER_THREADS] = d_psum[tx];
			d_sums2[bx*d_mul*NUMBER_THREADS] = d_psum2[tx];
		}
	}
	// reduction of sums if last block is not full (common case)
	else{
		// for full blocks (all except for last block)
		if(bx != (gridDim - 1)){											//
			// sum of every 2, 4, ..., NUMBER_THREADS elements
			for(i=2; i<=NUMBER_THREADS; i=2*i){								//
				// sum of elements
				if((tx+1) % i == 0){										// every ith
					d_psum[tx] = d_psum[tx] + d_psum[tx-i/2];
					d_psum2[tx] = d_psum2[tx] + d_psum2[tx-i/2];
				}
				// synchronization
				barrier(CLK_LOCAL_MEM_FENCE);
			}
			// final sumation by last thread in every block
			if(tx==(NUMBER_THREADS-1)){										// block result stored in global memory
				d_sums[bx*d_mul*NUMBER_THREADS] = d_psum[tx];
				d_sums2[bx*d_mul*NUMBER_THREADS] = d_psum2[tx];
			}
		}
		// for not full block (last block)
		else{																//
			// figure out divisibility
			for(i=2; i<=NUMBER_THREADS; i=2*i){								//
				if(nf >= i){
					df = i;
				}
			}
			// sum of every 2, 4, ..., NUMBER_THREADS elements
			for(i=2; i<=df; i=2*i){											//
				// sum of elements (only busy threads)
				if((tx+1) % i == 0 && tx<df){								// every ith
					d_psum[tx] = d_psum[tx] + d_psum[tx-i/2];
					d_psum2[tx] = d_psum2[tx] + d_psum2[tx-i/2];
				}
				// synchronization (all threads)
				barrier(CLK_LOCAL_MEM_FENCE);
			}
			// remainder / final summation by last thread
			if(tx==(df-1)){										//
				// compute the remainder and final summation by last busy thread
				for(i=(bx*NUMBER_THREADS)+df; i<(bx*NUMBER_THREADS)+nf; i++){						//
					d_psum[tx] = d_psum[tx] + d_sums[i];
					d_psum2[tx] = d_psum2[tx] + d_sums2[i];
				}
				// final sumation by last thread in every block
				d_sums[bx*d_mul*NUMBER_THREADS] = d_psum[tx];
				d_sums2[bx*d_mul*NUMBER_THREADS] = d_psum2[tx];
			}
		}
	}

}

//========================================================================================================================================================================================================200
//	SRAD KERNEL
//========================================================================================================================================================================================================200

// BUG, IF STILL PRESENT, COULD BE SOMEWHERE IN THIS CODE, MEMORY ACCESS OUT OF BOUNDS

__kernel void
srad_kernel(fp d_lambda,
			int d_Nr,
			int d_Nc,
			long d_Ne,
			__global int* d_iN,
			__global int* d_iS,
			__global int* d_jE,
			__global int* d_jW,
			__global fp* d_dN,
			__global fp* d_dS,
			__global fp* d_dE,
			__global fp* d_dW,
			fp d_q0sqr,
			__global fp* d_c,
			__global fp* d_I){

	// indexes
    int bx = get_group_id(0);												// get current horizontal block index
	int tx = get_local_id(0);												// get current horizontal thread index
	int ei = bx*NUMBER_THREADS+tx;											// more threads than actual elements !!!
	int row;																// column, x position
	int col;																// row, y position

	// variables
	fp d_Jc;
	fp d_dN_loc, d_dS_loc, d_dW_loc, d_dE_loc;
	fp d_c_loc;
	fp d_G2,d_L,d_num,d_den,d_qsqr;

	// figure out row/col location in new matrix
	row = (ei+1) % d_Nr - 1;													// (0-n) row
	col = (ei+1) / d_Nr + 1 - 1;												// (0-n) column
	if((ei+1) % d_Nr == 0){
		row = d_Nr - 1;
		col = col - 1;
	}

	if(ei<d_Ne){															// make sure that only threads matching jobs run

		// directional derivatives, ICOV, diffusion coefficent
		d_Jc = d_I[ei];														// get value of the current element

		// directional derivates (every element of IMAGE)(try to copy to shared memory or temp files)
		d_dN_loc = d_I[d_iN[row] + d_Nr*col] - d_Jc;						// north direction derivative
		d_dS_loc = d_I[d_iS[row] + d_Nr*col] - d_Jc;						// south direction derivative
		d_dW_loc = d_I[row + d_Nr*d_jW[col]] - d_Jc;						// west direction derivative
		d_dE_loc = d_I[row + d_Nr*d_jE[col]] - d_Jc;						// east direction derivative

		// normalized discrete gradient mag squared (equ 52,53)
		d_G2 = (d_dN_loc*d_dN_loc + d_dS_loc*d_dS_loc + d_dW_loc*d_dW_loc + d_dE_loc*d_dE_loc) / (d_Jc*d_Jc);	// gradient (based on derivatives)

		// normalized discrete laplacian (equ 54)
		d_L = (d_dN_loc + d_dS_loc + d_dW_loc + d_dE_loc) / d_Jc;			// laplacian (based on derivatives)

		// ICOV (equ 31/35)
		d_num  = (0.5*d_G2) - ((1.0/16.0)*(d_L*d_L)) ;						// num (based on gradient and laplacian)
		d_den  = 1 + (0.25*d_L);												// den (based on laplacian)
		d_qsqr = d_num/(d_den*d_den);										// qsqr (based on num and den)

		// diffusion coefficent (equ 33) (every element of IMAGE)
		d_den = (d_qsqr-d_q0sqr) / (d_q0sqr * (1+d_q0sqr)) ;				// den (based on qsqr and q0sqr)
		d_c_loc = 1.0 / (1.0+d_den) ;										// diffusion coefficient (based on den)

		// saturate diffusion coefficent to 0-1 range
		if (d_c_loc < 0){													// if diffusion coefficient < 0
			d_c_loc = 0;													// ... set to 0
		}
		else if (d_c_loc > 1){												// if diffusion coefficient > 1
			d_c_loc = 1;													// ... set to 1
		}

		// save data to global memory
		d_dN[ei] = d_dN_loc;
		d_dS[ei] = d_dS_loc;
		d_dW[ei] = d_dW_loc;
		d_dE[ei] = d_dE_loc;
		d_c[ei] = d_c_loc;

	}

}

//========================================================================================================================================================================================================200
//	SRAD2 KERNEL
//========================================================================================================================================================================================================200

// BUG, IF STILL PRESENT, COULD BE SOMEWHERE IN THIS CODE, MEMORY ACCESS OUT OF BOUNDS

__kernel void
srad2_kernel(	fp d_lambda,
				int d_Nr,
				int d_Nc,
				long d_Ne,
				__global int* d_iN,
				__global int* d_iS,
				__global int* d_jE,
				__global int* d_jW,
				__global fp* d_dN,
				__global fp* d_dS,
				__global fp* d_dE,
				__global fp* d_dW,
				__global fp* d_c,
				__global fp* d_I){

	// indexes
    int bx = get_group_id(0);												// get current horizontal block index
	int tx = get_local_id(0);												// get current horizontal thread index
	int ei = bx*NUMBER_THREADS+tx;											// more threads than actual elements !!!
	int row;																// column, x position
	int col;																// row, y position

	// variables
	fp d_cN,d_cS,d_cW,d_cE;
	fp d_D;

	// figure out row/col location in new matrix
	row = (ei+1) % d_Nr - 1;												// (0-n) row
	col = (ei+1) / d_Nr + 1 - 1;											// (0-n) column
	if((ei+1) % d_Nr == 0){
		row = d_Nr - 1;
		col = col - 1;
	}

	if(ei<d_Ne){															// make sure that only threads matching jobs run

		// diffusion coefficent
		d_cN = d_c[ei];														// north diffusion coefficient
		d_cS = d_c[d_iS[row] + d_Nr*col];										// south diffusion coefficient
		d_cW = d_c[ei];														// west diffusion coefficient
		d_cE = d_c[row + d_Nr * d_jE[col]];									// east diffusion coefficient

		// divergence (equ 58)
		d_D = d_cN*d_dN[ei] + d_cS*d_dS[ei] + d_cW*d_dW[ei] + d_cE*d_dE[ei];// divergence

		// image update (equ 61) (every element of IMAGE)
		d_I[ei] = d_I[ei] + 0.25*d_lambda*d_D;								// updates image (based on input time step and divergence)

	}

}

//========================================================================================================================================================================================================200
//	Compress KERNEL
//========================================================================================================================================================================================================200

__kernel void
compress_kernel(long d_Ne,
				__global fp* d_I){										// pointer to output image (DEVICE GLOBAL MEMORY)

	// indexes
	int bx = get_group_id(0);												// get current horizontal block index
	int tx = get_local_id(0);												// get current horizontal thread index
	int ei = (bx*NUMBER_THREADS)+tx;										// unique thread id, more threads than actual elements !!!

	// copy input to output & log uncompress
	if(ei<d_Ne){															// do only for the number of elements, omit extra threads

		d_I[ei] = log(d_I[ei])*255;												// exponentiate input IMAGE and copy to output image

	}

}

//========================================================================================================================================================================================================200
//	End
//========================================================================================================================================================================================================200J-I.