BOARD ?= zylaser
TOP_DIR = $(shell pwd)

all: prepare
	$(MAKE) -C src all

clean:
	$(MAKE) -C src clean
	rm -f $(TOP_DIR)/src/ps7_init.c
	rm -f $(TOP_DIR)/src/ps7_init.h
	rm -f $(TOP_DIR)/src/zynq_fsbl_bsp

prepare:
	ln -sf $(TOP_DIR)/board/$(BOARD)/hw/ps7_init.c $(TOP_DIR)/src/ps7_init.c
	ln -sf $(TOP_DIR)/board/$(BOARD)/hw/ps7_init.h $(TOP_DIR)/src/ps7_init.h
	ln -sf $(TOP_DIR)/board/$(BOARD)/bsp $(TOP_DIR)/src/zynq_fsbl_bsp
