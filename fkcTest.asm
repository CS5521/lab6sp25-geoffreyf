
_fkcTest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "stat.h"
#include "user.h"
int
main(int argc, char * argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
   6:	83 ec 30             	sub    $0x30,%esp
   printf(1, "number of forks when program starts: %d\n", fkc(1));
   9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  10:	e8 1b 04 00 00       	call   430 <fkc>
  15:	89 44 24 08          	mov    %eax,0x8(%esp)
  19:	c7 44 24 04 e4 08 00 	movl   $0x8e4,0x4(%esp)
  20:	00 
  21:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  28:	e8 eb 04 00 00       	call   518 <printf>
   int pid1 = fork();
  2d:	e8 4e 03 00 00       	call   380 <fork>
  32:	89 44 24 2c          	mov    %eax,0x2c(%esp)
   if(pid1 == 0)
  36:	83 7c 24 2c 00       	cmpl   $0x0,0x2c(%esp)
  3b:	75 05                	jne    42 <main+0x42>
     exit();
  3d:	e8 46 03 00 00       	call   388 <exit>
   int pid2 = fork();
  42:	e8 39 03 00 00       	call   380 <fork>
  47:	89 44 24 28          	mov    %eax,0x28(%esp)
   if(pid2 == 0)
  4b:	83 7c 24 28 00       	cmpl   $0x0,0x28(%esp)
  50:	75 05                	jne    57 <main+0x57>
     exit();
  52:	e8 31 03 00 00       	call   388 <exit>
   wait();
  57:	e8 34 03 00 00       	call   390 <wait>
   wait();
  5c:	e8 2f 03 00 00       	call   390 <wait>
   printf(1, "number of forks after two more forks: %d\n", fkc(1));
  61:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  68:	e8 c3 03 00 00       	call   430 <fkc>
  6d:	89 44 24 08          	mov    %eax,0x8(%esp)
  71:	c7 44 24 04 10 09 00 	movl   $0x910,0x4(%esp)
  78:	00 
  79:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  80:	e8 93 04 00 00       	call   518 <printf>
   printf(1, "number of forks after forks cleared: %d\n", fkc(0));
  85:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  8c:	e8 9f 03 00 00       	call   430 <fkc>
  91:	89 44 24 08          	mov    %eax,0x8(%esp)
  95:	c7 44 24 04 3c 09 00 	movl   $0x93c,0x4(%esp)
  9c:	00 
  9d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  a4:	e8 6f 04 00 00       	call   518 <printf>
   int pid3 = fork();
  a9:	e8 d2 02 00 00       	call   380 <fork>
  ae:	89 44 24 24          	mov    %eax,0x24(%esp)
   if(pid3 == 0)
  b2:	83 7c 24 24 00       	cmpl   $0x0,0x24(%esp)
  b7:	75 05                	jne    be <main+0xbe>
     exit();
  b9:	e8 ca 02 00 00       	call   388 <exit>
   int pid4 = fork();
  be:	e8 bd 02 00 00       	call   380 <fork>
  c3:	89 44 24 20          	mov    %eax,0x20(%esp)
   if(pid4 == 0)
  c7:	83 7c 24 20 00       	cmpl   $0x0,0x20(%esp)
  cc:	75 05                	jne    d3 <main+0xd3>
     exit();
  ce:	e8 b5 02 00 00       	call   388 <exit>
   int pid5 = fork();
  d3:	e8 a8 02 00 00       	call   380 <fork>
  d8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
   if(pid5 == 0)
  dc:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
  e1:	75 05                	jne    e8 <main+0xe8>
     exit();
  e3:	e8 a0 02 00 00       	call   388 <exit>

   wait();
  e8:	e8 a3 02 00 00       	call   390 <wait>
   wait();
  ed:	e8 9e 02 00 00       	call   390 <wait>
   wait();
  f2:	e8 99 02 00 00       	call   390 <wait>
   printf(1, "number of forks after three more forks: %d\n", fkc(1));
  f7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  fe:	e8 2d 03 00 00       	call   430 <fkc>
 103:	89 44 24 08          	mov    %eax,0x8(%esp)
 107:	c7 44 24 04 68 09 00 	movl   $0x968,0x4(%esp)
 10e:	00 
 10f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 116:	e8 fd 03 00 00       	call   518 <printf>
   exit();
 11b:	e8 68 02 00 00       	call   388 <exit>

00000120 <stosb>:
               "cc");
}

