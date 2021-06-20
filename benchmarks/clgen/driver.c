#include "libcecl.h"
#include <CL/cl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>
#include <assert.h>
#include <time.h>

char *load_kernel(const char *filename)
{
	// Open the source file
	FILE *fp = fopen(filename, "r");
	if (fp == NULL) {
		fprintf(stderr, "Failed opening kernel source\n");
		return NULL;
	}

	// Determine the size of the file
	if (fseek(fp, 0, SEEK_END)){
		fprintf(stderr, "Failed reading kernel source\n");
		return NULL;
	}
	size_t size = ftell(fp);

	// Allocate space for the source code (plus one for null-terminator)
	char *source = (char *) malloc(size + 1);

	// Read the source code into the string
	fseek(fp, 0, SEEK_SET);

	if (fread(source, 1, size, fp) != size){
		fprintf(stderr, "Failed reading kernel source\n");
		return NULL;
	}

	// Null-terminate the string
	source[size] = '\0';

	// Return the pointer to the string
	return source;
}

void 
fatal_CL(cl_int error, int line_no) {

	printf("Error at line %d: ", line_no);

	switch(error) {

		case CL_SUCCESS: 									printf("CL_SUCCESS\n"); break;
		case CL_DEVICE_NOT_FOUND: 							printf("CL_DEVICE_NOT_FOUND\n"); break;
		case CL_DEVICE_NOT_AVAILABLE: 						printf("CL_DEVICE_NOT_AVAILABLE\n"); break;
		case CL_COMPILER_NOT_AVAILABLE: 					printf("CL_COMPILER_NOT_AVAILABLE\n"); break;
		case CL_MEM_OBJECT_ALLOCATION_FAILURE: 				printf("CL_MEM_OBJECT_ALLOCATION_FAILURE\n"); break;
		case CL_OUT_OF_RESOURCES: 							printf("CL_OUT_OF_RESOURCES\n"); break;
		case CL_OUT_OF_HOST_MEMORY: 						printf("CL_OUT_OF_HOST_MEMORY\n"); break;
		case CL_PROFILING_INFO_NOT_AVAILABLE: 				printf("CL_PROFILING_INFO_NOT_AVAILABLE\n"); break;
		case CL_MEM_COPY_OVERLAP: 							printf("CL_MEM_COPY_OVERLAP\n"); break;
		case CL_IMAGE_FORMAT_MISMATCH: 						printf("CL_IMAGE_FORMAT_MISMATCH\n"); break;
		case CL_IMAGE_FORMAT_NOT_SUPPORTED: 				printf("CL_IMAGE_FORMAT_NOT_SUPPORTED\n"); break;
		case CL_BUILD_PROGRAM_FAILURE: 						printf("CL_BUILD_PROGRAM_FAILURE\n"); break;
		case CL_MAP_FAILURE: 								printf("CL_MAP_FAILURE\n"); break;
		case CL_INVALID_VALUE: 								printf("CL_INVALID_VALUE\n"); break;
		case CL_INVALID_DEVICE_TYPE: 						printf("CL_INVALID_DEVICE_TYPE\n"); break;
		case CL_INVALID_PLATFORM: 							printf("CL_INVALID_PLATFORM\n"); break;
		case CL_INVALID_DEVICE: 							printf("CL_INVALID_DEVICE\n"); break;
		case CL_INVALID_CONTEXT: 							printf("CL_INVALID_CONTEXT\n"); break;
		case CL_INVALID_QUEUE_PROPERTIES: 					printf("CL_INVALID_QUEUE_PROPERTIES\n"); break;
		case CL_INVALID_COMMAND_QUEUE: 						printf("CL_INVALID_COMMAND_QUEUE\n"); break;
		case CL_INVALID_HOST_PTR: 							printf("CL_INVALID_HOST_PTR\n"); break;
		case CL_INVALID_MEM_OBJECT: 						printf("CL_INVALID_MEM_OBJECT\n"); break;
		case CL_INVALID_IMAGE_FORMAT_DESCRIPTOR: 			printf("CL_INVALID_IMAGE_FORMAT_DESCRIPTOR\n"); break;
		case CL_INVALID_IMAGE_SIZE: 						printf("CL_INVALID_IMAGE_SIZE\n"); break;
		case CL_INVALID_SAMPLER: 							printf("CL_INVALID_SAMPLER\n"); break;
		case CL_INVALID_BINARY: 							printf("CL_INVALID_BINARY\n"); break;
		case CL_INVALID_BUILD_OPTIONS: 						printf("CL_INVALID_BUILD_OPTIONS\n"); break;
		case CL_INVALID_PROGRAM: 							printf("CL_INVALID_PROGRAM\n"); break;
		case CL_INVALID_PROGRAM_EXECUTABLE: 				printf("CL_INVALID_PROGRAM_EXECUTABLE\n"); break;
		case CL_INVALID_KERNEL_NAME: 						printf("CL_INVALID_KERNEL_NAME\n"); break;
		case CL_INVALID_KERNEL_DEFINITION: 					printf("CL_INVALID_KERNEL_DEFINITION\n"); break;
		case CL_INVALID_KERNEL: 							printf("CL_INVALID_KERNEL\n"); break;
		case CL_INVALID_ARG_INDEX: 							printf("CL_INVALID_ARG_INDEX\n"); break;
		case CL_INVALID_ARG_VALUE: 							printf("CL_INVALID_ARG_VALUE\n"); break;
		case CL_INVALID_ARG_SIZE: 							printf("CL_INVALID_ARG_SIZE\n"); break;
		case CL_INVALID_KERNEL_ARGS: 						printf("CL_INVALID_KERNEL_ARGS\n"); break;
		case CL_INVALID_WORK_DIMENSION: 					printf("CL_INVALID_WORK_DIMENSION\n"); break;
		case CL_INVALID_WORK_GROUP_SIZE: 					printf("CL_INVALID_WORK_GROUP_SIZE\n"); break;
		case CL_INVALID_WORK_ITEM_SIZE: 					printf("CL_INVALID_WORK_ITEM_SIZE\n"); break;
		case CL_INVALID_GLOBAL_OFFSET: 						printf("CL_INVALID_GLOBAL_OFFSET\n"); break;
		case CL_INVALID_EVENT_WAIT_LIST: 					printf("CL_INVALID_EVENT_WAIT_LIST\n"); break;
		case CL_INVALID_EVENT: 								printf("CL_INVALID_EVENT\n"); break;
		case CL_INVALID_OPERATION: 							printf("CL_INVALID_OPERATION\n"); break;
		case CL_INVALID_GL_OBJECT: 							printf("CL_INVALID_GL_OBJECT\n"); break;
		case CL_INVALID_BUFFER_SIZE: 						printf("CL_INVALID_BUFFER_SIZE\n"); break;
		case CL_INVALID_MIP_LEVEL: 							printf("CL_INVALID_MIP_LEVEL\n"); break;
		case CL_INVALID_GLOBAL_WORK_SIZE: 					printf("CL_INVALID_GLOBAL_WORK_SIZE\n"); break;

		#ifdef CL_VERSION_1_1
		case CL_MISALIGNED_SUB_BUFFER_OFFSET: 				printf("CL_MISALIGNED_SUB_BUFFER_OFFSET\n"); break;
		case CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST:	printf("CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST\n"); break;
		/* case CL_INVALID_PROPERTY: 							printf("CL_INVALID_PROPERTY\n"); break; */
		#endif

		default:											printf("Invalid OpenCL error code\n");

	}
	exit(error);

}


