#include <cpu/decode.h>
#include "../local-include/rtl.h"

#define INSTR_LIST(f) \
	f(lui) f(lb) f(lbu) f(lh) f(lhu)\
	f(lw) f(sw) f(sh) f(sb)\
	f(addi) f(andi) f(slli) f(sltiu) f(sll) f(srl) f(sra) f(srli) f(srai) f(xori) f(ori) f(slti)\
	f(auipc) \
	f(add) f(sub) f(xor) f(or) f(and) \
	f(mul) f(mulh) f(div) f(divu) f(rem) f(remu) \
	f(slt) f(sltu) \
	f(beq) f(bne) f(blt) f(bge) f(bltu) f(bgeu) \
	f(jal) f(jalr) \
	f(ecall) f(csrrw) f(csrrs) f(mret)\
	f(inv) f(nemu_trap)

def_all_EXEC_ID();
