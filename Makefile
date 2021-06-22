
default: all

all: gpgpu_pb2.py libcecl_pb2.py libcecl.so

gpgpu_pb2.py: gpgpu.proto
	protoc -I=./ --python_out=./ ./gpgpu.proto

libcecl_pb2.py: libcecl.proto
	protoc -I=./ --python_out=./ ./libcecl.proto

libcecl.so: libcecl.c libcecl.h 
	${CC} -O3 -fPIC -I/usr/local/cuda/include/CL libcecl.c -shared -o libcecl.so -Wl,--whole-archive -Wl,--no-whole-archive -lOpenCL

clean:
	rm -f gpgpu_pb2.py  libcecl_pb2.py libcecl.so *~ *.o
