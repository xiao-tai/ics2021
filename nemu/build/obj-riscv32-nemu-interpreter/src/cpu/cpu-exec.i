

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

extern void __assert_fail(const char *__assertion, const char *__file,
                          unsigned int __line, const char *__function)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__noreturn__));

extern void __assert_perror_fail(int __errnum, const char *__file,
                                 unsigned int __line, const char *__function)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__noreturn__));

extern void __assert(const char *__assertion, const char *__file, int __line)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__noreturn__));

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

typedef __gid_t gid_t;

typedef __mode_t mode_t;

typedef __nlink_t nlink_t;

typedef __uid_t uid_t;

typedef __off_t off_t;

typedef __pid_t pid_t;

typedef __id_t id_t;

typedef __ssize_t ssize_t;

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

typedef uint32_t word_t;
typedef int32_t sword_t;

typedef word_t rtlreg_t;
typedef word_t vaddr_t;
typedef uint32_t paddr_t;
typedef uint16_t ioaddr_t;

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

enum { NEMU_RUNNING, NEMU_STOP, NEMU_END, NEMU_ABORT, NEMU_QUIT };

typedef struct {
  int state;
  vaddr_t halt_pc;
  uint32_t halt_ret;
} NEMUState;

extern NEMUState nemu_state;

uint64_t get_time();

void cpu_exec(uint64_t n);

typedef struct {
  word_t mtvec;
  vaddr_t mepc;
  word_t mstatus;
  word_t mcause;
} riscv32_CSRs;

typedef struct {
  struct {
    rtlreg_t _32;
  } gpr[32];

  vaddr_t pc;
  riscv32_CSRs csr;
} riscv32_CPU_state;

typedef struct {
  union {
    struct {
      uint32_t opcode1_0 : 2;
      uint32_t opcode6_2 : 5;
      uint32_t rd : 5;
      uint32_t funct3 : 3;
      uint32_t rs1 : 5;
      uint32_t rs2 : 5;
      uint32_t funct7 : 7;
    } r;
    struct {
      uint32_t opcode1_0 : 2;
      uint32_t opcode6_2 : 5;
      uint32_t rd : 5;
      uint32_t funct3 : 3;
      uint32_t rs1 : 5;
      int32_t simm11_0 : 12;
    } i;
    struct {
      uint32_t opcode1_0 : 2;
      uint32_t opcode6_2 : 5;
      uint32_t imm4_0 : 5;
      uint32_t funct3 : 3;
      uint32_t rs1 : 5;
      uint32_t rs2 : 5;
      int32_t simm11_5 : 7;
    } s;
    struct {
      uint32_t opcode1_0 : 2;
      uint32_t opcode6_2 : 5;
      uint32_t imm11 : 1;
      uint32_t imm4_1 : 4;
      uint32_t funct3 : 3;
      uint32_t rs1 : 5;
      uint32_t rs2 : 5;
      uint32_t imm10_5 : 6;
      int32_t simm12 : 1;
    } b;
    struct {
      uint32_t opcode1_0 : 2;
      uint32_t opcode6_2 : 5;
      uint32_t rd : 5;
      uint32_t imm31_12 : 20;
    } u;
    struct {
      uint32_t opcode1_0 : 2;
      uint32_t opcode6_2 : 5;
      uint32_t rd : 5;
      uint32_t imm19_12 : 8;
      uint32_t imm11 : 1;
      uint32_t imm10_1 : 10;
      int32_t simm20 : 1;
    } j;
    uint32_t val;
  } instr;
} riscv32_ISADecodeInfo;

typedef riscv32_CPU_state CPU_state;
typedef riscv32_ISADecodeInfo ISADecodeInfo;

extern char isa_logo[];
void init_isa();

extern CPU_state cpu;
void isa_reg_display();
word_t isa_reg_str2val(const char *name, _Bool *success);

struct Decode;
int isa_fetch_decode(struct Decode *s);

enum { MMU_DIRECT, MMU_TRANSLATE, MMU_FAIL, MMU_DYNAMIC };
enum { MEM_TYPE_IFETCH, MEM_TYPE_READ, MEM_TYPE_WRITE };
enum { MEM_RET_OK, MEM_RET_FAIL, MEM_RET_CROSS_PAGE };

paddr_t isa_mmu_translate(vaddr_t vaddr, int len, int type);

vaddr_t isa_raise_intr(word_t NO, vaddr_t epc);
word_t isa_query_intr();

_Bool isa_difftest_checkregs(CPU_state *ref_r, vaddr_t pc);
void isa_difftest_attach();

void isa_difftest_regcpy(void *dut, _Bool direction);
void isa_difftest_raise_intr(word_t NO);

typedef struct {
  union {
    ;
    ;
    rtlreg_t *preg;
    word_t imm;
    sword_t simm;
  };
  ;
  ;
  ;
} Operand;

typedef struct Decode {
  vaddr_t pc;
  vaddr_t snpc;
  vaddr_t dnpc;
  void (*EHelper)(struct Decode *);
  Operand dest, src1, src2;
  ISADecodeInfo isa;
  ;
} Decode;

static inline void decode_empty(Decode *s, int width) {}

