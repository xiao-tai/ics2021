

typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;

typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;

typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;

typedef long int __quad_t;
typedef unsigned long int __u_quad_t;

typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;

typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct {
  int __val[2];
} __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;

typedef int __daddr_t;
typedef int __key_t;

typedef int __clockid_t;

typedef void *__timer_t;

typedef long int __blksize_t;

typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;

typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;

typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;

typedef long int __fsword_t;

typedef long int __ssize_t;

typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;

typedef __off64_t __loff_t;
typedef char *__caddr_t;

typedef long int __intptr_t;

typedef unsigned int __socklen_t;

typedef int __sig_atomic_t;

typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;

typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;

typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;

typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;

typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;

typedef unsigned long int uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;

extern void __assert_fail(const char *__assertion, const char *__file,
                          unsigned int __line, const char *__function)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__noreturn__));

extern void __assert_perror_fail(int __errnum, const char *__file,
                                 unsigned int __line, const char *__function)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__noreturn__));

extern void __assert(const char *__assertion, const char *__file, int __line)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__noreturn__));

typedef long unsigned int size_t;
extern void *memcpy(void *__restrict __dest, const void *__restrict __src,
                    size_t __n) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1, 2)));

extern void *memmove(void *__dest, const void *__src, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern void *memccpy(void *__restrict __dest, const void *__restrict __src,
                     int __c, size_t __n) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1, 2)))
__attribute__((__access__(__write_only__, 1, 4)));

extern void *memset(void *__s, int __c, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int memcmp(const void *__s1, const void *__s2, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));
extern int __memcmpeq(const void *__s1, const void *__s2, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));
extern void *memchr(const void *__s, int __c, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1)));
extern char *strcpy(char *__restrict __dest, const char *__restrict __src)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern char *strncpy(char *__restrict __dest, const char *__restrict __src,
                     size_t __n) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1, 2)));

extern char *strcat(char *__restrict __dest, const char *__restrict __src)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern char *strncat(char *__restrict __dest, const char *__restrict __src,
                     size_t __n) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1, 2)));

extern int strcmp(const char *__s1, const char *__s2)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));

extern int strncmp(const char *__s1, const char *__s2, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));

extern int strcoll(const char *__s1, const char *__s2)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));

extern size_t strxfrm(char *__restrict __dest, const char *__restrict __src,
                      size_t __n) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(2)))
__attribute__((__access__(__write_only__, 1, 3)));

struct __locale_struct {

  struct __locale_data *__locales[13];

  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;

  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;

typedef __locale_t locale_t;

extern int strcoll_l(const char *__s1, const char *__s2, locale_t __l)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2, 3)));

extern size_t strxfrm_l(char *__dest, const char *__src, size_t __n,
                        locale_t __l) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(2, 4)))
__attribute__((__access__(__write_only__, 1, 3)));

extern char *strdup(const char *__s) __attribute__((__nothrow__, __leaf__))
__attribute__((__malloc__)) __attribute__((__nonnull__(1)));

extern char *strndup(const char *__string, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__nonnull__(1)));
extern char *strchr(const char *__s, int __c)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1)));
extern char *strrchr(const char *__s, int __c)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1)));
extern size_t strcspn(const char *__s, const char *__reject)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));

extern size_t strspn(const char *__s, const char *__accept)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));
extern char *strpbrk(const char *__s, const char *__accept)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));
extern char *strstr(const char *__haystack, const char *__needle)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));

extern char *strtok(char *__restrict __s, const char *__restrict __delim)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern char *__strtok_r(char *__restrict __s, const char *__restrict __delim,
                        char **__restrict __save_ptr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2, 3)));

extern char *strtok_r(char *__restrict __s, const char *__restrict __delim,
                      char **__restrict __save_ptr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2, 3)));
extern size_t strlen(const char *__s) __attribute__((__nothrow__, __leaf__))
__attribute__((__pure__)) __attribute__((__nonnull__(1)));

extern size_t strnlen(const char *__string, size_t __maxlen)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1)));

extern char *strerror(int __errnum) __attribute__((__nothrow__, __leaf__));
extern int strerror_r(int __errnum, char *__buf,
                      size_t __buflen) __asm__(""
                                               "__xpg_strerror_r")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(2)))
    __attribute__((__access__(__write_only__, 2, 3)));
extern char *strerror_l(int __errnum, locale_t __l)
    __attribute__((__nothrow__, __leaf__));

extern int bcmp(const void *__s1, const void *__s2, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));

extern void bcopy(const void *__src, void *__dest, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern void bzero(void *__s, size_t __n) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));
extern char *index(const char *__s, int __c)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1)));
extern char *rindex(const char *__s, int __c)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1)));

extern int ffs(int __i) __attribute__((__nothrow__, __leaf__))
__attribute__((__const__));

extern int ffsl(long int __l) __attribute__((__nothrow__, __leaf__))
__attribute__((__const__));
__extension__ extern int ffsll(long long int __ll)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__const__));

extern int strcasecmp(const char *__s1, const char *__s2)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));

extern int strncasecmp(const char *__s1, const char *__s2, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));

extern int strcasecmp_l(const char *__s1, const char *__s2, locale_t __loc)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2, 3)));

extern int strncasecmp_l(const char *__s1, const char *__s2, size_t __n,
                         locale_t __loc) __attribute__((__nothrow__, __leaf__))
__attribute__((__pure__)) __attribute__((__nonnull__(1, 2, 4)));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) void
    __attribute__((__nothrow__, __leaf__))
    bcopy(const void *__src, void *__dest, size_t __len) {
  (void)__builtin___memmove_chk(__dest, __src, __len,
                                __builtin_object_size(__dest, 0));
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) void
    __attribute__((__nothrow__, __leaf__)) bzero(void *__dest, size_t __len) {
  (void)__builtin___memset_chk(__dest, '\0', __len,
                               __builtin_object_size(__dest, 0));
}

extern void explicit_bzero(void *__s, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__access__(__write_only__, 1, 2)));

extern char *strsep(char **__restrict __stringp, const char *__restrict __delim)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern char *strsignal(int __sig) __attribute__((__nothrow__, __leaf__));
extern char *__stpcpy(char *__restrict __dest, const char *__restrict __src)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));
extern char *stpcpy(char *__restrict __dest, const char *__restrict __src)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern char *__stpncpy(char *__restrict __dest, const char *__restrict __src,
                       size_t __n) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1, 2)));
extern char *stpncpy(char *__restrict __dest, const char *__restrict __src,
                     size_t __n) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1, 2)));
extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__))
__attribute__((__artificial__)) void *__attribute__((__nothrow__, __leaf__))
memcpy(void *__restrict __dest, const void *__restrict __src, size_t __len)

{
  return __builtin___memcpy_chk(__dest, __src, __len,
                                __builtin_object_size(__dest, 0));
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__))
__attribute__((__artificial__)) void *__attribute__((__nothrow__, __leaf__))
memmove(void *__dest, const void *__src, size_t __len) {
  return __builtin___memmove_chk(__dest, __src, __len,
                                 __builtin_object_size(__dest, 0));
}
extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__))
__attribute__((__artificial__)) void *__attribute__((__nothrow__, __leaf__))
memset(void *__dest, int __ch, size_t __len) {
  return __builtin___memset_chk(__dest, __ch, __len,
                                __builtin_object_size(__dest, 0));
}

void __explicit_bzero_chk(void *__dest, size_t __len, size_t __destlen)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__access__(__write_only__, 1, 2)));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) void
    __attribute__((__nothrow__, __leaf__))
    explicit_bzero(void *__dest, size_t __len) {
  __explicit_bzero_chk(__dest, __len, __builtin_object_size(__dest, 0));
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__))
__attribute__((__artificial__)) char *__attribute__((__nothrow__, __leaf__))
strcpy(char *__restrict __dest, const char *__restrict __src) {
  return __builtin___strcpy_chk(__dest, __src,
                                __builtin_object_size(__dest, 2 > 1));
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__))
__attribute__((__artificial__)) char *__attribute__((__nothrow__, __leaf__))
stpcpy(char *__restrict __dest, const char *__restrict __src) {
  return __builtin___stpcpy_chk(__dest, __src,
                                __builtin_object_size(__dest, 2 > 1));
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__))
__attribute__((__artificial__)) char *__attribute__((__nothrow__, __leaf__))
strncpy(char *__restrict __dest, const char *__restrict __src, size_t __len)

{
  return __builtin___strncpy_chk(__dest, __src, __len,
                                 __builtin_object_size(__dest, 2 > 1));
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__))
__attribute__((__artificial__)) char *__attribute__((__nothrow__, __leaf__))
stpncpy(char *__dest, const char *__src, size_t __n) {
  return __builtin___stpncpy_chk(__dest, __src, __n,
                                 __builtin_object_size(__dest, 2 > 1));
}
extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__))
__attribute__((__artificial__)) char *__attribute__((__nothrow__, __leaf__))
strcat(char *__restrict __dest, const char *__restrict __src) {
  return __builtin___strcat_chk(__dest, __src,
                                __builtin_object_size(__dest, 2 > 1));
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__))
__attribute__((__artificial__)) char *__attribute__((__nothrow__, __leaf__))
strncat(char *__restrict __dest, const char *__restrict __src, size_t __len)

{
  return __builtin___strncat_chk(__dest, __src, __len,
                                 __builtin_object_size(__dest, 2 > 1));
}

typedef __builtin_va_list __gnuc_va_list;

typedef struct {
  int __count;
  union {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;

typedef struct _G_fpos_t {
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
typedef struct _G_fpos64_t {
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;

struct _IO_FILE;
typedef struct _IO_FILE __FILE;

struct _IO_FILE;

typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;

typedef void _IO_lock_t;

struct _IO_FILE {
  int _flags;

  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;
  int _flags2;
  __off_t _old_offset;

  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  _IO_lock_t *_lock;

  __off64_t _offset;

  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof(int) - 4 * sizeof(void *) - sizeof(size_t)];
};
typedef __gnuc_va_list va_list;
typedef __off_t off_t;
typedef __ssize_t ssize_t;

typedef __fpos_t fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;

extern int remove(const char *__filename)
    __attribute__((__nothrow__, __leaf__));

extern int rename(const char *__old, const char *__new)
    __attribute__((__nothrow__, __leaf__));

extern int renameat(int __oldfd, const char *__old, int __newfd,
                    const char *__new) __attribute__((__nothrow__, __leaf__));
extern int fclose(FILE *__stream);
extern FILE *tmpfile(void) __attribute__((__malloc__))
__attribute__((__malloc__(fclose, 1))) __attribute__((__warn_unused_result__));
extern char *tmpnam(char[20]) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern char *tmpnam_r(char __s[20]) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));
extern char *tempnam(const char *__dir, const char *__pfx)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__warn_unused_result__))
    __attribute__((__malloc__(__builtin_free, 1)));

extern int fflush(FILE *__stream);
extern int fflush_unlocked(FILE *__stream);
extern FILE *fopen(const char *__restrict __filename,
                   const char *__restrict __modes) __attribute__((__malloc__))
__attribute__((__malloc__(fclose, 1))) __attribute__((__warn_unused_result__));

extern FILE *freopen(const char *__restrict __filename,
                     const char *__restrict __modes, FILE *__restrict __stream)
    __attribute__((__warn_unused_result__));
extern FILE *fdopen(int __fd, const char *__modes)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__malloc__(fclose, 1)))
    __attribute__((__warn_unused_result__));
extern FILE *fmemopen(void *__s, size_t __len, const char *__modes)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__malloc__(fclose, 1)))
    __attribute__((__warn_unused_result__));

extern FILE *open_memstream(char **__bufloc, size_t *__sizeloc)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__malloc__(fclose, 1)))
    __attribute__((__warn_unused_result__));
extern void setbuf(FILE *__restrict __stream, char *__restrict __buf)
    __attribute__((__nothrow__, __leaf__));

extern int setvbuf(FILE *__restrict __stream, char *__restrict __buf,
                   int __modes, size_t __n)
    __attribute__((__nothrow__, __leaf__));

extern void setbuffer(FILE *__restrict __stream, char *__restrict __buf,
                      size_t __size) __attribute__((__nothrow__, __leaf__));

extern void setlinebuf(FILE *__stream) __attribute__((__nothrow__, __leaf__));

extern int fprintf(FILE *__restrict __stream, const char *__restrict __format,
                   ...);

extern int printf(const char *__restrict __format, ...);

extern int sprintf(char *__restrict __s, const char *__restrict __format, ...)
    __attribute__((__nothrow__));

extern int vfprintf(FILE *__restrict __s, const char *__restrict __format,
                    __gnuc_va_list __arg);

extern int vprintf(const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf(char *__restrict __s, const char *__restrict __format,
                    __gnuc_va_list __arg) __attribute__((__nothrow__));

extern int snprintf(char *__restrict __s, size_t __maxlen,
                    const char *__restrict __format, ...)
    __attribute__((__nothrow__)) __attribute__((__format__(__printf__, 3, 4)));

extern int vsnprintf(char *__restrict __s, size_t __maxlen,
                     const char *__restrict __format, __gnuc_va_list __arg)
    __attribute__((__nothrow__)) __attribute__((__format__(__printf__, 3, 0)));
extern int vdprintf(int __fd, const char *__restrict __fmt,
                    __gnuc_va_list __arg)
    __attribute__((__format__(__printf__, 2, 0)));
extern int dprintf(int __fd, const char *__restrict __fmt, ...)
    __attribute__((__format__(__printf__, 2, 3)));

extern int fscanf(FILE *__restrict __stream, const char *__restrict __format,
                  ...) __attribute__((__warn_unused_result__));

extern int scanf(const char *__restrict __format, ...)
    __attribute__((__warn_unused_result__));

extern int sscanf(const char *__restrict __s, const char *__restrict __format,
                  ...) __attribute__((__nothrow__, __leaf__));

extern int fscanf(FILE *__restrict __stream, const char *__restrict __format,
                  ...) __asm__(""
                               "__isoc99_fscanf")

    __attribute__((__warn_unused_result__));
extern int scanf(const char *__restrict __format, ...) __asm__(""
                                                               "__isoc99_scanf")
    __attribute__((__warn_unused_result__));
extern int sscanf(const char *__restrict __s, const char *__restrict __format,
                  ...) __asm__(""
                               "__isoc99_sscanf")
    __attribute__((__nothrow__, __leaf__))

    ;
extern int vfscanf(FILE *__restrict __s, const char *__restrict __format,
                   __gnuc_va_list __arg)
    __attribute__((__format__(__scanf__, 2, 0)))
    __attribute__((__warn_unused_result__));

extern int vscanf(const char *__restrict __format, __gnuc_va_list __arg)
    __attribute__((__format__(__scanf__, 1, 0)))
    __attribute__((__warn_unused_result__));

extern int vsscanf(const char *__restrict __s, const char *__restrict __format,
                   __gnuc_va_list __arg) __attribute__((__nothrow__, __leaf__))
__attribute__((__format__(__scanf__, 2, 0)));

extern int vfscanf(FILE *__restrict __s, const char *__restrict __format,
                   __gnuc_va_list __arg) __asm__(""
                                                 "__isoc99_vfscanf")

    __attribute__((__format__(__scanf__, 2, 0)))
    __attribute__((__warn_unused_result__));
extern int vscanf(const char *__restrict __format,
                  __gnuc_va_list __arg) __asm__(""
                                                "__isoc99_vscanf")

    __attribute__((__format__(__scanf__, 1, 0)))
    __attribute__((__warn_unused_result__));
extern int vsscanf(const char *__restrict __s, const char *__restrict __format,
                   __gnuc_va_list __arg) __asm__(""
                                                 "__isoc99_vsscanf")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__format__(__scanf__, 2, 0)));
