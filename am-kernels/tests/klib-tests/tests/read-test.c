#include "trap.h"


int main() {
	const char s1[10] = "aaaaab";
	char s2[10] = "aaaaaccccc";
	char s3[10] = "cccccccccc";

	memcpy(s2, s1, 5);
	assert(memcmp(s1, s2, 5) == 0);
	assert(memcmp(s1, s2, 6) != 0);
	//assert(memcmp(s1, s2, 5) == 0);
	//
	memmove(s2, s2+5, 5);
	assert(memcmp(s2, s3, 10) == 0);
	return 0;
}
