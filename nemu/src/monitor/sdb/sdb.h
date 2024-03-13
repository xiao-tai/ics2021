#ifndef __SDB_H__
#define __SDB_H__

#include <common.h>

typedef struct watchpoint {
  int NO;
  struct watchpoint *next;

  /* TODO: Add more members if necessary */
  char exp[32];	//表达式
  uint32_t res;
} WP;



word_t expr(char *e, bool *success);
WP* new_wp(char* s);
void free_wp(int);
void wp_display();
bool check_all_wp();

#endif
