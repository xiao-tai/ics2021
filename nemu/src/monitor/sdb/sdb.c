#include <isa.h>
#include <cpu/cpu.h>
#include <readline/readline.h>
#include <readline/history.h>
#include "sdb.h"
#include <memory/paddr.h>

static int is_batch_mode = false;

void init_regex();
void init_wp_pool();

/* We use the `readline' library to provide more flexibility to read from stdin. */
static char* rl_gets() {
  static char *line_read = NULL;

  if (line_read) {
    free(line_read);
    line_read = NULL;
  }

  line_read = readline("(nemu) ");

  if (line_read && *line_read) {
    add_history(line_read);
  }

  return line_read;
}

static int cmd_c(char *args) {
  cpu_exec(-1);
  return 0;
}


static int cmd_q(char *args) {
  //edit the nemu_state
  nemu_state.state = NEMU_QUIT;
  return -1;
}

//mine cmd_si
static int cmd_si(char *args) {
	if(args == NULL) {
		cpu_exec(1);
		return 0;
	}
	int num = 0;
	sscanf(args, "%d", &num);
 	cpu_exec(num);
  	return 0;
}

static int cmd_help(char *args);

static int cmd_info(char *args) {
	if(args == NULL){
		printf("Please choose r or w\n");
		return 0;
	}
	if(*args == 'r')
		isa_reg_display();
	else if(*args == 'w'){
		//print watchpoint infomation
	}
	return 0;
}

static int cmd_x(char *args) {
	if(args == NULL) {
		printf("Please type the num and the address");
		return 0;
	}
	char *num_c = strtok(args, " ");
	char *exp_c = num_c + strlen(num_c) + 1;
	int num = 0;
	paddr_t exp = 0;
	sscanf(num_c, "%d", &num);
	sscanf(exp_c, "%x", &exp);
	for(int i = 0; i < num; i++) {
		//zero padding in high bit
		printf("0x%X: %X\n", exp, paddr_read(exp, 4));
		exp += 4;
	}
	return 0;
}

static int cmd_p(char *args) {
	bool success = false;
	printf("exp_val = %x\n", expr(args, &success));
	return 0;
}

static struct {
  const char *name;
  const char *description;
  int (*handler) (char *);
} cmd_table [] = {
  { "help", "Display informations about all supported commands", cmd_help },
  { "c", "Continue the execution of the program", cmd_c },
  { "q", "Exit NEMU", cmd_q },

  /* TODO: Add more commands */
  { "si", "Step by step on program", cmd_si },
  { "info", "display the information. -r: the register info; -w: the watchpoint info", cmd_info},
  { "x", "Scan the memory", cmd_x},
  { "p", "Calculate the expression value, cmd_p", cmd_p},
};

#define NR_CMD ARRLEN(cmd_table)

static int cmd_help(char *args) {
  /* extract the first argument */
  char *arg = strtok(NULL, " ");
  int i;

  if (arg == NULL) {
    /* no argument given */
    for (i = 0; i < NR_CMD; i ++) {
      printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
    }
  }
  else {
    for (i = 0; i < NR_CMD; i ++) {
      if (strcmp(arg, cmd_table[i].name) == 0) {
        printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
        return 0;
      }
    }
    printf("Unknown command '%s'\n", arg);
  }
  return 0;
}

void sdb_set_batch_mode() {
  is_batch_mode = true;
}

void sdb_mainloop() {
  if (is_batch_mode) {
    cmd_c(NULL);
    return;
  }

  for (char *str; (str = rl_gets()) != NULL; ) {
    char *str_end = str + strlen(str);

    /* extract the first token as the command */
    char *cmd = strtok(str, " ");
    if (cmd == NULL) { continue; }

    /* treat the remaining string as the arguments,
     * which may need further parsing
     */
    char *args = cmd + strlen(cmd) + 1;
    if (args >= str_end) {
      args = NULL;
    }

#ifdef CONFIG_DEVICE
    extern void sdl_clear_event_queue();
    sdl_clear_event_queue();
#endif

    int i;
    for (i = 0; i < NR_CMD; i ++) {
      if (strcmp(cmd, cmd_table[i].name) == 0) {
        if (cmd_table[i].handler(args) < 0) { return; }
        break;
      }
    }

    if (i == NR_CMD) { printf("Unknown command '%s'\n", cmd); }
  }
}

void init_sdb() {
  /* Compile the regular expressions. */
  init_regex();

  /* Initialize the watchpoint pool. */
  init_wp_pool();
}
