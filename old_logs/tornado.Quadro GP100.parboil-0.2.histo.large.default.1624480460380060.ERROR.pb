
tornadoQuadro GP100parboil-0.2"histo.large*default2«« ÛÒÔ£/ëclCreateCommandQueue ; GPU ; Quadro GP100
clCreateProgramWithSource
clCreateProgramWithSource
clCreateProgramWithSource
clCreateProgramWithSource
clBuildProgram ; clProgram[i]
clBuildProgram ; clProgram[i]
clBuildProgram ; clProgram[i]"«Resolving OpenCL library...
LD_LIBRARY_PATH=:/home/abhinav/gpgpu.bechmarks:/usr/local/cuda/lib64 ldd build/opencl_base_default/histo | grep OpenCL
	libOpenCL.so.1 => /usr/local/cuda/lib64/libOpenCL.so.1 (0x00007fc73a33f000)
LD_LIBRARY_PATH=:/home/abhinav/gpgpu.bechmarks:/usr/local/cuda/lib64 build/opencl_base_default/histo -i /tmp/benchmarks_gpgpu_parboil-0.25txkztp6/datasets/histo/large/input/img.bin -o /tmp/benchmarks_gpgpu_parboil-0.25txkztp6/benchmarks/histo/run/large/ref.bmp -- 10000 4
Parboil parallel benchmark suite, version 0.2

Run failed!
*+unknown err code!
make: *** [run] Error 1018‚Š¦YB¼/***************************************************************************
 *
 *            (C) Copyright 2010 The Board of Trustees of the
 *                        University of Illinois
 *                         All Rights Reserved
 *
 ***************************************************************************/

#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

__kernel void histo_prescan_kernel (__global unsigned int* input, int size, __global unsigned int* minmax)
{

    __local float Avg[PRESCAN_THREADS];
    __local float StdDev[PRESCAN_THREADS];

    int threadIdxx = get_local_id(0);
    int blockDimx = get_local_size(0);
    int blockIdxx = get_group_id(0);
    int stride = size/(get_num_groups(0));
    int addr = blockIdxx*stride+threadIdxx;
    int end = blockIdxx*stride + stride/8; // Only sample 1/8th of the input data

    // Compute the average per thread
    float avg = 0.0;
    unsigned int count = 0;
    while (addr < end){
      avg += input[addr];
      count++;
	  addr += blockDimx;
    }
    avg /= count;
    Avg[threadIdxx] = avg;

    // Compute the standard deviation per thread
    int addr2 = blockIdxx*stride+threadIdxx;
    float stddev = 0;
    while (addr2 < end){
        stddev += (input[addr2]-avg)*(input[addr2]-avg);
        addr2 += blockDimx;
    }
    stddev /= count;
    StdDev[threadIdxx] = sqrt(stddev);

#define SUM(stride__)\
if(threadIdxx < stride__){\
    Avg[threadIdxx] += Avg[threadIdxx+stride__];\
    StdDev[threadIdxx] += StdDev[threadIdxx+stride__];\
}

    // Add all the averages and standard deviations from all the threads
    // and take their arithmetic average (as a simplified approximation of the
    // real average and standard deviation.
#if (PRESCAN_THREADS >= 32)
    for (int stride = PRESCAN_THREADS/2; stride >= 32; stride = stride >> 1){
	barrier(CLK_LOCAL_MEM_FENCE);
	SUM(stride);
    }
#endif
#if (PRESCAN_THREADS >= 16)
    SUM(16);
#endif
#if (PRESCAN_THREADS >= 8)
    SUM(8);
#endif
#if (PRESCAN_THREADS >= 4)
    SUM(4);
#endif
#if (PRESCAN_THREADS >= 2)
    SUM(2);
#endif

    if (threadIdxx == 0){
        float avg = Avg[0]+Avg[1];
	avg /= PRESCAN_THREADS;
	float stddev = StdDev[0]+StdDev[1];
	stddev /= PRESCAN_THREADS;

        // Take the maximum and minimum range from all the blocks. This will
        // be the final answer. The standard deviation is taken out to 10 sigma
        // away from the average. The value 10 was obtained empirically.
	    atom_min(minmax,((unsigned int)(avg-10*stddev))/(KB*1024));
        atom_max(minmax+1,((unsigned int)(avg+10*stddev))/(KB*1024));
    }
}B÷)/***************************************************************************
 *
 *            (C) Copyright 2010 The Board of Trustees of the
 *                        University of Illinois
 *                         All Rights Reserved
 *
 ***************************************************************************/

