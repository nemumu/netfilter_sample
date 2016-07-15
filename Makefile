MODULE = netfilter_sample.o

obj-m:=$(MODULE)
KERN_BUILD=/lib/modules/$(shell uname -r)/build

all: module

module:
		$(MAKE) -C $(KERN_BUILD) M=$(PWD) modules

clean:
		$(MAKE) -C $(KERN_BUILD) M=$(PWD) clean

install:
		$(MAKE) -C $(KERN_BUILD) M=$(PWD) modules_install