static inline void
stosb(void *addr, int data, int cnt)
{
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	57                   	push   %edi
 124:	53                   	push   %ebx
  asm volatile("cld; rep stosb" :
 125:	8b 4d 08             	mov    0x8(%ebp),%ecx
 128:	8b 55 10             	mov    0x10(%ebp),%edx
 12b:	8b 45 0c             	mov    0xc(%ebp),%eax
 12e:	89 cb                	mov    %ecx,%ebx
 130:	89 df                	mov    %ebx,%edi
 132:	89 d1                	mov    %edx,%ecx
 134:	fc                   	cld    
 135:	f3 aa                	rep stos %al,%es:(%edi)
 137:	89 ca                	mov    %ecx,%edx
 139:	89 fb                	mov    %edi,%ebx
 13b:	89 5d 08             	mov    %ebx,0x8(%ebp)
 13e:	89 55 10             	mov    %edx,0x10(%ebp)
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
 141:	5b                   	pop    %ebx
 142:	5f                   	pop    %edi
 143:	5d                   	pop    %ebp
 144:	c3                   	ret    

00000145 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 145:	55                   	push   %ebp
 146:	89 e5                	mov    %esp,%ebp
 148:	83 ec 10             	sub    $0x10,%esp
  char *os;

  os = s;
 14b:	8b 45 08             	mov    0x8(%ebp),%eax
 14e:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while((*s++ = *t++) != 0)
 151:	90                   	nop
 152:	8b 45 08             	mov    0x8(%ebp),%eax
 155:	8d 50 01             	lea    0x1(%eax),%edx
 158:	89 55 08             	mov    %edx,0x8(%ebp)
 15b:	8b 55 0c             	mov    0xc(%ebp),%edx
 15e:	8d 4a 01             	lea    0x1(%edx),%ecx
 161:	89 4d 0c             	mov    %ecx,0xc(%ebp)
 164:	0f b6 12             	movzbl (%edx),%edx
 167:	88 10                	mov    %dl,(%eax)
 169:	0f b6 00             	movzbl (%eax),%eax
 16c:	84 c0                	test   %al,%al
 16e:	75 e2                	jne    152 <strcpy+0xd>
    ;
  return os;
 170:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 173:	c9                   	leave  
 174:	c3                   	ret    

00000175 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 175:	55                   	push   %ebp
 176:	89 e5                	mov    %esp,%ebp
  while(*p && *p == *q)
 178:	eb 08                	jmp    182 <strcmp+0xd>
    p++, q++;
 17a:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 17e:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  while(*p && *p == *q)
 182:	8b 45 08             	mov    0x8(%ebp),%eax
 185:	0f b6 00             	movzbl (%eax),%eax
 188:	84 c0                	test   %al,%al
 18a:	74 10                	je     19c <strcmp+0x27>
 18c:	8b 45 08             	mov    0x8(%ebp),%eax
 18f:	0f b6 10             	movzbl (%eax),%edx
 192:	8b 45 0c             	mov    0xc(%ebp),%eax
 195:	0f b6 00             	movzbl (%eax),%eax
 198:	38 c2                	cmp    %al,%dl
 19a:	74 de                	je     17a <strcmp+0x5>
  return (uchar)*p - (uchar)*q;
 19c:	8b 45 08             	mov    0x8(%ebp),%eax
 19f:	0f b6 00             	movzbl (%eax),%eax
 1a2:	0f b6 d0             	movzbl %al,%edx
 1a5:	8b 45 0c             	mov    0xc(%ebp),%eax
 1a8:	0f b6 00             	movzbl (%eax),%eax
 1ab:	0f b6 c0             	movzbl %al,%eax
 1ae:	29 c2                	sub    %eax,%edx
 1b0:	89 d0                	mov    %edx,%eax
}
 1b2:	5d                   	pop    %ebp
 1b3:	c3                   	ret    

000001b4 <strlen>:

uint
strlen(const char *s)
{
 1b4:	55                   	push   %ebp
 1b5:	89 e5                	mov    %esp,%ebp
 1b7:	83 ec 10             	sub    $0x10,%esp
  int n;

  for(n = 0; s[n]; n++)
 1ba:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 1c1:	eb 04                	jmp    1c7 <strlen+0x13>
 1c3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 1c7:	8b 55 fc             	mov    -0x4(%ebp),%edx
 1ca:	8b 45 08             	mov    0x8(%ebp),%eax
 1cd:	01 d0                	add    %edx,%eax
 1cf:	0f b6 00             	movzbl (%eax),%eax
 1d2:	84 c0                	test   %al,%al
 1d4:	75 ed                	jne    1c3 <strlen+0xf>
    ;
  return n;
 1d6:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 1d9:	c9                   	leave  
 1da:	c3                   	ret    

000001db <memset>:

void*
memset(void *dst, int c, uint n)
{
 1db:	55                   	push   %ebp
 1dc:	89 e5                	mov    %esp,%ebp
 1de:	83 ec 0c             	sub    $0xc,%esp
  stosb(dst, c, n);
 1e1:	8b 45 10             	mov    0x10(%ebp),%eax
 1e4:	89 44 24 08          	mov    %eax,0x8(%esp)
 1e8:	8b 45 0c             	mov    0xc(%ebp),%eax
 1eb:	89 44 24 04          	mov    %eax,0x4(%esp)
 1ef:	8b 45 08             	mov    0x8(%ebp),%eax
 1f2:	89 04 24             	mov    %eax,(%esp)
 1f5:	e8 26 ff ff ff       	call   120 <stosb>
  return dst;
 1fa:	8b 45 08             	mov    0x8(%ebp),%eax
}
 1fd:	c9                   	leave  
 1fe:	c3                   	ret    

000001ff <strchr>:

char*
strchr(const char *s, char c)
{
 1ff:	55                   	push   %ebp
 200:	89 e5                	mov    %esp,%ebp
 202:	83 ec 04             	sub    $0x4,%esp
 205:	8b 45 0c             	mov    0xc(%ebp),%eax
 208:	88 45 fc             	mov    %al,-0x4(%ebp)
  for(; *s; s++)
 20b:	eb 14                	jmp    221 <strchr+0x22>
    if(*s == c)
 20d:	8b 45 08             	mov    0x8(%ebp),%eax
 210:	0f b6 00             	movzbl (%eax),%eax
 213:	3a 45 fc             	cmp    -0x4(%ebp),%al
 216:	75 05                	jne    21d <strchr+0x1e>
      return (char*)s;
 218:	8b 45 08             	mov    0x8(%ebp),%eax
 21b:	eb 13                	jmp    230 <strchr+0x31>
  for(; *s; s++)
 21d:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 221:	8b 45 08             	mov    0x8(%ebp),%eax
 224:	0f b6 00             	movzbl (%eax),%eax
 227:	84 c0                	test   %al,%al
 229:	75 e2                	jne    20d <strchr+0xe>
  return 0;
 22b:	b8 00 00 00 00       	mov    $0x0,%eax
}
 230:	c9                   	leave  
 231:	c3                   	ret    

00000232 <gets>:

char*
gets(char *buf, int max)
{
 232:	55                   	push   %ebp
 233:	89 e5                	mov    %esp,%ebp
 235:	83 ec 28             	sub    $0x28,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 238:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 23f:	eb 4c                	jmp    28d <gets+0x5b>
    cc = read(0, &c, 1);
 241:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 248:	00 
 249:	8d 45 ef             	lea    -0x11(%ebp),%eax
 24c:	89 44 24 04          	mov    %eax,0x4(%esp)
 250:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 257:	e8 44 01 00 00       	call   3a0 <read>
 25c:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if(cc < 1)
 25f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 263:	7f 02                	jg     267 <gets+0x35>
      break;
 265:	eb 31                	jmp    298 <gets+0x66>
    buf[i++] = c;
 267:	8b 45 f4             	mov    -0xc(%ebp),%eax
 26a:	8d 50 01             	lea    0x1(%eax),%edx
 26d:	89 55 f4             	mov    %edx,-0xc(%ebp)
 270:	89 c2                	mov    %eax,%edx
 272:	8b 45 08             	mov    0x8(%ebp),%eax
 275:	01 c2                	add    %eax,%edx
 277:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 27b:	88 02                	mov    %al,(%edx)
    if(c == '\n' || c == '\r')
 27d:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 281:	3c 0a                	cmp    $0xa,%al
 283:	74 13                	je     298 <gets+0x66>
 285:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 289:	3c 0d                	cmp    $0xd,%al
 28b:	74 0b                	je     298 <gets+0x66>
  for(i=0; i+1 < max; ){
 28d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 290:	83 c0 01             	add    $0x1,%eax
 293:	3b 45 0c             	cmp    0xc(%ebp),%eax
 296:	7c a9                	jl     241 <gets+0xf>
      break;
  }
  buf[i] = '\0';
 298:	8b 55 f4             	mov    -0xc(%ebp),%edx
 29b:	8b 45 08             	mov    0x8(%ebp),%eax
 29e:	01 d0                	add    %edx,%eax
 2a0:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
 2a3:	8b 45 08             	mov    0x8(%ebp),%eax
}
 2a6:	c9                   	leave  
 2a7:	c3                   	ret    

000002a8 <stat>:

int
stat(const char *n, struct stat *st)
{
 2a8:	55                   	push   %ebp
 2a9:	89 e5                	mov    %esp,%ebp
 2ab:	83 ec 28             	sub    $0x28,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2ae:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 2b5:	00 
 2b6:	8b 45 08             	mov    0x8(%ebp),%eax
 2b9:	89 04 24             	mov    %eax,(%esp)
 2bc:	e8 07 01 00 00       	call   3c8 <open>
 2c1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(fd < 0)
 2c4:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 2c8:	79 07                	jns    2d1 <stat+0x29>
    return -1;
 2ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 2cf:	eb 23                	jmp    2f4 <stat+0x4c>
  r = fstat(fd, st);
 2d1:	8b 45 0c             	mov    0xc(%ebp),%eax
 2d4:	89 44 24 04          	mov    %eax,0x4(%esp)
 2d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2db:	89 04 24             	mov    %eax,(%esp)
 2de:	e8 fd 00 00 00       	call   3e0 <fstat>
 2e3:	89 45 f0             	mov    %eax,-0x10(%ebp)
  close(fd);
 2e6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2e9:	89 04 24             	mov    %eax,(%esp)
 2ec:	e8 bf 00 00 00       	call   3b0 <close>
  return r;
 2f1:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
 2f4:	c9                   	leave  
 2f5:	c3                   	ret    

000002f6 <atoi>:

int
atoi(const char *s)
{
 2f6:	55                   	push   %ebp
 2f7:	89 e5                	mov    %esp,%ebp
 2f9:	83 ec 10             	sub    $0x10,%esp
  int n;

  n = 0;
 2fc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 303:	eb 25                	jmp    32a <atoi+0x34>
    n = n*10 + *s++ - '0';
 305:	8b 55 fc             	mov    -0x4(%ebp),%edx
 308:	89 d0                	mov    %edx,%eax
 30a:	c1 e0 02             	shl    $0x2,%eax
 30d:	01 d0                	add    %edx,%eax
 30f:	01 c0                	add    %eax,%eax
 311:	89 c1                	mov    %eax,%ecx
 313:	8b 45 08             	mov    0x8(%ebp),%eax
 316:	8d 50 01             	lea    0x1(%eax),%edx
 319:	89 55 08             	mov    %edx,0x8(%ebp)
 31c:	0f b6 00             	movzbl (%eax),%eax
 31f:	0f be c0             	movsbl %al,%eax
 322:	01 c8                	add    %ecx,%eax
 324:	83 e8 30             	sub    $0x30,%eax
 327:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 32a:	8b 45 08             	mov    0x8(%ebp),%eax
 32d:	0f b6 00             	movzbl (%eax),%eax
 330:	3c 2f                	cmp    $0x2f,%al
 332:	7e 0a                	jle    33e <atoi+0x48>
 334:	8b 45 08             	mov    0x8(%ebp),%eax
 337:	0f b6 00             	movzbl (%eax),%eax
 33a:	3c 39                	cmp    $0x39,%al
 33c:	7e c7                	jle    305 <atoi+0xf>
  return n;
 33e:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 341:	c9                   	leave  
 342:	c3                   	ret    

00000343 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 343:	55                   	push   %ebp
 344:	89 e5                	mov    %esp,%ebp
 346:	83 ec 10             	sub    $0x10,%esp
  char *dst;
  const char *src;

  dst = vdst;
 349:	8b 45 08             	mov    0x8(%ebp),%eax
 34c:	89 45 fc             	mov    %eax,-0x4(%ebp)
  src = vsrc;
 34f:	8b 45 0c             	mov    0xc(%ebp),%eax
 352:	89 45 f8             	mov    %eax,-0x8(%ebp)
  while(n-- > 0)
 355:	eb 17                	jmp    36e <memmove+0x2b>
    *dst++ = *src++;
 357:	8b 45 fc             	mov    -0x4(%ebp),%eax
 35a:	8d 50 01             	lea    0x1(%eax),%edx
 35d:	89 55 fc             	mov    %edx,-0x4(%ebp)
 360:	8b 55 f8             	mov    -0x8(%ebp),%edx
 363:	8d 4a 01             	lea    0x1(%edx),%ecx
 366:	89 4d f8             	mov    %ecx,-0x8(%ebp)
 369:	0f b6 12             	movzbl (%edx),%edx
 36c:	88 10                	mov    %dl,(%eax)
  while(n-- > 0)
 36e:	8b 45 10             	mov    0x10(%ebp),%eax
 371:	8d 50 ff             	lea    -0x1(%eax),%edx
 374:	89 55 10             	mov    %edx,0x10(%ebp)
 377:	85 c0                	test   %eax,%eax
 379:	7f dc                	jg     357 <memmove+0x14>
  return vdst;
 37b:	8b 45 08             	mov    0x8(%ebp),%eax
}
 37e:	c9                   	leave  
 37f:	c3                   	ret    

00000380 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 380:	b8 01 00 00 00       	mov    $0x1,%eax
 385:	cd 40                	int    $0x40
 387:	c3                   	ret    

00000388 <exit>:
SYSCALL(exit)
 388:	b8 02 00 00 00       	mov    $0x2,%eax
 38d:	cd 40                	int    $0x40
 38f:	c3                   	ret    

00000390 <wait>:
SYSCALL(wait)
 390:	b8 03 00 00 00       	mov    $0x3,%eax
 395:	cd 40                	int    $0x40
 397:	c3                   	ret    

00000398 <pipe>:
SYSCALL(pipe)
 398:	b8 04 00 00 00       	mov    $0x4,%eax
 39d:	cd 40                	int    $0x40
 39f:	c3                   	ret    

000003a0 <read>:
SYSCALL(read)
 3a0:	b8 05 00 00 00       	mov    $0x5,%eax
 3a5:	cd 40                	int    $0x40
 3a7:	c3                   	ret    

000003a8 <write>:
SYSCALL(write)
 3a8:	b8 10 00 00 00       	mov    $0x10,%eax
 3ad:	cd 40                	int    $0x40
 3af:	c3                   	ret    

000003b0 <close>:
SYSCALL(close)
 3b0:	b8 15 00 00 00       	mov    $0x15,%eax
 3b5:	cd 40                	int    $0x40
 3b7:	c3                   	ret    

000003b8 <kill>:
SYSCALL(kill)
 3b8:	b8 06 00 00 00       	mov    $0x6,%eax
 3bd:	cd 40                	int    $0x40
 3bf:	c3                   	ret    

000003c0 <exec>:
SYSCALL(exec)
 3c0:	b8 07 00 00 00       	mov    $0x7,%eax
 3c5:	cd 40                	int    $0x40
 3c7:	c3                   	ret    

000003c8 <open>:
SYSCALL(open)
 3c8:	b8 0f 00 00 00       	mov    $0xf,%eax
 3cd:	cd 40                	int    $0x40
 3cf:	c3                   	ret    

000003d0 <mknod>:
SYSCALL(mknod)
 3d0:	b8 11 00 00 00       	mov    $0x11,%eax
 3d5:	cd 40                	int    $0x40
 3d7:	c3                   	ret    

000003d8 <unlink>:
SYSCALL(unlink)
 3d8:	b8 12 00 00 00       	mov    $0x12,%eax
 3dd:	cd 40                	int    $0x40
 3df:	c3                   	ret    

000003e0 <fstat>:
SYSCALL(fstat)
 3e0:	b8 08 00 00 00       	mov    $0x8,%eax
 3e5:	cd 40                	int    $0x40
 3e7:	c3                   	ret    

000003e8 <link>:
SYSCALL(link)
 3e8:	b8 13 00 00 00       	mov    $0x13,%eax
 3ed:	cd 40                	int    $0x40
 3ef:	c3                   	ret    

000003f0 <mkdir>:
SYSCALL(mkdir)
 3f0:	b8 14 00 00 00       	mov    $0x14,%eax
 3f5:	cd 40                	int    $0x40
 3f7:	c3                   	ret    

000003f8 <chdir>:
SYSCALL(chdir)
 3f8:	b8 09 00 00 00       	mov    $0x9,%eax
 3fd:	cd 40                	int    $0x40
 3ff:	c3                   	ret    

00000400 <dup>:
SYSCALL(dup)
 400:	b8 0a 00 00 00       	mov    $0xa,%eax
 405:	cd 40                	int    $0x40
 407:	c3                   	ret    

00000408 <getpid>:
SYSCALL(getpid)
 408:	b8 0b 00 00 00       	mov    $0xb,%eax
 40d:	cd 40                	int    $0x40
 40f:	c3                   	ret    

00000410 <sbrk>:
SYSCALL(sbrk)
 410:	b8 0c 00 00 00       	mov    $0xc,%eax
 415:	cd 40                	int    $0x40
 417:	c3                   	ret    

00000418 <sleep>:
SYSCALL(sleep)
 418:	b8 0d 00 00 00       	mov    $0xd,%eax
 41d:	cd 40                	int    $0x40
 41f:	c3                   	ret    

00000420 <uptime>:
SYSCALL(uptime)
 420:	b8 0e 00 00 00       	mov    $0xe,%eax
 425:	cd 40                	int    $0x40
 427:	c3                   	ret    

00000428 <hw>:
SYSCALL(hw)
 428:	b8 16 00 00 00       	mov    $0x16,%eax
 42d:	cd 40                	int    $0x40
 42f:	c3                   	ret    

00000430 <fkc>:
SYSCALL(fkc)
 430:	b8 17 00 00 00       	mov    $0x17,%eax
 435:	cd 40                	int    $0x40
 437:	c3                   	ret    

00000438 <putc>:
#include "stat.h"
#include "user.h"

static void
putc(int fd, char c)
{
 438:	55                   	push   %ebp
 439:	89 e5                	mov    %esp,%ebp
 43b:	83 ec 18             	sub    $0x18,%esp
 43e:	8b 45 0c             	mov    0xc(%ebp),%eax
 441:	88 45 f4             	mov    %al,-0xc(%ebp)
  write(fd, &c, 1);
 444:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 44b:	00 
 44c:	8d 45 f4             	lea    -0xc(%ebp),%eax
 44f:	89 44 24 04          	mov    %eax,0x4(%esp)
 453:	8b 45 08             	mov    0x8(%ebp),%eax
 456:	89 04 24             	mov    %eax,(%esp)
 459:	e8 4a ff ff ff       	call   3a8 <write>
}
 45e:	c9                   	leave  
 45f:	c3                   	ret    

00000460 <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	56                   	push   %esi
 464:	53                   	push   %ebx
 465:	83 ec 30             	sub    $0x30,%esp
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 468:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  if(sgn && xx < 0){
 46f:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 473:	74 17                	je     48c <printint+0x2c>
 475:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 479:	79 11                	jns    48c <printint+0x2c>
    neg = 1;
 47b:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    x = -xx;
 482:	8b 45 0c             	mov    0xc(%ebp),%eax
 485:	f7 d8                	neg    %eax
 487:	89 45 ec             	mov    %eax,-0x14(%ebp)
 48a:	eb 06                	jmp    492 <printint+0x32>
  } else {
    x = xx;
 48c:	8b 45 0c             	mov    0xc(%ebp),%eax
 48f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  }

  i = 0;
 492:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  do{
    buf[i++] = digits[x % base];
 499:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 49c:	8d 41 01             	lea    0x1(%ecx),%eax
 49f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 4a2:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4a5:	8b 45 ec             	mov    -0x14(%ebp),%eax
 4a8:	ba 00 00 00 00       	mov    $0x0,%edx
 4ad:	f7 f3                	div    %ebx
 4af:	89 d0                	mov    %edx,%eax
 4b1:	0f b6 80 e0 0b 00 00 	movzbl 0xbe0(%eax),%eax
 4b8:	88 44 0d dc          	mov    %al,-0x24(%ebp,%ecx,1)
  }while((x /= base) != 0);
 4bc:	8b 75 10             	mov    0x10(%ebp),%esi
 4bf:	8b 45 ec             	mov    -0x14(%ebp),%eax
 4c2:	ba 00 00 00 00       	mov    $0x0,%edx
 4c7:	f7 f6                	div    %esi
 4c9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 4cc:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 4d0:	75 c7                	jne    499 <printint+0x39>
  if(neg)
 4d2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 4d6:	74 10                	je     4e8 <printint+0x88>
    buf[i++] = '-';
 4d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 4db:	8d 50 01             	lea    0x1(%eax),%edx
 4de:	89 55 f4             	mov    %edx,-0xc(%ebp)
 4e1:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)

  while(--i >= 0)
 4e6:	eb 1f                	jmp    507 <printint+0xa7>
 4e8:	eb 1d                	jmp    507 <printint+0xa7>
    putc(fd, buf[i]);
 4ea:	8d 55 dc             	lea    -0x24(%ebp),%edx
 4ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
 4f0:	01 d0                	add    %edx,%eax
 4f2:	0f b6 00             	movzbl (%eax),%eax
 4f5:	0f be c0             	movsbl %al,%eax
 4f8:	89 44 24 04          	mov    %eax,0x4(%esp)
 4fc:	8b 45 08             	mov    0x8(%ebp),%eax
 4ff:	89 04 24             	mov    %eax,(%esp)
 502:	e8 31 ff ff ff       	call   438 <putc>
  while(--i >= 0)
 507:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
 50b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 50f:	79 d9                	jns    4ea <printint+0x8a>
}
 511:	83 c4 30             	add    $0x30,%esp
 514:	5b                   	pop    %ebx
 515:	5e                   	pop    %esi
 516:	5d                   	pop    %ebp
 517:	c3                   	ret    

00000518 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 518:	55                   	push   %ebp
 519:	89 e5                	mov    %esp,%ebp
 51b:	83 ec 38             	sub    $0x38,%esp
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 51e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  ap = (uint*)(void*)&fmt + 1;
 525:	8d 45 0c             	lea    0xc(%ebp),%eax
 528:	83 c0 04             	add    $0x4,%eax
 52b:	89 45 e8             	mov    %eax,-0x18(%ebp)
  for(i = 0; fmt[i]; i++){
 52e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 535:	e9 7c 01 00 00       	jmp    6b6 <printf+0x19e>
    c = fmt[i] & 0xff;
 53a:	8b 55 0c             	mov    0xc(%ebp),%edx
 53d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 540:	01 d0                	add    %edx,%eax
 542:	0f b6 00             	movzbl (%eax),%eax
 545:	0f be c0             	movsbl %al,%eax
 548:	25 ff 00 00 00       	and    $0xff,%eax
 54d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    if(state == 0){
 550:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 554:	75 2c                	jne    582 <printf+0x6a>
      if(c == '%'){
 556:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 55a:	75 0c                	jne    568 <printf+0x50>
        state = '%';
 55c:	c7 45 ec 25 00 00 00 	movl   $0x25,-0x14(%ebp)
 563:	e9 4a 01 00 00       	jmp    6b2 <printf+0x19a>
      } else {
        putc(fd, c);
 568:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 56b:	0f be c0             	movsbl %al,%eax
 56e:	89 44 24 04          	mov    %eax,0x4(%esp)
 572:	8b 45 08             	mov    0x8(%ebp),%eax
 575:	89 04 24             	mov    %eax,(%esp)
 578:	e8 bb fe ff ff       	call   438 <putc>
 57d:	e9 30 01 00 00       	jmp    6b2 <printf+0x19a>
      }
    } else if(state == '%'){
 582:	83 7d ec 25          	cmpl   $0x25,-0x14(%ebp)
 586:	0f 85 26 01 00 00    	jne    6b2 <printf+0x19a>
      if(c == 'd'){
 58c:	83 7d e4 64          	cmpl   $0x64,-0x1c(%ebp)
 590:	75 2d                	jne    5bf <printf+0xa7>
        printint(fd, *ap, 10, 1);
 592:	8b 45 e8             	mov    -0x18(%ebp),%eax
 595:	8b 00                	mov    (%eax),%eax
 597:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 59e:	00 
 59f:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 5a6:	00 
 5a7:	89 44 24 04          	mov    %eax,0x4(%esp)
 5ab:	8b 45 08             	mov    0x8(%ebp),%eax
 5ae:	89 04 24             	mov    %eax,(%esp)
 5b1:	e8 aa fe ff ff       	call   460 <printint>
        ap++;
 5b6:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 5ba:	e9 ec 00 00 00       	jmp    6ab <printf+0x193>
      } else if(c == 'x' || c == 'p'){
 5bf:	83 7d e4 78          	cmpl   $0x78,-0x1c(%ebp)
 5c3:	74 06                	je     5cb <printf+0xb3>
 5c5:	83 7d e4 70          	cmpl   $0x70,-0x1c(%ebp)
 5c9:	75 2d                	jne    5f8 <printf+0xe0>
        printint(fd, *ap, 16, 0);
 5cb:	8b 45 e8             	mov    -0x18(%ebp),%eax
 5ce:	8b 00                	mov    (%eax),%eax
 5d0:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 5d7:	00 
 5d8:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 5df:	00 
 5e0:	89 44 24 04          	mov    %eax,0x4(%esp)
 5e4:	8b 45 08             	mov    0x8(%ebp),%eax
 5e7:	89 04 24             	mov    %eax,(%esp)
 5ea:	e8 71 fe ff ff       	call   460 <printint>
        ap++;
 5ef:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 5f3:	e9 b3 00 00 00       	jmp    6ab <printf+0x193>
      } else if(c == 's'){
 5f8:	83 7d e4 73          	cmpl   $0x73,-0x1c(%ebp)
 5fc:	75 45                	jne    643 <printf+0x12b>
        s = (char*)*ap;
 5fe:	8b 45 e8             	mov    -0x18(%ebp),%eax
 601:	8b 00                	mov    (%eax),%eax
 603:	89 45 f4             	mov    %eax,-0xc(%ebp)
        ap++;
 606:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
        if(s == 0)
 60a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 60e:	75 09                	jne    619 <printf+0x101>
          s = "(null)";
 610:	c7 45 f4 94 09 00 00 	movl   $0x994,-0xc(%ebp)
        while(*s != 0){
 617:	eb 1e                	jmp    637 <printf+0x11f>
 619:	eb 1c                	jmp    637 <printf+0x11f>
          putc(fd, *s);
 61b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 61e:	0f b6 00             	movzbl (%eax),%eax
 621:	0f be c0             	movsbl %al,%eax
 624:	89 44 24 04          	mov    %eax,0x4(%esp)
 628:	8b 45 08             	mov    0x8(%ebp),%eax
 62b:	89 04 24             	mov    %eax,(%esp)
 62e:	e8 05 fe ff ff       	call   438 <putc>
          s++;
 633:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
        while(*s != 0){
 637:	8b 45 f4             	mov    -0xc(%ebp),%eax
 63a:	0f b6 00             	movzbl (%eax),%eax
 63d:	84 c0                	test   %al,%al
 63f:	75 da                	jne    61b <printf+0x103>
 641:	eb 68                	jmp    6ab <printf+0x193>
        }
      } else if(c == 'c'){
 643:	83 7d e4 63          	cmpl   $0x63,-0x1c(%ebp)
 647:	75 1d                	jne    666 <printf+0x14e>
        putc(fd, *ap);
 649:	8b 45 e8             	mov    -0x18(%ebp),%eax
 64c:	8b 00                	mov    (%eax),%eax
 64e:	0f be c0             	movsbl %al,%eax
 651:	89 44 24 04          	mov    %eax,0x4(%esp)
 655:	8b 45 08             	mov    0x8(%ebp),%eax
 658:	89 04 24             	mov    %eax,(%esp)
 65b:	e8 d8 fd ff ff       	call   438 <putc>
        ap++;
 660:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 664:	eb 45                	jmp    6ab <printf+0x193>
      } else if(c == '%'){
 666:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 66a:	75 17                	jne    683 <printf+0x16b>
        putc(fd, c);
 66c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 66f:	0f be c0             	movsbl %al,%eax
 672:	89 44 24 04          	mov    %eax,0x4(%esp)
 676:	8b 45 08             	mov    0x8(%ebp),%eax
 679:	89 04 24             	mov    %eax,(%esp)
 67c:	e8 b7 fd ff ff       	call   438 <putc>
 681:	eb 28                	jmp    6ab <printf+0x193>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 683:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
 68a:	00 
 68b:	8b 45 08             	mov    0x8(%ebp),%eax
 68e:	89 04 24             	mov    %eax,(%esp)
 691:	e8 a2 fd ff ff       	call   438 <putc>
        putc(fd, c);
 696:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 699:	0f be c0             	movsbl %al,%eax
 69c:	89 44 24 04          	mov    %eax,0x4(%esp)
 6a0:	8b 45 08             	mov    0x8(%ebp),%eax
 6a3:	89 04 24             	mov    %eax,(%esp)
 6a6:	e8 8d fd ff ff       	call   438 <putc>
      }
      state = 0;
 6ab:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  for(i = 0; fmt[i]; i++){
 6b2:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 6b6:	8b 55 0c             	mov    0xc(%ebp),%edx
 6b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 6bc:	01 d0                	add    %edx,%eax
 6be:	0f b6 00             	movzbl (%eax),%eax
 6c1:	84 c0                	test   %al,%al
 6c3:	0f 85 71 fe ff ff    	jne    53a <printf+0x22>
    }
  }
}
 6c9:	c9                   	leave  
 6ca:	c3                   	ret    

000006cb <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6cb:	55                   	push   %ebp
 6cc:	89 e5                	mov    %esp,%ebp
 6ce:	83 ec 10             	sub    $0x10,%esp
  Header *bp, *p;

  bp = (Header*)ap - 1;
 6d1:	8b 45 08             	mov    0x8(%ebp),%eax
 6d4:	83 e8 08             	sub    $0x8,%eax
 6d7:	89 45 f8             	mov    %eax,-0x8(%ebp)
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6da:	a1 fc 0b 00 00       	mov    0xbfc,%eax
 6df:	89 45 fc             	mov    %eax,-0x4(%ebp)
 6e2:	eb 24                	jmp    708 <free+0x3d>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6e4:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6e7:	8b 00                	mov    (%eax),%eax
 6e9:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 6ec:	77 12                	ja     700 <free+0x35>
 6ee:	8b 45 f8             	mov    -0x8(%ebp),%eax
 6f1:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 6f4:	77 24                	ja     71a <free+0x4f>
 6f6:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6f9:	8b 00                	mov    (%eax),%eax
 6fb:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 6fe:	77 1a                	ja     71a <free+0x4f>
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 700:	8b 45 fc             	mov    -0x4(%ebp),%eax
 703:	8b 00                	mov    (%eax),%eax
 705:	89 45 fc             	mov    %eax,-0x4(%ebp)
 708:	8b 45 f8             	mov    -0x8(%ebp),%eax
 70b:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 70e:	76 d4                	jbe    6e4 <free+0x19>
 710:	8b 45 fc             	mov    -0x4(%ebp),%eax
 713:	8b 00                	mov    (%eax),%eax
 715:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 718:	76 ca                	jbe    6e4 <free+0x19>
      break;
  if(bp + bp->s.size == p->s.ptr){
 71a:	8b 45 f8             	mov    -0x8(%ebp),%eax
 71d:	8b 40 04             	mov    0x4(%eax),%eax
 720:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 727:	8b 45 f8             	mov    -0x8(%ebp),%eax
 72a:	01 c2                	add    %eax,%edx
 72c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 72f:	8b 00                	mov    (%eax),%eax
 731:	39 c2                	cmp    %eax,%edx
 733:	75 24                	jne    759 <free+0x8e>
    bp->s.size += p->s.ptr->s.size;
 735:	8b 45 f8             	mov    -0x8(%ebp),%eax
 738:	8b 50 04             	mov    0x4(%eax),%edx
 73b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 73e:	8b 00                	mov    (%eax),%eax
 740:	8b 40 04             	mov    0x4(%eax),%eax
 743:	01 c2                	add    %eax,%edx
 745:	8b 45 f8             	mov    -0x8(%ebp),%eax
 748:	89 50 04             	mov    %edx,0x4(%eax)
    bp->s.ptr = p->s.ptr->s.ptr;
 74b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 74e:	8b 00                	mov    (%eax),%eax
 750:	8b 10                	mov    (%eax),%edx
 752:	8b 45 f8             	mov    -0x8(%ebp),%eax
 755:	89 10                	mov    %edx,(%eax)
 757:	eb 0a                	jmp    763 <free+0x98>
  } else
    bp->s.ptr = p->s.ptr;
 759:	8b 45 fc             	mov    -0x4(%ebp),%eax
 75c:	8b 10                	mov    (%eax),%edx
 75e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 761:	89 10                	mov    %edx,(%eax)
  if(p + p->s.size == bp){
 763:	8b 45 fc             	mov    -0x4(%ebp),%eax
 766:	8b 40 04             	mov    0x4(%eax),%eax
 769:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 770:	8b 45 fc             	mov    -0x4(%ebp),%eax
 773:	01 d0                	add    %edx,%eax
 775:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 778:	75 20                	jne    79a <free+0xcf>
    p->s.size += bp->s.size;
 77a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 77d:	8b 50 04             	mov    0x4(%eax),%edx
 780:	8b 45 f8             	mov    -0x8(%ebp),%eax
 783:	8b 40 04             	mov    0x4(%eax),%eax
 786:	01 c2                	add    %eax,%edx
 788:	8b 45 fc             	mov    -0x4(%ebp),%eax
 78b:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 78e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 791:	8b 10                	mov    (%eax),%edx
 793:	8b 45 fc             	mov    -0x4(%ebp),%eax
 796:	89 10                	mov    %edx,(%eax)
 798:	eb 08                	jmp    7a2 <free+0xd7>
  } else
    p->s.ptr = bp;
 79a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 79d:	8b 55 f8             	mov    -0x8(%ebp),%edx
 7a0:	89 10                	mov    %edx,(%eax)
  freep = p;
 7a2:	8b 45 fc             	mov    -0x4(%ebp),%eax
 7a5:	a3 fc 0b 00 00       	mov    %eax,0xbfc
}
 7aa:	c9                   	leave  
 7ab:	c3                   	ret    

000007ac <morecore>:

static Header*
morecore(uint nu)
{
 7ac:	55                   	push   %ebp
 7ad:	89 e5                	mov    %esp,%ebp
 7af:	83 ec 28             	sub    $0x28,%esp
  char *p;
  Header *hp;

  if(nu < 4096)
 7b2:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 7b9:	77 07                	ja     7c2 <morecore+0x16>
    nu = 4096;
 7bb:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
  p = sbrk(nu * sizeof(Header));
 7c2:	8b 45 08             	mov    0x8(%ebp),%eax
 7c5:	c1 e0 03             	shl    $0x3,%eax
 7c8:	89 04 24             	mov    %eax,(%esp)
 7cb:	e8 40 fc ff ff       	call   410 <sbrk>
 7d0:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(p == (char*)-1)
 7d3:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
 7d7:	75 07                	jne    7e0 <morecore+0x34>
    return 0;
 7d9:	b8 00 00 00 00       	mov    $0x0,%eax
 7de:	eb 22                	jmp    802 <morecore+0x56>
  hp = (Header*)p;
 7e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 7e3:	89 45 f0             	mov    %eax,-0x10(%ebp)
  hp->s.size = nu;
 7e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7e9:	8b 55 08             	mov    0x8(%ebp),%edx
 7ec:	89 50 04             	mov    %edx,0x4(%eax)
  free((void*)(hp + 1));
 7ef:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7f2:	83 c0 08             	add    $0x8,%eax
 7f5:	89 04 24             	mov    %eax,(%esp)
 7f8:	e8 ce fe ff ff       	call   6cb <free>
  return freep;
 7fd:	a1 fc 0b 00 00       	mov    0xbfc,%eax
}
 802:	c9                   	leave  
 803:	c3                   	ret    

00000804 <malloc>:

void*
malloc(uint nbytes)
{
 804:	55                   	push   %ebp
 805:	89 e5                	mov    %esp,%ebp
 807:	83 ec 28             	sub    $0x28,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 80a:	8b 45 08             	mov    0x8(%ebp),%eax
 80d:	83 c0 07             	add    $0x7,%eax
 810:	c1 e8 03             	shr    $0x3,%eax
 813:	83 c0 01             	add    $0x1,%eax
 816:	89 45 ec             	mov    %eax,-0x14(%ebp)
  if((prevp = freep) == 0){
 819:	a1 fc 0b 00 00       	mov    0xbfc,%eax
 81e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 821:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 825:	75 23                	jne    84a <malloc+0x46>
    base.s.ptr = freep = prevp = &base;
 827:	c7 45 f0 f4 0b 00 00 	movl   $0xbf4,-0x10(%ebp)
 82e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 831:	a3 fc 0b 00 00       	mov    %eax,0xbfc
 836:	a1 fc 0b 00 00       	mov    0xbfc,%eax
 83b:	a3 f4 0b 00 00       	mov    %eax,0xbf4
    base.s.size = 0;
 840:	c7 05 f8 0b 00 00 00 	movl   $0x0,0xbf8
 847:	00 00 00 
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 84a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 84d:	8b 00                	mov    (%eax),%eax
 84f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(p->s.size >= nunits){
 852:	8b 45 f4             	mov    -0xc(%ebp),%eax
 855:	8b 40 04             	mov    0x4(%eax),%eax
 858:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 85b:	72 4d                	jb     8aa <malloc+0xa6>
      if(p->s.size == nunits)
 85d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 860:	8b 40 04             	mov    0x4(%eax),%eax
 863:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 866:	75 0c                	jne    874 <malloc+0x70>
        prevp->s.ptr = p->s.ptr;
 868:	8b 45 f4             	mov    -0xc(%ebp),%eax
 86b:	8b 10                	mov    (%eax),%edx
 86d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 870:	89 10                	mov    %edx,(%eax)
 872:	eb 26                	jmp    89a <malloc+0x96>
      else {
        p->s.size -= nunits;
 874:	8b 45 f4             	mov    -0xc(%ebp),%eax
 877:	8b 40 04             	mov    0x4(%eax),%eax
 87a:	2b 45 ec             	sub    -0x14(%ebp),%eax
 87d:	89 c2                	mov    %eax,%edx
 87f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 882:	89 50 04             	mov    %edx,0x4(%eax)
        p += p->s.size;
 885:	8b 45 f4             	mov    -0xc(%ebp),%eax
 888:	8b 40 04             	mov    0x4(%eax),%eax
 88b:	c1 e0 03             	shl    $0x3,%eax
 88e:	01 45 f4             	add    %eax,-0xc(%ebp)
        p->s.size = nunits;
 891:	8b 45 f4             	mov    -0xc(%ebp),%eax
 894:	8b 55 ec             	mov    -0x14(%ebp),%edx
 897:	89 50 04             	mov    %edx,0x4(%eax)
      }
      freep = prevp;
 89a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 89d:	a3 fc 0b 00 00       	mov    %eax,0xbfc
      return (void*)(p + 1);
 8a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8a5:	83 c0 08             	add    $0x8,%eax
 8a8:	eb 38                	jmp    8e2 <malloc+0xde>
    }
    if(p == freep)
 8aa:	a1 fc 0b 00 00       	mov    0xbfc,%eax
 8af:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 8b2:	75 1b                	jne    8cf <malloc+0xcb>
      if((p = morecore(nunits)) == 0)
 8b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8b7:	89 04 24             	mov    %eax,(%esp)
 8ba:	e8 ed fe ff ff       	call   7ac <morecore>
 8bf:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8c2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8c6:	75 07                	jne    8cf <malloc+0xcb>
        return 0;
 8c8:	b8 00 00 00 00       	mov    $0x0,%eax
 8cd:	eb 13                	jmp    8e2 <malloc+0xde>
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8d2:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8d8:	8b 00                	mov    (%eax),%eax
 8da:	89 45 f4             	mov    %eax,-0xc(%ebp)
  }
 8dd:	e9 70 ff ff ff       	jmp    852 <malloc+0x4e>
}
 8e2:	c9                   	leave  
 8e3:	c3                   	ret    