extern int fgetc(FILE *__stream);
extern int getc(FILE *__stream);

extern int getchar(void);

extern int getc_unlocked(FILE *__stream);
extern int getchar_unlocked(void);
extern int fgetc_unlocked(FILE *__stream);
extern int fputc(int __c, FILE *__stream);
extern int putc(int __c, FILE *__stream);

extern int putchar(int __c);
extern int fputc_unlocked(int __c, FILE *__stream);

extern int putc_unlocked(int __c, FILE *__stream);
extern int putchar_unlocked(int __c);

extern int getw(FILE *__stream);

extern int putw(int __w, FILE *__stream);

extern char *fgets(char *__restrict __s, int __n, FILE *__restrict __stream)
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 1, 2)));
extern __ssize_t __getdelim(char **__restrict __lineptr, size_t *__restrict __n,
                            int __delimiter, FILE *__restrict __stream)
    __attribute__((__warn_unused_result__));
extern __ssize_t getdelim(char **__restrict __lineptr, size_t *__restrict __n,
                          int __delimiter, FILE *__restrict __stream)
    __attribute__((__warn_unused_result__));

extern __ssize_t getline(char **__restrict __lineptr, size_t *__restrict __n,
                         FILE *__restrict __stream)
    __attribute__((__warn_unused_result__));

extern int fputs(const char *__restrict __s, FILE *__restrict __stream);

extern int puts(const char *__s);

extern int ungetc(int __c, FILE *__stream);

extern size_t fread(void *__restrict __ptr, size_t __size, size_t __n,
                    FILE *__restrict __stream)
    __attribute__((__warn_unused_result__));

extern size_t fwrite(const void *__restrict __ptr, size_t __size, size_t __n,
                     FILE *__restrict __s);
extern size_t fread_unlocked(void *__restrict __ptr, size_t __size, size_t __n,
                             FILE *__restrict __stream)
    __attribute__((__warn_unused_result__));
extern size_t fwrite_unlocked(const void *__restrict __ptr, size_t __size,
                              size_t __n, FILE *__restrict __stream);

extern int fseek(FILE *__stream, long int __off, int __whence);

extern long int ftell(FILE *__stream) __attribute__((__warn_unused_result__));

extern void rewind(FILE *__stream);
extern int fseeko(FILE *__stream, __off_t __off, int __whence);

extern __off_t ftello(FILE *__stream) __attribute__((__warn_unused_result__));
extern int fgetpos(FILE *__restrict __stream, fpos_t *__restrict __pos);

extern int fsetpos(FILE *__stream, const fpos_t *__pos);
extern void clearerr(FILE *__stream) __attribute__((__nothrow__, __leaf__));

extern int feof(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern int ferror(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern void clearerr_unlocked(FILE *__stream)
    __attribute__((__nothrow__, __leaf__));
extern int feof_unlocked(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));
extern int ferror_unlocked(FILE *__stream)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));

extern void perror(const char *__s);

extern int fileno(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern int fileno_unlocked(FILE *__stream)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));
extern int pclose(FILE *__stream);

extern FILE *popen(const char *__command, const char *__modes)
    __attribute__((__malloc__)) __attribute__((__malloc__(pclose, 1)))
    __attribute__((__warn_unused_result__));

extern char *ctermid(char *__s) __attribute__((__nothrow__, __leaf__))
__attribute__((__access__(__write_only__, 1)));
extern void flockfile(FILE *__stream) __attribute__((__nothrow__, __leaf__));

extern int ftrylockfile(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern void funlockfile(FILE *__stream) __attribute__((__nothrow__, __leaf__));
extern int __uflow(FILE *);
extern int __overflow(FILE *, int);

extern __inline __attribute__((__gnu_inline__)) int getchar(void) {
  return getc(stdin);
}

extern __inline __attribute__((__gnu_inline__)) int fgetc_unlocked(FILE *__fp) {
  return (__builtin_expect(((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0)
              ? __uflow(__fp)
              : *(unsigned char *)(__fp)->_IO_read_ptr++);
}

extern __inline __attribute__((__gnu_inline__)) int getc_unlocked(FILE *__fp) {
  return (__builtin_expect(((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0)
              ? __uflow(__fp)
              : *(unsigned char *)(__fp)->_IO_read_ptr++);
}

extern __inline __attribute__((__gnu_inline__)) int getchar_unlocked(void) {
  return (__builtin_expect(((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0)
              ? __uflow(stdin)
              : *(unsigned char *)(stdin)->_IO_read_ptr++);
}

extern __inline __attribute__((__gnu_inline__)) int putchar(int __c) {
  return putc(__c, stdout);
}

extern __inline __attribute__((__gnu_inline__)) int
fputc_unlocked(int __c, FILE *__stream) {
  return (__builtin_expect(
              ((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0)
              ? __overflow(__stream, (unsigned char)(__c))
              : (unsigned char)(*(__stream)->_IO_write_ptr++ = (__c)));
}

extern __inline __attribute__((__gnu_inline__)) int
putc_unlocked(int __c, FILE *__stream) {
  return (__builtin_expect(
              ((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0)
              ? __overflow(__stream, (unsigned char)(__c))
              : (unsigned char)(*(__stream)->_IO_write_ptr++ = (__c)));
}

extern __inline __attribute__((__gnu_inline__)) int putchar_unlocked(int __c) {
  return (
      __builtin_expect(((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0)
          ? __overflow(stdout, (unsigned char)(__c))
          : (unsigned char)(*(stdout)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__((__gnu_inline__)) int
    __attribute__((__nothrow__, __leaf__)) feof_unlocked(FILE *__stream) {
  return (((__stream)->_flags & 0x0010) != 0);
}

extern __inline __attribute__((__gnu_inline__)) int
    __attribute__((__nothrow__, __leaf__)) ferror_unlocked(FILE *__stream) {
  return (((__stream)->_flags & 0x0020) != 0);
}

extern int __sprintf_chk(char *__restrict __s, int __flag, size_t __slen,
                         const char *__restrict __format, ...)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__access__(__write_only__, 1, 3)));
extern int __vsprintf_chk(char *__restrict __s, int __flag, size_t __slen,
                          const char *__restrict __format, __gnuc_va_list __ap)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__access__(__write_only__, 1, 3)));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
    __attribute__((__nothrow__, __leaf__))
    sprintf(char *__restrict __s, const char *__restrict __fmt, ...) {
  return __builtin___sprintf_chk(__s, 2 - 1, __builtin_object_size(__s, 2 > 1),
                                 __fmt, __builtin_va_arg_pack());
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
    __attribute__((__nothrow__, __leaf__))
    vsprintf(char *__restrict __s, const char *__restrict __fmt,
             __gnuc_va_list __ap)

{
  return __builtin___vsprintf_chk(__s, 2 - 1, __builtin_object_size(__s, 2 > 1),
                                  __fmt, __ap);
}

extern int __snprintf_chk(char *__restrict __s, size_t __n, int __flag,
                          size_t __slen, const char *__restrict __format, ...)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__access__(__write_only__, 1, 2)));
extern int __vsnprintf_chk(char *__restrict __s, size_t __n, int __flag,
                           size_t __slen, const char *__restrict __format,
                           __gnuc_va_list __ap)
    __attribute__((__nothrow__, __leaf__));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__))
__attribute__((__artificial__)) int __attribute__((__nothrow__, __leaf__))
snprintf(char *__restrict __s, size_t __n, const char *__restrict __fmt, ...)

{
  return __builtin___snprintf_chk(__s, __n, 2 - 1,
                                  __builtin_object_size(__s, 2 > 1), __fmt,
                                  __builtin_va_arg_pack());
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
    __attribute__((__nothrow__, __leaf__))
    vsnprintf(char *__restrict __s, size_t __n, const char *__restrict __fmt,
              __gnuc_va_list __ap)

{
  return __builtin___vsnprintf_chk(
      __s, __n, 2 - 1, __builtin_object_size(__s, 2 > 1), __fmt, __ap);
}

extern int __fprintf_chk(FILE *__restrict __stream, int __flag,
                         const char *__restrict __format, ...);
extern int __printf_chk(int __flag, const char *__restrict __format, ...);
extern int __vfprintf_chk(FILE *__restrict __stream, int __flag,
                          const char *__restrict __format, __gnuc_va_list __ap);
extern int __vprintf_chk(int __flag, const char *__restrict __format,
                         __gnuc_va_list __ap);

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
fprintf(FILE *__restrict __stream, const char *__restrict __fmt, ...) {
  return __fprintf_chk(__stream, 2 - 1, __fmt, __builtin_va_arg_pack());
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
printf(const char *__restrict __fmt, ...) {
  return __printf_chk(2 - 1, __fmt, __builtin_va_arg_pack());
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
vprintf(const char *__restrict __fmt, __gnuc_va_list __ap) {

  return __vfprintf_chk(stdout, 2 - 1, __fmt, __ap);
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
vfprintf(FILE *__restrict __stream, const char *__restrict __fmt,
         __gnuc_va_list __ap) {
  return __vfprintf_chk(__stream, 2 - 1, __fmt, __ap);
}

extern int __dprintf_chk(int __fd, int __flag, const char *__restrict __fmt,
                         ...) __attribute__((__format__(__printf__, 3, 4)));
extern int __vdprintf_chk(int __fd, int __flag, const char *__restrict __fmt,
                          __gnuc_va_list __arg)
    __attribute__((__format__(__printf__, 3, 0)));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
dprintf(int __fd, const char *__restrict __fmt, ...) {
  return __dprintf_chk(__fd, 2 - 1, __fmt, __builtin_va_arg_pack());
}

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
vdprintf(int __fd, const char *__restrict __fmt, __gnuc_va_list __ap) {
  return __vdprintf_chk(__fd, 2 - 1, __fmt, __ap);
}
extern char *__fgets_chk(char *__restrict __s, size_t __size, int __n,
                         FILE *__restrict __stream)
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 1, 3)));
extern char *__fgets_alias(char *__restrict __s, int __n,
                           FILE *__restrict __stream) __asm__(""
                                                              "fgets")

    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 1, 2)));
extern char *__fgets_chk_warn(char *__restrict __s, size_t __size, int __n,
                              FILE *__restrict __stream) __asm__(""
                                                                 "__fgets_chk")

    __attribute__((__warn_unused_result__))
    __attribute__((__warning__("fgets called with bigger size than length "
                               "of destination buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
__attribute__((__warn_unused_result__))
__attribute__((__access__(__write_only__, 1, 2))) char *
fgets(char *__restrict __s, int __n, FILE *__restrict __stream) {
  size_t sz = __builtin_object_size(__s, 2 > 1);
  if ((((__typeof(__n))0 < (__typeof(__n))-1 ||
        (__builtin_constant_p(__n) && (__n) > 0)) &&
       __builtin_constant_p(
           (((long unsigned int)(__n)) <= (sz) / (sizeof(char)))) &&
       (((long unsigned int)(__n)) <= (sz) / (sizeof(char)))))
    return __fgets_alias(__s, __n, __stream);
  if ((((__typeof(__n))0 < (__typeof(__n))-1 ||
        (__builtin_constant_p(__n) && (__n) > 0)) &&
       __builtin_constant_p(
           (((long unsigned int)(__n)) <= (sz) / (sizeof(char)))) &&
       !(((long unsigned int)(__n)) <= (sz) / (sizeof(char)))))
    return __fgets_chk_warn(__s, sz, __n, __stream);
  return __fgets_chk(__s, sz, __n, __stream);
}

extern size_t __fread_chk(void *__restrict __ptr, size_t __ptrlen,
                          size_t __size, size_t __n, FILE *__restrict __stream)
    __attribute__((__warn_unused_result__));
extern size_t __fread_alias(void *__restrict __ptr, size_t __size, size_t __n,
                            FILE *__restrict __stream) __asm__(""
                                                               "fread")

    __attribute__((__warn_unused_result__));
extern size_t __fread_chk_warn(void *__restrict __ptr, size_t __ptrlen,
                               size_t __size, size_t __n,
                               FILE *__restrict __stream) __asm__(""
                                                                  "__fread_chk")

    __attribute__((__warn_unused_result__)) __attribute__((
        __warning__("fread called with bigger size * nmemb than length "
                    "of destination buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
__attribute__((__warn_unused_result__)) size_t
fread(void *__restrict __ptr, size_t __size, size_t __n,
      FILE *__restrict __stream) {
  size_t sz = __builtin_object_size(__ptr, 0);
  if ((((__typeof(__n))0 < (__typeof(__n))-1 ||
        (__builtin_constant_p(__n) && (__n) > 0)) &&
       __builtin_constant_p((((long unsigned int)(__n)) <= (sz) / (__size))) &&
       (((long unsigned int)(__n)) <= (sz) / (__size))))
    return __fread_alias(__ptr, __size, __n, __stream);
  if ((((__typeof(__n))0 < (__typeof(__n))-1 ||
        (__builtin_constant_p(__n) && (__n) > 0)) &&
       __builtin_constant_p((((long unsigned int)(__n)) <= (sz) / (__size))) &&
       !(((long unsigned int)(__n)) <= (sz) / (__size))))
    return __fread_chk_warn(__ptr, sz, __size, __n, __stream);
  return __fread_chk(__ptr, sz, __size, __n, __stream);
}
extern size_t __fread_unlocked_chk(void *__restrict __ptr, size_t __ptrlen,
                                   size_t __size, size_t __n,
                                   FILE *__restrict __stream)
    __attribute__((__warn_unused_result__));
extern size_t
__fread_unlocked_alias(void *__restrict __ptr, size_t __size, size_t __n,
                       FILE *__restrict __stream) __asm__(""
                                                          "fread_unlocked")

    __attribute__((__warn_unused_result__));
extern size_t __fread_unlocked_chk_warn(
    void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n,
    FILE *__restrict __stream) __asm__(""
                                       "__fread_unlocked_chk")

    __attribute__((__warn_unused_result__)) __attribute__((
        __warning__("fread_unlocked called with bigger size * nmemb than "
                    "length of destination buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
__attribute__((__warn_unused_result__)) size_t
fread_unlocked(void *__restrict __ptr, size_t __size, size_t __n,
               FILE *__restrict __stream) {
  size_t sz = __builtin_object_size(__ptr, 0);
  if ((((__typeof(__n))0 < (__typeof(__n))-1 ||
        (__builtin_constant_p(__n) && (__n) > 0)) &&
       __builtin_constant_p((((long unsigned int)(__n)) <= (sz) / (__size))) &&
       (((long unsigned int)(__n)) <= (sz) / (__size)))) {

    if (__builtin_constant_p(__size) && __builtin_constant_p(__n) &&
        (__size | __n) < (((size_t)1) << (8 * sizeof(size_t) / 2)) &&
        __size * __n <= 8) {
      size_t __cnt = __size * __n;
      char *__cptr = (char *)__ptr;
      if (__cnt == 0)
        return 0;

      for (; __cnt > 0; --__cnt) {
        int __c = getc_unlocked(__stream);
        if (__c == (-1))
          break;
        *__cptr++ = __c;
      }
      return (__cptr - (char *)__ptr) / __size;
    }

    return __fread_unlocked_alias(__ptr, __size, __n, __stream);
  }
  if ((((__typeof(__n))0 < (__typeof(__n))-1 ||
        (__builtin_constant_p(__n) && (__n) > 0)) &&
       __builtin_constant_p((((long unsigned int)(__n)) <= (sz) / (__size))) &&
       !(((long unsigned int)(__n)) <= (sz) / (__size))))
    return __fread_unlocked_chk_warn(__ptr, sz, __size, __n, __stream);
  return __fread_unlocked_chk(__ptr, sz, __size, __n, __stream);
}

typedef __gid_t gid_t;

typedef __uid_t uid_t;
typedef __useconds_t useconds_t;

typedef __pid_t pid_t;
typedef __socklen_t socklen_t;
extern int access(const char *__name, int __type)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
extern int faccessat(int __fd, const char *__file, int __type, int __flag)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)))
    __attribute__((__warn_unused_result__));
extern __off_t lseek(int __fd, __off_t __offset, int __whence)
    __attribute__((__nothrow__, __leaf__));
extern int close(int __fd);

extern void closefrom(int __lowfd) __attribute__((__nothrow__, __leaf__));

extern ssize_t read(int __fd, void *__buf, size_t __nbytes)
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 3)));

extern ssize_t write(int __fd, const void *__buf, size_t __n)
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__read_only__, 2, 3)));
extern ssize_t pread(int __fd, void *__buf, size_t __nbytes, __off_t __offset)
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 3)));

extern ssize_t pwrite(int __fd, const void *__buf, size_t __n, __off_t __offset)
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__read_only__, 2, 3)));
extern int pipe(int __pipedes[2]) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));
extern unsigned int alarm(unsigned int __seconds)
    __attribute__((__nothrow__, __leaf__));
