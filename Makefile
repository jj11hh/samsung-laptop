ifeq ($(KERNELRELEASE), )

KERNELDIR := /lib/modules/$(shell uname -r)/build

PWD :=$(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR)  M=$(PWD) modules
clean:
	$(MAKE) -C $(KERNELDIR)  M=$(PWD) clean
load:
	insmod samsung-laptop.ko
unload:
	rmmod samsung-laptop
else
	obj-m := samsung-laptop.o
endif
