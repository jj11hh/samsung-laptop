.PHONY: install

PWD := $(shell pwd)

install:
	cp -r $(PWD)/samsung-laptop-dang-1.0 /usr/src
	dkms add samsung-laptop-dang/1.0
	dkms build samsung-laptop-dang/1.0
	dkms install samsung-laptop-dang/1.0

uninstall:
	dkms remove samsung-laptop-dang/1.0 --all
	rm -rf /usr/src/samsung-laptop-dang-1.0