extern unsigned int sleep(unsigned int __seconds);

extern __useconds_t ualarm(__useconds_t __value, __useconds_t __interval)
    __attribute__((__nothrow__, __leaf__));

extern int usleep(__useconds_t __useconds);
extern int pause(void);

extern int chown(const char *__file, __uid_t __owner, __gid_t __group)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__warn_unused_result__));

extern int fchown(int __fd, __uid_t __owner, __gid_t __group)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));

extern int lchown(const char *__file, __uid_t __owner, __gid_t __group)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__warn_unused_result__));

extern int fchownat(int __fd, const char *__file, __uid_t __owner,
                    __gid_t __group, int __flag)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)))
    __attribute__((__warn_unused_result__));

extern int chdir(const char *__path) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1))) __attribute__((__warn_unused_result__));

extern int fchdir(int __fd) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));
extern char *getcwd(char *__buf, size_t __size)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));
extern char *getwd(char *__buf) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1))) __attribute__((__deprecated__))
__attribute__((__warn_unused_result__))
__attribute__((__access__(__write_only__, 1)));

extern int dup(int __fd) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern int dup2(int __fd, int __fd2) __attribute__((__nothrow__, __leaf__));
extern char **__environ;

extern int execve(const char *__path, char *const __argv[],
                  char *const __envp[]) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1, 2)));

extern int fexecve(int __fd, char *const __argv[], char *const __envp[])
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern int execv(const char *__path, char *const __argv[])
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int execle(const char *__path, const char *__arg, ...)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int execl(const char *__path, const char *__arg, ...)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int execvp(const char *__file, char *const __argv[])
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int execlp(const char *__file, const char *__arg, ...)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));
extern int nice(int __inc) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern void _exit(int __status) __attribute__((__noreturn__));

enum {
  _PC_LINK_MAX,

  _PC_MAX_CANON,

  _PC_MAX_INPUT,

  _PC_NAME_MAX,

  _PC_PATH_MAX,

  _PC_PIPE_BUF,

  _PC_CHOWN_RESTRICTED,

  _PC_NO_TRUNC,

  _PC_VDISABLE,

  _PC_SYNC_IO,

  _PC_ASYNC_IO,

  _PC_PRIO_IO,

  _PC_SOCK_MAXBUF,

  _PC_FILESIZEBITS,

  _PC_REC_INCR_XFER_SIZE,

  _PC_REC_MAX_XFER_SIZE,

  _PC_REC_MIN_XFER_SIZE,

  _PC_REC_XFER_ALIGN,

  _PC_ALLOC_SIZE_MIN,

  _PC_SYMLINK_MAX,

  _PC_2_SYMLINKS

};

enum {
  _SC_ARG_MAX,

  _SC_CHILD_MAX,

  _SC_CLK_TCK,

  _SC_NGROUPS_MAX,

  _SC_OPEN_MAX,

  _SC_STREAM_MAX,

  _SC_TZNAME_MAX,

  _SC_JOB_CONTROL,

  _SC_SAVED_IDS,

  _SC_REALTIME_SIGNALS,

  _SC_PRIORITY_SCHEDULING,

  _SC_TIMERS,

  _SC_ASYNCHRONOUS_IO,

  _SC_PRIORITIZED_IO,

  _SC_SYNCHRONIZED_IO,

  _SC_FSYNC,

  _SC_MAPPED_FILES,

  _SC_MEMLOCK,

  _SC_MEMLOCK_RANGE,

  _SC_MEMORY_PROTECTION,

  _SC_MESSAGE_PASSING,

  _SC_SEMAPHORES,

  _SC_SHARED_MEMORY_OBJECTS,

  _SC_AIO_LISTIO_MAX,

  _SC_AIO_MAX,

  _SC_AIO_PRIO_DELTA_MAX,

  _SC_DELAYTIMER_MAX,

  _SC_MQ_OPEN_MAX,

  _SC_MQ_PRIO_MAX,

  _SC_VERSION,

  _SC_PAGESIZE,

  _SC_RTSIG_MAX,

  _SC_SEM_NSEMS_MAX,

  _SC_SEM_VALUE_MAX,

  _SC_SIGQUEUE_MAX,

  _SC_TIMER_MAX,

  _SC_BC_BASE_MAX,

  _SC_BC_DIM_MAX,

  _SC_BC_SCALE_MAX,

  _SC_BC_STRING_MAX,

  _SC_COLL_WEIGHTS_MAX,

  _SC_EQUIV_CLASS_MAX,

  _SC_EXPR_NEST_MAX,

  _SC_LINE_MAX,

  _SC_RE_DUP_MAX,

  _SC_CHARCLASS_NAME_MAX,

  _SC_2_VERSION,

  _SC_2_C_BIND,

  _SC_2_C_DEV,

  _SC_2_FORT_DEV,

  _SC_2_FORT_RUN,

  _SC_2_SW_DEV,

  _SC_2_LOCALEDEF,

  _SC_PII,

  _SC_PII_XTI,

  _SC_PII_SOCKET,

  _SC_PII_INTERNET,

  _SC_PII_OSI,

  _SC_POLL,

  _SC_SELECT,

  _SC_UIO_MAXIOV,

  _SC_IOV_MAX = _SC_UIO_MAXIOV,

  _SC_PII_INTERNET_STREAM,

  _SC_PII_INTERNET_DGRAM,

  _SC_PII_OSI_COTS,

  _SC_PII_OSI_CLTS,

  _SC_PII_OSI_M,

  _SC_T_IOV_MAX,

  _SC_THREADS,

  _SC_THREAD_SAFE_FUNCTIONS,

  _SC_GETGR_R_SIZE_MAX,

  _SC_GETPW_R_SIZE_MAX,

  _SC_LOGIN_NAME_MAX,

  _SC_TTY_NAME_MAX,

  _SC_THREAD_DESTRUCTOR_ITERATIONS,

  _SC_THREAD_KEYS_MAX,

  _SC_THREAD_STACK_MIN,

  _SC_THREAD_THREADS_MAX,

  _SC_THREAD_ATTR_STACKADDR,

  _SC_THREAD_ATTR_STACKSIZE,

  _SC_THREAD_PRIORITY_SCHEDULING,

  _SC_THREAD_PRIO_INHERIT,

  _SC_THREAD_PRIO_PROTECT,

  _SC_THREAD_PROCESS_SHARED,

  _SC_NPROCESSORS_CONF,

  _SC_NPROCESSORS_ONLN,

  _SC_PHYS_PAGES,

  _SC_AVPHYS_PAGES,

  _SC_ATEXIT_MAX,

  _SC_PASS_MAX,

  _SC_XOPEN_VERSION,

  _SC_XOPEN_XCU_VERSION,

  _SC_XOPEN_UNIX,

  _SC_XOPEN_CRYPT,

  _SC_XOPEN_ENH_I18N,

  _SC_XOPEN_SHM,

  _SC_2_CHAR_TERM,

  _SC_2_C_VERSION,

  _SC_2_UPE,

  _SC_XOPEN_XPG2,

  _SC_XOPEN_XPG3,

  _SC_XOPEN_XPG4,

  _SC_CHAR_BIT,

  _SC_CHAR_MAX,

  _SC_CHAR_MIN,

  _SC_INT_MAX,

  _SC_INT_MIN,

  _SC_LONG_BIT,

  _SC_WORD_BIT,

  _SC_MB_LEN_MAX,

  _SC_NZERO,

  _SC_SSIZE_MAX,

  _SC_SCHAR_MAX,

  _SC_SCHAR_MIN,

  _SC_SHRT_MAX,

  _SC_SHRT_MIN,

  _SC_UCHAR_MAX,

  _SC_UINT_MAX,

  _SC_ULONG_MAX,

  _SC_USHRT_MAX,

  _SC_NL_ARGMAX,

  _SC_NL_LANGMAX,

  _SC_NL_MSGMAX,

  _SC_NL_NMAX,

  _SC_NL_SETMAX,

  _SC_NL_TEXTMAX,

  _SC_XBS5_ILP32_OFF32,

  _SC_XBS5_ILP32_OFFBIG,

  _SC_XBS5_LP64_OFF64,

  _SC_XBS5_LPBIG_OFFBIG,

  _SC_XOPEN_LEGACY,

  _SC_XOPEN_REALTIME,

  _SC_XOPEN_REALTIME_THREADS,

  _SC_ADVISORY_INFO,

  _SC_BARRIERS,

  _SC_BASE,

  _SC_C_LANG_SUPPORT,

  _SC_C_LANG_SUPPORT_R,

  _SC_CLOCK_SELECTION,

  _SC_CPUTIME,

  _SC_THREAD_CPUTIME,

  _SC_DEVICE_IO,

  _SC_DEVICE_SPECIFIC,

  _SC_DEVICE_SPECIFIC_R,

  _SC_FD_MGMT,

  _SC_FIFO,

  _SC_PIPE,

  _SC_FILE_ATTRIBUTES,

  _SC_FILE_LOCKING,

  _SC_FILE_SYSTEM,

  _SC_MONOTONIC_CLOCK,

  _SC_MULTI_PROCESS,

  _SC_SINGLE_PROCESS,

  _SC_NETWORKING,

  _SC_READER_WRITER_LOCKS,

  _SC_SPIN_LOCKS,

  _SC_REGEXP,

  _SC_REGEX_VERSION,

  _SC_SHELL,

  _SC_SIGNALS,

  _SC_SPAWN,

  _SC_SPORADIC_SERVER,

  _SC_THREAD_SPORADIC_SERVER,

  _SC_SYSTEM_DATABASE,

  _SC_SYSTEM_DATABASE_R,

  _SC_TIMEOUTS,

  _SC_TYPED_MEMORY_OBJECTS,

  _SC_USER_GROUPS,

  _SC_USER_GROUPS_R,

  _SC_2_PBS,

  _SC_2_PBS_ACCOUNTING,

  _SC_2_PBS_LOCATE,

  _SC_2_PBS_MESSAGE,

  _SC_2_PBS_TRACK,

  _SC_SYMLOOP_MAX,

  _SC_STREAMS,

  _SC_2_PBS_CHECKPOINT,

  _SC_V6_ILP32_OFF32,

  _SC_V6_ILP32_OFFBIG,

  _SC_V6_LP64_OFF64,

  _SC_V6_LPBIG_OFFBIG,

  _SC_HOST_NAME_MAX,

  _SC_TRACE,

  _SC_TRACE_EVENT_FILTER,

  _SC_TRACE_INHERIT,

  _SC_TRACE_LOG,