__attribute__((always_inline)) static inline void
pattern_decode(const char *str, int len, uint32_t *key, uint32_t *mask,
               uint32_t *shift) {
  uint32_t __key = 0, __mask = 0, __shift = 0;
  if ((0) >= len)
    goto finish;
  else {
    char c = str[0];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((0) + 1) >= len)
    goto finish;
  else {
    char c = str[(0) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((0) + 2) >= len)
    goto finish;
  else {
    char c = str[(0) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[((0) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((0) + 4) >= len)
    goto finish;
  else {
    char c = str[(0) + 4];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 4) + 1) >= len)
    goto finish;
  else {
    char c = str[((0) + 4) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 4) + 2) >= len)
    goto finish;
  else {
    char c = str[((0) + 4) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 4) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 4) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((0) + 8) >= len)
    goto finish;
  else {
    char c = str[(0) + 8];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 8) + 1) >= len)
    goto finish;
  else {
    char c = str[((0) + 8) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 8) + 2) >= len)
    goto finish;
  else {
    char c = str[((0) + 8) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 8) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 8) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 8) + 4) >= len)
    goto finish;
  else {
    char c = str[((0) + 8) + 4];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 8) + 4) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 8) + 4) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 8) + 4) + 2) >= len)
    goto finish;
  else {
    char c = str[(((0) + 8) + 4) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 8) + 4) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[((((0) + 8) + 4) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((0) + 16) >= len)
    goto finish;
  else {
    char c = str[(0) + 16];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 16) + 1) >= len)
    goto finish;
  else {
    char c = str[((0) + 16) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 16) + 2) >= len)
    goto finish;
  else {
    char c = str[((0) + 16) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 16) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 16) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 16) + 4) >= len)
    goto finish;
  else {
    char c = str[((0) + 16) + 4];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 16) + 4) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 16) + 4) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 16) + 4) + 2) >= len)
    goto finish;
  else {
    char c = str[(((0) + 16) + 4) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 16) + 4) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[((((0) + 16) + 4) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 16) + 8) >= len)
    goto finish;
  else {
    char c = str[((0) + 16) + 8];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 16) + 8) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 16) + 8) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 16) + 8) + 2) >= len)
    goto finish;
  else {
    char c = str[(((0) + 16) + 8) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 16) + 8) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[((((0) + 16) + 8) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 16) + 8) + 4) >= len)
    goto finish;
  else {
    char c = str[(((0) + 16) + 8) + 4];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 16) + 8) + 4) + 1) >= len)
    goto finish;
  else {
    char c = str[((((0) + 16) + 8) + 4) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 16) + 8) + 4) + 2) >= len)
    goto finish;
  else {
    char c = str[((((0) + 16) + 8) + 4) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((((0) + 16) + 8) + 4) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[(((((0) + 16) + 8) + 4) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((0) + 32) >= len)
    goto finish;
  else {
    char c = str[(0) + 32];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 32) + 1) >= len)
    goto finish;
  else {
    char c = str[((0) + 32) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 32) + 2) >= len)
    goto finish;
  else {
    char c = str[((0) + 32) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 32) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 32) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 32) + 4) >= len)
    goto finish;
  else {
    char c = str[((0) + 32) + 4];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 32) + 4) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 32) + 4) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 32) + 4) + 2) >= len)
    goto finish;
  else {
    char c = str[(((0) + 32) + 4) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 32) + 4) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[((((0) + 32) + 4) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 32) + 8) >= len)
    goto finish;
  else {
    char c = str[((0) + 32) + 8];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 32) + 8) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 32) + 8) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 32) + 8) + 2) >= len)
    goto finish;
  else {
    char c = str[(((0) + 32) + 8) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 32) + 8) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[((((0) + 32) + 8) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 32) + 8) + 4) >= len)
    goto finish;
  else {
    char c = str[(((0) + 32) + 8) + 4];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 32) + 8) + 4) + 1) >= len)
    goto finish;
  else {
    char c = str[((((0) + 32) + 8) + 4) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 32) + 8) + 4) + 2) >= len)
    goto finish;
  else {
    char c = str[((((0) + 32) + 8) + 4) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((((0) + 32) + 8) + 4) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[(((((0) + 32) + 8) + 4) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((0) + 32) + 16) >= len)
    goto finish;
  else {
    char c = str[((0) + 32) + 16];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 32) + 16) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 32) + 16) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 32) + 16) + 2) >= len)
    goto finish;
  else {
    char c = str[(((0) + 32) + 16) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 32) + 16) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[((((0) + 32) + 16) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 32) + 16) + 4) >= len)
    goto finish;
  else {
    char c = str[(((0) + 32) + 16) + 4];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 32) + 16) + 4) + 1) >= len)
    goto finish;
  else {
    char c = str[((((0) + 32) + 16) + 4) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 32) + 16) + 4) + 2) >= len)
    goto finish;
  else {
    char c = str[((((0) + 32) + 16) + 4) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((((0) + 32) + 16) + 4) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[(((((0) + 32) + 16) + 4) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((0) + 32) + 16) + 8) >= len)
    goto finish;
  else {
    char c = str[(((0) + 32) + 16) + 8];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 32) + 16) + 8) + 1) >= len)
    goto finish;
  else {
    char c = str[((((0) + 32) + 16) + 8) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 32) + 16) + 8) + 2) >= len)
    goto finish;
  else {
    char c = str[((((0) + 32) + 16) + 8) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((((0) + 32) + 16) + 8) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[(((((0) + 32) + 16) + 8) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((0) + 32) + 16) + 8) + 4) >= len)
    goto finish;
  else {
    char c = str[((((0) + 32) + 16) + 8) + 4];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((((0) + 32) + 16) + 8) + 4) + 1) >= len)
    goto finish;
  else {
    char c = str[(((((0) + 32) + 16) + 8) + 4) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if (((((((0) + 32) + 16) + 8) + 4) + 2) >= len)
    goto finish;
  else {
    char c = str[(((((0) + 32) + 16) + 8) + 4) + 2];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  if ((((((((0) + 32) + 16) + 8) + 4) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[((((((0) + 32) + 16) + 8) + 4) + 2) + 1];
    if (c != ' ') {
      do {
        if (!(c == '0' || c == '1' || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof((c == '0' || c == '1' || c == '?') ? 1 : 0),
           __extension__({
             if (c == '0' || c == '1' || c == '?')
               ;
             else
               __assert_fail("c == '0' || c == '1' || c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             75, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 1) | (c == '1' ? 1 : 0);
      __mask = (__mask << 1) | (c == '?' ? 0 : 1);
      __shift = (c == '?' ? __shift + 1 : 0);
    }
  };
  do {
    if (!(0)) {
      (fflush(stdout), fprintf(stderr, "\33[1;31m"
                                       "pattern too long"
                                       "\33[0m"
                                       "\n"));
      extern void assert_fail_msg();
      assert_fail_msg();
      ((void)sizeof((0) ? 1 : 0), __extension__({
         if (0)
           ;
         else
           __assert_fail("0", "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                         76, __extension__ __PRETTY_FUNCTION__);
       }));
    }
  } while (0);
finish:
  *key = __key >> __shift;
  *mask = __mask >> __shift;
  *shift = __shift;
}

__attribute__((always_inline)) static inline void
pattern_decode_hex(const char *str, int len, uint32_t *key, uint32_t *mask,
                   uint32_t *shift) {
  uint32_t __key = 0, __mask = 0, __shift = 0;
  if ((0) >= len)
    goto finish;
  else {
    char c = str[0];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if (((0) + 1) >= len)
    goto finish;
  else {
    char c = str[(0) + 1];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if (((0) + 2) >= len)
    goto finish;
  else {
    char c = str[(0) + 2];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if ((((0) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[((0) + 2) + 1];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if (((0) + 4) >= len)
    goto finish;
  else {
    char c = str[(0) + 4];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if ((((0) + 4) + 1) >= len)
    goto finish;
  else {
    char c = str[((0) + 4) + 1];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if ((((0) + 4) + 2) >= len)
    goto finish;
  else {
    char c = str[((0) + 4) + 2];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if (((((0) + 4) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 4) + 2) + 1];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if (((0) + 8) >= len)
    goto finish;
  else {
    char c = str[(0) + 8];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if ((((0) + 8) + 1) >= len)
    goto finish;
  else {
    char c = str[((0) + 8) + 1];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if ((((0) + 8) + 2) >= len)
    goto finish;
  else {
    char c = str[((0) + 8) + 2];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if (((((0) + 8) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 8) + 2) + 1];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if ((((0) + 8) + 4) >= len)
    goto finish;
  else {
    char c = str[((0) + 8) + 4];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if (((((0) + 8) + 4) + 1) >= len)
    goto finish;
  else {
    char c = str[(((0) + 8) + 4) + 1];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if (((((0) + 8) + 4) + 2) >= len)
    goto finish;
  else {
    char c = str[(((0) + 8) + 4) + 2];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  if ((((((0) + 8) + 4) + 2) + 1) >= len)
    goto finish;
  else {
    char c = str[((((0) + 8) + 4) + 2) + 1];
    if (c != ' ') {
      do {
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')) {
          (fflush(stdout), fprintf(stderr,
                                   "\33[1;31m"
                                   "invalid character '%c' in pattern string"
                                   "\33[0m"
                                   "\n",
                                   c));
          extern void assert_fail_msg();
          assert_fail_msg();
          ((void)sizeof(
               ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
                   ? 1
                   : 0),
           __extension__({
             if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || c == '?')
               ;
             else
               __assert_fail("(c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') "
                             "|| c == '?'",
                             "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                             101, __extension__ __PRETTY_FUNCTION__);
           }));
        }
      } while (0);
      __key = (__key << 4) | (c == '?'                 ? 0
                              : (c >= '0' && c <= '9') ? c - '0'
                                                       : c - 'a' + 10);
      __mask = (__mask << 4) | (c == '?' ? 0 : 0xf);
      __shift = (c == '?' ? __shift + 4 : 0);
    }
  };
  do {
    if (!(0)) {
      (fflush(stdout), fprintf(stderr, "\33[1;31m"
                                       "pattern too long"
                                       "\33[0m"
                                       "\n"));
      extern void assert_fail_msg();
      assert_fail_msg();
      ((void)sizeof((0) ? 1 : 0), __extension__({
         if (0)
           ;
         else
           __assert_fail("0", "/home/ziqiang/ics2021/nemu/include/cpu/decode.h",
                         102, __extension__ __PRETTY_FUNCTION__);
       }));
    }
  } while (0);
finish:
  *key = __key >> __shift;
  *mask = __mask >> __shift;
  *shift = __shift;
}

enum { DIFFTEST_TO_DUT, DIFFTEST_TO_REF };

static inline void difftest_skip_ref() {}
static inline void difftest_skip_dut(int nr_ref, int nr_dut) {}
static inline void difftest_set_patch(void (*fn)(void *arg), void *arg) {}
static inline void difftest_step(vaddr_t pc, vaddr_t npc) {}
static inline void difftest_detach() {}
static inline void difftest_attach() {}

extern void (*ref_difftest_memcpy)(paddr_t addr, void *buf, size_t n,
                                   _Bool direction);
extern void (*ref_difftest_regcpy)(void *dut, _Bool direction);
extern void (*ref_difftest_exec)(uint64_t n);
extern void (*ref_difftest_raise_intr)(uint64_t NO);

static inline _Bool difftest_check_reg(const char *name, vaddr_t pc,
                                       rtlreg_t ref, rtlreg_t dut) {
  if (ref != dut) {
    do {
      printf("\33[1;34m"
             "[%s:%d %s] "
             "%s is different after executing instruction at pc = "
             "0x%08x"
             ", right = "
             "0x%08x"
             ", wrong = "
             "0x%08x"
             "\33[0m"
             "\n",
             "/home/ziqiang/ics2021/nemu/include/cpu/difftest.h", 30, __func__,
             name, pc, ref, dut);
      do {
        extern FILE *log_fp;
        extern _Bool log_enable();
        if (log_enable()) {
          fprintf(log_fp,
                  "\33[1;34m"
                  "[%s:%d %s] "
                  "%s is different after executing instruction at pc = "
                  "0x%08x"
                  ", right = "
                  "0x%08x"
                  ", wrong = "
                  "0x%08x"
                  "\33[0m"
                  "\n",
                  "/home/ziqiang/ics2021/nemu/include/cpu/difftest.h", 30,
                  __func__, name, pc, ref, dut);
          fflush(log_fp);
        }
      } while (0);
    } while (0);
    return 0;
  }
  return 1;
}

extern const rtlreg_t rzero;
extern rtlreg_t tmp_reg[4];

enum {

  RELOP_FALSE = 0 | 0 | 0 | 0,
  RELOP_TRUE = 0 | 0 | 0 | 1,
  RELOP_EQ = 0 | 0 | 2 | 0,
  RELOP_NE = 0 | 0 | 2 | 1,

  RELOP_LT = 0 | 4 | 0 | 0,
  RELOP_LE = 0 | 4 | 2 | 0,
  RELOP_GT = 0 | 4 | 2 | 1,
  RELOP_GE = 0 | 4 | 0 | 1,

  RELOP_LTU = 8 | 0 | 0 | 0,
  RELOP_LEU = 8 | 0 | 2 | 0,
  RELOP_GTU = 8 | 0 | 2 | 1,
  RELOP_GEU = 8 | 0 | 0 | 1,
};

enum {
  HOSTCALL_EXIT,
  HOSTCALL_INV,
  HOSTCALL_PIO,
};

void rtl_hostcall(Decode *s, uint32_t id, rtlreg_t *dest, const rtlreg_t *src1,
                  const rtlreg_t *src2, word_t imm);

static inline _Bool interpret_relop(uint32_t relop, const rtlreg_t src1,
                                    const rtlreg_t src2) {
  switch (relop) {
  case RELOP_FALSE:
    return 0;
  case RELOP_TRUE:
    return 1;
  case RELOP_EQ:
    return src1 == src2;
  case RELOP_NE:
    return src1 != src2;
  case RELOP_LT:
    return (sword_t)src1 < (sword_t)src2;
  case RELOP_LE:
    return (sword_t)src1 <= (sword_t)src2;
  case RELOP_GT:
    return (sword_t)src1 > (sword_t)src2;
  case RELOP_GE:
    return (sword_t)src1 >= (sword_t)src2;
  case RELOP_LTU:
    return src1 < src2;
  case RELOP_LEU:
    return src1 <= src2;
  case RELOP_GTU:
    return src1 > src2;
  case RELOP_GEU:
    return src1 >= src2;
  default:
    do {
      if (!(0)) {
        (fflush(stdout), fprintf(stderr,
                                 "\33[1;31m"
                                 "unsupport relop = %d"
                                 "\33[0m"
                                 "\n",
                                 relop));
        extern void assert_fail_msg();
        assert_fail_msg();
        ((void)sizeof((0) ? 1 : 0), __extension__({
           if (0)
             ;
           else
             __assert_fail(
                 "0",
                 "/home/ziqiang/ics2021/nemu/src/engine/interpreter/c_op.h", 59,
                 __extension__ __PRETTY_FUNCTION__);
         }));
      }
    } while (0);
  }
}

word_t vaddr_ifetch(vaddr_t addr, int len);
word_t vaddr_read(vaddr_t addr, int len);
void vaddr_write(vaddr_t addr, int len, word_t data);

static inline void rtl_add(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                           const rtlreg_t *src2) {
  *dest = ((*src1) + (*src2));
}
static inline void rtl_addi(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                            const sword_t imm) {
  *dest = ((*src1) + (imm));
}
static inline void rtl_sub(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                           const rtlreg_t *src2) {
  *dest = ((*src1) - (*src2));
}
static inline void rtl_subi(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                            const sword_t imm) {
  *dest = ((*src1) - (imm));
}
static inline void rtl_and(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                           const rtlreg_t *src2) {
  *dest = ((*src1) & (*src2));
}
static inline void rtl_andi(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                            const sword_t imm) {
  *dest = ((*src1) & (imm));
}
static inline void rtl_or(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                          const rtlreg_t *src2) {
  *dest = ((*src1) | (*src2));
}
static inline void rtl_ori(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                           const sword_t imm) {
  *dest = ((*src1) | (imm));
}
static inline void rtl_xor(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                           const rtlreg_t *src2) {
  *dest = ((*src1) ^ (*src2));
}
static inline void rtl_xori(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                            const sword_t imm) {
  *dest = ((*src1) ^ (imm));
}
static inline void rtl_sll(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                           const rtlreg_t *src2) {
  *dest = ((*src1) << ((*src2) & 0x1f));
}
static inline void rtl_slli(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                            const sword_t imm) {
  *dest = ((*src1) << ((imm)&0x1f));
}
static inline void rtl_srl(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                           const rtlreg_t *src2) {
  *dest = ((*src1) >> ((*src2) & 0x1f));
}
static inline void rtl_srli(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                            const sword_t imm) {
  *dest = ((*src1) >> ((imm)&0x1f));
}
static inline void rtl_sra(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                           const rtlreg_t *src2) {
  *dest = ((sword_t)(*src1) >> ((*src2) & 0x1f));
}
static inline void rtl_srai(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                            const sword_t imm) {
  *dest = ((sword_t)(*src1) >> ((imm)&0x1f));
}
static inline void rtl_setrelop(Decode *s, uint32_t relop, rtlreg_t *dest,
                                const rtlreg_t *src1, const rtlreg_t *src2) {
  *dest = interpret_relop(relop, *src1, *src2);
}

static inline void rtl_setrelopi(Decode *s, uint32_t relop, rtlreg_t *dest,
                                 const rtlreg_t *src1, sword_t imm) {
  *dest = interpret_relop(relop, *src1, imm);
}

static inline void rtl_mulu_lo(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                               const rtlreg_t *src2) {
  *dest = ((*src1) * (*src2));
}
static inline void rtl_mulu_hi(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                               const rtlreg_t *src2) {
  *dest = (((uint64_t)(*src1) * (uint64_t)(*src2)) >> 32);
}
static inline void rtl_muls_hi(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                               const rtlreg_t *src2) {
  *dest = (((int64_t)(sword_t)(*src1) * (int64_t)(sword_t)(*src2)) >> 32);
}
static inline void rtl_divu_q(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                              const rtlreg_t *src2) {
  *dest = ((*src1) / (*src2));
}
static inline void rtl_divu_r(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                              const rtlreg_t *src2) {
  *dest = ((*src1) % (*src2));
}
static inline void rtl_divs_q(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                              const rtlreg_t *src2) {
  *dest = ((sword_t)(*src1) / (sword_t)(*src2));
}
static inline void rtl_divs_r(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                              const rtlreg_t *src2) {
  *dest = ((sword_t)(*src1) % (sword_t)(*src2));
}
static inline void rtl_div64u_q(Decode *s, rtlreg_t *dest,
                                const rtlreg_t *src1_hi,
                                const rtlreg_t *src1_lo, const rtlreg_t *src2) {
  uint64_t dividend = ((uint64_t)(*src1_hi) << 32) | (*src1_lo);
  uint32_t divisor = (*src2);
  *dest = dividend / divisor;
}

static inline void rtl_div64u_r(Decode *s, rtlreg_t *dest,
                                const rtlreg_t *src1_hi,
                                const rtlreg_t *src1_lo, const rtlreg_t *src2) {
  uint64_t dividend = ((uint64_t)(*src1_hi) << 32) | (*src1_lo);
  uint32_t divisor = (*src2);
  *dest = dividend % divisor;
}

static inline void rtl_div64s_q(Decode *s, rtlreg_t *dest,
                                const rtlreg_t *src1_hi,
                                const rtlreg_t *src1_lo, const rtlreg_t *src2) {
  int64_t dividend = ((uint64_t)(*src1_hi) << 32) | (*src1_lo);
  int32_t divisor = (*src2);
  *dest = dividend / divisor;
}

static inline void rtl_div64s_r(Decode *s, rtlreg_t *dest,
                                const rtlreg_t *src1_hi,
                                const rtlreg_t *src1_lo, const rtlreg_t *src2) {
  int64_t dividend = ((uint64_t)(*src1_hi) << 32) | (*src1_lo);
  int32_t divisor = (*src2);
  *dest = dividend % divisor;
}

static inline void rtl_lm(Decode *s, rtlreg_t *dest, const rtlreg_t *addr,
                          word_t offset, int len) {
  *dest = vaddr_read(*addr + offset, len);
}

static inline void rtl_sm(Decode *s, const rtlreg_t *src1, const rtlreg_t *addr,
                          word_t offset, int len) {
  vaddr_write(*addr + offset, len, *src1);
}

static inline void rtl_lms(Decode *s, rtlreg_t *dest, const rtlreg_t *addr,
                           word_t offset, int len) {
  word_t val = vaddr_read(*addr + offset, len);
  switch (len) {
  case 4:
    *dest = (sword_t)(int32_t)val;
    return;
  case 1:
    *dest = (sword_t)(int8_t)val;
    return;
  case 2:
    *dest = (sword_t)(int16_t)val;
    return;
    ;
  default:
    ((void)sizeof((0) ? 1 : 0), __extension__({
       if (0)
         ;
       else
         __assert_fail(
             "0",
             "/home/ziqiang/ics2021/nemu/src/engine/interpreter/rtl-basic.h",
             119, __extension__ __PRETTY_FUNCTION__);
     }));
  }
}

static inline void rtl_host_lm(Decode *s, rtlreg_t *dest, const void *addr,
                               int len) {
  switch (len) {
  case 4:
    *dest = *(uint32_t *)addr;
    return;
  case 1:
    *dest = *(uint8_t *)addr;
    return;
  case 2:
    *dest = *(uint16_t *)addr;
    return;
    ;
  default:
    ((void)sizeof((0) ? 1 : 0), __extension__({
       if (0)
         ;
       else
         __assert_fail(
             "0",
             "/home/ziqiang/ics2021/nemu/src/engine/interpreter/rtl-basic.h",
             129, __extension__ __PRETTY_FUNCTION__);
     }));
  }
}

static inline void rtl_host_sm(Decode *s, void *addr, const rtlreg_t *src1,
                               int len) {
  switch (len) {
  case 4:
    *(uint32_t *)addr = *src1;
    return;
  case 1:
    *(uint8_t *)addr = *src1;
    return;
  case 2:
    *(uint16_t *)addr = *src1;
    return;
    ;
  default:
    ((void)sizeof((0) ? 1 : 0), __extension__({
       if (0)
         ;
       else
         __assert_fail(
             "0",
             "/home/ziqiang/ics2021/nemu/src/engine/interpreter/rtl-basic.h",
             139, __extension__ __PRETTY_FUNCTION__);
     }));
  }
}

static inline void rtl_j(Decode *s, vaddr_t target) { s->dnpc = target; }

static inline void rtl_jr(Decode *s, rtlreg_t *target) { s->dnpc = *target; }

static inline void rtl_jrelop(Decode *s, uint32_t relop, const rtlreg_t *src1,
                              const rtlreg_t *src2, vaddr_t target) {

  _Bool is_jmp = interpret_relop(relop, *src1, *src2);
  rtl_j(s, (is_jmp ? target : s->snpc));
}

static inline void rtl_li(Decode *s, rtlreg_t *dest, const rtlreg_t imm) {
  rtl_addi(s, dest, (&rzero), imm);
}

static inline void rtl_mv(Decode *s, rtlreg_t *dest, const rtlreg_t *src1) {
  rtl_addi(s, dest, src1, 0);
}

static inline void rtl_not(Decode *s, rtlreg_t *dest, const rtlreg_t *src1) {

  do {
    if (!(0)) {
      (fflush(stdout), fprintf(stderr, "\33[1;31m"
                                       "please implement me"
                                       "\33[0m"
                                       "\n"));
      extern void assert_fail_msg();
      assert_fail_msg();
      ((void)sizeof((0) ? 1 : 0), __extension__({
         if (0)
           ;
         else
           __assert_fail("0", "/home/ziqiang/ics2021/nemu/include/rtl/pseudo.h",
                         20, __extension__ __PRETTY_FUNCTION__);
       }));
    }
  } while (0);
}

static inline void rtl_neg(Decode *s, rtlreg_t *dest, const rtlreg_t *src1) {

  do {
    if (!(0)) {
      (fflush(stdout), fprintf(stderr, "\33[1;31m"
                                       "please implement me"
                                       "\33[0m"
                                       "\n"));
      extern void assert_fail_msg();
      assert_fail_msg();
      ((void)sizeof((0) ? 1 : 0), __extension__({
         if (0)
           ;
         else
           __assert_fail("0", "/home/ziqiang/ics2021/nemu/include/rtl/pseudo.h",
                         25, __extension__ __PRETTY_FUNCTION__);
       }));
    }
  } while (0);
}

static inline void rtl_sext(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                            int width) {

  do {
    if (!(0)) {
      (fflush(stdout), fprintf(stderr, "\33[1;31m"
                                       "please implement me"
                                       "\33[0m"
                                       "\n"));
      extern void assert_fail_msg();
      assert_fail_msg();
      ((void)sizeof((0) ? 1 : 0), __extension__({
         if (0)
           ;
         else
           __assert_fail("0", "/home/ziqiang/ics2021/nemu/include/rtl/pseudo.h",
                         30, __extension__ __PRETTY_FUNCTION__);
       }));
    }
  } while (0);
}

static inline void rtl_zext(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                            int width) {

  do {
    if (!(0)) {
      (fflush(stdout), fprintf(stderr, "\33[1;31m"
                                       "please implement me"
                                       "\33[0m"
                                       "\n"));
      extern void assert_fail_msg();
      assert_fail_msg();
      ((void)sizeof((0) ? 1 : 0), __extension__({
         if (0)
           ;
         else
           __assert_fail("0", "/home/ziqiang/ics2021/nemu/include/rtl/pseudo.h",
                         35, __extension__ __PRETTY_FUNCTION__);
       }));
    }
  } while (0);
}

static inline void rtl_msb(Decode *s, rtlreg_t *dest, const rtlreg_t *src1,
                           int width) {

  do {
    if (!(0)) {
      (fflush(stdout), fprintf(stderr, "\33[1;31m"
                                       "please implement me"
                                       "\33[0m"
                                       "\n"));
      extern void assert_fail_msg();
      assert_fail_msg();
      ((void)sizeof((0) ? 1 : 0), __extension__({
         if (0)
           ;
         else
           __assert_fail("0", "/home/ziqiang/ics2021/nemu/include/rtl/pseudo.h",
                         40, __extension__ __PRETTY_FUNCTION__);
       }));
    }
  } while (0);
}

static inline int check_reg_idx(int idx) {

  ((void)sizeof((idx >= 0 && idx < 32) ? 1 : 0), __extension__({
     if (idx >= 0 && idx < 32)
       ;
     else
       __assert_fail("idx >= 0 && idx < 32",
                     "/home/ziqiang/ics2021/nemu/src/isa/riscv32/include/../"
                     "local-include/reg.h",
                     7, __extension__ __PRETTY_FUNCTION__);
   }));
  return idx;
}

static inline const char *reg_name(int idx, int width) {
  extern const char *regs[];
  return regs[check_reg_idx(idx)];
}

enum {
  EXEC_ID_lui,
  EXEC_ID_lb,
  EXEC_ID_lbu,
  EXEC_ID_lh,
  EXEC_ID_lhu,
  EXEC_ID_lw,
  EXEC_ID_sw,
  EXEC_ID_sh,
  EXEC_ID_sb,
  EXEC_ID_addi,
  EXEC_ID_andi,
  EXEC_ID_slli,
  EXEC_ID_sltiu,
  EXEC_ID_sll,
  EXEC_ID_srl,
  EXEC_ID_sra,
  EXEC_ID_srli,
  EXEC_ID_srai,
  EXEC_ID_xori,
  EXEC_ID_ori,
  EXEC_ID_slti,
  EXEC_ID_auipc,
  EXEC_ID_add,
  EXEC_ID_sub,
  EXEC_ID_xor,
  EXEC_ID_or,
  EXEC_ID_and,
  EXEC_ID_mul,
  EXEC_ID_mulh,
  EXEC_ID_div,
  EXEC_ID_divu,
  EXEC_ID_rem,
  EXEC_ID_remu,
  EXEC_ID_slt,
  EXEC_ID_sltu,
  EXEC_ID_beq,
  EXEC_ID_bne,
  EXEC_ID_blt,
  EXEC_ID_bge,
  EXEC_ID_bltu,
  EXEC_ID_bgeu,
  EXEC_ID_jal,
  EXEC_ID_jalr,
  EXEC_ID_ecall,
  EXEC_ID_csrrw,
  EXEC_ID_csrrs,
  EXEC_ID_mret,
  EXEC_ID_inv,
  EXEC_ID_nemu_trap,
  TOTAL_INSTR
};

struct lconv {

  char *decimal_point;
  char *thousands_sep;

  char *grouping;

  char *int_curr_symbol;
  char *currency_symbol;
  char *mon_decimal_point;
  char *mon_thousands_sep;
  char *mon_grouping;
  char *positive_sign;
  char *negative_sign;
  char int_frac_digits;
  char frac_digits;

  char p_cs_precedes;

  char p_sep_by_space;

  char n_cs_precedes;

  char n_sep_by_space;

  char p_sign_posn;
  char n_sign_posn;

  char int_p_cs_precedes;

  char int_p_sep_by_space;

  char int_n_cs_precedes;

  char int_n_sep_by_space;

  char int_p_sign_posn;
  char int_n_sign_posn;
};

extern char *setlocale(int __category, const char *__locale)
    __attribute__((__nothrow__, __leaf__));

extern struct lconv *localeconv(void) __attribute__((__nothrow__, __leaf__));
extern locale_t newlocale(int __category_mask, const char *__locale,
                          locale_t __base)
    __attribute__((__nothrow__, __leaf__));

extern locale_t duplocale(locale_t __dataset)
    __attribute__((__nothrow__, __leaf__));

extern void freelocale(locale_t __dataset)
    __attribute__((__nothrow__, __leaf__));

extern locale_t uselocale(locale_t __dataset)
    __attribute__((__nothrow__, __leaf__));

CPU_state cpu = {};
uint64_t g_nr_guest_instr = 0;
static uint64_t g_timer = 0;
static _Bool g_print_step = 0;
const rtlreg_t rzero = 0;
rtlreg_t tmp_reg[4];

static char iringbuf[16][3 + 128];
static size_t iringbuf_index = 0;

void device_update();
void fetch_decode(Decode *s, vaddr_t pc);

_Bool check_all_wp();

static void init_iringbuf() {
  iringbuf_index = 0;
  for (int i = 0; i < 16; i++) {
    memset(iringbuf[i], ' ', 3);
    iringbuf[i][3] = '\0';
  }
}

static void print_iringbuf() {
  const char prefix[3] = "-->";
  for (int i = 0; i < 16; i++) {
    if (iringbuf[i][3] == '\0')
      break;
    if (i + 1 == iringbuf_index)
      strncpy(iringbuf[i], prefix, 3);
    printf("%s\n", iringbuf[i]);
  }
}

static void trace_and_difftest(Decode *_this, vaddr_t dnpc) {

  if (g_print_step) {
    ;
  };
}

static inline void exec_lui(Decode *s) {
  rtl_li(s, ((&s->dest)->preg), (&s->src1)->imm);
}

static inline void exec_addi(Decode *s) {
  rtl_addi(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm);
}

static inline void exec_andi(Decode *s) {
  rtl_andi(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm);
}

static inline void exec_srli(Decode *s) {
  rtl_srli(s, ((&s->dest)->preg), ((&s->src1)->preg),
           (&s->src2)->imm & 0b11111u);
}

static inline void exec_srl(Decode *s) {
  rtl_srl(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_srai(Decode *s) {
  rtl_srai(s, ((&s->dest)->preg), ((&s->src1)->preg),
           (&s->src2)->imm & 0b11111u);
}

static inline void exec_sra(Decode *s) {
  rtl_sra(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_slli(Decode *s) {
  rtl_slli(s, ((&s->dest)->preg), ((&s->src1)->preg),
           (&s->src2)->imm & 0b11111u);
}

static inline void exec_sll(Decode *s) {
  rtl_sll(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_sltiu(Decode *s) {
  rtl_setrelopi(s, RELOP_LTU, ((&s->dest)->preg), ((&s->src1)->preg),
                (&s->src2)->imm);
}

static inline void exec_slti(Decode *s) {
  rtl_setrelopi(s, RELOP_LT, ((&s->dest)->preg), ((&s->src1)->preg),
                (&s->src2)->imm);
}

static inline void exec_add(Decode *s) {
  rtl_add(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_sub(Decode *s) {
  rtl_sub(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_xor(Decode *s) {
  rtl_xor(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_xori(Decode *s) {
  rtl_xori(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm);
}

static inline void exec_or(Decode *s) {
  rtl_or(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_ori(Decode *s) {
  rtl_ori(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm);
}

static inline void exec_and(Decode *s) {
  rtl_and(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_slt(Decode *s) {
  rtl_setrelop(s, RELOP_LT, ((&s->dest)->preg), ((&s->src1)->preg),
               ((&s->src2)->preg));
}

static inline void exec_sltu(Decode *s) {
  rtl_setrelop(s, RELOP_LTU, ((&s->dest)->preg), ((&s->src1)->preg),
               ((&s->src2)->preg));
}

static inline void exec_beq(Decode *s) {
  if (*((&s->src1)->preg) == *((&s->dest)->preg))
    rtl_addi(s, &s->dnpc, &s->pc, (&s->src2)->imm);
}

static inline void exec_bne(Decode *s) {
  if (*((&s->src1)->preg) != *((&s->dest)->preg))
    rtl_addi(s, &s->dnpc, &s->pc, (&s->src2)->imm);
}

static inline void exec_blt(Decode *s) {
  if ((sword_t)(*((&s->src1)->preg)) < (sword_t)(*((&s->dest)->preg)))
    rtl_addi(s, &s->dnpc, &s->pc, (&s->src2)->imm);
}

static inline void exec_bge(Decode *s) {
  if ((sword_t)(*((&s->src1)->preg)) >= (sword_t)(*((&s->dest)->preg)))
    rtl_addi(s, &s->dnpc, &s->pc, (&s->src2)->imm);
}

static inline void exec_bltu(Decode *s) {
  if (*((&s->src1)->preg) < *((&s->dest)->preg))
    rtl_addi(s, &s->dnpc, &s->pc, (&s->src2)->imm);
}

static inline void exec_bgeu(Decode *s) {
  if (*((&s->src1)->preg) >= *((&s->dest)->preg))
    rtl_addi(s, &s->dnpc, &s->pc, (&s->src2)->imm);
}

static inline void exec_mul(Decode *s) {
  rtl_mulu_lo(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_mulh(Decode *s) {
  rtl_muls_hi(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_div(Decode *s) {
  rtl_divs_q(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_divu(Decode *s) {
  rtl_divu_q(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_rem(Decode *s) {
  rtl_divs_r(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_remu(Decode *s) {
  rtl_divu_r(s, ((&s->dest)->preg), ((&s->src1)->preg), ((&s->src2)->preg));
}

static inline void exec_auipc(Decode *s) {

  rtl_addi(s, ((&s->dest)->preg), &s->pc, (&s->src1)->imm);
}

static inline void exec_jal(Decode *s) {
  rtl_addi(s, ((&s->dest)->preg), &s->pc, 4);
  rtl_addi(s, &s->dnpc, &s->pc, (&s->src1)->imm);
}

static inline void exec_jalr(Decode *s) {
  rtl_addi(s, (&tmp_reg[0]), &s->pc, 4);
  rtl_addi(s, &s->dnpc, ((&s->src1)->preg), (&s->src2)->imm);
  rtl_andi(s, &s->dnpc, &s->dnpc, ~1);
  rtl_addi(s, ((&s->dest)->preg), (&tmp_reg[0]), 0);
}
static inline void exec_lw(Decode *s) {
  rtl_lm(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm, 4);
}

static inline void exec_lb(Decode *s) {
  rtl_lms(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm, 1);
}

static inline void exec_lbu(Decode *s) {
  rtl_lm(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm, 1);
}

static inline void exec_lh(Decode *s) {
  rtl_lms(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm, 2);
}

static inline void exec_lhu(Decode *s) {
  rtl_lm(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm, 2);
}

static inline void exec_sw(Decode *s) {
  rtl_sm(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm, 4);
}

static inline void exec_sh(Decode *s) {
  rtl_sm(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm, 2);
}

static inline void exec_sb(Decode *s) {
  rtl_sm(s, ((&s->dest)->preg), ((&s->src1)->preg), (&s->src2)->imm, 1);
}
static inline void exec_inv(Decode *s) {
  rtl_hostcall(s, HOSTCALL_INV, ((void *)0), ((void *)0), ((void *)0), 0);
}

static inline void exec_nemu_trap(Decode *s) {
  rtl_hostcall(s, HOSTCALL_EXIT, ((void *)0), &(cpu.gpr[check_reg_idx(10)]._32),
               ((void *)0), 0);
}

static vaddr_t *csr_id_instr2address(word_t imm) {
  switch (imm) {
  case 0x300:
    return &(cpu.csr.mstatus);
  case 0x305:
    return &(cpu.csr.mtvec);
  case 0x341:
    return &(cpu.csr.mepc);
  case 0x342:
    return &(cpu.csr.mcause);
  default:
    do {
      if (!(0)) {
        (fflush(stdout), fprintf(stderr, "\33[1;31m"
                                         "Unknow CSR"
                                         "\33[0m"
                                         "\n"));
        extern void assert_fail_msg();
        assert_fail_msg();
        ((void)sizeof((0) ? 1 : 0), __extension__({
           if (0)
             ;
           else
             __assert_fail("0",
                           "/home/ziqiang/ics2021/nemu/src/isa/riscv32/include/"
                           "../instr/csr.h",
                           9, __extension__ __PRETTY_FUNCTION__);
         }));
      }
    } while (0);
  }
}

static inline void exec_csrrw(Decode *s) {
  do {
    printf("\33[1;34m"
           "[%s:%d %s] "
           "csr register %x\n"
           "\33[0m"
           "\n",
           "/home/ziqiang/ics2021/nemu/src/isa/riscv32/include/../instr/csr.h",
           16, __func__, (&s->src2)->imm);
    do {
      extern FILE *log_fp;
      extern _Bool log_enable();
      if (log_enable()) {
        fprintf(
            log_fp,
            "\33[1;34m"
            "[%s:%d %s] "
            "csr register %x\n"
            "\33[0m"
            "\n",
            "/home/ziqiang/ics2021/nemu/src/isa/riscv32/include/../instr/csr.h",
            16, __func__, (&s->src2)->imm);
        fflush(log_fp);
      }
    } while (0);
  } while (0);
  printf("mstatus: %x\nmtvec: %x\nmepc: %x\nmcause: %x\n", cpu.csr.mstatus,
         cpu.csr.mtvec, cpu.csr.mepc, cpu.csr.mcause);

  vaddr_t *csr = csr_id_instr2address((&s->src2)->imm);
  vaddr_t temp = *csr;
  *csr = *((&s->src1)->preg);
  *((&s->dest)->preg) = temp;
}

static inline void exec_csrrs(Decode *s) {

  do {
    printf("\33[1;34m"
           "[%s:%d %s] "
           "csr register's value: %p\n"
           "\33[0m"
           "\n",
           "/home/ziqiang/ics2021/nemu/src/isa/riscv32/include/../instr/csr.h",
           32, __func__, csr_id_instr2address((&s->src2)->imm));
    do {
      extern FILE *log_fp;
      extern _Bool log_enable();
      if (log_enable()) {
        fprintf(
            log_fp,
            "\33[1;34m"
            "[%s:%d %s] "
            "csr register's value: %p\n"
            "\33[0m"
            "\n",
            "/home/ziqiang/ics2021/nemu/src/isa/riscv32/include/../instr/csr.h",
            32, __func__, csr_id_instr2address((&s->src2)->imm));
        fflush(log_fp);
      }
    } while (0);
  } while (0);

  vaddr_t *csr = csr_id_instr2address((&s->src2)->imm);
  vaddr_t temp = *csr;
  *csr = temp | *((&s->src1)->preg);
  *((&s->dest)->preg) = temp;
}

static inline void exec_ecall(Decode *s) {

  _Bool success = 0;
  word_t trap_no = isa_reg_str2val("$a7", &success);
  if (!success)
    do {
      if (!(0)) {
        (fflush(stdout), fprintf(stderr, "\33[1;31m"
                                         "Invalid gpr register!"
                                         "\33[0m"
                                         "\n"));
        extern void assert_fail_msg();
        assert_fail_msg();
        ((void)sizeof((0) ? 1 : 0), __extension__({
           if (0)
             ;
           else
             __assert_fail("0",
                           "/home/ziqiang/ics2021/nemu/src/isa/riscv32/include/"
                           "../instr/csr.h",
                           45, __extension__ __PRETTY_FUNCTION__);
         }));
      }
    } while (0);
  printf("the no is : %x\n", trap_no);
  word_t trap_vec = isa_raise_intr(trap_no, s->pc);
  rtl_li(s, &s->dnpc, trap_vec);
}

static inline void exec_mret(Decode *s) { rtl_j(s, cpu.csr.mepc); }

static const void *g_exec_table[TOTAL_INSTR] = {
    [EXEC_ID_lui] = exec_lui,
    [EXEC_ID_lb] = exec_lb,
    [EXEC_ID_lbu] = exec_lbu,
    [EXEC_ID_lh] = exec_lh,
    [EXEC_ID_lhu] = exec_lhu,
    [EXEC_ID_lw] = exec_lw,
    [EXEC_ID_sw] = exec_sw,
    [EXEC_ID_sh] = exec_sh,
    [EXEC_ID_sb] = exec_sb,
    [EXEC_ID_addi] = exec_addi,
    [EXEC_ID_andi] = exec_andi,
    [EXEC_ID_slli] = exec_slli,
    [EXEC_ID_sltiu] = exec_sltiu,
    [EXEC_ID_sll] = exec_sll,
    [EXEC_ID_srl] = exec_srl,
    [EXEC_ID_sra] = exec_sra,
    [EXEC_ID_srli] = exec_srli,
    [EXEC_ID_srai] = exec_srai,
    [EXEC_ID_xori] = exec_xori,
    [EXEC_ID_ori] = exec_ori,
    [EXEC_ID_slti] = exec_slti,
    [EXEC_ID_auipc] = exec_auipc,
    [EXEC_ID_add] = exec_add,
    [EXEC_ID_sub] = exec_sub,
    [EXEC_ID_xor] = exec_xor,
    [EXEC_ID_or] = exec_or,
    [EXEC_ID_and] = exec_and,
    [EXEC_ID_mul] = exec_mul,
    [EXEC_ID_mulh] = exec_mulh,
    [EXEC_ID_div] = exec_div,
    [EXEC_ID_divu] = exec_divu,
    [EXEC_ID_rem] = exec_rem,
    [EXEC_ID_remu] = exec_remu,
    [EXEC_ID_slt] = exec_slt,
    [EXEC_ID_sltu] = exec_sltu,
    [EXEC_ID_beq] = exec_beq,
    [EXEC_ID_bne] = exec_bne,
    [EXEC_ID_blt] = exec_blt,
    [EXEC_ID_bge] = exec_bge,
    [EXEC_ID_bltu] = exec_bltu,
    [EXEC_ID_bgeu] = exec_bgeu,
    [EXEC_ID_jal] = exec_jal,
    [EXEC_ID_jalr] = exec_jalr,
    [EXEC_ID_ecall] = exec_ecall,
    [EXEC_ID_csrrw] = exec_csrrw,
    [EXEC_ID_csrrs] = exec_csrrs,
    [EXEC_ID_mret] = exec_mret,
    [EXEC_ID_inv] = exec_inv,
    [EXEC_ID_nemu_trap] = exec_nemu_trap,
};

static void fetch_decode_exec_updatepc(Decode *s) {
  fetch_decode(s, cpu.pc);
  s->EHelper(s);
  cpu.pc = s->dnpc;
}

static void statistic() {
  setlocale(1, "");
  do {
    printf("\33[1;34m"
           "[%s:%d %s] "
           "host time spent = "
           "%'ld"
           " us"
           "\33[0m"
           "\n",
           "src/cpu/cpu-exec.c", 83, __func__, g_timer);
    do {
      extern FILE *log_fp;
      extern _Bool log_enable();
      if (log_enable()) {
        fprintf(log_fp,
                "\33[1;34m"
                "[%s:%d %s] "
                "host time spent = "
                "%'ld"
                " us"
                "\33[0m"
                "\n",
                "src/cpu/cpu-exec.c", 83, __func__, g_timer);
        fflush(log_fp);
      }
    } while (0);
  } while (0);
  do {
    printf("\33[1;34m"
           "[%s:%d %s] "
           "total guest instructions = "
           "%'ld"
           "\33[0m"
           "\n",
           "src/cpu/cpu-exec.c", 84, __func__, g_nr_guest_instr);
    do {
      extern FILE *log_fp;
      extern _Bool log_enable();
      if (log_enable()) {
        fprintf(log_fp,
                "\33[1;34m"
                "[%s:%d %s] "
                "total guest instructions = "
                "%'ld"
                "\33[0m"
                "\n",
                "src/cpu/cpu-exec.c", 84, __func__, g_nr_guest_instr);
        fflush(log_fp);
      }
    } while (0);
  } while (0);
  if (g_timer > 0)
    do {
      printf("\33[1;34m"
             "[%s:%d %s] "
             "simulation frequency = "
             "%'ld"
             " instr/s"
             "\33[0m"
             "\n",
             "src/cpu/cpu-exec.c", 85, __func__,
             g_nr_guest_instr * 1000000 / g_timer);
      do {
        extern FILE *log_fp;
        extern _Bool log_enable();
        if (log_enable()) {
          fprintf(log_fp,
                  "\33[1;34m"
                  "[%s:%d %s] "
                  "simulation frequency = "
                  "%'ld"
                  " instr/s"
                  "\33[0m"
                  "\n",
                  "src/cpu/cpu-exec.c", 85, __func__,
                  g_nr_guest_instr * 1000000 / g_timer);
          fflush(log_fp);
        }
      } while (0);
    } while (0);
  else
    do {
      printf("\33[1;34m"
             "[%s:%d %s] "
             "Finish running in less than 1 us and can not calculate the "
             "simulation frequency"
             "\33[0m"
             "\n",
             "src/cpu/cpu-exec.c", 86, __func__);
      do {
        extern FILE *log_fp;
        extern _Bool log_enable();
        if (log_enable()) {
          fprintf(log_fp,
                  "\33[1;34m"
                  "[%s:%d %s] "
                  "Finish running in less than 1 us and can not calculate the "
                  "simulation frequency"
                  "\33[0m"
                  "\n",
                  "src/cpu/cpu-exec.c", 86, __func__);
          fflush(log_fp);
        }
      } while (0);
    } while (0);
}

void assert_fail_msg() {
  isa_reg_display();
  statistic();
}

void fetch_decode(Decode *s, vaddr_t pc) {
  s->pc = pc;
  s->snpc = pc;
  int idx = isa_fetch_decode(s);
  s->dnpc = s->snpc;
  s->EHelper = g_exec_table[idx];
}

void cpu_exec(uint64_t n) {

  init_iringbuf();
  g_print_step = (n < 10);
  switch (nemu_state.state) {
  case NEMU_END:
  case NEMU_ABORT:
    printf("Program execution has ended. To restart the program, exit NEMU and "
           "run again.\n");
    return;
  default:
    nemu_state.state = NEMU_RUNNING;
  }

  uint64_t timer_start = get_time();

  Decode s;
  for (; n > 0; n--) {
    fetch_decode_exec_updatepc(&s);
    g_nr_guest_instr++;
    trace_and_difftest(&s, cpu.pc);
    if (nemu_state.state != NEMU_RUNNING)
      break;
    device_update();
  }
  print_iringbuf();

  uint64_t timer_end = get_time();
  g_timer += timer_end - timer_start;

  switch (nemu_state.state) {
  case NEMU_RUNNING:
    nemu_state.state = NEMU_STOP;
    break;

  case NEMU_END:
  case NEMU_ABORT:
    do {
      printf("\33[1;34m"
             "[%s:%d %s] "
             "nemu: %s at pc = "
             "0x%08x"
             "\33[0m"
             "\n",
             "src/cpu/cpu-exec.c", 156, __func__,
             (nemu_state.state == NEMU_ABORT
                  ? "\33[1;31m"
                    "ABORT"
                    "\33[0m"
                  : (nemu_state.halt_ret == 0 ? "\33[1;32m"
                                                "HIT GOOD TRAP"
                                                "\33[0m"
                                              : "\33[1;31m"
                                                "HIT BAD TRAP"
                                                "\33[0m")),
             nemu_state.halt_pc);
      do {
        extern FILE *log_fp;
        extern _Bool log_enable();
        if (log_enable()) {
          fprintf(log_fp,
                  "\33[1;34m"
                  "[%s:%d %s] "
                  "nemu: %s at pc = "
                  "0x%08x"
                  "\33[0m"
                  "\n",
                  "src/cpu/cpu-exec.c", 156, __func__,
                  (nemu_state.state == NEMU_ABORT
                       ? "\33[1;31m"
                         "ABORT"
                         "\33[0m"
                       : (nemu_state.halt_ret == 0 ? "\33[1;32m"
                                                     "HIT GOOD TRAP"
                                                     "\33[0m"
                                                   : "\33[1;31m"
                                                     "HIT BAD TRAP"
                                                     "\33[0m")),
                  nemu_state.halt_pc);
          fflush(log_fp);
        }
      } while (0);
    } while (0)

        ;

  case NEMU_QUIT:
    statistic();
  }
}
