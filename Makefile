BR_DIR = $(abspath buildroot)
BR_EXT = $(abspath external)
DEFCONFIG = rpizero2w_defconfig

all: build

setup:
	$(MAKE) -C $(BR_DIR) BR2_EXTERNAL=$(BR_EXT) $(DEFCONFIG)

build:
	$(MAKE) -C $(BR_DIR) BR2_EXTERNAL=$(BR_EXT)

clean:
	$(MAKE) -C $(BR_DIR) clean

.PHONY: all setup build clean
