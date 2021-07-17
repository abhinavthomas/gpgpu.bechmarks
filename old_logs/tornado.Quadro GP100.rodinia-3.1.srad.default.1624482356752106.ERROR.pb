
tornadoQuadro GP100rodinia-3.1"srad*default2ãÁÙπ∆’£/≈ƒclCreateCommandQueue ; GPU ; Quadro GP100
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
clEnqueueWriteBuffer ; d_I ; 919664 ; 236416
clEnqueueWriteBuffer ; d_iN ; 2008 ; 10848
clEnqueueWriteBuffer ; d_iS ; 2008 ; 7936
clEnqueueWriteBuffer ; d_jE ; 1832 ; 7776
clEnqueueWriteBuffer ; d_jW ; 1832 ; 8192
clSetKernelArg ; extract_kernel ; 0 ; 8 ; (void *) &Ne
clSetKernelArg ; extract_kernel ; 1 ; 8 ; (void *) &d_I
clEnqueueNDRangeKernel ; extract_kernel ; 230144 ; 256 ; 21440
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
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13152
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22592
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13504
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10688
clEnqueueReadBuffer ; d_sums ; 4 ; 11552
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7328
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24096
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26688
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12960
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13056
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10272
clEnqueueReadBuffer ; d_sums ; 4 ; 7360
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6432
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22400
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25952
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12288
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12768
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10432
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21920
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26144
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12352
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22592
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12800
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10560
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22336
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25312
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12768
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22432
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10272
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21952
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25536
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21760
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10592
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22016
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25696
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12576
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21376
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10528
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6432
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22144
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25152
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12320
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22208
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13152
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10560
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21920
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25472
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12576
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21376
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12704
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10240
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22208
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26080
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12704
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21760
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12640
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11040
clEnqueueReadBuffer ; d_sums ; 4 ; 6912
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6560
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22336
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25888
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12480
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22304
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10368
clEnqueueReadBuffer ; d_sums ; 4 ; 6848
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6624
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22528
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25600
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12256
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22336
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12768
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10592
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22304
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25376
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12320
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21152
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12896
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10240
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6592
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22144
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26848
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12384
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22560
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12768
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6688
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22144
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25888
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13440
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10176
clEnqueueReadBuffer ; d_sums ; 4 ; 6944
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22016
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25184
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22560
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12640
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10560
clEnqueueReadBuffer ; d_sums ; 4 ; 6880
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22016
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25760
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12576
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22176
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12672
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10400
clEnqueueReadBuffer ; d_sums ; 4 ; 7744
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7328
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22496
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25024
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 14272
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 23840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12992
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10496
clEnqueueReadBuffer ; d_sums ; 4 ; 7488
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7008
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22240
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28288
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12864
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21504
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12896
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10240
clEnqueueReadBuffer ; d_sums ; 4 ; 7456
clEnqueueReadBuffer ; d_sums2 ; 4 ; 8736
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21888
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27264
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12544
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22336
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14848
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10784
clEnqueueReadBuffer ; d_sums ; 4 ; 7520
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21536
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25728
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21664
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10560
clEnqueueReadBuffer ; d_sums ; 4 ; 10208
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24832
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25824
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12256
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 23584
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13440
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10144
clEnqueueReadBuffer ; d_sums ; 4 ; 8480
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6624
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21920
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25632
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13024
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22304
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13088
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10848
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6592
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 24224
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28416
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14432
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 13248
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6624
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 23968
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25728
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12480
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22816
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13248
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10336
clEnqueueReadBuffer ; d_sums ; 4 ; 6912
clEnqueueReadBuffer ; d_sums2 ; 4 ; 8448
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22528
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25536
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22144
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 14560
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10560
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22080
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25440
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12384
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21120
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13024
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10176
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6592
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22176
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25472
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12384
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12576
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10208
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22240
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25376
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12288
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13056
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10304
clEnqueueReadBuffer ; d_sums ; 4 ; 7040
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22240
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25056
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21920
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12960
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10368
clEnqueueReadBuffer ; d_sums ; 4 ; 6752
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22048
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25440
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12416
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22208
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22080
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25664
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12352
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12960
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10336
clEnqueueReadBuffer ; d_sums ; 4 ; 6880
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22112
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26272
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12416
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21536
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12640
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10208
clEnqueueReadBuffer ; d_sums ; 4 ; 6816
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6496
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22400
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25248
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12416
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21344
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12992
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10272
clEnqueueReadBuffer ; d_sums ; 4 ; 6848
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6464
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22336
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25632
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12704
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21536
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12864
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10656
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22240
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25888
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12256
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22464
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12928
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10496
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22016
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26048
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13024
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22240
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12992
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10112
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22048
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25632
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12160
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22976
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12896
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10976
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21856
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25472
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12224
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12480
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12896
clEnqueueReadBuffer ; d_sums ; 4 ; 6784
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21920
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25792
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12448
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13024
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10496
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6560
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22048
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25344
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12448
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21408
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12960
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10400
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21568
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25696
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12544
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10368
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6464
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21984
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25120
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12288
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13216
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10368
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21728
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25664
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12576
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 12608
clEnqueueReadBuffer ; d_sums ; 4 ; 6816
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22368
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25440
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12320
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21408
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12992
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10752
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6432
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22272
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25536
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12480
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22112
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12640
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10304
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6560
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21824
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25472
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21600
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12640
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10592
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22048
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25536
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12192
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21952
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13280
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10112
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6688
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21920
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26112
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12928
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21600
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10432
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22272
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26208
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12096
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22784
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10400
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21952
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26080
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12128
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21664
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10432
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22176
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25600
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12320
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22144
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10688
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22368
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25408
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12064
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21792
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22112
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26208
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12512
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21632
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11008
clEnqueueReadBuffer ; d_sums ; 4 ; 6816
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6752
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21952
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25440
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21472
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13408
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10304
clEnqueueReadBuffer ; d_sums ; 4 ; 6848
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21824
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26048
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12512
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21632
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12672
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10528
clEnqueueReadBuffer ; d_sums ; 4 ; 6976
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22304
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25856
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12224
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13312
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6784
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6624
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22272
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25248
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12672
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21472
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12864
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10336
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22464
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25600
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12480
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21664
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12800
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11072
clEnqueueReadBuffer ; d_sums ; 4 ; 6784
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21984
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25792
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21792
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12672
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21984
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25536
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12096
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22176
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12896
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21888
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26304
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12128
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12928
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10144
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22080
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25664
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12192
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21216
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12704
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10336
clEnqueueReadBuffer ; d_sums ; 4 ; 6944
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22240
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25472
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12704
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22048
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13088
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10784
clEnqueueReadBuffer ; d_sums ; 4 ; 6752
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21888
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25792
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12480
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10272
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22400
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25856
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12352
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21696
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12928
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10976
clEnqueueReadBuffer ; d_sums ; 4 ; 6848
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21856
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25728
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12000
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22176
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12672
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10496
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22208
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26240
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12384
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10304
clEnqueueReadBuffer ; d_sums ; 4 ; 6816
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22112
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26176
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12384
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21440
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12960
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10592
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22176
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25792
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12480
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12576
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10272
clEnqueueReadBuffer ; d_sums ; 4 ; 6880
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21920
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25984
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12448
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21504
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13216
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11104
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6432
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22336
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25280
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12384
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22336
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10400
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22016
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25472
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12192
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21440
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12768
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10400
clEnqueueReadBuffer ; d_sums ; 4 ; 6752
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6592
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21920
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26048
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12288
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12864
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10912
clEnqueueReadBuffer ; d_sums ; 4 ; 7008
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21888
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25984
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12448
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22336
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10336
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6464
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21952
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25728
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12352
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21632
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10528
clEnqueueReadBuffer ; d_sums ; 4 ; 6752
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22112
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26080
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12544
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12896
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6848
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22624
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24960
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12256
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22048
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12928
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6432
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22240
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25536
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12512
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22176
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13504
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10432
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22240
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26624
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12160
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21536
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12672
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10560
clEnqueueReadBuffer ; d_sums ; 4 ; 6752
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6720
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22144
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25984
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12320
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22528
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13024
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10368
clEnqueueReadBuffer ; d_sums ; 4 ; 6752
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6432
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22208
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25568
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12416
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21536
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12928
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10368
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22368
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25664
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12160
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10400
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21824
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25824
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12416
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21984
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13344
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10240
clEnqueueReadBuffer ; d_sums ; 4 ; 6880
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6528
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22496
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25344
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12416
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21376
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12960
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22304
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25376
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12544
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22016
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12960
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10368
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22464
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25920
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12160
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21792
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12960
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10624
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22144
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26144
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12416
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21664
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12768
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 7168
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22112
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25568
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12192
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13408
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21920
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25440
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12480
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21888
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12736
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21888
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25280
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12064
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21856
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10368
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22624
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25248
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12224
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21600
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12960
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10432
clEnqueueReadBuffer ; d_sums ; 4 ; 6784
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21728
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24736
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12448
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21600
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12576
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10368
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21888
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25600
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12480
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22848
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13216
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10752
clEnqueueReadBuffer ; d_sums ; 4 ; 6752
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6560
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21728
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26016
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12448
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21600
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12672
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10336
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22304
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25696
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12512
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 22304
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12864
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10592
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22080
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26304
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12224
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21920
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12992
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10272
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6464
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21632
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25056
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12544
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21568
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10368
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6496
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22624
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25408
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12192
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21824
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13408
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10848
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22016
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25472
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12800
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 21536
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12832
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10464
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22144
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25856
clSetKernelArg ; compress_kernel ; 0 ; 8 ; (void *) &Ne
clSetKernelArg ; compress_kernel ; 1 ; 8 ; (void *) &d_I
clEnqueueNDRangeKernel ; compress_kernel ; 230144 ; 256 ; 13472
clEnqueueReadBuffer ; d_I ; 919664 ; 145088"ÔWG size of kernel = 256 
Platform: NVIDIA Corporation
Device: Quadro GP100
-----OpenCL Compiler Output-----
--------------------------------
max # of workgroups = 899, # of threads/workgroup = 256 (ensure that device can handle)
Iterations Progress: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 
The file was not created/opened for writing
Time spent in different stages of the application:
0.000008000000 s, 0.003426520620 % : READ COMMAND LINE PARAMETERS
0.009589999914 s, 4.107541084290 % : READ AND RESIZE INPUT IMAGE FROM FILE
0.000003000000 s, 0.001284945174 % : SETUP
0.223866999149 s, 95.885604858398 % : KERNEL
0.000005000000 s, 0.002141575096 % : WRITE OUTPUT IMAGE TO FILE
0.000087000000 s, 0.037263408303 % : FREE MEMORY
Total time:
0.233473002911 s
* 2$
extract_kernelÄÜÄ Ä√¡(¿‰j0¿ß2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡f2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿∞2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿i2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿S2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†º2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿–2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†e2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0ÄÆ2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äf2!
reduce_kernelÄÄ Ä√¡(¿‰j0†P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0ÄØ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡ 2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Ä`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0ÄÆ2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡c2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†Ã2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿∞2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äd2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿Æ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡≈2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡c2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†Ø2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿b2!
reduce_kernelÄÄ Ä√¡(¿‰j0†P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿b2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä™2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿c2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†b2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Äß2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿c2!
reduce_kernelÄÄ Ä√¡(¿‰j0†R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿ƒ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿≠2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡f2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†b2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Äß2!
reduce_kernelÄÄ Ä√¡(¿‰j0†c2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄP2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡À2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†c2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä™2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡b2!
reduce_kernelÄÄ Ä√¡(¿‰j0†V2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿Æ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0† 2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†Æ2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿c2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄQ2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä∞2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿Æ2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡c2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†Æ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†•2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡d2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄP2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡—2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†∞2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡c2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0† 2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†d2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡™2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äi2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿O2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡ƒ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿b2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†∞2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡b2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†…2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†b2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†≠2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äc2!
reduce_kernelÄÄ Ä√¡(¿‰j0†Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡Ø2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿√2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿o2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†∫2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿e2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄR2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä›2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿d2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä®2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡d2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄP2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä’2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äb2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿Æ2!
reduce_kernelÄÄ Ä√¡(¿‰j0Ät2!
reduce_kernelÄÄ Ä√¡(¿‰j0†T2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†®2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä…2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†d2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†©2!
reduce_kernelÄÄ Ä√¡(¿‰j0†d2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä¬2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡…2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†∏2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äi2!
reduce_kernelÄÄ Ä√¡(¿‰j0†O2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡e2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†Æ2!
reduce_kernelÄÄ Ä√¡(¿‰j0†f2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡T2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†Ω2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Äﬁ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†d2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä¨2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡p2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿g2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†ª2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä…2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†≤2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿g2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä∞2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿b2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä≠2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡q2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä•2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡e2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿O2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä¨2!
reduce_kernelÄÄ Ä√¡(¿‰j0†b2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡O2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Ä`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿™2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äf2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡√2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†d2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†´2!
reduce_kernelÄÄ Ä√¡(¿‰j0†e2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄQ2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äa2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿≠2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿c2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡´2!
reduce_kernelÄÄ Ä√¡(¿‰j0†e2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†Õ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äa2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†®2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡b2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡O2!
srad_kernelÄÜÄ Ä√¡(¿‰j0ÄØ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†≈2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äa2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡¶2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿e2!
reduce_kernelÄÄ Ä√¡(¿‰j0†P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿Æ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†c2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†®2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿d2!
reduce_kernelÄÄ Ä√¡(¿‰j0†S2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0† 2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿Ø2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äe2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄR2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿À2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡e2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡≠2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿e2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄO2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Ä_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿≥2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡d2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡U2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡™2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡´2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿a2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡d2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿…2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡™2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡e2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄR2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†ß2!
reduce_kernelÄÄ Ä√¡(¿‰j0†e2!
reduce_kernelÄÄ Ä√¡(¿‰j0†Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿®2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿b2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿™2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äb2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄQ2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†ƒ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Ä`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿™2!
reduce_kernelÄÄ Ä√¡(¿‰j0†g2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄQ2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡©2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†b2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä¨2!
reduce_kernelÄÄ Ä√¡(¿‰j0†d2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿b2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡Æ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†ß2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿e2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄT2!
srad_kernelÄÜÄ Ä√¡(¿‰j0ÄÆ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡¨2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡b2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿™2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Ä^2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡®2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡b2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿´2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡g2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄO2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0ÄÃ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äe2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡®2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿b2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0ÄÆ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡Ã2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿^2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä≤2!
reduce_kernelÄÄ Ä√¡(¿‰j0†d2!
reduce_kernelÄÄ Ä√¡(¿‰j0†Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡À2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡^2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†©2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿b2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä≠2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿c2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿S2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡Æ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†^2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†™2!
reduce_kernelÄÄ Ä√¡(¿‰j0†d2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡Ã2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä©2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿c2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄV2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿c2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡ß2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡h2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿™2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿À2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä©2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äc2!
reduce_kernelÄÄ Ä√¡(¿‰j0†R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†Æ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä 2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿®2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äh2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0ÄÆ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†≈2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äc2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡ß2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿d2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿Ø2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†©2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äd2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿V2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿…2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿b2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†™2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äc2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿^2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†≠2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡d2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿Õ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡^2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿®2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äe2!
reduce_kernelÄÄ Ä√¡(¿‰j0†O2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡•2!
reduce_kernelÄÄ Ä√¡(¿‰j0†c2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†c2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†¨2!
reduce_kernelÄÄ Ä√¡(¿‰j0†f2!
reduce_kernelÄÄ Ä√¡(¿‰j0†T2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿…2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä¨2!
reduce_kernelÄÄ Ä√¡(¿‰j0†d2!
reduce_kernelÄÄ Ä√¡(¿‰j0†P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0ÄØ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä 2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿©2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äe2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡U2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡™2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä…2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡]2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†≠2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äc2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄR2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0ÄÕ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿®2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿c2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿Ã2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿ß2!
reduce_kernelÄÄ Ä√¡(¿‰j0†e2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿…2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿™2!
reduce_kernelÄÄ Ä√¡(¿‰j0†b2!
reduce_kernelÄÄ Ä√¡(¿‰j0†P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0ÄÀ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä®2!
reduce_kernelÄÄ Ä√¡(¿‰j0†g2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡V2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿Æ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿≈2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿Æ2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿b2!
reduce_kernelÄÄ Ä√¡(¿‰j0†Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿ß2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡c2!
reduce_kernelÄÄ Ä√¡(¿‰j0†Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿À2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Ä`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡´2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿d2!
reduce_kernelÄÄ Ä√¡(¿‰j0†U2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0ÄÀ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿Æ2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿c2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä…2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä©2!
reduce_kernelÄÄ Ä√¡(¿‰j0†d2!
reduce_kernelÄÄ Ä√¡(¿‰j0†R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡À2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äb2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿®2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡d2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡∞2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä√2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†¨2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äe2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†≠2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿i2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä–2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Ä_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†®2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äc2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0ÄÀ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†`2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä∞2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡e2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄQ2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äa2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†®2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äe2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄQ2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡Æ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Ä_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿™2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿c2!
reduce_kernelÄÄ Ä√¡(¿‰j0†Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿™2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡…2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äa2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡´2!
reduce_kernelÄÄ Ä√¡(¿‰j0†h2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄP2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡Ø2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äa2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Äß2!
reduce_kernelÄÄ Ä√¡(¿‰j0†e2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†Æ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äb2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä¨2!
reduce_kernelÄÄ Ä√¡(¿‰j0†e2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄQ2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿Ø2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿ 2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Ä_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†™2!
reduce_kernelÄÄ Ä√¡(¿‰j0†e2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄS2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†Ã2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äa2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†©2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡c2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿™2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡h2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0Ä´2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿c2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿≈2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†^2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡™2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿b2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄQ2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡∞2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†≈2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡®2!
reduce_kernelÄÄ Ä√¡(¿‰j0†e2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡©2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†¡2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡®2!
reduce_kernelÄÄ Ä√¡(¿‰j0†b2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄQ2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä´2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿≤2!
reduce_kernelÄÄ Ä√¡(¿‰j0†g2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄT2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡©2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0†À2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0‡®2!
reduce_kernelÄÄ Ä√¡(¿‰j0Äc2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0†Æ2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡»2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0‡a2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†Æ2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿d2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡R2!
srad_kernelÄÜÄ Ä√¡(¿‰j0¿¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿Õ2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0¿_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†´2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿e2!
reduce_kernelÄÄ Ä√¡(¿‰j0†P2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä©2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0‡√2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äb2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿®2!
reduce_kernelÄÄ Ä√¡(¿‰j0¿b2!
reduce_kernelÄÄ Ä√¡(¿‰j0ÄQ2!
srad_kernelÄÜÄ Ä√¡(¿‰j0‡∞2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0¿∆2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0†_2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0¿™2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡h2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡T2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä¨2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä«2#
prepare_kernelÄÜÄ Ä√¡(¿‰j0Äd2#
reduce_kernelÄÜÄ Ä√¡(¿‰j0†®2!
reduce_kernelÄÄ Ä√¡(¿‰j0†d2!
reduce_kernelÄÄ Ä√¡(¿‰j0‡Q2!
srad_kernelÄÜÄ Ä√¡(¿‰j0Ä≠2"
srad2_kernelÄÜÄ Ä√¡(¿‰j0Ä 2$
compress_kernelÄÜÄ Ä√¡(¿‰j0†i8™ŸìÖBÔq//========================================================================================================================================================================================================200
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