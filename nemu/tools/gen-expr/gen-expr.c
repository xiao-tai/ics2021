#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <assert.h>
#include <string.h>

// this should be enough
static char buf[60000] = {};
static char code_buf[60000 + 128] = {}; // a little larger than `buf`
static char *code_format =
"#include <stdio.h>\n"
"int main() { "
"  unsigned result = %s; "
"  printf(\"%%u\", result); "
"  return 0; "
"}";
static int count = 0;

static int choose(int i) {
	return rand()%i;
}

static void gen_num() {
	char num_buf[4];
	num_buf[0] = '\0';
	int num = choose(100) + 1;
	sprintf(num_buf, "%d", num);
	strcat(buf, num_buf);
}

static void gen(char c) {
	char ch_buf[2] = { c, '\0'};
	strcat(buf, ch_buf);
}

static void gen_rand_op() {
	int i = choose(4);
	switch(i) {
		case 0: gen('+'); break;
		case 1: gen('-'); break;
		case 2: gen('*'); break;
		case 3: gen('/'); break;
		default:
	}
}


static void gen_rand_expr() {
  //buf[0] = '\0';
  	if(strlen(buf) > 500) {
		gen('(');gen_num();gen(')');
		return;
	}
  	int i = choose(3);
	switch(i) {
		case 0: gen_num(); break;
		case 1: gen('(');gen_rand_expr();gen(')'); break;
		default: gen_rand_expr();gen_rand_op();gen_rand_expr();break;
	}
}

int main(int argc, char *argv[]) {
  int seed = time(0);
  srand(seed);
  int loop = 1;
  if (argc > 1) {
    sscanf(argv[1], "%d", &loop);
  }
  int i;
  for (i = 0; i < loop; i ++) {
	  buf[0] = '\0';
    gen_rand_expr();

    sprintf(code_buf, code_format, buf);

    FILE *fp = fopen("/tmp/.code.c", "w");
    assert(fp != NULL);
    fputs(code_buf, fp);
    fclose(fp);

    int ret = system("gcc /tmp/.code.c -o /tmp/.expr -Werror 2> /tmp/.error.txt");
    if (ret != 0) {
    	i--;
	continue;
    }

    fp = popen("/tmp/.expr", "r");
    assert(fp != NULL);

    int result;
    if (fscanf(fp, "%d", &result) != 1) {
    	i--;
	continue;
    }
    pclose(fp);

    printf("%u %s\n", result, buf);
  }
  return 0;
}
