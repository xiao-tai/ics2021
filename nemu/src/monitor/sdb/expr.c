#include <isa.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <regex.h>

enum {
  TK_NOTYPE = 256, TK_EQ, TK_NUM, TK_MINUS,

  /* TODO: Add more token types */
	TK_HEX_NUM, TK_REG, TK_DEREF, TK_UEQ,
};

static struct rule {
  const char *regex;
  int token_type;
} rules[] = {

  /* TODO: Add more rules.
   * Pay attention to the precedence level of different rules.
   */
	{"0x[0-9a-zA-Z]+", TK_HEX_NUM},
	{"\\$[0-0a-z]+", TK_REG},
  	{" +", TK_NOTYPE},    // spaces
  	{"\\+", '+'},         // plus
  	{"==", TK_EQ},        // equal
	{"!=", TK_UEQ},
	{"[0-9]+", TK_NUM},	//number
	{"-", '-'},	//subtract
	{"\\*", '*'},	//multiply
	{"/", '/'}, 	//divide
	{"[(]", '('},
	{"[)]", ')'},
	{"$$", '$'},
	//{"^0x[0-9a-fA-F]+", TK_HEX_NUM},
	//{"^\\$[0-9a-z]+", TK_REG_NAME},
	
};

#define NR_REGEX ARRLEN(rules)

static regex_t re[NR_REGEX] = {};

/* Rules are used for many times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
  int i;
  char error_msg[128];
  int ret;

  for (i = 0; i < NR_REGEX; i ++) {
    ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
    if (ret != 0) {
      regerror(ret, &re[i], error_msg, 128);
      panic("regex compilation failed: %s\n%s", error_msg, rules[i].regex);
    }
  }
}

typedef struct token {
  int type;
  char str[32];
} Token;

static Token tokens[1024] __attribute__((used)) = {};
static int nr_token __attribute__((used))  = 0;

static bool make_token(char *e) {
  int position = 0;
  int i;
  regmatch_t pmatch;

  nr_token = 0;

  while (e[position] != '\0') {
    /* Try all rules one by one. */
    for (i = 0; i < NR_REGEX; i ++) {
      if (regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
        char *substr_start = e + position;
        int substr_len = pmatch.rm_eo;

        //Log("match rules[%d] = \"%s\" at position %d with len %d: %.*s",
        //    i, rules[i].regex, position, substr_len, substr_len, substr_start);

        position += substr_len;

        /* TODO: Now a new token is recognized with rules[i]. Add codes
         * to record the token in the array `tokens'. For certain types
         * of tokens, some extra actions should be performed.
         */
	
        switch (rules[i].token_type) {
		case TK_NOTYPE: break;
        default: 
			strncpy(tokens[nr_token].str, substr_start, substr_len);
			tokens[nr_token].type = rules[i].token_type;
			nr_token++;
			break;
        }

        break;
      }
    }

    if (i == NR_REGEX) {
      printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
      return false;
    }
  }

  return true;
}

bool check_parentheses(int p, int q) {
	if(tokens[p].type != '(' || tokens[q].type != ')')
		return false;
	int num = 1;
	for(int i = p + 1; i <= q - 1; i++) {
		if(tokens[i].type == '(')
			num++;
		else if(tokens[i].type == ')')
			num--;
		if(num < 1)
			return false;
	}
	if (num == 1)
		return true;
	else
		return false;
}

int get_position(int p, int q) {
	int pos = 0;
	int num = 0;
	bool plus_or_sub = false;
	bool mul_or_div = false;
	bool minus = false;
	bool deref = false;
	for(int i = p; i <= q; i++) {
		if(tokens[i].type == '(')
			num++;
		if(tokens[i].type == ')')
			num--;

		if(num != 0)
			continue;
		if(tokens[i].type == TK_EQ) {
			return i;
		}
		// The lower the priority, the higher the judge will be
		if(tokens[i].type == '+' || tokens[i].type == '-') {
			pos = i;
			plus_or_sub = true;
			continue;
		}		
		if((tokens[i].type == '*' || tokens[i].type == '/') && !plus_or_sub) {
			pos = i;
			mul_or_div = true;
			continue;
		}
		if(tokens[i].type == TK_MINUS && !plus_or_sub && !mul_or_div && !minus) {
			pos = i;
			minus = true;
		}
		if(tokens[i].type == TK_DEREF && !plus_or_sub && !mul_or_div && !deref) {
			pos = i;
			deref = true;
		}
	}
	return pos;
}

uint32_t eval(int p, int q) {
	if(p > q){
		//printf("This is bad expression!\n");
		return 0;
	} 	
	else if(p == q) {
		uint32_t num = 0;
		if(tokens[p].type == TK_NUM) {sscanf(tokens[p].str, "%d", &num);}
		if(tokens[p].type == TK_HEX_NUM) {
			//uint32_t *ptr = NULL;
			sscanf(tokens[p].str, "%x", &num);
			//num = ptr == NULL ? 0 : *ptr;
			//printf("doing derefence~\n");
		}
		if(tokens[p].type == TK_REG) {
			bool success = false;
			num = isa_reg_str2val(tokens[p].str, &success);
			if(!success) {
				printf("The register name is incorrect\n");
				return 0;
			}
		}
		return num;
	}
	else if(check_parentheses(p, q) == true) {
		return eval(p + 1, q -1);
	}
	else {
		int op = get_position(p, q);
		uint32_t val1 = eval(p, op - 1);
		uint32_t val2 = eval(op + 1, q);
		switch(tokens[op].type) {
			case '+': return val1 + val2;
			case '-': return val1 - val2;
			case '*': return val1 * val2;
			case '/': return val1 / val2;
			case TK_MINUS: return -1*val2;
			case TK_DEREF: return val2;
			case TK_EQ: return val1 == val2;
			default: TODO();
		}
	}
}


word_t expr(char *e, bool *success) {
  if (!make_token(e)) {
    success = false;
    //return 0;
    return 0;
  }

  /* TODO: Insert codes to evaluate the expression. */
  //TODO();
  //distinguish between minus and sub
  for (int i = 0; i < nr_token; i++) {
  	if(tokens[i].type == '-') {
		if(i == 0 || (tokens[i-1].type != ')' && tokens[i-1].type != TK_NUM))
			tokens[i].type = TK_MINUS;
	}
	if(tokens[i].type == '*') {
		if(i == 0 || (tokens[i-1].type != ')' && tokens[i-1].type != TK_NUM))
			tokens[i].type = TK_DEREF;
	}
  }
  return eval(0, nr_token - 1);
}


