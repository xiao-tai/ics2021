#include <common.h>

void init_monitor(int, char *[]);
void am_init_monitor();
void engine_start();
int is_exit_status_bad();

word_t expr(char* e, bool* success);

void test_cmd_p();

int main(int argc, char *argv[]) {
  /* Initialize the monitor. */
#ifdef CONFIG_TARGET_AM
  am_init_monitor();
#else
  init_monitor(argc, argv);
#endif

	//test_cmd_p();
  /* Start engine. */
  engine_start();
  //
  

  return is_exit_status_bad();
}



void test_cmd_p() {
bool success = true;
  char buf[1024];
  FILE* fp = fopen("./tools/gen-expr/input.txt", "r");
  if(!fp) {
  	perror("read failed");
	exit(1);
  }
  while(fgets(buf, 1024, fp) != NULL) {
	buf[strlen(buf) - 1] = '\0';
  	char* res_str = strtok(buf, " ");
	char* exp = strtok(NULL, " ");
	uint32_t res = 0;
	sscanf(res_str, "%d", &res);
	if(res == expr(exp, &success))
		printf("OK\t");
	else
		printf("failed\t");
  }
  fclose(fp);
}