__kernel void calculateBin (
        __const unsigned int bin,
        __global uchar4 *sm_mapping)
{
        unsigned char offset  =  bin        %   4;
        unsigned char indexlo = (bin >>  2) % 256;
        unsigned char indexhi = (bin >> 10) %  KB;
        unsigned char block   =  bin / BINS_PER_BLOCK;

        offset *= 8;

        uchar4 sm;
        sm.x = block;
        sm.y = indexhi;
        sm.z = indexlo;
        sm.w = offset;

        *sm_mapping = sm;
}

__kernel void histo_intermediates_kernel (
        __global uint2 *input,
        unsigned int height,
        unsigned int width,
        unsigned int input_pitch,
        __global uchar4 *sm_mappings)
{
        int threadIdxx = get_local_id(0);
        int blockDimx = get_local_size(0);
        unsigned int line = UNROLL * (get_group_id(0));// 16 is the unroll factor;

        __global uint2 *load_bin = input + line * input_pitch + threadIdxx;

        unsigned int store = line * width + threadIdxx;
        bool skip = (width % 2) && (threadIdxx == (blockDimx - 1));

        #pragma unroll
        for (int i = 0; i < UNROLL; i++)
        {
                uint2 bin_value = *load_bin;

                calculateBin (
                        bin_value.x,
                        &sm_mappings[store]
                );

                if (!skip) calculateBin (
                        bin_value.y,
                        &sm_mappings[store + blockDimx]
                );

                load_bin += input_pitch;
                store += width;
        }
}

__kernel void histo_intermediates_kernel_compat (
        __global uint2 *input,
        unsigned int height,
        unsigned int width,
        unsigned int input_pitch,
        __global uchar4 *sm_mappings)
{
        int threadIdxx = get_local_id(0);
        int blockDimx = input_pitch; //get_local_size(0);

        int tid2 = get_local_id(0) + get_local_size(0);

        unsigned int line = UNROLL * (get_group_id(0));// 16 is the unroll factor;

        __global uint2 *load_bin = input + line * input_pitch + threadIdxx;
        __global uint2 *load_bin2 = input + line * input_pitch + tid2;

        unsigned int store = line * width + threadIdxx;
        unsigned int store2 = line * width + tid2;

        bool skip = (width % 2) && (threadIdxx == (input_pitch - 1));
        bool skip2 = (width % 2) && (tid2 == (input_pitch - 1));

        bool does2 = tid2 < input_pitch;

        #pragma unroll
        for (int i = 0; i < UNROLL; i++)
        {
                uint2 bin_value = *load_bin;


                calculateBin (
                        bin_value.x,
                        &sm_mappings[store]
                );

                if (!skip) calculateBin (
                        bin_value.y,
                        &sm_mappings[store + blockDimx]
                );

                load_bin += input_pitch;
                store += width;

                if (does2) {
                  uint2 bin_val2 = *load_bin2;

                  calculateBin (
                        bin_val2.x,
                        &sm_mappings[store2]
                  );

                  if (!skip) calculateBin (
                        bin_val2.y,
                        &sm_mappings[store2 + blockDimx]
                  );

                  load_bin2 += input_pitch;
                  store2 += width;
                }
        }

        /*
        if (does2) {
          #pragma unroll
          for (int i = 0; i < UNROLL; i++) {
            uint2 bin_val2 = *load_bin2;

            calculateBin (
                bin_val2.x,
                &sm_mappings[store2]
            );

            if (!skip) calculateBin (
                           bin_val2.y,
                           &sm_mappings[store2 + blockDimx]
                        );

            load_bin2 += input_pitch;
            store2 += width;
          }
       }
     */

}


/*
__kernel void histo_intermediates_kernel_variable (
        __global uint2 *input,
        unsigned int height,
        unsigned int width,
        unsigned int input_pitch, // = half_width in orig
        unsigned int stride,
        __global uchar4 *sm_mappings)
{
        int threadIdxx = get_local_id(0);
        int blockDimx = get_local_size(0);
        unsigned int line = UNROLL * (get_group_id(0));// 16 is the unroll factor;

        __global uint2 *load_bin = input + line * input_pitch + threadIdxx;

        unsigned int store = line * width + threadIdxx;
        bool skip = (width % 2) && (threadIdxx == (blockDimx - 1));

        #pragma unroll
        for (int i = 0; i < UNROLL; i++)
        {
                uint2 bin_value = *load_bin;

                calculateBin (
                        bin_value.x,
                        &sm_mappings[store]
                );

                if (!skip) calculateBin (
                        bin_value.y,
                        &sm_mappings[store + blockDimx]
                );

                load_bin += input_pitch;
                store += width;
        }
}
*/BˆB/***************************************************************************
 *
 *            (C) Copyright 2010 The Board of Trustees of the
 *                        University of Illinois
 *                         All Rights Reserved
 *
 ***************************************************************************/