  _SC_LEVEL1_ICACHE_SIZE,

  _SC_LEVEL1_ICACHE_ASSOC,

  _SC_LEVEL1_ICACHE_LINESIZE,

  _SC_LEVEL1_DCACHE_SIZE,

  _SC_LEVEL1_DCACHE_ASSOC,

  _SC_LEVEL1_DCACHE_LINESIZE,

  _SC_LEVEL2_CACHE_SIZE,

  _SC_LEVEL2_CACHE_ASSOC,

  _SC_LEVEL2_CACHE_LINESIZE,

  _SC_LEVEL3_CACHE_SIZE,

  _SC_LEVEL3_CACHE_ASSOC,

  _SC_LEVEL3_CACHE_LINESIZE,

  _SC_LEVEL4_CACHE_SIZE,

  _SC_LEVEL4_CACHE_ASSOC,

  _SC_LEVEL4_CACHE_LINESIZE,

  _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

  _SC_RAW_SOCKETS,

  _SC_V7_ILP32_OFF32,

  _SC_V7_ILP32_OFFBIG,

  _SC_V7_LP64_OFF64,

  _SC_V7_LPBIG_OFFBIG,

  _SC_SS_REPL_MAX,

  _SC_TRACE_EVENT_NAME_MAX,

  _SC_TRACE_NAME_MAX,

  _SC_TRACE_SYS_MAX,

  _SC_TRACE_USER_EVENT_MAX,

  _SC_XOPEN_STREAMS,

  _SC_THREAD_ROBUST_PRIO_INHERIT,

  _SC_THREAD_ROBUST_PRIO_PROTECT,

  _SC_MINSIGSTKSZ,

  _SC_SIGSTKSZ

};

enum {
  _CS_PATH,

  _CS_V6_WIDTH_RESTRICTED_ENVS,

  _CS_GNU_LIBC_VERSION,

  _CS_GNU_LIBPTHREAD_VERSION,

  _CS_V5_WIDTH_RESTRICTED_ENVS,

  _CS_V7_WIDTH_RESTRICTED_ENVS,

  _CS_LFS_CFLAGS = 1000,

  _CS_LFS_LDFLAGS,

  _CS_LFS_LIBS,

  _CS_LFS_LINTFLAGS,

  _CS_LFS64_CFLAGS,

  _CS_LFS64_LDFLAGS,

  _CS_LFS64_LIBS,

  _CS_LFS64_LINTFLAGS,

  _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

  _CS_XBS5_ILP32_OFF32_LDFLAGS,

  _CS_XBS5_ILP32_OFF32_LIBS,

  _CS_XBS5_ILP32_OFF32_LINTFLAGS,

  _CS_XBS5_ILP32_OFFBIG_CFLAGS,

  _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

  _CS_XBS5_ILP32_OFFBIG_LIBS,

  _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

  _CS_XBS5_LP64_OFF64_CFLAGS,

  _CS_XBS5_LP64_OFF64_LDFLAGS,

  _CS_XBS5_LP64_OFF64_LIBS,

  _CS_XBS5_LP64_OFF64_LINTFLAGS,

  _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

  _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

  _CS_XBS5_LPBIG_OFFBIG_LIBS,

  _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,

  _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

  _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

  _CS_POSIX_V6_ILP32_OFF32_LIBS,

  _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

  _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

  _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

  _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

  _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

  _CS_POSIX_V6_LP64_OFF64_CFLAGS,

  _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

  _CS_POSIX_V6_LP64_OFF64_LIBS,

  _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

  _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

  _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

  _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

  _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,

  _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

  _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

  _CS_POSIX_V7_ILP32_OFF32_LIBS,

  _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

  _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

  _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

  _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

  _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

  _CS_POSIX_V7_LP64_OFF64_CFLAGS,

  _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

  _CS_POSIX_V7_LP64_OFF64_LIBS,

  _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

  _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

  _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

  _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

  _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,

  _CS_V6_ENV,

  _CS_V7_ENV

};

extern long int pathconf(const char *__path, int __name)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern long int fpathconf(int __fd, int __name)
    __attribute__((__nothrow__, __leaf__));

extern long int sysconf(int __name) __attribute__((__nothrow__, __leaf__));

extern size_t confstr(int __name, char *__buf, size_t __len)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__access__(__write_only__, 2, 3)));

extern __pid_t getpid(void) __attribute__((__nothrow__, __leaf__));

extern __pid_t getppid(void) __attribute__((__nothrow__, __leaf__));

extern __pid_t getpgrp(void) __attribute__((__nothrow__, __leaf__));

extern __pid_t __getpgid(__pid_t __pid) __attribute__((__nothrow__, __leaf__));

extern __pid_t getpgid(__pid_t __pid) __attribute__((__nothrow__, __leaf__));

extern int setpgid(__pid_t __pid, __pid_t __pgid)
    __attribute__((__nothrow__, __leaf__));
extern int setpgrp(void) __attribute__((__nothrow__, __leaf__));

extern __pid_t setsid(void) __attribute__((__nothrow__, __leaf__));

extern __pid_t getsid(__pid_t __pid) __attribute__((__nothrow__, __leaf__));

extern __uid_t getuid(void) __attribute__((__nothrow__, __leaf__));

extern __uid_t geteuid(void) __attribute__((__nothrow__, __leaf__));

extern __gid_t getgid(void) __attribute__((__nothrow__, __leaf__));

extern __gid_t getegid(void) __attribute__((__nothrow__, __leaf__));

extern int getgroups(int __size, __gid_t __list[])
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 1)));
extern int setuid(__uid_t __uid) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern int setreuid(__uid_t __ruid, __uid_t __euid)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));

extern int seteuid(__uid_t __uid) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern int setgid(__gid_t __gid) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern int setregid(__gid_t __rgid, __gid_t __egid)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));

extern int setegid(__gid_t __gid) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));
extern __pid_t fork(void) __attribute__((__nothrow__));

extern __pid_t vfork(void) __attribute__((__nothrow__, __leaf__));
extern char *ttyname(int __fd) __attribute__((__nothrow__, __leaf__));

extern int ttyname_r(int __fd, char *__buf, size_t __buflen)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 3)));

extern int isatty(int __fd) __attribute__((__nothrow__, __leaf__));

extern int ttyslot(void) __attribute__((__nothrow__, __leaf__));

extern int link(const char *__from, const char *__to)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)))
    __attribute__((__warn_unused_result__));

extern int linkat(int __fromfd, const char *__from, int __tofd,
                  const char *__to, int __flags)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2, 4)))
    __attribute__((__warn_unused_result__));

extern int symlink(const char *__from, const char *__to)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)))
    __attribute__((__warn_unused_result__));

extern ssize_t readlink(const char *__restrict __path, char *__restrict __buf,
                        size_t __len) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1, 2))) __attribute__((__warn_unused_result__))
__attribute__((__access__(__write_only__, 2, 3)));

extern int symlinkat(const char *__from, int __tofd, const char *__to)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 3)))
    __attribute__((__warn_unused_result__));

extern ssize_t readlinkat(int __fd, const char *__restrict __path,
                          char *__restrict __buf, size_t __len)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2, 3)))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 3, 4)));

extern int unlink(const char *__name) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int unlinkat(int __fd, const char *__name, int __flag)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern int rmdir(const char *__path) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern __pid_t tcgetpgrp(int __fd) __attribute__((__nothrow__, __leaf__));

extern int tcsetpgrp(int __fd, __pid_t __pgrp_id)
    __attribute__((__nothrow__, __leaf__));

extern char *getlogin(void);

extern int getlogin_r(char *__name, size_t __name_len)
    __attribute__((__nonnull__(1)))
    __attribute__((__access__(__write_only__, 1, 2)));

extern int setlogin(const char *__name) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern char *optarg;
extern int optind;

extern int opterr;

extern int optopt;
extern int getopt(int ___argc, char *const *___argv, const char *__shortopts)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2, 3)));

extern int gethostname(char *__name, size_t __len)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__access__(__write_only__, 1, 2)));

extern int sethostname(const char *__name, size_t __len)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__read_only__, 1, 2)));

extern int sethostid(long int __id) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern int getdomainname(char *__name, size_t __len)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 1, 2)));
extern int setdomainname(const char *__name, size_t __len)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__read_only__, 1, 2)));

extern int vhangup(void) __attribute__((__nothrow__, __leaf__));

extern int revoke(const char *__file) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1))) __attribute__((__warn_unused_result__));

extern int profil(unsigned short int *__sample_buffer, size_t __size,
                  size_t __offset, unsigned int __scale)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int acct(const char *__name) __attribute__((__nothrow__, __leaf__));

extern char *getusershell(void) __attribute__((__nothrow__, __leaf__));
extern void endusershell(void) __attribute__((__nothrow__, __leaf__));
extern void setusershell(void) __attribute__((__nothrow__, __leaf__));

extern int daemon(int __nochdir, int __noclose)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));

extern int chroot(const char *__path) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1))) __attribute__((__warn_unused_result__));

extern char *getpass(const char *__prompt) __attribute__((__nonnull__(1)));

extern int fsync(int __fd);
extern long int gethostid(void);

extern void sync(void) __attribute__((__nothrow__, __leaf__));

extern int getpagesize(void) __attribute__((__nothrow__, __leaf__))
__attribute__((__const__));

extern int getdtablesize(void) __attribute__((__nothrow__, __leaf__));
extern int truncate(const char *__file, __off_t __length)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__warn_unused_result__));
extern int ftruncate(int __fd, __off_t __length)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));
extern int brk(void *__addr) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern void *sbrk(intptr_t __delta) __attribute__((__nothrow__, __leaf__));
extern long int syscall(long int __sysno, ...)
    __attribute__((__nothrow__, __leaf__));
extern int lockf(int __fd, int __cmd, __off_t __len)
    __attribute__((__warn_unused_result__));
extern int fdatasync(int __fildes);
extern char *crypt(const char *__key, const char *__salt)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));
int getentropy(void *__buffer, size_t __length)
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 1, 2)));
extern ssize_t __read_chk(int __fd, void *__buf, size_t __nbytes,
                          size_t __buflen)
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 3)));
extern ssize_t __read_alias(int __fd, void *__buf,
                            size_t __nbytes) __asm__(""
                                                     "read")

    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 3)));
extern ssize_t __read_chk_warn(int __fd, void *__buf, size_t __nbytes,
                               size_t __buflen) __asm__(""
                                                        "__read_chk")

    __attribute__((__warn_unused_result__))
    __attribute__((__warning__("read called with bigger length than size of "
                               "the destination buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
__attribute__((__warn_unused_result__)) ssize_t
read(int __fd, void *__buf, size_t __nbytes) {
  return ((((__typeof(__nbytes))0 < (__typeof(__nbytes))-1 ||
            (__builtin_constant_p(__nbytes) && (__nbytes) > 0)) &&
           __builtin_constant_p(
               (((long unsigned int)(__nbytes)) <=
                (__builtin_object_size(__buf, 0)) / (sizeof(char)))) &&
           (((long unsigned int)(__nbytes)) <=
            (__builtin_object_size(__buf, 0)) / (sizeof(char))))
              ? __read_alias(__fd, __buf, __nbytes)
              : ((((__typeof(__nbytes))0 < (__typeof(__nbytes))-1 ||
                   (__builtin_constant_p(__nbytes) && (__nbytes) > 0)) &&
                  __builtin_constant_p(
                      (((long unsigned int)(__nbytes)) <=
                       (__builtin_object_size(__buf, 0)) / (sizeof(char)))) &&
                  !(((long unsigned int)(__nbytes)) <=
                    (__builtin_object_size(__buf, 0)) / (sizeof(char))))
                     ? __read_chk_warn(__fd, __buf, __nbytes,
                                       __builtin_object_size(__buf, 0))
                     : __read_chk(__fd, __buf, __nbytes,
                                  __builtin_object_size(__buf, 0))))

      ;
}

extern ssize_t __pread_chk(int __fd, void *__buf, size_t __nbytes,
                           __off_t __offset, size_t __bufsize)
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 3)));
extern ssize_t __pread64_chk(int __fd, void *__buf, size_t __nbytes,
                             __off64_t __offset, size_t __bufsize)
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 3)));
extern ssize_t __pread_alias(int __fd, void *__buf, size_t __nbytes,
                             __off_t __offset) __asm__(""
                                                       "pread")

    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 3)));
extern ssize_t __pread64_alias(int __fd, void *__buf, size_t __nbytes,
                               __off64_t __offset) __asm__(""
                                                           "pread64")

    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 3)));
extern ssize_t __pread_chk_warn(int __fd, void *__buf, size_t __nbytes,
                                __off_t __offset,
                                size_t __bufsize) __asm__(""
                                                          "__pread_chk")

    __attribute__((__warn_unused_result__))
    __attribute__((__warning__("pread called with bigger length than size of "
                               "the destination buffer")));
extern ssize_t __pread64_chk_warn(int __fd, void *__buf, size_t __nbytes,
                                  __off64_t __offset,
                                  size_t __bufsize) __asm__(""
                                                            "__pread64_chk")

    __attribute__((__warn_unused_result__))
    __attribute__((__warning__("pread64 called with bigger length than size of "
                               "the destination buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
__attribute__((__warn_unused_result__)) ssize_t
pread(int __fd, void *__buf, size_t __nbytes, __off_t __offset) {
  return ((((__typeof(__nbytes))0 < (__typeof(__nbytes))-1 ||
            (__builtin_constant_p(__nbytes) && (__nbytes) > 0)) &&
           __builtin_constant_p(
               (((long unsigned int)(__nbytes)) <=
                (__builtin_object_size(__buf, 0)) / (sizeof(char)))) &&
           (((long unsigned int)(__nbytes)) <=
            (__builtin_object_size(__buf, 0)) / (sizeof(char))))
              ? __pread_alias(__fd, __buf, __nbytes, __offset)
              : ((((__typeof(__nbytes))0 < (__typeof(__nbytes))-1 ||
                   (__builtin_constant_p(__nbytes) && (__nbytes) > 0)) &&
                  __builtin_constant_p(
                      (((long unsigned int)(__nbytes)) <=
                       (__builtin_object_size(__buf, 0)) / (sizeof(char)))) &&
                  !(((long unsigned int)(__nbytes)) <=
                    (__builtin_object_size(__buf, 0)) / (sizeof(char))))
                     ? __pread_chk_warn(__fd, __buf, __nbytes, __offset,
                                        __builtin_object_size(__buf, 0))
                     : __pread_chk(__fd, __buf, __nbytes, __offset,
                                   __builtin_object_size(__buf, 0))))

      ;
}
extern ssize_t __readlink_chk(const char *__restrict __path,
                              char *__restrict __buf, size_t __len,
                              size_t __buflen)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 3)));
