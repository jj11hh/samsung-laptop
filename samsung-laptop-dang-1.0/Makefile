ifeq ($(KERNELRELEASE), )
KERNELRELEASE := $(shell uname -r)
endif

obj-m := samsung-laptop-dang.o
KERNELDIR := /lib/modules/$(KERNELRELEASE)/build

PWD :=$(shell pwd)

.PHONY: all
all: default

.PHONY: default
default:
	$(MAKE) -C $(KERNELDIR)  M=$(PWD) modules
.PHONY: clean
clean:
	$(MAKE) -C $(KERNELDIR)  M=$(PWD) clean
.PHONY: load
load:
	insmod samsung-laptop-dang.ko
.PHONY: unload
unload:
	rmmod samsung-laptop-dang


