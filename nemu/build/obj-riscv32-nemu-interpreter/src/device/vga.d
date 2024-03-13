cmd_/home/ziqiang/ics2021/nemu/build/obj-riscv32-nemu-interpreter/src/device/vga.o := unused

source_/home/ziqiang/ics2021/nemu/build/obj-riscv32-nemu-interpreter/src/device/vga.o := src/device/vga.c

deps_/home/ziqiang/ics2021/nemu/build/obj-riscv32-nemu-interpreter/src/device/vga.o := \
    $(wildcard include/config/vga/size/800x600.h) \
    $(wildcard include/config/target/am.h) \
    $(wildcard include/config/vga/show/screen.h) \
    $(wildcard include/config/vga/size/400x300.h) \
    $(wildcard include/config/has/port/io.h) \
    $(wildcard include/config/vga/ctl/port.h) \
    $(wildcard include/config/vga/ctl/mmio.h) \
    $(wildcard include/config/fb/addr.h) \
  /home/ziqiang/ics2021/nemu/include/common.h \
    $(wildcard include/config/mbase.h) \
    $(wildcard include/config/msize.h) \
    $(wildcard include/config/isa64.h) \
  /home/ziqiang/ics2021/nemu/include/macro.h \
  /home/ziqiang/ics2021/nemu/include/debug.h \
  /home/ziqiang/ics2021/nemu/include/utils.h \
    $(wildcard include/config/target/native/elf.h) \
  /home/ziqiang/ics2021/nemu/include/device/map.h \
  /home/ziqiang/ics2021/nemu/include/cpu/difftest.h \
    $(wildcard include/config/difftest.h) \
  /home/ziqiang/ics2021/nemu/include/difftest-def.h \
    $(wildcard include/config/isa/x86.h) \
    $(wildcard include/config/isa/mips32.h) \
    $(wildcard include/config/isa/riscv32.h) \
    $(wildcard include/config/isa/riscv64.h) \

/home/ziqiang/ics2021/nemu/build/obj-riscv32-nemu-interpreter/src/device/vga.o: $(deps_/home/ziqiang/ics2021/nemu/build/obj-riscv32-nemu-interpreter/src/device/vga.o)

$(deps_/home/ziqiang/ics2021/nemu/build/obj-riscv32-nemu-interpreter/src/device/vga.o):