#pragma OPENCL EXTENSION cl_khr_local_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable

void testIncrementGlobal (
        __global unsigned int *global_histo,
        unsigned int sm_range_min,
        unsigned int sm_range_max,
        const uchar4 sm)
{
        const unsigned int range = sm.x;
        const unsigned int indexhi = sm.y;
        const unsigned int indexlo = sm.z;
        const unsigned int offset  = sm.w;

        // Scan for inputs that are outside the central region of histogram
        if (range < sm_range_min || range > sm_range_max)
        {
                const unsigned int bin = range * BINS_PER_BLOCK + offset / 8 + (indexlo << 2) + (indexhi << 10);
                const unsigned int bin_div2 = bin / 2;
                const unsigned int bin_offset = (bin % 2 == 1) ? 16 : 0;

                unsigned int old_val = global_histo[bin_div2];
                unsigned short old_bin = (old_val >> bin_offset) & 0xFFFF;

                if (old_bin < 255)
                {
                        atom_add (&global_histo[bin_div2], 1 << bin_offset);
                }
        }
}

void testIncrementLocal (
        __global unsigned int *global_overflow,
        __local unsigned int smem[KB][256],
        const unsigned int myRange,
        const uchar4 sm)
{
        const unsigned int range = sm.x;
        const unsigned int indexhi = sm.y;
        const unsigned int indexlo = sm.z;
        const unsigned int offset  = sm.w;

        // Scan for inputs that are inside the central region of histogram
        if (range == myRange)
        {
                // Atomically increment shared memory
                unsigned int add = (unsigned int)(1 << offset);
                unsigned int prev = atom_add (&smem[indexhi][indexlo], add);

                // Check if current bin overflowed
                unsigned int prev_bin_val = (prev >> offset) & 0x000000FF;

                // If there was an overflow, record it and record if it cascaded into other bins
                if (prev_bin_val == 0x000000FF)
                {
                        const unsigned int bin =
                                range * BINS_PER_BLOCK +
                                offset / 8 + (indexlo << 2) + (indexhi << 10);

                        bool can_overflow_to_bin_plus_1 = (offset < 24) ? true : false;
                        bool can_overflow_to_bin_plus_2 = (offset < 16) ? true : false;
                        bool can_overflow_to_bin_plus_3 = (offset <  8) ? true : false;

                        bool overflow_into_bin_plus_1 = false;
                        bool overflow_into_bin_plus_2 = false;
                        bool overflow_into_bin_plus_3 = false;

                        unsigned int prev_bin_plus_1_val = (prev >> (offset +  8)) & 0x000000FF;
                        unsigned int prev_bin_plus_2_val = (prev >> (offset + 16)) & 0x000000FF;
                        unsigned int prev_bin_plus_3_val = (prev >> (offset + 24)) & 0x000000FF;

                        if (can_overflow_to_bin_plus_1 &&        prev_bin_val == 0x000000FF) overflow_into_bin_plus_1 = true;
                        if (can_overflow_to_bin_plus_2 && prev_bin_plus_1_val == 0x000000FF) overflow_into_bin_plus_2 = true;
                        if (can_overflow_to_bin_plus_3 && prev_bin_plus_2_val == 0x000000FF) overflow_into_bin_plus_3 = true;

                        unsigned int bin_plus_1_add;
                        unsigned int bin_plus_2_add;
                        unsigned int bin_plus_3_add;

                        if (overflow_into_bin_plus_1) bin_plus_1_add = (prev_bin_plus_1_val < 0x000000FF) ? 0xFFFFFFFF : 0x000000FF;
                        if (overflow_into_bin_plus_2) bin_plus_2_add = (prev_bin_plus_2_val < 0x000000FF) ? 0xFFFFFFFF : 0x000000FF;
                        if (overflow_into_bin_plus_3) bin_plus_3_add = (prev_bin_plus_3_val < 0x000000FF) ? 0xFFFFFFFF : 0x000000FF;

                                                      atom_add (&global_overflow[bin],  256);
                        if (overflow_into_bin_plus_1) atom_add (&global_overflow[bin+1], bin_plus_1_add);
                        if (overflow_into_bin_plus_2) atom_add (&global_overflow[bin+2], bin_plus_2_add);
                        if (overflow_into_bin_plus_3) atom_add (&global_overflow[bin+3], bin_plus_3_add);
                }
        }
}