extern ssize_t __readlink_alias(const char *__restrict __path,
                                char *__restrict __buf,
                                size_t __len) __asm__(""
                                                      "readlink")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(1, 2))) __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 3)));
extern ssize_t __readlink_chk_warn(const char *__restrict __path,
                                   char *__restrict __buf, size_t __len,
                                   size_t __buflen) __asm__(""
                                                            "__readlink_chk")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(1, 2))) __attribute__((__warn_unused_result__))
    __attribute__((__warning__("readlink called with bigger length "
                               "than size of destination buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
__attribute__((__nonnull__(1, 2))) __attribute__((__warn_unused_result__))
ssize_t __attribute__((__nothrow__, __leaf__))
readlink(const char *__restrict __path, char *__restrict __buf, size_t __len)

{
  return ((((__typeof(__len))0 < (__typeof(__len))-1 ||
            (__builtin_constant_p(__len) && (__len) > 0)) &&
           __builtin_constant_p(
               (((long unsigned int)(__len)) <=
                (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char)))) &&
           (((long unsigned int)(__len)) <=
            (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
              ? __readlink_alias(__path, __buf, __len)
              : ((((__typeof(__len))0 < (__typeof(__len))-1 ||
                   (__builtin_constant_p(__len) && (__len) > 0)) &&
                  __builtin_constant_p((((long unsigned int)(__len)) <=
                                        (__builtin_object_size(__buf, 2 > 1)) /
                                            (sizeof(char)))) &&
                  !(((long unsigned int)(__len)) <=
                    (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
                     ? __readlink_chk_warn(__path, __buf, __len,
                                           __builtin_object_size(__buf, 2 > 1))
                     : __readlink_chk(__path, __buf, __len,
                                      __builtin_object_size(__buf, 2 > 1))))

      ;
}

extern ssize_t __readlinkat_chk(int __fd, const char *__restrict __path,
                                char *__restrict __buf, size_t __len,
                                size_t __buflen)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2, 3)))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 3, 4)));
extern ssize_t __readlinkat_alias(int __fd, const char *__restrict __path,
                                  char *__restrict __buf,
                                  size_t __len) __asm__(""
                                                        "readlinkat")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(2, 3))) __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 3, 4)));
extern ssize_t
__readlinkat_chk_warn(int __fd, const char *__restrict __path,
                      char *__restrict __buf, size_t __len,
                      size_t __buflen) __asm__(""
                                               "__readlinkat_chk")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(2, 3))) __attribute__((__warn_unused_result__))
    __attribute__((__warning__("readlinkat called with bigger "
                               "length than size of destination "
                               "buffer")))

    ;

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
__attribute__((__nonnull__(2, 3))) __attribute__((__warn_unused_result__))
ssize_t __attribute__((__nothrow__, __leaf__))
readlinkat(int __fd, const char *__restrict __path, char *__restrict __buf,
           size_t __len)

{
  return (
      (((__typeof(__len))0 < (__typeof(__len))-1 ||
        (__builtin_constant_p(__len) && (__len) > 0)) &&
       __builtin_constant_p(
           (((long unsigned int)(__len)) <=
            (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char)))) &&
       (((long unsigned int)(__len)) <=
        (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
          ? __readlinkat_alias(__fd, __path, __buf, __len)
          : ((((__typeof(__len))0 < (__typeof(__len))-1 ||
               (__builtin_constant_p(__len) && (__len) > 0)) &&
              __builtin_constant_p(
                  (((long unsigned int)(__len)) <=
                   (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char)))) &&
              !(((long unsigned int)(__len)) <=
                (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
                 ? __readlinkat_chk_warn(__fd, __path, __buf, __len,
                                         __builtin_object_size(__buf, 2 > 1))
                 : __readlinkat_chk(__fd, __path, __buf, __len,
                                    __builtin_object_size(__buf, 2 > 1))))

      ;
}

extern char *__getcwd_chk(char *__buf, size_t __size, size_t __buflen)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));
extern char *__getcwd_alias(char *__buf, size_t __size) __asm__(""
                                                                "getcwd")
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));
extern char *__getcwd_chk_warn(char *__buf, size_t __size,
                               size_t __buflen) __asm__(""
                                                        "__getcwd_chk")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__warn_unused_result__))
    __attribute__((__warning__("getcwd caller with bigger length than size of "
                               "destination buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
__attribute__((__warn_unused_result__)) char *__attribute__((__nothrow__,
                                                             __leaf__))
getcwd(char *__buf, size_t __size) {
  return ((((__typeof(__size))0 < (__typeof(__size))-1 ||
            (__builtin_constant_p(__size) && (__size) > 0)) &&
           __builtin_constant_p(
               (((long unsigned int)(__size)) <=
                (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char)))) &&
           (((long unsigned int)(__size)) <=
            (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
              ? __getcwd_alias(__buf, __size)
              : ((((__typeof(__size))0 < (__typeof(__size))-1 ||
                   (__builtin_constant_p(__size) && (__size) > 0)) &&
                  __builtin_constant_p((((long unsigned int)(__size)) <=
                                        (__builtin_object_size(__buf, 2 > 1)) /
                                            (sizeof(char)))) &&
                  !(((long unsigned int)(__size)) <=
                    (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
                     ? __getcwd_chk_warn(__buf, __size,
                                         __builtin_object_size(__buf, 2 > 1))
                     : __getcwd_chk(__buf, __size,
                                    __builtin_object_size(__buf, 2 > 1))))

      ;
}

extern char *__getwd_chk(char *__buf, size_t buflen)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 1, 2)));
extern char *__getwd_warn(char *__buf) __asm__(""
                                               "getwd")
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__warn_unused_result__))
    __attribute__((__warning__("please use getcwd instead, as getwd "
                               "doesn't specify buffer size")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
__attribute__((__nonnull__(1))) __attribute__((__deprecated__))
__attribute__((__warn_unused_result__)) char *__attribute__((__nothrow__,
                                                             __leaf__))
getwd(char *__buf) {
  if (__builtin_object_size(__buf, 2 > 1) != (size_t)-1)
    return __getwd_chk(__buf, __builtin_object_size(__buf, 2 > 1));
  return __getwd_warn(__buf);
}

extern size_t __confstr_chk(int __name, char *__buf, size_t __len,
                            size_t __buflen)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__access__(__write_only__, 2, 3)));
extern size_t __confstr_alias(int __name, char *__buf,
                              size_t __len) __asm__(""
                                                    "confstr")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__access__(__write_only__, 2, 3)));
extern size_t __confstr_chk_warn(int __name, char *__buf, size_t __len,
                                 size_t __buflen) __asm__(""
                                                          "__confstr_chk")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__warning__(
        "confstr called with bigger length than size of destination "
        "buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) size_t
    __attribute__((__nothrow__, __leaf__))
    confstr(int __name, char *__buf, size_t __len) {
  return ((((__typeof(__len))0 < (__typeof(__len))-1 ||
            (__builtin_constant_p(__len) && (__len) > 0)) &&
           __builtin_constant_p(
               (((long unsigned int)(__len)) <=
                (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char)))) &&
           (((long unsigned int)(__len)) <=
            (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
              ? __confstr_alias(__name, __buf, __len)
              : ((((__typeof(__len))0 < (__typeof(__len))-1 ||
                   (__builtin_constant_p(__len) && (__len) > 0)) &&
                  __builtin_constant_p((((long unsigned int)(__len)) <=
                                        (__builtin_object_size(__buf, 2 > 1)) /
                                            (sizeof(char)))) &&
                  !(((long unsigned int)(__len)) <=
                    (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
                     ? __confstr_chk_warn(__name, __buf, __len,
                                          __builtin_object_size(__buf, 2 > 1))
                     : __confstr_chk(__name, __buf, __len,
                                     __builtin_object_size(__buf, 2 > 1))))

      ;
}

extern int __getgroups_chk(int __size, __gid_t __list[], size_t __listlen)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 1)));
extern int __getgroups_alias(int __size, __gid_t __list[]) __asm__(""
                                                                   "getgroups")
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 2, 1)));
extern int
__getgroups_chk_warn(int __size, __gid_t __list[], size_t __listlen) __asm__(
    ""
    "__getgroups_chk") __attribute__((__nothrow__, __leaf__))

__attribute__((__warn_unused_result__))
__attribute__((__warning__("getgroups called with bigger group count than what "
                           "can fit into destination buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
    __attribute__((__nothrow__, __leaf__))
    getgroups(int __size, __gid_t __list[]) {
  return ((((__typeof(__size))0 < (__typeof(__size))-1 ||
            (__builtin_constant_p(__size) && (__size) > 0)) &&
           __builtin_constant_p(
               (((long unsigned int)(__size)) <=
                (__builtin_object_size(__list, 2 > 1)) / (sizeof(__gid_t)))) &&
           (((long unsigned int)(__size)) <=
            (__builtin_object_size(__list, 2 > 1)) / (sizeof(__gid_t))))
              ? __getgroups_alias(__size, __list)
              : ((((__typeof(__size))0 < (__typeof(__size))-1 ||
                   (__builtin_constant_p(__size) && (__size) > 0)) &&
                  __builtin_constant_p((((long unsigned int)(__size)) <=
                                        (__builtin_object_size(__list, 2 > 1)) /
                                            (sizeof(__gid_t)))) &&
                  !(((long unsigned int)(__size)) <=
                    (__builtin_object_size(__list, 2 > 1)) / (sizeof(__gid_t))))
                     ? __getgroups_chk_warn(
                           __size, __list, __builtin_object_size(__list, 2 > 1))
                     : __getgroups_chk(__size, __list,
                                       __builtin_object_size(__list, 2 > 1))))

      ;
}

extern int __ttyname_r_chk(int __fd, char *__buf, size_t __buflen,
                           size_t __nreal)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)))
    __attribute__((__access__(__write_only__, 2, 3)));
extern int __ttyname_r_alias(int __fd, char *__buf,
                             size_t __buflen) __asm__(""
                                                      "ttyname_r")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(2)));
