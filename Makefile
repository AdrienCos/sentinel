obj-m += mod_sentinel.o
mod_sentinel-objs += sentinel_helper.o sentinel_sysfs.o sentinel.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) clean