void clearMemory (__local unsigned int smem[KB][256])
{
        for (int i = get_local_id(0), blockDimx = get_local_size(0); i < BINS_PER_BLOCK / 4; i += blockDimx)
        {
                ((__local unsigned int*)smem)[i] = 0;
        }
}

void copyMemory (__global unsigned int *dst, __local unsigned int src[KB][256])
{
        for (int i = get_local_id(0), blockDimx = get_local_size(0); i < BINS_PER_BLOCK/4; i += blockDimx)
        {
                atom_add(dst+i*4, (((__local unsigned int*)src)[i] >> 0) & 0xFF );
                atom_add(dst+i*4+1, (((__local unsigned int*)src)[i] >> 8) & 0xFF);
                atom_add(dst+i*4+2, (((__local unsigned int*)src)[i] >> 16) & 0xFF);
                atom_add(dst+i*4+3, (((__local unsigned int*)src)[i] >> 24) & 0xFF);
                //dst[i] = ((__local unsigned int*)src)[i];
        }
}

__kernel void histo_main_kernel (
        __global uchar4 *sm_mappings,
        unsigned int num_elements,
        unsigned int sm_range_min,
        unsigned int sm_range_max,
        unsigned int histo_height,
        unsigned int histo_width,
        __global unsigned int *global_subhisto,
        __global unsigned int *global_histo,
        __global unsigned int *global_overflow)
{
        /* Most optimal solution uses 24 * 1024 bins per threadblock */
        __local unsigned int sub_histo[KB][256];

        /* Each threadblock contributes to a specific 24KB range of histogram,
         * and also scans every N-th line for interesting data.  N = gridDim.x
         */
        unsigned int blockDimx = get_local_size(0);
        unsigned int gridDimx = get_num_groups(0);
        unsigned int local_scan_range = sm_range_min + get_group_id(1);
        unsigned int local_scan_load = get_group_id(0) * blockDimx + get_local_id(0);

        clearMemory (sub_histo);
        barrier(CLK_LOCAL_MEM_FENCE); //mem_fence(CLK_GLOBAL_MEM_FENCE);//        __syncthreads();

        if (get_group_id(1) == 0 )
        {
                // Loop through and scan the input
                while (local_scan_load < num_elements)
                {
                        // Read buffer
                        uchar4 sm = sm_mappings[local_scan_load];
                        local_scan_load += blockDimx * gridDimx;

                        // Check input
                        testIncrementLocal (
                                global_overflow,
                                sub_histo,
                                local_scan_range,
                                sm
                        );
                        testIncrementGlobal (
                                global_histo,
                                sm_range_min,
                                sm_range_max,
                                sm
                        );
                }
        }
        else
        {
                // Loop through and scan the input
                while (local_scan_load < num_elements)
                {
                        // Read buffer
                        uchar4 sm = sm_mappings[local_scan_load];
                        local_scan_load += blockDimx * gridDimx;

                        // Check input
                        testIncrementLocal (
                                global_overflow,
                                sub_histo,
                                local_scan_range,
                                sm
                        );
                }
        }

        // Store sub histogram to global memory
        unsigned int store_index = (local_scan_range * BINS_PER_BLOCK);

        barrier(CLK_LOCAL_MEM_FENCE); //__syncthreads();
        copyMemory (&(global_subhisto[store_index]), sub_histo);
}B·!/***************************************************************************
 *
 *            (C) Copyright 2010 The Board of Trustees of the
 *                        University of Illinois
 *                         All Rights Reserved
 *
 ***************************************************************************/

