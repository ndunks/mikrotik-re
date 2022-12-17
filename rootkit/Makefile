CFLAGS = -Wall -Wnounused-result

SOURCE_FILE = get_syscall.c
OBJECT_FILE = $(SOURCE_FILE:.c=.o)
TARGET_FILE = $(SOURCE_FILE:.c=.ko)

#KERNEL_PATH = /lib/modules/$(shell uname -r)/build
KERNEL_PATH = /rifin/app/linux-5.6.3
CFLAGS_get_syscall.o := -fstack-protector

obj-m := $(OBJECT_FILE)

all:
	$(MAKE) ARCH=i386 -C $(KERNEL_PATH) M=$(PWD) modules
	cp -f get_syscall.ko ../mt7.6/custom-initram/rootkit.ko

clean:
	$(MAKE) -C $(KERNEL_PATH) M=$(PWD) clean
	rm -rf Module.symvers *.mod.c *.ko *.o *~
