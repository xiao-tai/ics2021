#include "sdb.h"

#define NR_WP 32



static WP wp_pool[NR_WP] = {};
static WP *head = NULL, *free_ = NULL;
static int size = 0;

void init_wp_pool() {
  int i;
  for (i = 0; i < NR_WP; i ++) {
    wp_pool[i].NO = i;
    wp_pool[i].next = (i == NR_WP - 1 ? NULL : &wp_pool[i + 1]);
  }

  //head = NULL;
  head = wp_pool;
  free_ = wp_pool;
}

/* TODO: Implement the functionality of watchpoint */
WP* new_wp(char* s) {
	if(free_ == NULL)
		assert(0);
	while(free_->exp[0] != '\0')
		free_=free_->next;
	WP* new_one = free_;
	bool success = false;
	new_one->res = expr(s, &success);
	strcpy(new_one->exp, s);

	free_ = free_->next;
	
	size++;
	return new_one;
}

void free_wp(int no) {
	if(wp_pool[no].exp[0] != '\0') {
		wp_pool[no].exp[0] = '\0';
		free_ = &wp_pool[no];
		printf("watchpoint %d free successfully!\n", wp_pool[no].NO);
		size--;
	}
	else 
		printf("No.%d watchpoint is free, please choose another one to free\n", no);
}

void wp_display() {
	if(size == 0) {
		printf("without expression was monitored\n");
		return;
	}
	printf("List:\tNo\texp \n");
	int i = 0;
	for(int j = 0; j < NR_WP; j++) {
		//if this wp has expression
		if(wp_pool[j].exp[0] != '\0') {	
			printf("\t%d:\t%s\n", wp_pool[j].NO, wp_pool[j].exp);
			i++;	
		}
		if(i >= size)
			return;
	}
}

bool check_all_wp() {
	bool check = false;
	bool success = false;
	uint32_t temp = 0;
	for(int i = 0; i < NR_WP; i++) {
		if(wp_pool[i].exp[0] != '\0') {
			temp = expr(wp_pool[i].exp, &success);
			if(temp != wp_pool[i].res) {
				printf("Watchpoint %d: %s\n", wp_pool[i].NO, wp_pool[i].exp);
				printf("old value: %d\n", wp_pool[i].res);
				printf("new value: %d\n\n", temp);
				wp_pool[i].res = temp;
				check = true;
			}
		}
	}
	return check;
}




















