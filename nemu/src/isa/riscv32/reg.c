#include <isa.h>
#include "local-include/reg.h"

const char *regs[] = {
  "$0", "ra", "sp", "gp", "tp", "t0", "t1", "t2",
  "s0", "s1", "a0", "a1", "a2", "a3", "a4", "a5",
  "a6", "a7", "s2", "s3", "s4", "s5", "s6", "s7",
  "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"
};

void isa_reg_display() {
	for (int i = 0; i < 32; i++) {
		printf("%s --> %x\n", regs[i], cpu.gpr[i]._32);
	}
}

word_t isa_reg_str2val(const char *s, bool *success) {
	if(strcmp("$pc", s) == 0) {
		*success = true;
		return cpu.pc; 
	}
    if(strcmp(regs[0], s) == 0) {
    	*success = true;
    	return cpu.gpr[0]._32;
    }
    for(int i = 1; i < ARRLEN(regs); i++) {
    	//跳过$
    	if(strcmp(regs[i], s + 1) == 0) {
    	    *success = true;
    	    return cpu.gpr[i]._32;
    	}
    }
    *success = false;
    return -1;
}
