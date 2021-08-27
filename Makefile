
default: all

all: gpgpu_pb2.py libcecl_pb2.py libcecl.so libclc_helper

gpgpu_pb2.py: gpgpu.proto
	protoc -I=./ --python_out=./ ./gpgpu.proto

libcecl_pb2.py: libcecl.proto
	protoc -I=./ --python_out=./ ./libcecl.proto

libcecl.so: libcecl.c libcecl.h 
	${CC} -O3 -fPIC -I/usr/local/cuda/include libcecl.c -shared -o libcecl.so -Wl,--whole-archive -Wl,--no-whole-archive -lOpenCL

libclc_helper: 
	/hdd/llvm/source/llvm-project/build/bin/clang -target nvptx64-nvidia-nvcl -cl-std=CL2.0 -c -x cl -emit-llvm -Xclang -finclude-default-header -D__OPENCL_VERSION__ -I./ -include "helper.h" helper.cl -o helper.ll
clean:
	rm -f gpgpu_pb2.py  libcecl_pb2.py libcecl.so helper.ll *~ *.o
