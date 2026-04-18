BR_DIR = $(abspath buildroot)
BR_EXT = $(abspath external)
DEFCONFIG = rpizero2w_defconfig

all: build

setup:
	$(MAKE) -C $(BR_DIR) BR2_EXTERNAL=$(BR_EXT) $(DEFCONFIG)

%::
	$(MAKE) -C $(BR_DIR) BR2_EXTERNAL=$(BR_EXT) $@

.PHONY: all setup
