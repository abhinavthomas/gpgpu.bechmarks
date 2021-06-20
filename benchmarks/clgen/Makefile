
CFLAGS ?= -I/opt/intel/system_studio_2020/opencl/SDK/include -I../../
LDFLAGS ?= -L../../ -lOpenCL -lcecl
default: all

all: driver

driver: driver.c
	${CC} -march=native -O3 -o driver driver.c ${CFLAGS} ${LDFLAGS}

clean:
	rm -f driver

distclean:
	rm -f driver
