#include <memory/host.h>
#include <memory/paddr.h>
#include <device/mmio.h>
#include <isa.h>

#if   defined(CONFIG_TARGET_AM)
static uint8_t *pmem = NULL;
#else
static uint8_t pmem[CONFIG_MSIZE] PG_ALIGN = {};
#endif

#ifdef CONFIG_MTRACE
static const char memory_address_type[2][2] = {{'M', 'r'}, {'M', 'w'}};	//分别为读写

static void memory_address_trace(paddr_t addr, int len, int data, int type) {
	static char mtrace[128]; 	//内存踪迹信息
	//memset(mtrace, ' ', sizeof(mtrace));
	//strncpy(mtrace, memory_address_type[type], sizeof(mtrace));
	strcpy(mtrace, memory_address_type[type]);	
	memset(mtrace + 2, ' ', 4);
	char *p = mtrace + 6;
	p += sprintf(p, "0x%x   ", addr);
	p += sprintf(p, "%d   ", len);
	uint8_t *data_ptr = (uint8_t*)&data;
	for(int i = len - 1; i >= 0; i--) {
		p += sprintf(p, "%02x ", data_ptr[i]);
	}
	*p = '\0';
#ifdef CONFIG_MTRACE_COND
	if(MTRACE_COND) { log_write("%s\n", mtrace); }
#endif
	printf("%s\n", mtrace);
}
#endif

uint8_t* guest_to_host(paddr_t paddr) { return pmem + paddr - CONFIG_MBASE; }
paddr_t host_to_guest(uint8_t *haddr) { return haddr - pmem + CONFIG_MBASE; }

static word_t pmem_read(paddr_t addr, int len) {
  word_t ret = host_read(guest_to_host(addr), len);
  return ret;
}

static void pmem_write(paddr_t addr, int len, word_t data) {
  host_write(guest_to_host(addr), len, data);
}

void init_mem() {
#if   defined(CONFIG_TARGET_AM)
  pmem = malloc(CONFIG_MSIZE);
  assert(pmem);
#endif
#ifdef CONFIG_MEM_RANDOM
  uint32_t *p = (uint32_t *)pmem;
  int i;
  for (i = 0; i < (int) (CONFIG_MSIZE / sizeof(p[0])); i ++) {
    p[i] = rand();
  }
#endif
  Log("physical memory area [" FMT_PADDR ", " FMT_PADDR "]",
      (paddr_t)CONFIG_MBASE, (paddr_t)CONFIG_MBASE + CONFIG_MSIZE);
}

word_t paddr_read(paddr_t addr, int len) {
  if (likely(in_pmem(addr))) {
#ifdef CONFIG_MTRACE
		word_t data = pmem_read(addr, len);
		memory_address_trace(addr, len, data, 0);
		return data;
#else
		return pmem_read(addr, len);
#endif
	}
  MUXDEF(CONFIG_DEVICE, return mmio_read(addr, len),
    panic("address = " FMT_PADDR " is out of bound of pmem [" FMT_PADDR ", " FMT_PADDR ") at pc = " FMT_WORD,
      addr, CONFIG_MBASE, CONFIG_MBASE + CONFIG_MSIZE, cpu.pc));
}

void paddr_write(paddr_t addr, int len, word_t data) {
#ifdef CONFIG_MTRACE
	memory_address_trace(addr, len, data, 1);
#endif
  if (likely(in_pmem(addr))) { pmem_write(addr, len, data); return; }
  MUXDEF(CONFIG_DEVICE, mmio_write(addr, len, data),
    panic("address = " FMT_PADDR " is out of bound of pmem [" FMT_PADDR ", " FMT_PADDR ") at pc = " FMT_WORD,
      addr, CONFIG_MBASE, CONFIG_MBASE + CONFIG_MSIZE, cpu.pc));
}