/* Combine all the sub-histogram results into one final histogram */
__kernel void histo_final_kernel (
    unsigned int sm_range_min,
    unsigned int sm_range_max,
    unsigned int histo_height,
    unsigned int histo_width,
    __global unsigned int *global_subhisto,
    __global unsigned int *global_histo,
    __global unsigned int *global_overflow,
    __global unsigned int *final_histo) //final output
{
    unsigned int blockDimx = get_local_size(0);
    unsigned int gridDimx = get_num_groups(0);
    unsigned int start_offset = get_local_id(0) + get_group_id(0) * blockDimx;
    const ushort4 zero_short  = {0, 0, 0, 0};
    const uint4 zero_int      = {0, 0, 0, 0};

    unsigned int size_low_histo = sm_range_min * BINS_PER_BLOCK;
    unsigned int size_mid_histo = (sm_range_max - sm_range_min +1) * BINS_PER_BLOCK;

    /* Clear lower region of global histogram */
    for (unsigned int i = start_offset; i < size_low_histo/4; i += gridDimx * blockDimx)
    {
        ushort4 global_histo_data = ((__global ushort4*)global_histo)[i];
        ((__global ushort4*)global_histo)[i] = zero_short;

        global_histo_data.x = min (global_histo_data.x, (ushort) 255);
        global_histo_data.y = min (global_histo_data.y, (ushort) 255);
        global_histo_data.z = min (global_histo_data.z, (ushort) 255);
        global_histo_data.w = min (global_histo_data.w, (ushort) 255);

        uchar4 final_histo_data = (uchar4) (
            (unsigned char) global_histo_data.x,
            (unsigned char) global_histo_data.y,
            (unsigned char) global_histo_data.z,
            (unsigned char) global_histo_data.w
        );

        ((__global uchar4*)final_histo)[i] = final_histo_data;
    }

    /* Clear the middle region of the overflow buffer */
    for (unsigned int i = (size_low_histo/4) + start_offset; i < (size_low_histo+size_mid_histo)/4; i += gridDimx * blockDimx)
    {
        uint4 global_histo_data = ((__global uint4*)global_overflow)[i];
        ((__global uint4*)global_overflow)[i] = zero_int;

        uint4 internal_histo_data = (uint4)(
            global_histo_data.x,
            global_histo_data.y,
            global_histo_data.z,
            global_histo_data.w
        );

        unsigned int bin4in0 = ((__global unsigned int*)global_subhisto)[i*4];
        unsigned int bin4in1 = ((__global unsigned int*)global_subhisto)[i*4+1];
        unsigned int bin4in2 = ((__global unsigned int*)global_subhisto)[i*4+2];
        unsigned int bin4in3 = ((__global unsigned int*)global_subhisto)[i*4+3];

        internal_histo_data.x = min (bin4in0, (unsigned int) 255);
        internal_histo_data.y = min (bin4in1, (unsigned int) 255);
        internal_histo_data.z = min (bin4in2, (unsigned int) 255);
        internal_histo_data.w = min (bin4in3, (unsigned int) 255);

        uchar4 final_histo_data = (uchar4) (
            internal_histo_data.x,
            internal_histo_data.y,
            internal_histo_data.z,
            internal_histo_data.w
        );

        ((__global uchar4*)final_histo)[i] = final_histo_data;
    }

    /* Clear the upper region of global histogram */
    for (unsigned int i = ((size_low_histo+size_mid_histo)/4) + start_offset; i < (histo_height*histo_width)/4; i += gridDimx * blockDimx)
    {
        ushort4 global_histo_data = ((__global ushort4*)global_histo)[i];
        ((__global ushort4*)global_histo)[i] = zero_short;

        global_histo_data.x = min (global_histo_data.x, (ushort) 255);
        global_histo_data.y = min (global_histo_data.y, (ushort) 255);
        global_histo_data.z = min (global_histo_data.z, (ushort) 255);
        global_histo_data.w = min (global_histo_data.w, (ushort) 255);

        uchar4 final_histo_data = (uchar4) (
            global_histo_data.x,
            global_histo_data.y,
            global_histo_data.z,
            global_histo_data.w
        );

        ((__global uchar4*)final_histo)[i] = final_histo_data;
    }
}Jp-D PRESCAN_THREADS=512                -D KB=48 -D UNROLL=16                -D BINS_PER_BLOCK=49152 -D BLOCK_X=14Jp-D PRESCAN_THREADS=512                -D KB=48 -D UNROLL=16                -D BINS_PER_BLOCK=49152 -D BLOCK_X=14Jp-D PRESCAN_THREADS=512                -D KB=48 -D UNROLL=16                -D BINS_PER_BLOCK=49152 -D BLOCK_X=14