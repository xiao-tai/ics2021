#include <klib.h>
#include <klib-macros.h>
#include <stdint.h>

#if !defined(__ISA_NATIVE__) || defined(__NATIVE_USE_KLIB__)

size_t strlen(const char *s) {
  //panic("Not implemented");
  size_t len = 0;
  while(s[len] != '\0')
	len++;
  return len;
}

char *strcpy(char *dst, const char *src) {
  size_t i = 0;
  for( ; src[i] != '\0'; i++)
	dst[i] = src[i];
  dst[i] = '\0';
  return dst;
}

char *strncpy(char *dst, const char *src, size_t n) {
	size_t i = 0;
	for( ; i < n && src[i] != '\0'; i++)
		dst[i] = src[i];
	for( ; i < n; i++)
		dst[i] = '\0';
	return dst;
}

char *strcat(char *dst, const char *src) {
	size_t dst_len = strlen(dst);
	size_t i = 0;
	for( ; src[i] != '\0'; i++)
		dst[dst_len + i] = src[i];
	dst[dst_len + i] = '\0';
	return dst;
}

int strcmp(const char *s1, const char *s2) {
	int i = 0;
	for( ; s1[i] != '\0' && s2[i] != '\0'; i++) {
		if(s1[i] != s2[i])
			return (int)(s1[i]) - (int)(s2[i]);
	}
	return (int)(s1[i]) - (int)(s2[i]);
}

int strncmp(const char *s1, const char *s2, size_t n) {
	int i = 0;
	for( ; i < n && s1[i] != '\0' && s2[i] != '\0'; i++) {
		if(s1[i] != s2[i])
			return (int)s1[i] - (int)(s2[i]);
	}
	if(i == n)
		return 0;
	return (int)s1[i] - (int)(s2[i]);
}

void *memset(void *s, int c, size_t n) {
	unsigned char *target = (unsigned char*)s;
	for(int i = 0; i < n; i++)
		target[i] = (unsigned char)c;
	return target;
}

void *memmove(void *dst, const void *src, size_t n) {
  	char* move_dst = (char*)dst;
	const char* move_src = (const char*)src;
	if(dst < src) {
		for(int i = 0; i < n; i++)
			move_dst[i] = move_src[i];
	}
	else {
		for(int i = n-1; i > 0; i--)
			move_dst[i] = move_src[i];
	}
	return move_dst;
}

void *memcpy(void *out, const void *in, size_t n) {
	char* cpy_out = (char*)out;
	const char* cpy_in = (const char*)in;
	for(int i = 0; i < n; i++)
		cpy_out[i] = cpy_in[i];
	return cpy_out;
}

int memcmp(const void *s1, const void *s2, size_t n) {
	const char* c1 = (const char*)s1;
	const char* c2 = (const char*)s2;
	int i = 0;
	for( ; i < n; i++) {
		if(c1[i] != c2[i])
			return (int)(c1[i]) - (int)(c2[i]);
	}
	if(i == n)
		return 0;
	return (int)(c1[i]) - (int)(c2[i]);
}

#endif