extern int __ttyname_r_chk_warn(int __fd, char *__buf, size_t __buflen,
                                size_t __nreal) __asm__(""
                                                        "__ttyname_r_chk")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(2)))
    __attribute__((__warning__("ttyname_r called with bigger buflen than "
                               "size of destination buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
    __attribute__((__nothrow__, __leaf__))
    ttyname_r(int __fd, char *__buf, size_t __buflen) {
  return ((((__typeof(__buflen))0 < (__typeof(__buflen))-1 ||
            (__builtin_constant_p(__buflen) && (__buflen) > 0)) &&
           __builtin_constant_p(
               (((long unsigned int)(__buflen)) <=
                (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char)))) &&
           (((long unsigned int)(__buflen)) <=
            (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
              ? __ttyname_r_alias(__fd, __buf, __buflen)
              : ((((__typeof(__buflen))0 < (__typeof(__buflen))-1 ||
                   (__builtin_constant_p(__buflen) && (__buflen) > 0)) &&
                  __builtin_constant_p((((long unsigned int)(__buflen)) <=
                                        (__builtin_object_size(__buf, 2 > 1)) /
                                            (sizeof(char)))) &&
                  !(((long unsigned int)(__buflen)) <=
                    (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
                     ? __ttyname_r_chk_warn(__fd, __buf, __buflen,
                                            __builtin_object_size(__buf, 2 > 1))
                     : __ttyname_r_chk(__fd, __buf, __buflen,
                                       __builtin_object_size(__buf, 2 > 1))))

      ;
}

extern int __getlogin_r_chk(char *__buf, size_t __buflen, size_t __nreal)
    __attribute__((__nonnull__(1)))
    __attribute__((__access__(__write_only__, 1, 2)));
extern int __getlogin_r_alias(char *__buf,
                              size_t __buflen) __asm__(""
                                                       "getlogin_r")
    __attribute__((__nonnull__(1)));
extern int __getlogin_r_chk_warn(char *__buf, size_t __buflen,
                                 size_t __nreal) __asm__(""
                                                         "__getlogin_r_chk")

    __attribute__((__nonnull__(1)))
    __attribute__((__warning__("getlogin_r called with bigger buflen than "
                               "size of destination buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
getlogin_r(char *__buf, size_t __buflen) {
  return ((((__typeof(__buflen))0 < (__typeof(__buflen))-1 ||
            (__builtin_constant_p(__buflen) && (__buflen) > 0)) &&
           __builtin_constant_p(
               (((long unsigned int)(__buflen)) <=
                (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char)))) &&
           (((long unsigned int)(__buflen)) <=
            (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
              ? __getlogin_r_alias(__buf, __buflen)
              : ((((__typeof(__buflen))0 < (__typeof(__buflen))-1 ||
                   (__builtin_constant_p(__buflen) && (__buflen) > 0)) &&
                  __builtin_constant_p((((long unsigned int)(__buflen)) <=
                                        (__builtin_object_size(__buf, 2 > 1)) /
                                            (sizeof(char)))) &&
                  !(((long unsigned int)(__buflen)) <=
                    (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
                     ? __getlogin_r_chk_warn(
                           __buf, __buflen, __builtin_object_size(__buf, 2 > 1))
                     : __getlogin_r_chk(__buf, __buflen,
                                        __builtin_object_size(__buf, 2 > 1))))

      ;
}

extern int __gethostname_chk(char *__buf, size_t __buflen, size_t __nreal)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__access__(__write_only__, 1, 2)));
extern int __gethostname_alias(char *__buf,
                               size_t __buflen) __asm__(""
                                                        "gethostname")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(1)))
    __attribute__((__access__(__write_only__, 1, 2)));
extern int __gethostname_chk_warn(char *__buf, size_t __buflen,
                                  size_t __nreal) __asm__(""
                                                          "__gethostname_chk")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(1)))
    __attribute__((__warning__("gethostname called with bigger buflen than "
                               "size of destination buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
    __attribute__((__nothrow__, __leaf__))
    gethostname(char *__buf, size_t __buflen) {
  return ((((__typeof(__buflen))0 < (__typeof(__buflen))-1 ||
            (__builtin_constant_p(__buflen) && (__buflen) > 0)) &&
           __builtin_constant_p(
               (((long unsigned int)(__buflen)) <=
                (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char)))) &&
           (((long unsigned int)(__buflen)) <=
            (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
              ? __gethostname_alias(__buf, __buflen)
              : ((((__typeof(__buflen))0 < (__typeof(__buflen))-1 ||
                   (__builtin_constant_p(__buflen) && (__buflen) > 0)) &&
                  __builtin_constant_p((((long unsigned int)(__buflen)) <=
                                        (__builtin_object_size(__buf, 2 > 1)) /
                                            (sizeof(char)))) &&
                  !(((long unsigned int)(__buflen)) <=
                    (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
                     ? __gethostname_chk_warn(
                           __buf, __buflen, __builtin_object_size(__buf, 2 > 1))
                     : __gethostname_chk(__buf, __buflen,
                                         __builtin_object_size(__buf, 2 > 1))))

      ;
}

extern int __getdomainname_chk(char *__buf, size_t __buflen, size_t __nreal)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 1, 2)));
extern int __getdomainname_alias(char *__buf,
                                 size_t __buflen) __asm__(""
                                                          "getdomainname")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(1))) __attribute__((__warn_unused_result__))
    __attribute__((__access__(__write_only__, 1, 2)));
extern int
__getdomainname_chk_warn(char *__buf, size_t __buflen,
                         size_t __nreal) __asm__(""
                                                 "__getdomainname_chk")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(1))) __attribute__((__warn_unused_result__))
    __attribute__((__warning__("getdomainname called with bigger "
                               "buflen than size of destination "
                               "buffer")))

    ;

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
    __attribute__((__nothrow__, __leaf__))
    getdomainname(char *__buf, size_t __buflen) {
  return (
      (((__typeof(__buflen))0 < (__typeof(__buflen))-1 ||
        (__builtin_constant_p(__buflen) && (__buflen) > 0)) &&
       __builtin_constant_p(
           (((long unsigned int)(__buflen)) <=
            (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char)))) &&
       (((long unsigned int)(__buflen)) <=
        (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
          ? __getdomainname_alias(__buf, __buflen)
          : ((((__typeof(__buflen))0 < (__typeof(__buflen))-1 ||
               (__builtin_constant_p(__buflen) && (__buflen) > 0)) &&
              __builtin_constant_p(
                  (((long unsigned int)(__buflen)) <=
                   (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char)))) &&
              !(((long unsigned int)(__buflen)) <=
                (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
                 ? __getdomainname_chk_warn(__buf, __buflen,
                                            __builtin_object_size(__buf, 2 > 1))
                 : __getdomainname_chk(__buf, __buflen,
                                       __builtin_object_size(__buf, 2 > 1))))

      ;
}

typedef int wchar_t;

typedef struct {
  int quot;
  int rem;
} div_t;

typedef struct {
  long int quot;
  long int rem;
} ldiv_t;

__extension__ typedef struct {
  long long int quot;
  long long int rem;
} lldiv_t;
extern size_t __ctype_get_mb_cur_max(void)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));

extern double atof(const char *__nptr) __attribute__((__nothrow__, __leaf__))
__attribute__((__pure__)) __attribute__((__nonnull__(1)))
__attribute__((__warn_unused_result__));

extern int atoi(const char *__nptr) __attribute__((__nothrow__, __leaf__))
__attribute__((__pure__)) __attribute__((__nonnull__(1)))
__attribute__((__warn_unused_result__));

extern long int atol(const char *__nptr) __attribute__((__nothrow__, __leaf__))
__attribute__((__pure__)) __attribute__((__nonnull__(1)))
__attribute__((__warn_unused_result__));

__extension__ extern long long int atoll(const char *__nptr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1))) __attribute__((__warn_unused_result__));

extern double strtod(const char *__restrict __nptr, char **__restrict __endptr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern float strtof(const char *__restrict __nptr, char **__restrict __endptr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern long double strtold(const char *__restrict __nptr,
                           char **__restrict __endptr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
extern long int strtol(const char *__restrict __nptr,
                       char **__restrict __endptr, int __base)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern unsigned long int strtoul(const char *__restrict __nptr,
                                 char **__restrict __endptr, int __base)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

__extension__ extern long long int
strtoq(const char *__restrict __nptr, char **__restrict __endptr, int __base)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

__extension__ extern unsigned long long int
strtouq(const char *__restrict __nptr, char **__restrict __endptr, int __base)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

__extension__ extern long long int
strtoll(const char *__restrict __nptr, char **__restrict __endptr, int __base)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

__extension__ extern unsigned long long int
strtoull(const char *__restrict __nptr, char **__restrict __endptr, int __base)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
extern __inline __attribute__((__gnu_inline__)) int
    __attribute__((__nothrow__, __leaf__)) atoi(const char *__nptr) {
  return (int)strtol(__nptr, (char **)((void *)0), 10);
}
extern __inline __attribute__((__gnu_inline__)) long int
    __attribute__((__nothrow__, __leaf__)) atol(const char *__nptr) {
  return strtol(__nptr, (char **)((void *)0), 10);
}

__extension__ extern __inline __attribute__((__gnu_inline__)) long long int
    __attribute__((__nothrow__, __leaf__)) atoll(const char *__nptr) {
  return strtoll(__nptr, (char **)((void *)0), 10);
}
extern char *l64a(long int __n) __attribute__((__nothrow__, __leaf__))
__attribute__((__warn_unused_result__));

extern long int a64l(const char *__s) __attribute__((__nothrow__, __leaf__))
__attribute__((__pure__)) __attribute__((__nonnull__(1)))
__attribute__((__warn_unused_result__));

typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;

typedef __loff_t loff_t;

typedef __ino_t ino_t;
typedef __dev_t dev_t;
typedef __mode_t mode_t;

typedef __nlink_t nlink_t;
typedef __id_t id_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;

typedef __key_t key_t;

typedef __clock_t clock_t;

typedef __clockid_t clockid_t;
typedef __time_t time_t;

typedef __timer_t timer_t;

typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;

typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;

typedef int register_t __attribute__((__mode__(__word__)));
static __inline __uint16_t __bswap_16(__uint16_t __bsx) {

  return __builtin_bswap16(__bsx);
}

static __inline __uint32_t __bswap_32(__uint32_t __bsx) {

  return __builtin_bswap32(__bsx);
}
__extension__ static __inline __uint64_t __bswap_64(__uint64_t __bsx) {

  return __builtin_bswap64(__bsx);
}
static __inline __uint16_t __uint16_identity(__uint16_t __x) { return __x; }

static __inline __uint32_t __uint32_identity(__uint32_t __x) { return __x; }

static __inline __uint64_t __uint64_identity(__uint64_t __x) { return __x; }

typedef struct {
  unsigned long int __val[(1024 / (8 * sizeof(unsigned long int)))];
} __sigset_t;

typedef __sigset_t sigset_t;

struct timeval {

  __time_t tv_sec;
  __suseconds_t tv_usec;
};

struct timespec {

  __time_t tv_sec;

  __syscall_slong_t tv_nsec;
};

typedef __suseconds_t suseconds_t;

typedef long int __fd_mask;
typedef struct {

  __fd_mask __fds_bits[1024 / (8 * (int)sizeof(__fd_mask))];

} fd_set;

typedef __fd_mask fd_mask;

extern int select(int __nfds, fd_set *__restrict __readfds,
                  fd_set *__restrict __writefds, fd_set *__restrict __exceptfds,
                  struct timeval *__restrict __timeout);
extern int pselect(int __nfds, fd_set *__restrict __readfds,
                   fd_set *__restrict __writefds,
                   fd_set *__restrict __exceptfds,
                   const struct timespec *__restrict __timeout,
                   const __sigset_t *__restrict __sigmask);
extern long int __fdelt_chk(long int __d);
extern long int __fdelt_warn(long int __d)
    __attribute__((__warning__("bit outside of fd_set selected")));

typedef __blksize_t blksize_t;

typedef __blkcnt_t blkcnt_t;

typedef __fsblkcnt_t fsblkcnt_t;

typedef __fsfilcnt_t fsfilcnt_t;

typedef union {
  __extension__ unsigned long long int __value64;
  struct {
    unsigned int __low;
    unsigned int __high;
  } __value32;
} __atomic_wide_counter;

typedef struct __pthread_internal_list {
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

typedef struct __pthread_internal_slist {
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
struct __pthread_mutex_s {
  int __lock;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;

  int __kind;

  short __spins;
  short __elision;
  __pthread_list_t __list;
};
struct __pthread_rwlock_arch_t {
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;

  unsigned char __pad1[7];

  unsigned long int __pad2;

  unsigned int __flags;
};

struct __pthread_cond_s {
  __atomic_wide_counter __wseq;
  __atomic_wide_counter __g1_start;
  unsigned int __g_refs[2];
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};

typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;

typedef struct {
  int __data;
} __once_flag;

typedef unsigned long int pthread_t;

typedef union {
  char __size[4];
  int __align;
} pthread_mutexattr_t;

typedef union {
  char __size[4];
  int __align;
} pthread_condattr_t;

typedef unsigned int pthread_key_t;

typedef int pthread_once_t;

union pthread_attr_t {
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;

typedef union {
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union {
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union {
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union {
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;

typedef volatile int pthread_spinlock_t;

typedef union {
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union {
  char __size[4];
  int __align;
} pthread_barrierattr_t;

extern long int random(void) __attribute__((__nothrow__, __leaf__));

extern void srandom(unsigned int __seed) __attribute__((__nothrow__, __leaf__));

extern char *initstate(unsigned int __seed, char *__statebuf, size_t __statelen)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern char *setstate(char *__statebuf) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

struct random_data {
  int32_t *fptr;
  int32_t *rptr;
  int32_t *state;
  int rand_type;
  int rand_deg;
  int rand_sep;
  int32_t *end_ptr;
};

extern int random_r(struct random_data *__restrict __buf,
                    int32_t *__restrict __result)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int srandom_r(unsigned int __seed, struct random_data *__buf)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern int initstate_r(unsigned int __seed, char *__restrict __statebuf,
                       size_t __statelen, struct random_data *__restrict __buf)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2, 4)));

extern int setstate_r(char *__restrict __statebuf,
                      struct random_data *__restrict __buf)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int rand(void) __attribute__((__nothrow__, __leaf__));

extern void srand(unsigned int __seed) __attribute__((__nothrow__, __leaf__));

extern int rand_r(unsigned int *__seed) __attribute__((__nothrow__, __leaf__));

extern double drand48(void) __attribute__((__nothrow__, __leaf__));
extern double erand48(unsigned short int __xsubi[3])
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern long int lrand48(void) __attribute__((__nothrow__, __leaf__));
extern long int nrand48(unsigned short int __xsubi[3])
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern long int mrand48(void) __attribute__((__nothrow__, __leaf__));
extern long int jrand48(unsigned short int __xsubi[3])
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern void srand48(long int __seedval) __attribute__((__nothrow__, __leaf__));
extern unsigned short int *seed48(unsigned short int __seed16v[3])
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
extern void lcong48(unsigned short int __param[7])
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

struct drand48_data {
  unsigned short int __x[3];
  unsigned short int __old_x[3];
  unsigned short int __c;
  unsigned short int __init;
  __extension__ unsigned long long int __a;
};

extern int drand48_r(struct drand48_data *__restrict __buffer,
                     double *__restrict __result)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));
extern int erand48_r(unsigned short int __xsubi[3],
                     struct drand48_data *__restrict __buffer,
                     double *__restrict __result)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int lrand48_r(struct drand48_data *__restrict __buffer,
                     long int *__restrict __result)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));
extern int nrand48_r(unsigned short int __xsubi[3],
                     struct drand48_data *__restrict __buffer,
                     long int *__restrict __result)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int mrand48_r(struct drand48_data *__restrict __buffer,
                     long int *__restrict __result)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));
extern int jrand48_r(unsigned short int __xsubi[3],
                     struct drand48_data *__restrict __buffer,
                     long int *__restrict __result)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int srand48_r(long int __seedval, struct drand48_data *__buffer)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern int seed48_r(unsigned short int __seed16v[3],
                    struct drand48_data *__buffer)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int lcong48_r(unsigned short int __param[7],
                     struct drand48_data *__buffer)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern void *malloc(size_t __size) __attribute__((__nothrow__, __leaf__))
__attribute__((__malloc__)) __attribute__((__alloc_size__(1)))
__attribute__((__warn_unused_result__));

extern void *calloc(size_t __nmemb, size_t __size)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__alloc_size__(1, 2)))
    __attribute__((__warn_unused_result__));

extern void *realloc(void *__ptr, size_t __size)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2)));

extern void free(void *__ptr) __attribute__((__nothrow__, __leaf__));

extern void *reallocarray(void *__ptr, size_t __nmemb, size_t __size)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__))
    __attribute__((__alloc_size__(2, 3)))
    __attribute__((__malloc__(__builtin_free, 1)));

extern void *reallocarray(void *__ptr, size_t __nmemb, size_t __size)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__malloc__(reallocarray, 1)));

extern void *alloca(size_t __size) __attribute__((__nothrow__, __leaf__));

extern void *valloc(size_t __size) __attribute__((__nothrow__, __leaf__))
__attribute__((__malloc__)) __attribute__((__alloc_size__(1)))
__attribute__((__warn_unused_result__));

extern int posix_memalign(void **__memptr, size_t __alignment, size_t __size)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__warn_unused_result__));

extern void *aligned_alloc(size_t __alignment, size_t __size)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__alloc_align__(1))) __attribute__((__alloc_size__(2)))
    __attribute__((__warn_unused_result__));

extern void abort(void) __attribute__((__nothrow__, __leaf__))
__attribute__((__noreturn__));

extern int atexit(void (*__func)(void)) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int at_quick_exit(void (*__func)(void))
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int on_exit(void (*__func)(int __status, void *__arg), void *__arg)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern void exit(int __status) __attribute__((__nothrow__, __leaf__))
__attribute__((__noreturn__));

extern void quick_exit(int __status) __attribute__((__nothrow__, __leaf__))
__attribute__((__noreturn__));

extern void _Exit(int __status) __attribute__((__nothrow__, __leaf__))
__attribute__((__noreturn__));

