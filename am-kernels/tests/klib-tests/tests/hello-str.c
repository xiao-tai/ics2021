#include "trap.h"

char buf[128];

int main() {


	sprintf(buf, "%s", "Hello world!\n");
	check(strcmp(buf, "Hello world!\n") == 0);
	
	sprintf(buf, "%s %s", "Hello world!\n", "1234");
	check(strcmp(buf, "Hello world!\n 1234") == 0);

	sprintf(buf, "%d", 1);
	check(strcmp(buf, "1") == 0);
	
	sprintf(buf, "%d", 1234);
	check(strcmp(buf, "1234") == 0);
	
	sprintf(buf, "%d + %d = %d\n", 1, 1, 2);
	check(strcmp(buf, "1 + 1 = 2\n") == 0);

	sprintf(buf, "%d + %d = %d\n", 2, 10, 12);
	check(strcmp(buf, "2 + 10 = 12\n") == 0);

	return 0;
}
