#include <am.h>
#include <klib.h>
#include <klib-macros.h>
#include <stdarg.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

static char NUM_CHAR[] = "0123456789ABCDEF";

int vsprintf(char *out, const char *fmt, va_list ap) {
  	//panic("Not implemented");
	int	len = 0;
	char buf[128];
	while(*fmt != '\0') {
		switch(*fmt) {
			case '%':
				fmt++;
				switch(*fmt) {
					case 'd':
						int num_len;
						int val = va_arg(ap, int);
						if(val == 0)
							out[len++] = '0';
						if(val < 0) {
							out[len++] = '-';
							val = 0 - val;
						}
						for(num_len = 0; val; val /= 10, num_len++)
							buf[num_len] = NUM_CHAR[val % 10];
						for(int j = num_len - 1; j >=0; j--)
							out[len++] = buf[j];
						//out[len++] = '\0';
						break;
					case 'u':
						int unum32_len = 0;
						uint32_t unum32 = va_arg(ap, uint32_t);
						if(unum32 == 0) 
							out[len++] = '0';
						else {
							while(unum32 > 0) {
								buf[unum32_len++] = '0' + (unum32 % 10);
								unum32 /= 10;
							}
						}
						for(int i = unum32_len - 1; i >= 0; i--)
							out[len++] = buf[i];
						break;
					case 'c':
						char c = (char)va_arg(ap, int);
						out[len++] = c;
						break;
					case 's':
						char* s = va_arg(ap, char*);
						for(int i = 0; s[i] != '\0'; i++) 
							out[len++] = s[i];
						break;
					case 'x':
						unsigned int unum = va_arg(ap, unsigned int);
						if(unum == 0) {
							out[len++] = '0';
							break;
						}
						for(num_len = 0; unum; unum >>= 4, num_len++)
							buf[num_len] = NUM_CHAR[unum & 0xf];
						for(int i = num_len - 1; i >= 0; i--)
							out[len++] = buf[i];
						break;
					case 'p':
						out[len++] = '0'; out[len++] = 'x';
						uint32_t address = va_arg(ap, uint32_t);
						for(num_len = 0; address; address /= 16, num_len++)
							buf[num_len] = NUM_CHAR[address % 16];
						for(int i = num_len - 1; i >= 0; i--)
							out[len++] = buf[i];
						break;
				}
				break;
			case '\n':
				out[len++] = '\n';
				break;
			case '\r':
				out[len++] =  '\r';
				break;
			case '\t':
				out[len++] = '\t';
				break;
			default:
				out[len++] = *fmt;
		}
		fmt++;
	}
	out[len] = '\0';
	return len;
}

int printf(const char *fmt, ...) {
  	//panic("Not implemented");
	char buf[2048];
	va_list ap;
	va_start(ap, fmt);

	int res = vsprintf(buf, fmt, ap);
	putstr(buf);

	va_end(ap);
	return res;
}

int sprintf(char *out, const char *fmt, ...) {
	va_list ap;
	va_start(ap, fmt);
	
	int res = vsprintf(out, fmt, ap);

	va_end(ap);
	return res;
}

int snprintf(char *out, size_t n, const char *fmt, ...) {
  panic("Not implemented");
}

int vsnprintf(char *out, size_t n, const char *fmt, va_list ap) {
  panic("Not implemented");
}

#endif
