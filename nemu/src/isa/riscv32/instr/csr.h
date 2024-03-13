#include <isa.h>
static vaddr_t *csr_id_instr2address(word_t imm) {
  switch(imm) {
    case 0x300: return &(cpu.csr.mstatus);
	case 0x305: return &(cpu.csr.mtvec);
  	case 0x341: return &(cpu.csr.mepc);
	case 0x342: return &(cpu.csr.mcause);
	default: 
	  panic("Unknow CSR");
  }
}

#define csr(imm) csr_id_instr2address(imm)

def_EHelper(csrrw) {
	Log("csr register %x\n", id_src2->imm);
	printf("mstatus: %x\nmtvec: %x\nmepc: %x\nmcause: %x\n", cpu.csr.mstatus, cpu.csr.mtvec, cpu.csr.mepc, cpu.csr.mcause);
	//rtl_mv(s, id_dest->preg, csr(id_src2->imm));
	//rtl_mv(s, s0, csr(id_src2->imm));
	//rtl_mv(s, csr(id_src2->imm), id_src1->preg);
	//rtl_mv(s, id_dest->preg, s0);
	vaddr_t *csr = csr(id_src2->imm);
	vaddr_t temp = *csr;
	*csr = *dsrc1;
	*ddest = temp;
}


def_EHelper(csrrs) {
	//rtl_mv(s, id_dest->preg, csr(id_src2->imm));
	//rtl_or(s, csr(id_src2->imm), csr(id_src2->imm), id_src1->preg);
	Log("csr register's value: %p\n", csr(id_src2->imm));
	//rtl_mv(s, id_dest->preg, s0);
	vaddr_t *csr = csr(id_src2->imm);
	vaddr_t temp = *csr;
	*csr = temp | *dsrc1;
	*ddest = temp;
}


def_EHelper(ecall) {
  bool success = false;
  word_t trap_no = isa_reg_str2val("$a7", &success);
  if(!success)
	Assert(0, "Invalid gpr register!");
  printf("the no is : %x\n", trap_no);
  word_t trap_vec = isa_raise_intr(trap_no, s->pc);
  rtl_li(s, &s->dnpc, trap_vec);
}

def_EHelper(mret) {
  rtl_j(s, cpu.csr.mepc);
}
