ifeq ($(KERNELRELEASE), )

KERNELDIR := /lib/modules/$(shell uname -r)/build

PWD :=$(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR)  M=$(PWD) 
clean:
	rm -rf .tmp_versions Module.symvers *.mod.c *.o *.ko .*.cmd Module.markers modules.order
load:
	insmod samsung-laptop.ko
unload:
	rmmod samsung-laptop
else
	obj-m := samsung-laptop.o
endif