#define SEED_SZ (4096)
int seed_start = 0;
float seed[SEED_SZ];

void create_seed()
{
	for (int i = 0; i < SEED_SZ; ++i)
		seed[i] = random() / (1.0 * RAND_MAX);
}

float *generate_arr(int items)
{
	if ((items % 1024) != 0)
		items = ((items / 1024) + 1) * 1024;

	float *arr = (float *) malloc(items * sizeof(float));
	for (int i = 0; i < items; i+=1024)
		memcpy(&(arr[i]), &(seed[seed_start]), 1024*sizeof(float));

	seed_start += 1024;
	if (seed_start >= SEED_SZ)
		seed_start -= SEED_SZ;
	return arr;
}

int execute_kernel(char *kernel_name, const char *src, int gsize, int lsize)
{
	int error;
	cl_uint num_platforms;
	error = clGetPlatformIDs(0, NULL, &num_platforms);
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);

	//printf("# of platforms %d\n", num_platforms);

	// Get list of available platforms
	cl_platform_id *platforms = (cl_platform_id *) malloc(sizeof(cl_platform_id) * num_platforms);
	error = clGetPlatformIDs(num_platforms, platforms, NULL);
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);

	// Create context properties for selected platform
	cl_context_properties context_properties[3] = {CL_CONTEXT_PLATFORM, (cl_context_properties) platforms[0], 0};

	// Create context for selected platform being GPU
	cl_context context;
	context = CECL_CREATE_CONTEXT_FROM_TYPE(context_properties, CL_DEVICE_TYPE_GPU, NULL, NULL, &error);
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);

	// Get number of devices (previousely selected for the context)
	size_t devices_size;
	error = clGetContextInfo(context, CL_CONTEXT_DEVICES, 0, NULL, &devices_size);
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);

	int num_devices = devices_size / sizeof(cl_device_id);
	//printf("# of devices %d\n", num_devices);

	// Get the list of devices (previousely selected for the context)
	cl_device_id* devices = (cl_device_id*)malloc(num_devices*sizeof(cl_device_id));
	error = clGetContextInfo(context, CL_CONTEXT_DEVICES, devices_size, devices, NULL);
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);

	// Select device (previousely selected for the context) (if there are multiple devices, choose the first one)
	cl_device_id device = devices[0];

	// Create a command queue
	cl_command_queue command_queue;
	command_queue = CECL_CREATE_COMMAND_QUEUE(context, device, 0, &error);
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);

	// Create the program
	size_t srclen = strlen(src);
	cl_program program = CECL_PROGRAM_WITH_SOURCE(context, 1, &src, &srclen, &error);
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);


  	char clOptions[150];
  	sprintf(clOptions,"-I.");
  	// Compile the program
	error = CECL_PROGRAM(program, 1, &device, clOptions, NULL, NULL);

	// Print warnings and errors from compilation
	//static cl_char log[65536]; 
	//memset(log, 0, sizeof(log));
	//clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG, sizeof(log)-1, log, NULL);

	//printf("-----OpenCL Compiler Output-----\n");
	//if (strstr(log,"warning:") || strstr(log, "error:")) 
	//	printf("<<<<\n%s\n>>>>\n", log);
	//printf("--------------------------------\n");
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);

	// Create kernel
	cl_kernel kernel;
	kernel = CECL_KERNEL(program, kernel_name, &error);
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);

	float *arr[3];
	create_seed();
	for (int i = 0; i < 3; ++i)
		arr[i] = generate_arr(gsize);

	cl_mem devs[3];

	size_t data_size = sizeof(float) * gsize;
	for (int i = 0; i < 3; ++i) {
		devs[i] = CECL_BUFFER(context, CL_MEM_COPY_HOST_PTR | CL_MEM_READ_WRITE, data_size, arr[i], &error);
		if (error != CL_SUCCESS) 
			fatal_CL(error, __LINE__);

		error = CECL_SET_KERNEL_ARG(kernel, i, sizeof(cl_mem), (void *) &devs[i]);
		if (error != CL_SUCCESS) 
			fatal_CL(error, __LINE__);
	}
	error = CECL_SET_KERNEL_ARG(kernel, 3, sizeof(int), &gsize);
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);

	const size_t gdims[1] = {gsize};
	const size_t ldims[1] = {lsize};
	error = CECL_ND_RANGE_KERNEL(command_queue, kernel, 1, NULL, gdims, ldims, 0, NULL, NULL); 
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);

    error = clFinish(command_queue);
	if (error != CL_SUCCESS) 
		fatal_CL(error, __LINE__);

	for (int i = 0; i < 3; ++i) {
		error = CECL_READ_BUFFER(command_queue, devs[i], CL_TRUE, 0, data_size, arr[i], 0, NULL, NULL);
		if (error != CL_SUCCESS) 
			fatal_CL(error, __LINE__);
	}
}

int main(int argc, char** argv)
{
	assert(argc == 5);

	char *kernel_fname = argv[1];
	char *kernel_name = argv[2];

	int gsize = strtoimax(argv[3], NULL, 10);
	int lsize = strtoimax(argv[4], NULL, 10);

	const char *src = load_kernel(kernel_fname);
	if (src == NULL)
		exit(1);

	execute_kernel(kernel_name, src, gsize, lsize);
}