extern char *getenv(const char *__name) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1))) __attribute__((__warn_unused_result__));
extern int putenv(char *__string) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int setenv(const char *__name, const char *__value, int __replace)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern int unsetenv(const char *__name) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int clearenv(void) __attribute__((__nothrow__, __leaf__));
extern char *mktemp(char *__template) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));
extern int mkstemp(char *__template) __attribute__((__nonnull__(1)))
__attribute__((__warn_unused_result__));
extern int mkstemps(char *__template, int __suffixlen)
    __attribute__((__nonnull__(1))) __attribute__((__warn_unused_result__));
extern char *mkdtemp(char *__template) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1))) __attribute__((__warn_unused_result__));
extern int system(const char *__command)
    __attribute__((__warn_unused_result__));
extern char *realpath(const char *__restrict __name,
                      char *__restrict __resolved)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));

typedef int (*__compar_fn_t)(const void *, const void *);
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
                     size_t __size, __compar_fn_t __compar)
    __attribute__((__nonnull__(1, 2, 5)))
    __attribute__((__warn_unused_result__));

extern __inline __attribute__((__gnu_inline__)) void *
bsearch(const void *__key, const void *__base, size_t __nmemb, size_t __size,
        __compar_fn_t __compar) {
  size_t __l, __u, __idx;
  const void *__p;
  int __comparison;

  __l = 0;
  __u = __nmemb;
  while (__l < __u) {
    __idx = (__l + __u) / 2;
    __p = (const void *)(((const char *)__base) + (__idx * __size));
    __comparison = (*__compar)(__key, __p);
    if (__comparison < 0)
      __u = __idx;
    else if (__comparison > 0)
      __l = __idx + 1;
    else {

      return (void *)__p;
    }
  }

  return ((void *)0);
}

extern void qsort(void *__base, size_t __nmemb, size_t __size,
                  __compar_fn_t __compar) __attribute__((__nonnull__(1, 4)));
extern int abs(int __x) __attribute__((__nothrow__, __leaf__))
__attribute__((__const__)) __attribute__((__warn_unused_result__));
extern long int labs(long int __x) __attribute__((__nothrow__, __leaf__))
__attribute__((__const__)) __attribute__((__warn_unused_result__));

__extension__ extern long long int llabs(long long int __x)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__const__))
    __attribute__((__warn_unused_result__));

extern div_t div(int __numer, int __denom)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__const__))
    __attribute__((__warn_unused_result__));
extern ldiv_t ldiv(long int __numer, long int __denom)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__const__))
    __attribute__((__warn_unused_result__));

__extension__ extern lldiv_t lldiv(long long int __numer, long long int __denom)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__const__))
    __attribute__((__warn_unused_result__));
extern char *ecvt(double __value, int __ndigit, int *__restrict __decpt,
                  int *__restrict __sign) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(3, 4))) __attribute__((__warn_unused_result__));

extern char *fcvt(double __value, int __ndigit, int *__restrict __decpt,
                  int *__restrict __sign) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(3, 4))) __attribute__((__warn_unused_result__));

extern char *gcvt(double __value, int __ndigit, char *__buf)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(3)))
    __attribute__((__warn_unused_result__));

extern char *qecvt(long double __value, int __ndigit, int *__restrict __decpt,
                   int *__restrict __sign)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(3, 4)))
    __attribute__((__warn_unused_result__));
extern char *qfcvt(long double __value, int __ndigit, int *__restrict __decpt,
                   int *__restrict __sign)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(3, 4)))
    __attribute__((__warn_unused_result__));
extern char *qgcvt(long double __value, int __ndigit, char *__buf)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(3)))
    __attribute__((__warn_unused_result__));

extern int ecvt_r(double __value, int __ndigit, int *__restrict __decpt,
                  int *__restrict __sign, char *__restrict __buf, size_t __len)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__nonnull__(3, 4, 5)));
extern int fcvt_r(double __value, int __ndigit, int *__restrict __decpt,
                  int *__restrict __sign, char *__restrict __buf, size_t __len)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__nonnull__(3, 4, 5)));

extern int qecvt_r(long double __value, int __ndigit, int *__restrict __decpt,
                   int *__restrict __sign, char *__restrict __buf, size_t __len)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__nonnull__(3, 4, 5)));
extern int qfcvt_r(long double __value, int __ndigit, int *__restrict __decpt,
                   int *__restrict __sign, char *__restrict __buf, size_t __len)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__nonnull__(3, 4, 5)));

extern int mblen(const char *__s, size_t __n)
    __attribute__((__nothrow__, __leaf__));

extern int mbtowc(wchar_t *__restrict __pwc, const char *__restrict __s,
                  size_t __n) __attribute__((__nothrow__, __leaf__));

extern int wctomb(char *__s, wchar_t __wchar)
    __attribute__((__nothrow__, __leaf__));

extern size_t mbstowcs(wchar_t *__restrict __pwcs, const char *__restrict __s,
                       size_t __n) __attribute__((__nothrow__, __leaf__))
__attribute__((__access__(__read_only__, 2)));

extern size_t wcstombs(char *__restrict __s, const wchar_t *__restrict __pwcs,
                       size_t __n) __attribute__((__nothrow__, __leaf__))
__attribute__((__access__(__write_only__, 1, 3)))
__attribute__((__access__(__read_only__, 2)));

extern int rpmatch(const char *__response)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__warn_unused_result__));
extern int getsubopt(char **__restrict __optionp,
                     char *const *__restrict __tokens,
                     char **__restrict __valuep)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2, 3)))
    __attribute__((__warn_unused_result__));
extern int getloadavg(double __loadavg[], int __nelem)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
extern __inline __attribute__((__gnu_inline__)) double
    __attribute__((__nothrow__, __leaf__)) atof(const char *__nptr) {
  return strtod(__nptr, (char **)((void *)0));
}

extern char *__realpath_chk(const char *__restrict __name,
                            char *__restrict __resolved, size_t __resolvedlen)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));
extern char *__realpath_alias(const char *__restrict __name,
                              char *__restrict __resolved) __asm__(""
                                                                   "realpath")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__warn_unused_result__));
extern char *__realpath_chk_warn(const char *__restrict __name,
                                 char *__restrict __resolved,
                                 size_t __resolvedlen) __asm__(""
                                                               "__realpath_chk")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__warn_unused_result__)) __attribute__((
        __warning__("second argument of realpath must be either NULL or at "
                    "least PATH_MAX bytes long buffer")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
__attribute__((__warn_unused_result__)) char *__attribute__((__nothrow__,
                                                             __leaf__))
realpath(const char *__restrict __name, char *__restrict __resolved) {
  size_t sz = __builtin_object_size(__resolved, 2 > 1);

  if (sz == (size_t)-1)
    return __realpath_alias(__name, __resolved);

  return __realpath_chk(__name, __resolved, sz);
}

extern int __ptsname_r_chk(int __fd, char *__buf, size_t __buflen,
                           size_t __nreal)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)))
    __attribute__((__access__(__write_only__, 2, 3)));
extern int __ptsname_r_alias(int __fd, char *__buf,
                             size_t __buflen) __asm__(""
                                                      "ptsname_r")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(2)))
    __attribute__((__access__(__write_only__, 2, 3)));
extern int __ptsname_r_chk_warn(int __fd, char *__buf, size_t __buflen,
                                size_t __nreal) __asm__(""
                                                        "__ptsname_r_chk")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__nonnull__(2)))
    __attribute__((__warning__("ptsname_r called with buflen bigger than "
                               "size of buf")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__)) int
    __attribute__((__nothrow__, __leaf__))
    ptsname_r(int __fd, char *__buf, size_t __buflen) {
  return ((((__typeof(__buflen))0 < (__typeof(__buflen))-1 ||
            (__builtin_constant_p(__buflen) && (__buflen) > 0)) &&
           __builtin_constant_p(
               (((long unsigned int)(__buflen)) <=
                (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char)))) &&
           (((long unsigned int)(__buflen)) <=
            (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
              ? __ptsname_r_alias(__fd, __buf, __buflen)
              : ((((__typeof(__buflen))0 < (__typeof(__buflen))-1 ||
                   (__builtin_constant_p(__buflen) && (__buflen) > 0)) &&
                  __builtin_constant_p((((long unsigned int)(__buflen)) <=
                                        (__builtin_object_size(__buf, 2 > 1)) /
                                            (sizeof(char)))) &&
                  !(((long unsigned int)(__buflen)) <=
                    (__builtin_object_size(__buf, 2 > 1)) / (sizeof(char))))
                     ? __ptsname_r_chk_warn(__fd, __buf, __buflen,
                                            __builtin_object_size(__buf, 2 > 1))
                     : __ptsname_r_chk(__fd, __buf, __buflen,
                                       __builtin_object_size(__buf, 2 > 1))))

      ;
}

extern int __wctomb_chk(char *__s, wchar_t __wchar, size_t __buflen)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));
extern int __wctomb_alias(char *__s, wchar_t __wchar) __asm__(""
                                                              "wctomb")
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__warn_unused_result__));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
__attribute__((__warn_unused_result__)) int
    __attribute__((__nothrow__, __leaf__)) wctomb(char *__s, wchar_t __wchar) {

  if (__builtin_object_size(__s, 2 > 1) != (size_t)-1 &&
      16 > __builtin_object_size(__s, 2 > 1))
    return __wctomb_chk(__s, __wchar, __builtin_object_size(__s, 2 > 1));
  return __wctomb_alias(__s, __wchar);
}

extern size_t __mbstowcs_chk(wchar_t *__restrict __dst,
                             const char *__restrict __src, size_t __len,
                             size_t __dstlen)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__access__(__write_only__, 1, 3)))
    __attribute__((__access__(__read_only__, 2)));
extern size_t __mbstowcs_alias(wchar_t *__restrict __dst,
                               const char *__restrict __src,
                               size_t __len) __asm__(""
                                                     "mbstowcs")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__access__(__write_only__, 1, 3)))
    __attribute__((__access__(__read_only__, 2)));
extern size_t __mbstowcs_chk_warn(
    wchar_t *__restrict __dst, const char *__restrict __src, size_t __len,
    size_t __dstlen) __asm__(""
                             "__mbstowcs_chk") __attribute__((__nothrow__,
                                                              __leaf__))

__attribute__((__warning__("mbstowcs called with dst buffer smaller than len "
                           "* sizeof (wchar_t)")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
size_t __attribute__((__nothrow__, __leaf__))
mbstowcs(wchar_t *__restrict __dst, const char *__restrict __src, size_t __len)

{
  return (
      (((__typeof(__len))0 < (__typeof(__len))-1 ||
        (__builtin_constant_p(__len) && (__len) > 0)) &&
       __builtin_constant_p(
           (((long unsigned int)(__len)) <=
            (__builtin_object_size(__dst, 2 > 1)) / (sizeof(wchar_t)))) &&
       (((long unsigned int)(__len)) <=
        (__builtin_object_size(__dst, 2 > 1)) / (sizeof(wchar_t))))
          ? __mbstowcs_alias(__dst, __src, __len)
          : ((((__typeof(__len))0 < (__typeof(__len))-1 ||
               (__builtin_constant_p(__len) && (__len) > 0)) &&
              __builtin_constant_p((((long unsigned int)(__len)) <=
                                    (__builtin_object_size(__dst, 2 > 1)) /
                                        (sizeof(wchar_t)))) &&
              !(((long unsigned int)(__len)) <=
                (__builtin_object_size(__dst, 2 > 1)) / (sizeof(wchar_t))))
                 ? __mbstowcs_chk_warn(__dst, __src, __len,
                                       (__builtin_object_size(__dst, 2 > 1)) /
                                           (sizeof(wchar_t)))
                 : __mbstowcs_chk(__dst, __src, __len,
                                  (__builtin_object_size(__dst, 2 > 1)) /
                                      (sizeof(wchar_t)))))

      ;
}

extern size_t __wcstombs_chk(char *__restrict __dst,
                             const wchar_t *__restrict __src, size_t __len,
                             size_t __dstlen)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__access__(__write_only__, 1, 3)))
    __attribute__((__access__(__read_only__, 2)));
extern size_t __wcstombs_alias(char *__restrict __dst,
                               const wchar_t *__restrict __src,
                               size_t __len) __asm__(""
                                                     "wcstombs")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__access__(__write_only__, 1, 3)))
    __attribute__((__access__(__read_only__, 2)));
extern size_t __wcstombs_chk_warn(char *__restrict __dst,
                                  const wchar_t *__restrict __src, size_t __len,
                                  size_t __dstlen) __asm__(""
                                                           "__wcstombs_chk")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((
        __warning__("wcstombs called with dst buffer smaller than len")));

extern __inline __attribute__((__always_inline__))
__attribute__((__gnu_inline__)) __attribute__((__artificial__))
size_t __attribute__((__nothrow__, __leaf__))
wcstombs(char *__restrict __dst, const wchar_t *__restrict __src, size_t __len)

{
  return ((((__typeof(__len))0 < (__typeof(__len))-1 ||
            (__builtin_constant_p(__len) && (__len) > 0)) &&
           __builtin_constant_p(
               (((long unsigned int)(__len)) <=
                (__builtin_object_size(__dst, 2 > 1)) / (sizeof(char)))) &&
           (((long unsigned int)(__len)) <=
            (__builtin_object_size(__dst, 2 > 1)) / (sizeof(char))))
              ? __wcstombs_alias(__dst, __src, __len)
              : ((((__typeof(__len))0 < (__typeof(__len))-1 ||
                   (__builtin_constant_p(__len) && (__len) > 0)) &&
                  __builtin_constant_p((((long unsigned int)(__len)) <=
                                        (__builtin_object_size(__dst, 2 > 1)) /
                                            (sizeof(char)))) &&
                  !(((long unsigned int)(__len)) <=
                    (__builtin_object_size(__dst, 2 > 1)) / (sizeof(char))))
                     ? __wcstombs_chk_warn(__dst, __src, __len,
                                           __builtin_object_size(__dst, 2 > 1))
                     : __wcstombs_chk(__dst, __src, __len,
                                      __builtin_object_size(__dst, 2 > 1))))

      ;
}

typedef uint32_t paddr_t;

union isa_gdb_regs {
  struct {

    uint32_t gpr[32];
    uint32_t pc;
  };
  struct {
    uint32_t array[77];
  };
};
struct gdb_conn;

uint16_t gdb_decode_hex(uint8_t msb, uint8_t lsb);
uint64_t gdb_decode_hex_str(uint8_t *bytes);

