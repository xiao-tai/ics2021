#include "trap.h"
#include <limits.h>


int main() {
	int data[] = {0, INT_MAX / 17, INT_MAX, INT_MIN, INT_MIN + 1,
						UINT_MAX / 17, INT_MAX / 17, UINT_MAX};
	//int data[] = {0, 12, 123, 12354, 42352, 123};
	for(int i = 0; i < sizeof(data)/sizeof(data[0]); i++)
		printf("%d\t", data[i]);
	printf("\n");
	printf("wawaww %d %d %d", data[0], data[1], data[2]);
	
	return 0;
}
