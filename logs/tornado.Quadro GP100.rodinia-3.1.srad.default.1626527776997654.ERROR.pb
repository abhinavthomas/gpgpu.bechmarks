
tornadoQuadro GP100rodinia-3.1"srad*default2∑Ê¨ÄÒ§´/Ú√clCreateCommandQueue ; GPU ; Quadro GP100
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
clEnqueueWriteBuffer ; d_I ; 919664 ; 234592
clEnqueueWriteBuffer ; d_iN ; 2008 ; 9888
clEnqueueWriteBuffer ; d_iS ; 2008 ; 8064
clEnqueueWriteBuffer ; d_jE ; 1832 ; 7616
clEnqueueWriteBuffer ; d_jW ; 1832 ; 8160
clSetKernelArg ; extract_kernel ; 0 ; 8 ; (void *) &Ne
clSetKernelArg ; extract_kernel ; 1 ; 8 ; (void *) &d_I
clEnqueueNDRangeKernel ; extract_kernel ; 230144 ; 256 ; 19232
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
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12128
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20096
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12928
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10240
clEnqueueReadBuffer ; d_sums ; 4 ; 10208
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6880
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21664
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26688
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12160
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19936
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9696
clEnqueueReadBuffer ; d_sums ; 4 ; 7040
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20512
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25952
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19680
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12320
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9984
clEnqueueReadBuffer ; d_sums ; 4 ; 6752
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20288
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25536
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11552
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19680
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11904
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9760
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20128
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24736
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11232
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9728
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20160
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25248
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11552
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20064
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11968
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9600
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6496
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20160
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24544
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19808
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10656
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20512
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25184
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12064
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9760
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19840
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25344
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11392
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9824
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19904
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25792
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11488
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20544
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11808
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9792
clEnqueueReadBuffer ; d_sums ; 4 ; 6752
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20128
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24960
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20288
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11968
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10112
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20512
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25536
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11680
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19744
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12096
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9664
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20288
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25408
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12064
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9824
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19808
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25120
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19680
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9888
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 21536
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27680
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12000
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19776
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12416
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9760
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6432
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22144
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25568
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12288
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11744
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9856
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6464
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22048
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26912
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13184
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13248
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9984
clEnqueueReadBuffer ; d_sums ; 4 ; 6432
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 22336
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26304
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 15328
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20704
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 11616
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6112
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19872
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25632
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11776
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20096
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11552
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10048
clEnqueueReadBuffer ; d_sums ; 4 ; 7616
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6112
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19840
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24576
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11616
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19616
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9440
clEnqueueReadBuffer ; d_sums ; 4 ; 7136
clEnqueueReadBuffer ; d_sums2 ; 4 ; 9568
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19904
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26688
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12512
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10144
clEnqueueReadBuffer ; d_sums ; 4 ; 7424
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7040
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20768
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26176
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12992
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20480
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13376
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10144
clEnqueueReadBuffer ; d_sums ; 4 ; 7520
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7424
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20000
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 27264
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13664
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11648
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10048
clEnqueueReadBuffer ; d_sums ; 4 ; 7552
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7200
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20160
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 28160
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 13280
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19616
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10240
clEnqueueReadBuffer ; d_sums ; 4 ; 7264
clEnqueueReadBuffer ; d_sums2 ; 4 ; 7968
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20032
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25248
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11232
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19968
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11968
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9056
clEnqueueReadBuffer ; d_sums ; 4 ; 6496
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20512
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25888
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20064
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11808
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9824
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20096
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25696
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11520
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20064
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12608
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9696
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20128
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25248
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11776
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12384
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9728
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20000
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24928
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11648
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20160
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11936
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9792
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20096
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24768
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12000
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19296
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9536
clEnqueueReadBuffer ; d_sums ; 4 ; 6464
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20032
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25120
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11328
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19424
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9952
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20544
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24992
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11296
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12064
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9792
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20256
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25600
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12672
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9952
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6464
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20288
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 29728
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11296
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19072
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9888
clEnqueueReadBuffer ; d_sums ; 4 ; 6880
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19936
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25440
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11264
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 18976
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11808
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9728
clEnqueueReadBuffer ; d_sums ; 4 ; 6496
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6144
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20480
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24896
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11232
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19616
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12000
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10112
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6144
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20032
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25312
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11616
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19584
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11968
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9792
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20096
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24896
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11200
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20000
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11392
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10304
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20192
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25216
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11648
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19648
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11744
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9824
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19648
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24960
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11584
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19488
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9408
clEnqueueReadBuffer ; d_sums ; 4 ; 6816
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20192
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24960
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11552
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19232
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9600
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19680
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25504
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11776
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19488
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9952
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6592
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20288
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25408
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11648
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9824
clEnqueueReadBuffer ; d_sums ; 4 ; 6496
clEnqueueReadBuffer ; d_sums2 ; 4 ; 8736
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20320
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25728
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12000
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9408
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19872
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25056
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10240
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20160
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24576
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19648
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11744
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9824
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20288
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24832
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11072
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10080
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19936
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25664
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11328
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 18944
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9664
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20352
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25440
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19200
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12064
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9824
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20224
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24768
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11488
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20320
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11936
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9888
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6144
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20096
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24736
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11616
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19776
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11968
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9696
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20064
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24928
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11136
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19424
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10080
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20064
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25216
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11008
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19680
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11584
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10080
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19776
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 26144
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11936
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19584
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11904
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9536
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6528
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20544
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24128
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11488
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19200
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11968
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9632
clEnqueueReadBuffer ; d_sums ; 4 ; 7200
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20704
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24512
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11552
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11648
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9664
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6496
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20896
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 23808
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11200
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19808
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9984
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19968
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25792
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11488
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19680
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11552
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9728
clEnqueueReadBuffer ; d_sums ; 4 ; 6848
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19712
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25536
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11328
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19552
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12192
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9952
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20608
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24544
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11680
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20000
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11936
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9696
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19616
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25408
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11776
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11744
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9568
clEnqueueReadBuffer ; d_sums ; 4 ; 6432
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20224
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25248
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 18720
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12128
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9696
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20288
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24992
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11392
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19264
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11200
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9568
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20000
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25120
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11104
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19584
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12352
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9568
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20384
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24224
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20192
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12000
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9632
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20384
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25440
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11584
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10016
clEnqueueReadBuffer ; d_sums ; 4 ; 6720
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20160
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25088
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20192
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9920
clEnqueueReadBuffer ; d_sums ; 4 ; 6784
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19744
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24960
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11424
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19136
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11520
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9728
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20128
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25760
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11808
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19328
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11936
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9408
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6144
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20512
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24864
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9888
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20128
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24704
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19520
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11904
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9920
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19840
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25536
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11488
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19040
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11680
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9760
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20064
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25024
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11392
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 20224
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11968
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9856
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20512
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25088
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11200
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19584
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11776
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9440
clEnqueueReadBuffer ; d_sums ; 4 ; 6432
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20544
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24896
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11424
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11808
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9888
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20032
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25024
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11168
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19072
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9664
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 25600
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25312
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19264
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11776
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9728
clEnqueueReadBuffer ; d_sums ; 4 ; 6848
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20032
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25152
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11104
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19584
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9664
clEnqueueReadBuffer ; d_sums ; 4 ; 6432
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20064
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24864
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19232
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11744
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9600
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20288
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25696
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11520
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19136
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11744
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9728
clEnqueueReadBuffer ; d_sums ; 4 ; 6304
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6080
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20288
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24960
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11520
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19232
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11744
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9632
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6560
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20704
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25216
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11616
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19680
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11872
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10080
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19968
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25248
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19584
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11936
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9664
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20992
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25088
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11616
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19808
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9472
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6144
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19840
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25152
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11904
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19616
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12096
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10016
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20160
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24704
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11808
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19264
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11744
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9728
clEnqueueReadBuffer ; d_sums ; 4 ; 6688
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20096
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25824
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11392
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19200
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9824
clEnqueueReadBuffer ; d_sums ; 4 ; 6592
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20000
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25280
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11136
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11776
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9792
clEnqueueReadBuffer ; d_sums ; 4 ; 6816
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6272
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19936
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24832
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11232
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19264
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9536
clEnqueueReadBuffer ; d_sums ; 4 ; 6560
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6240
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20032
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24992
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11552
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11808
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9920
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6176
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20128
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25632
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11488
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 18880
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12096
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9696
clEnqueueReadBuffer ; d_sums ; 4 ; 6848
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6336
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20832
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24352
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11328
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19264
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12032
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9696
clEnqueueReadBuffer ; d_sums ; 4 ; 6496
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20320
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25184
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11488
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19104
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11744
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 10144
clEnqueueReadBuffer ; d_sums ; 4 ; 6432
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20032
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25152
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11424
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19264
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11776
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9536
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6368
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20192
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24736
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11616
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 13952
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9728
clEnqueueReadBuffer ; d_sums ; 4 ; 6752
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6464
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20192
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24704
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11360
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 18880
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11840
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9952
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6400
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20288
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24928
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19104
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11680
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9792
clEnqueueReadBuffer ; d_sums ; 4 ; 6528
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6208
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 19872
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24704
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11616
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19200
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11712
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9856
clEnqueueReadBuffer ; d_sums ; 4 ; 6816
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20704
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24672
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 11424
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19456
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 12128
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9696
clEnqueueReadBuffer ; d_sums ; 4 ; 6656
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6592
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20352
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 24960
clEnqueueNDRangeKernel ; prepare_kernel ; 230144 ; 256 ; 12000
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 230144 ; 256 ; 19296
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 1024 ; 256 ; 11744
clSetKernelArg ; reduce_kernel ; 1 ; 8 ; (void *) &no
clSetKernelArg ; reduce_kernel ; 2 ; 4 ; (void *) &mul
clSetKernelArg ; reduce_kernel ; 5 ; 4 ; (void *) &blocks2_work_size
clEnqueueNDRangeKernel ; reduce_kernel ; 256 ; 256 ; 9760
clEnqueueReadBuffer ; d_sums ; 4 ; 6624
clEnqueueReadBuffer ; d_sums2 ; 4 ; 6304
clSetKernelArg ; srad_kernel ; 12 ; 4 ; (void *) &q0sqr
clEnqueueNDRangeKernel ; srad_kernel ; 230144 ; 256 ; 20192
clEnqueueNDRangeKernel ; srad2_kernel ; 230144 ; 256 ; 25408
clSetKernelArg ; compress_kernel ; 0 ; 8 ; (void *) &Ne
clSetKernelArg ; compress_kernel ; 1 ; 8 ; (void *) &d_I
clEnqueueNDRangeKernel ; compress_kernel ; 230144 ; 256 ; 11872
clEnqueueReadBuffer ; d_I ; 919664 ; 144960"ÔWG size of kernel = 256 
Platform: NVIDIA Corporation
Device: Quadro GP100
-----OpenCL Compiler Output-----
--------------------------------
max # of workgroups = 899, # of threads/workgroup = 256 (ensure that device can handle)
Iterations Progress: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 
The file was not created/opened for writing
Time spent in different stages of the application:
0.000008000000 s, 0.005939476658 % : READ COMMAND LINE PARAMETERS
0.009564000182 s, 7.100644588470 % : READ AND RESIZE INPUT IMAGE FROM FILE
0.000002000000 s, 0.001484869164 % : SETUP
0.125111997128 s, 92.887481689453 % : KERNEL
0.000006000000 s, 0.004454607610 % : WRITE OUTPUT IMAGE TO FILE
0.000090000001 s, 0.066819109023 % : FREE MEMORY
Total time:
0.134691998363 s
* 2$
extract_kernelÄÜÄ Ä√¡(¿ãi0†ñ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡^2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äù2!
reduce_kernelÄÄ Ä√¡(¿ãi0Äe2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄP2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†©2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿–2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä_2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡õ2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡\2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0††2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡ 2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡X2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0†`2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄN2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿«2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä]2!
reduce_kernelÄÄ Ä√¡(¿ãi0†L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†¡2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡W2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äõ2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿Y2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄL2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†≈2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ú2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿]2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄK2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡ø2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿[2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ö2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿\2!
reduce_kernelÄÄ Ä√¡(¿ãi0†S2!
srad_kernelÄÜÄ Ä√¡(¿ãi0††2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡ƒ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿[2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†õ2!
reduce_kernelÄÄ Ä√¡(¿ãi0†^2!
reduce_kernelÄÄ Ä√¡(¿ãi0†L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äõ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä∆2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0ÄY2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ú2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿[2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿õ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿…2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿†2!
reduce_kernelÄÄ Ä√¡(¿ãi0†\2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿û2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿]2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄO2!
srad_kernelÄÜÄ Ä√¡(¿ãi0††2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿«2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†[2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ö2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿^2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿∆2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ú2!
reduce_kernelÄÄ Ä√¡(¿ãi0†^2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡ö2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†ƒ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿[2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿Y2!
reduce_kernelÄÄ Ä√¡(¿ãi0†M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†®2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†ÿ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡]2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ö2!
reduce_kernelÄÄ Ä√¡(¿ãi0Äa2!
reduce_kernelÄÄ Ä√¡(¿ãi0†L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Ä≠2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡«2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä`2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äõ2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡[2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄM2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†¨2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†“2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Äg2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†õ2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿g2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄN2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿Æ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿Õ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡w2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡°2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿\2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡Z2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†õ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†»2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä\2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äù2!
reduce_kernelÄÄ Ä√¡(¿ãi0†Z2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿N2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äõ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä¿2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä^2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡I2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿õ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿–2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡a2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ó2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä^2!
reduce_kernelÄÄ Ä√¡(¿ãi0†O2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†¢2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿Ã2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿e2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Ä†2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿h2!
reduce_kernelÄÄ Ä√¡(¿ãi0†O2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä’2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡j2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†õ2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä[2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿N2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä‹2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡g2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡X2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄP2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†≈2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡W2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äú2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿]2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡F2!
srad_kernelÄÜÄ Ä√¡(¿ãi0††2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0† 2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ú2!
reduce_kernelÄÄ Ä√¡(¿ãi0†\2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡»2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0ÄZ2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ú2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿b2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†≈2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä\2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†õ2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡`2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄL2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡¬2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä[2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ù2!
reduce_kernelÄÄ Ä√¡(¿ãi0†]2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿¡2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡]2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡\2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿J2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†ƒ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿X2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ó2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿\2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿†2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†X2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†õ2!
reduce_kernelÄÄ Ä√¡(¿ãi0†^2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä»2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äö2!
reduce_kernelÄÄ Ä√¡(¿ãi0Äc2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†Ë2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†X2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äï2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿\2!
reduce_kernelÄÄ Ä√¡(¿ãi0†M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡õ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡∆2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0ÄX2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†î2!
reduce_kernelÄÄ Ä√¡(¿ãi0†\2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄL2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Ä†2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿¬2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡W2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡]2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄO2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡≈2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äô2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿]2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿¬2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿W2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ú2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄY2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿P2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä≈2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä[2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡[2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ô2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ò2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä^2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿I2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿[2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄK2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡ô2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†«2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä\2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ò2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿\2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿∆2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä[2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ó2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä^2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä…2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡]2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äö2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿\2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿I2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†õ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä^2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äõ2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡\2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄP2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä¿2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä^2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡[2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä¬2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿V2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ó2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡\2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡N2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡õ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿»2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿X2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äî2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡X2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äü2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡∆2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0†^2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äû2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿¡2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡û2!
reduce_kernelÄÄ Ä√¡(¿ãi0†]2!
reduce_kernelÄÄ Ä√¡(¿ãi0†M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†¡2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ö2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿]2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡¬2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0ÄW2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ó2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä^2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡N2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä≈2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0ÄV2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿Z2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡N2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ö2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†Ã2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†]2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äô2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä]2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿J2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿†2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿º2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿]2!
reduce_kernelÄÄ Ä√¡(¿ãi0†K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡°2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿ø2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äò2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä[2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†£2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä∫2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿W2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ö2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä^2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄN2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿…2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0†Z2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄL2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äö2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿«2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿X2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ò2!
reduce_kernelÄÄ Ä√¡(¿ãi0†_2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Ä°2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡ø2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†[2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ú2!
reduce_kernelÄÄ Ä√¡(¿ãi0†]2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ô2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿∆2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä\2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äõ2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡[2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡J2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äû2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†≈2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†í2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡^2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0ÄY2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿W2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡J2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†ƒ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡V2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äô2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿`2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡J2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ü2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†Ω2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ù2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡]2!
reduce_kernelÄÄ Ä√¡(¿ãi0†K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ü2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡∆2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ó2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡\2!
reduce_kernelÄÄ Ä√¡(¿ãi0†N2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Äƒ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ù2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡\2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ö2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ï2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄZ2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄL2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†…2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†\2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äó2!
reduce_kernelÄÄ Ä√¡(¿ãi0†]2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿I2!
srad_kernelÄÜÄ Ä√¡(¿ãi0††2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†¬2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿[2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äò2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿\2!
reduce_kernelÄÄ Ä√¡(¿ãi0†M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä¡2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡X2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ò2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä]2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äõ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿«2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡î2!
reduce_kernelÄÄ Ä√¡(¿ãi0†[2!
reduce_kernelÄÄ Ä√¡(¿ãi0†L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0ÄY2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äû2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿]2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄM2!
srad_kernelÄÜÄ Ä√¡(¿ãi0††2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Äƒ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿W2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äô2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä\2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡I2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿†2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿¬2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äö2!
reduce_kernelÄÄ Ä√¡(¿ãi0†\2!
reduce_kernelÄÄ Ä√¡(¿ãi0†M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†W2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äï2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä^2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Ä»2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡≈2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä\2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄL2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿ƒ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡V2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äô2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿\2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†¬2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡\2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡[2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄK2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡»2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0ÄZ2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ï2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡[2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄL2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0ÄZ2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡[2!
reduce_kernelÄÄ Ä√¡(¿ãi0†K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡°2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä≈2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡\2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡N2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†≈2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡X2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äô2!
reduce_kernelÄÄ Ä√¡(¿ãi0†]2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Ä§2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Äƒ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ö2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿\2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄJ2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äõ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿ƒ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0Ä]2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ô2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿^2!
reduce_kernelÄÄ Ä√¡(¿ãi0†N2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä¡2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†\2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡[2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄL2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡…2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0ÄY2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿[2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿≈2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0ÄW2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äö2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä\2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡õ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä¬2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡W2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿[2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿J2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äõ2!
reduce_kernelÄÄ Ä√¡(¿ãi0†\2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†»2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ì2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿^2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡¢2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†æ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿X2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä^2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡ƒ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ï2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡[2!
reduce_kernelÄÄ Ä√¡(¿ãi0†O2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿ú2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿ƒ2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0Ä\2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿J2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0†¡2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ó2!
reduce_kernelÄÄ Ä√¡(¿ãi0Äm2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄL2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä¡2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡X2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0¿ì2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿\2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡M2!
srad_kernelÄÜÄ Ä√¡(¿ãi0¿û2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡¬2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0¿[2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0†ï2!
reduce_kernelÄÄ Ä√¡(¿ãi0†[2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0†õ2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä¡2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡Z2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0¿[2!
reduce_kernelÄÄ Ä√¡(¿ãi0ÄM2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡°2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0‡¿2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0†Y2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0Äò2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡^2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡K2!
srad_kernelÄÜÄ Ä√¡(¿ãi0Äü2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0Ä√2#
prepare_kernelÄÜÄ Ä√¡(¿ãi0‡]2#
reduce_kernelÄÜÄ Ä√¡(¿ãi0‡ñ2!
reduce_kernelÄÄ Ä√¡(¿ãi0‡[2!
reduce_kernelÄÄ Ä√¡(¿ãi0†L2!
srad_kernelÄÜÄ Ä√¡(¿ãi0‡ù2"
srad2_kernelÄÜÄ Ä√¡(¿ãi0¿∆2$
compress_kernelÄÜÄ Ä√¡(¿ãi0‡\8”·ÂUBÔq//========================================================================================================================================================================================================200
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