uint8_t hex_encode(uint8_t digit);

struct gdb_conn *gdb_begin_inet(const char *addr, uint16_t port);

void gdb_end(struct gdb_conn *conn);

void gdb_send(struct gdb_conn *conn, const uint8_t *command, size_t size);

uint8_t *gdb_recv(struct gdb_conn *conn, size_t *size);

const char *gdb_start_noack(struct gdb_conn *conn);

enum { DIFFTEST_TO_DUT, DIFFTEST_TO_REF };

typedef __signed__ char __s8;
typedef unsigned char __u8;

typedef __signed__ short __s16;
typedef unsigned short __u16;

typedef __signed__ int __s32;
typedef unsigned int __u32;

__extension__ typedef __signed__ long long __s64;
__extension__ typedef unsigned long long __u64;

typedef struct {
  unsigned long fds_bits[1024 / (8 * sizeof(long))];
} __kernel_fd_set;

typedef void (*__kernel_sighandler_t)(int);

typedef int __kernel_key_t;
typedef int __kernel_mqd_t;

typedef unsigned short __kernel_old_uid_t;
typedef unsigned short __kernel_old_gid_t;

typedef unsigned long __kernel_old_dev_t;

typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;

typedef __kernel_ulong_t __kernel_ino_t;

typedef unsigned int __kernel_mode_t;

typedef int __kernel_pid_t;

typedef int __kernel_ipc_pid_t;

typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;

typedef __kernel_long_t __kernel_suseconds_t;

typedef int __kernel_daddr_t;

typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_ptrdiff_t;

typedef struct {
  int val[2];
} __kernel_fsid_t;

typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_old_time_t;
typedef __kernel_long_t __kernel_time_t;
typedef long long __kernel_time64_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef char *__kernel_caddr_t;
typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;

typedef __u16 __sum16;
typedef __u32 __wsum;
typedef unsigned __poll_t;
struct prctl_mm_map {
  __u64 start_code;
  __u64 end_code;
  __u64 start_data;
  __u64 end_data;
  __u64 start_brk;
  __u64 brk;
  __u64 start_stack;
  __u64 arg_start;
  __u64 arg_end;
  __u64 env_start;
  __u64 env_end;
  __u64 *auxv;
  __u32 auxv_size;
  __u32 exe_fd;
};

extern int prctl(int __option, ...) __attribute__((__nothrow__, __leaf__));

typedef __sig_atomic_t sig_atomic_t;

union sigval {
  int sival_int;
  void *sival_ptr;
};

typedef union sigval __sigval_t;
typedef struct {
  int si_signo;

  int si_errno;

  int si_code;

  int __pad0;

  union {
    int _pad[((128 / sizeof(int)) - 4)];

    struct {
      __pid_t si_pid;
      __uid_t si_uid;
    } _kill;

    struct {
      int si_tid;
      int si_overrun;
      __sigval_t si_sigval;
    } _timer;

    struct {
      __pid_t si_pid;
      __uid_t si_uid;
      __sigval_t si_sigval;
    } _rt;

    struct {
      __pid_t si_pid;
      __uid_t si_uid;
      int si_status;
      __clock_t si_utime;
      __clock_t si_stime;
    } _sigchld;

    struct {
      void *si_addr;

      short int si_addr_lsb;
      union {

        struct {
          void *_lower;
          void *_upper;
        } _addr_bnd;

        __uint32_t _pkey;
      } _bounds;
    } _sigfault;

    struct {
      long int si_band;
      int si_fd;
    } _sigpoll;

    struct {
      void *_call_addr;
      int _syscall;
      unsigned int _arch;
    } _sigsys;

  } _sifields;
} siginfo_t;
enum {
  SI_ASYNCNL = -60,
  SI_DETHREAD = -7,

  SI_TKILL,
  SI_SIGIO,

  SI_ASYNCIO,
  SI_MESGQ,
  SI_TIMER,

  SI_QUEUE,
  SI_USER,
  SI_KERNEL = 0x80
};

enum {
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK,

  ILL_BADIADDR

};

enum {
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB,

  FPE_FLTUNK = 14,

  FPE_CONDTRAP

};

enum {
  SEGV_MAPERR = 1,

  SEGV_ACCERR,

  SEGV_BNDERR,

  SEGV_PKUERR,

  SEGV_ACCADI,

  SEGV_ADIDERR,

  SEGV_ADIPERR,

  SEGV_MTEAERR,

  SEGV_MTESERR

};

enum {
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR,

  BUS_MCEERR_AR,

  BUS_MCEERR_AO

};
enum {
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};

enum {
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};

typedef __sigval_t sigval_t;

typedef struct sigevent {
  __sigval_t sigev_value;
  int sigev_signo;
  int sigev_notify;

  union {
    int _pad[((64 / sizeof(int)) - 4)];

    __pid_t _tid;

    struct {
      void (*_function)(__sigval_t);
      pthread_attr_t *_attribute;
    } _sigev_thread;
  } _sigev_un;
} sigevent_t;
enum {
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,

  SIGEV_THREAD_ID = 4

};

typedef void (*__sighandler_t)(int);

extern __sighandler_t __sysv_signal(int __sig, __sighandler_t __handler)
    __attribute__((__nothrow__, __leaf__));
extern __sighandler_t signal(int __sig, __sighandler_t __handler)
    __attribute__((__nothrow__, __leaf__));
extern int kill(__pid_t __pid, int __sig)
    __attribute__((__nothrow__, __leaf__));

extern int killpg(__pid_t __pgrp, int __sig)
    __attribute__((__nothrow__, __leaf__));

extern int raise(int __sig) __attribute__((__nothrow__, __leaf__));

extern __sighandler_t ssignal(int __sig, __sighandler_t __handler)
    __attribute__((__nothrow__, __leaf__));
extern int gsignal(int __sig) __attribute__((__nothrow__, __leaf__));

extern void psignal(int __sig, const char *__s);

extern void psiginfo(const siginfo_t *__pinfo, const char *__s);
extern int sigblock(int __mask) __attribute__((__nothrow__, __leaf__))
__attribute__((__deprecated__));

extern int sigsetmask(int __mask) __attribute__((__nothrow__, __leaf__))
__attribute__((__deprecated__));

extern int siggetmask(void) __attribute__((__nothrow__, __leaf__))
__attribute__((__deprecated__));
typedef __sighandler_t sig_t;

extern int sigemptyset(sigset_t *__set) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int sigfillset(sigset_t *__set) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int sigaddset(sigset_t *__set, int __signo)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int sigdelset(sigset_t *__set, int __signo)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int sigismember(const sigset_t *__set, int __signo)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
struct sigaction {

  union {

    __sighandler_t sa_handler;

    void (*sa_sigaction)(int, siginfo_t *, void *);
  } __sigaction_handler;

  __sigset_t sa_mask;

  int sa_flags;

  void (*sa_restorer)(void);
};

extern int sigprocmask(int __how, const sigset_t *__restrict __set,
                       sigset_t *__restrict __oset)
    __attribute__((__nothrow__, __leaf__));

extern int sigsuspend(const sigset_t *__set) __attribute__((__nonnull__(1)));

extern int sigaction(int __sig, const struct sigaction *__restrict __act,
                     struct sigaction *__restrict __oact)
    __attribute__((__nothrow__, __leaf__));

extern int sigpending(sigset_t *__set) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int sigwait(const sigset_t *__restrict __set, int *__restrict __sig)
    __attribute__((__nonnull__(1, 2)));

extern int sigwaitinfo(const sigset_t *__restrict __set,
                       siginfo_t *__restrict __info)
    __attribute__((__nonnull__(1)));

extern int sigtimedwait(const sigset_t *__restrict __set,
                        siginfo_t *__restrict __info,
                        const struct timespec *__restrict __timeout)
    __attribute__((__nonnull__(1)));
extern int sigqueue(__pid_t __pid, int __sig, const union sigval __val)
    __attribute__((__nothrow__, __leaf__));

struct _fpx_sw_bytes {
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t __glibc_reserved1[7];
};

struct _fpreg {
  unsigned short significand[4];
  unsigned short exponent;
};

struct _fpxreg {
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short __glibc_reserved1[3];
};

struct _xmmreg {
  __uint32_t element[4];
};
struct _fpstate {

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t __glibc_reserved1[24];
};

struct sigcontext {
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union {
    struct _fpstate *fpstate;
    __uint64_t __fpstate_word;
  };
  __uint64_t __reserved1[8];
};

struct _xsave_hdr {
  __uint64_t xstate_bv;
  __uint64_t __glibc_reserved1[2];
  __uint64_t __glibc_reserved2[5];
};

struct _ymmh_state {
  __uint32_t ymmh_space[64];
};

struct _xstate {
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};

extern int sigreturn(struct sigcontext *__scp)
    __attribute__((__nothrow__, __leaf__));

typedef struct {
  void *ss_sp;
  int ss_flags;
  size_t ss_size;
} stack_t;

__extension__ typedef long long int greg_t;
typedef greg_t gregset_t[23];
struct _libc_fpxreg {
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int __glibc_reserved1[3];
};

struct _libc_xmmreg {
  __uint32_t element[4];
};

struct _libc_fpstate {

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t __glibc_reserved1[24];
};

typedef struct _libc_fpstate *fpregset_t;

typedef struct {
  gregset_t gregs;

  fpregset_t fpregs;
  __extension__ unsigned long long __reserved1[8];
} mcontext_t;

typedef struct ucontext_t {
  unsigned long int uc_flags;
  struct ucontext_t *uc_link;
  stack_t uc_stack;
  mcontext_t uc_mcontext;
  sigset_t uc_sigmask;
  struct _libc_fpstate __fpregs_mem;
  __extension__ unsigned long long int __ssp[4];
} ucontext_t;

extern int siginterrupt(int __sig, int __interrupt)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__deprecated__("Use sigaction with SA_RESTART instead")));

enum {
  SS_ONSTACK = 1,

  SS_DISABLE

};

extern int sigaltstack(const stack_t *__restrict __ss,
                       stack_t *__restrict __oss)
    __attribute__((__nothrow__, __leaf__));

struct sigstack {
  void *ss_sp;
  int ss_onstack;
};

extern int sigstack(struct sigstack *__ss, struct sigstack *__oss)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__deprecated__));
extern int pthread_sigmask(int __how, const __sigset_t *__restrict __newmask,
                           __sigset_t *__restrict __oldmask)
    __attribute__((__nothrow__, __leaf__));

extern int pthread_kill(pthread_t __threadid, int __signo)
    __attribute__((__nothrow__, __leaf__));

extern int __libc_current_sigrtmin(void) __attribute__((__nothrow__, __leaf__));

extern int __libc_current_sigrtmax(void) __attribute__((__nothrow__, __leaf__));

_Bool gdb_connect_qemu(int);

_Bool gdb_memcpy_to_qemu(uint32_t, void *, int);

_Bool gdb_getregs(union isa_gdb_regs *);

_Bool gdb_setregs(union isa_gdb_regs *);

_Bool gdb_si();
void gdb_exit();

void init_isa();

void difftest_memcpy(paddr_t addr, void *buf, size_t n, _Bool direction) {

  ((void)sizeof((direction == DIFFTEST_TO_REF) ? 1 : 0), __extension__({
     if (direction == DIFFTEST_TO_REF)
       ;
     else
       __assert_fail("direction == DIFFTEST_TO_REF", "src/diff-test.c", 16,
                     __extension__ __PRETTY_FUNCTION__);
   }));
  if (direction == DIFFTEST_TO_REF) {

    _Bool ok = gdb_memcpy_to_qemu(addr, buf, n);

    ((void)sizeof((ok == 1) ? 1 : 0), __extension__({
       if (ok == 1)
         ;
       else
         __assert_fail("ok == 1", "src/diff-test.c", 19,
                       __extension__ __PRETTY_FUNCTION__);
     }));
  }
}

void difftest_regcpy(void *dut, _Bool direction) {
  union isa_gdb_regs qemu_r;
  gdb_getregs(&qemu_r);
  if (direction == DIFFTEST_TO_REF) {
    memcpy(&qemu_r, dut, (sizeof(uint32_t) * 33));
    gdb_setregs(&qemu_r);
  } else {
    memcpy(dut, &qemu_r, (sizeof(uint32_t) * 33));
  }
}

void difftest_exec(uint64_t n) {
  while (n--)
    gdb_si();
}

void difftest_init(int port) {
  char buf[32];
  sprintf(buf, "tcp::%d", port);

  int ppid_before_fork = getpid();
  int pid = fork();
  if (pid == -1) {
    perror("fork");

    ((void)sizeof((0) ? 1 : 0), __extension__({
       if (0)
         ;
       else
         __assert_fail("0", "src/diff-test.c", 46,
                       __extension__ __PRETTY_FUNCTION__);
     }));
  } else if (pid == 0) {

    int r = prctl(1, 15);
    if (r == -1) {
      perror("prctl error");

      ((void)sizeof((0) ? 1 : 0), __extension__({
         if (0)
           ;
         else
           __assert_fail("0", "src/diff-test.c", 55,
                         __extension__ __PRETTY_FUNCTION__);
       }));
    }

    if (getppid() != ppid_before_fork) {
      printf("parent has died!\n");

      ((void)sizeof((0) ? 1 : 0), __extension__({
         if (0)
           ;
         else
           __assert_fail("0", "src/diff-test.c", 60,
                         __extension__ __PRETTY_FUNCTION__);
       }));
    }

    close(0);
    execlp("qemu-system-riscv32", "qemu-system-riscv32", "-bios", "none", "-S",
           "-gdb", buf, "-nographic", "-serial", "none", "-monitor", "none",
           ((void *)0));
    perror("exec");

    ((void)sizeof((0) ? 1 : 0), __extension__({
       if (0)
         ;
       else
         __assert_fail("0", "src/diff-test.c", 67,
                       __extension__ __PRETTY_FUNCTION__);
     }));
  } else {

    gdb_connect_qemu(port);
    printf("Connect to QEMU with %s successfully\n", buf);

    atexit(gdb_exit);

    init_isa();
  }
}

void difftest_raise_intr(uint64_t NO) {
  printf("raise_intr is not supported\n");

  ((void)sizeof((0) ? 1 : 0), __extension__({
     if (0)
       ;
     else
       __assert_fail("0", "src/diff-test.c", 83,
                     __extension__ __PRETTY_FUNCTION__);
   }));
}
