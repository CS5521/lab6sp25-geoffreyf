
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
   6:	83 ec 10             	sub    $0x10,%esp
   printf(1, "number of forks when program starts: %d\n", fkc(1));
   9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  10:	e8 cb 03 00 00       	call   3e0 <fkc>
  15:	89 44 24 08          	mov    %eax,0x8(%esp)
  19:	c7 44 24 04 94 08 00 	movl   $0x894,0x4(%esp)
  20:	00 
  21:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  28:	e8 9b 04 00 00       	call   4c8 <printf>
   fork();
  2d:	e8 fe 02 00 00       	call   330 <fork>
   fork();
  32:	e8 f9 02 00 00       	call   330 <fork>
   printf(1, "number of forks after two more forks: %d\n", fkc(1));
  37:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  3e:	e8 9d 03 00 00       	call   3e0 <fkc>
  43:	89 44 24 08          	mov    %eax,0x8(%esp)
  47:	c7 44 24 04 c0 08 00 	movl   $0x8c0,0x4(%esp)
  4e:	00 
  4f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  56:	e8 6d 04 00 00       	call   4c8 <printf>
   printf(1, "number of forks after forks cleared: %d\n", fkc(0));
  5b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  62:	e8 79 03 00 00       	call   3e0 <fkc>
  67:	89 44 24 08          	mov    %eax,0x8(%esp)
  6b:	c7 44 24 04 ec 08 00 	movl   $0x8ec,0x4(%esp)
  72:	00 
  73:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  7a:	e8 49 04 00 00       	call   4c8 <printf>
   fork();
  7f:	e8 ac 02 00 00       	call   330 <fork>
   fork();
  84:	e8 a7 02 00 00       	call   330 <fork>
   fork();
  89:	e8 a2 02 00 00       	call   330 <fork>
   printf(1, "number of forks after three more forks: %d\n", fkc(1));
  8e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  95:	e8 46 03 00 00       	call   3e0 <fkc>
  9a:	89 44 24 08          	mov    %eax,0x8(%esp)
  9e:	c7 44 24 04 18 09 00 	movl   $0x918,0x4(%esp)
  a5:	00 
  a6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  ad:	e8 16 04 00 00       	call   4c8 <printf>
   wait();
  b2:	e8 89 02 00 00       	call   340 <wait>
   wait();
  b7:	e8 84 02 00 00       	call   340 <wait>
   wait();
  bc:	e8 7f 02 00 00       	call   340 <wait>
   wait();
  c1:	e8 7a 02 00 00       	call   340 <wait>
   wait();
  c6:	e8 75 02 00 00       	call   340 <wait>
   exit();
  cb:	e8 68 02 00 00       	call   338 <exit>

000000d0 <stosb>:
               "cc");
}

static inline void
stosb(void *addr, int data, int cnt)
{
  d0:	55                   	push   %ebp
  d1:	89 e5                	mov    %esp,%ebp
  d3:	57                   	push   %edi
  d4:	53                   	push   %ebx
  asm volatile("cld; rep stosb" :
  d5:	8b 4d 08             	mov    0x8(%ebp),%ecx
  d8:	8b 55 10             	mov    0x10(%ebp),%edx
  db:	8b 45 0c             	mov    0xc(%ebp),%eax
  de:	89 cb                	mov    %ecx,%ebx
  e0:	89 df                	mov    %ebx,%edi
  e2:	89 d1                	mov    %edx,%ecx
  e4:	fc                   	cld    
  e5:	f3 aa                	rep stos %al,%es:(%edi)
  e7:	89 ca                	mov    %ecx,%edx
  e9:	89 fb                	mov    %edi,%ebx
  eb:	89 5d 08             	mov    %ebx,0x8(%ebp)
  ee:	89 55 10             	mov    %edx,0x10(%ebp)
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
  f1:	5b                   	pop    %ebx
  f2:	5f                   	pop    %edi
  f3:	5d                   	pop    %ebp
  f4:	c3                   	ret    

000000f5 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
  f5:	55                   	push   %ebp
  f6:	89 e5                	mov    %esp,%ebp
  f8:	83 ec 10             	sub    $0x10,%esp
  char *os;

  os = s;
  fb:	8b 45 08             	mov    0x8(%ebp),%eax
  fe:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while((*s++ = *t++) != 0)
 101:	90                   	nop
 102:	8b 45 08             	mov    0x8(%ebp),%eax
 105:	8d 50 01             	lea    0x1(%eax),%edx
 108:	89 55 08             	mov    %edx,0x8(%ebp)
 10b:	8b 55 0c             	mov    0xc(%ebp),%edx
 10e:	8d 4a 01             	lea    0x1(%edx),%ecx
 111:	89 4d 0c             	mov    %ecx,0xc(%ebp)
 114:	0f b6 12             	movzbl (%edx),%edx
 117:	88 10                	mov    %dl,(%eax)
 119:	0f b6 00             	movzbl (%eax),%eax
 11c:	84 c0                	test   %al,%al
 11e:	75 e2                	jne    102 <strcpy+0xd>
    ;
  return os;
 120:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 123:	c9                   	leave  
 124:	c3                   	ret    

00000125 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 125:	55                   	push   %ebp
 126:	89 e5                	mov    %esp,%ebp
  while(*p && *p == *q)
 128:	eb 08                	jmp    132 <strcmp+0xd>
    p++, q++;
 12a:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 12e:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  while(*p && *p == *q)
 132:	8b 45 08             	mov    0x8(%ebp),%eax
 135:	0f b6 00             	movzbl (%eax),%eax
 138:	84 c0                	test   %al,%al
 13a:	74 10                	je     14c <strcmp+0x27>
 13c:	8b 45 08             	mov    0x8(%ebp),%eax
 13f:	0f b6 10             	movzbl (%eax),%edx
 142:	8b 45 0c             	mov    0xc(%ebp),%eax
 145:	0f b6 00             	movzbl (%eax),%eax
 148:	38 c2                	cmp    %al,%dl
 14a:	74 de                	je     12a <strcmp+0x5>
  return (uchar)*p - (uchar)*q;
 14c:	8b 45 08             	mov    0x8(%ebp),%eax
 14f:	0f b6 00             	movzbl (%eax),%eax
 152:	0f b6 d0             	movzbl %al,%edx
 155:	8b 45 0c             	mov    0xc(%ebp),%eax
 158:	0f b6 00             	movzbl (%eax),%eax
 15b:	0f b6 c0             	movzbl %al,%eax
 15e:	29 c2                	sub    %eax,%edx
 160:	89 d0                	mov    %edx,%eax
}
 162:	5d                   	pop    %ebp
 163:	c3                   	ret    

00000164 <strlen>:

uint
strlen(const char *s)
{
 164:	55                   	push   %ebp
 165:	89 e5                	mov    %esp,%ebp
 167:	83 ec 10             	sub    $0x10,%esp
  int n;

  for(n = 0; s[n]; n++)
 16a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 171:	eb 04                	jmp    177 <strlen+0x13>
 173:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 177:	8b 55 fc             	mov    -0x4(%ebp),%edx
 17a:	8b 45 08             	mov    0x8(%ebp),%eax
 17d:	01 d0                	add    %edx,%eax
 17f:	0f b6 00             	movzbl (%eax),%eax
 182:	84 c0                	test   %al,%al
 184:	75 ed                	jne    173 <strlen+0xf>
    ;
  return n;
 186:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 189:	c9                   	leave  
 18a:	c3                   	ret    

0000018b <memset>:

void*
memset(void *dst, int c, uint n)
{
 18b:	55                   	push   %ebp
 18c:	89 e5                	mov    %esp,%ebp
 18e:	83 ec 0c             	sub    $0xc,%esp
  stosb(dst, c, n);
 191:	8b 45 10             	mov    0x10(%ebp),%eax
 194:	89 44 24 08          	mov    %eax,0x8(%esp)
 198:	8b 45 0c             	mov    0xc(%ebp),%eax
 19b:	89 44 24 04          	mov    %eax,0x4(%esp)
 19f:	8b 45 08             	mov    0x8(%ebp),%eax
 1a2:	89 04 24             	mov    %eax,(%esp)
 1a5:	e8 26 ff ff ff       	call   d0 <stosb>
  return dst;
 1aa:	8b 45 08             	mov    0x8(%ebp),%eax
}
 1ad:	c9                   	leave  
 1ae:	c3                   	ret    

000001af <strchr>:

char*
strchr(const char *s, char c)
{
 1af:	55                   	push   %ebp
 1b0:	89 e5                	mov    %esp,%ebp
 1b2:	83 ec 04             	sub    $0x4,%esp
 1b5:	8b 45 0c             	mov    0xc(%ebp),%eax
 1b8:	88 45 fc             	mov    %al,-0x4(%ebp)
  for(; *s; s++)
 1bb:	eb 14                	jmp    1d1 <strchr+0x22>
    if(*s == c)
 1bd:	8b 45 08             	mov    0x8(%ebp),%eax
 1c0:	0f b6 00             	movzbl (%eax),%eax
 1c3:	3a 45 fc             	cmp    -0x4(%ebp),%al
 1c6:	75 05                	jne    1cd <strchr+0x1e>
      return (char*)s;
 1c8:	8b 45 08             	mov    0x8(%ebp),%eax
 1cb:	eb 13                	jmp    1e0 <strchr+0x31>
  for(; *s; s++)
 1cd:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 1d1:	8b 45 08             	mov    0x8(%ebp),%eax
 1d4:	0f b6 00             	movzbl (%eax),%eax
 1d7:	84 c0                	test   %al,%al
 1d9:	75 e2                	jne    1bd <strchr+0xe>
  return 0;
 1db:	b8 00 00 00 00       	mov    $0x0,%eax
}
 1e0:	c9                   	leave  
 1e1:	c3                   	ret    

000001e2 <gets>:

char*
gets(char *buf, int max)
{
 1e2:	55                   	push   %ebp
 1e3:	89 e5                	mov    %esp,%ebp
 1e5:	83 ec 28             	sub    $0x28,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 1e8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 1ef:	eb 4c                	jmp    23d <gets+0x5b>
    cc = read(0, &c, 1);
 1f1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 1f8:	00 
 1f9:	8d 45 ef             	lea    -0x11(%ebp),%eax
 1fc:	89 44 24 04          	mov    %eax,0x4(%esp)
 200:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 207:	e8 44 01 00 00       	call   350 <read>
 20c:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if(cc < 1)
 20f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 213:	7f 02                	jg     217 <gets+0x35>
      break;
 215:	eb 31                	jmp    248 <gets+0x66>
    buf[i++] = c;
 217:	8b 45 f4             	mov    -0xc(%ebp),%eax
 21a:	8d 50 01             	lea    0x1(%eax),%edx
 21d:	89 55 f4             	mov    %edx,-0xc(%ebp)
 220:	89 c2                	mov    %eax,%edx
 222:	8b 45 08             	mov    0x8(%ebp),%eax
 225:	01 c2                	add    %eax,%edx
 227:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 22b:	88 02                	mov    %al,(%edx)
    if(c == '\n' || c == '\r')
 22d:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 231:	3c 0a                	cmp    $0xa,%al
 233:	74 13                	je     248 <gets+0x66>
 235:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 239:	3c 0d                	cmp    $0xd,%al
 23b:	74 0b                	je     248 <gets+0x66>
  for(i=0; i+1 < max; ){
 23d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 240:	83 c0 01             	add    $0x1,%eax
 243:	3b 45 0c             	cmp    0xc(%ebp),%eax
 246:	7c a9                	jl     1f1 <gets+0xf>
      break;
  }
  buf[i] = '\0';
 248:	8b 55 f4             	mov    -0xc(%ebp),%edx
 24b:	8b 45 08             	mov    0x8(%ebp),%eax
 24e:	01 d0                	add    %edx,%eax
 250:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
 253:	8b 45 08             	mov    0x8(%ebp),%eax
}
 256:	c9                   	leave  
 257:	c3                   	ret    

00000258 <stat>:

int
stat(const char *n, struct stat *st)
{
 258:	55                   	push   %ebp
 259:	89 e5                	mov    %esp,%ebp
 25b:	83 ec 28             	sub    $0x28,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 25e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 265:	00 
 266:	8b 45 08             	mov    0x8(%ebp),%eax
 269:	89 04 24             	mov    %eax,(%esp)
 26c:	e8 07 01 00 00       	call   378 <open>
 271:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(fd < 0)
 274:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 278:	79 07                	jns    281 <stat+0x29>
    return -1;
 27a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 27f:	eb 23                	jmp    2a4 <stat+0x4c>
  r = fstat(fd, st);
 281:	8b 45 0c             	mov    0xc(%ebp),%eax
 284:	89 44 24 04          	mov    %eax,0x4(%esp)
 288:	8b 45 f4             	mov    -0xc(%ebp),%eax
 28b:	89 04 24             	mov    %eax,(%esp)
 28e:	e8 fd 00 00 00       	call   390 <fstat>
 293:	89 45 f0             	mov    %eax,-0x10(%ebp)
  close(fd);
 296:	8b 45 f4             	mov    -0xc(%ebp),%eax
 299:	89 04 24             	mov    %eax,(%esp)
 29c:	e8 bf 00 00 00       	call   360 <close>
  return r;
 2a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
 2a4:	c9                   	leave  
 2a5:	c3                   	ret    

000002a6 <atoi>:

int
atoi(const char *s)
{
 2a6:	55                   	push   %ebp
 2a7:	89 e5                	mov    %esp,%ebp
 2a9:	83 ec 10             	sub    $0x10,%esp
  int n;

  n = 0;
 2ac:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 2b3:	eb 25                	jmp    2da <atoi+0x34>
    n = n*10 + *s++ - '0';
 2b5:	8b 55 fc             	mov    -0x4(%ebp),%edx
 2b8:	89 d0                	mov    %edx,%eax
 2ba:	c1 e0 02             	shl    $0x2,%eax
 2bd:	01 d0                	add    %edx,%eax
 2bf:	01 c0                	add    %eax,%eax
 2c1:	89 c1                	mov    %eax,%ecx
 2c3:	8b 45 08             	mov    0x8(%ebp),%eax
 2c6:	8d 50 01             	lea    0x1(%eax),%edx
 2c9:	89 55 08             	mov    %edx,0x8(%ebp)
 2cc:	0f b6 00             	movzbl (%eax),%eax
 2cf:	0f be c0             	movsbl %al,%eax
 2d2:	01 c8                	add    %ecx,%eax
 2d4:	83 e8 30             	sub    $0x30,%eax
 2d7:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 2da:	8b 45 08             	mov    0x8(%ebp),%eax
 2dd:	0f b6 00             	movzbl (%eax),%eax
 2e0:	3c 2f                	cmp    $0x2f,%al
 2e2:	7e 0a                	jle    2ee <atoi+0x48>
 2e4:	8b 45 08             	mov    0x8(%ebp),%eax
 2e7:	0f b6 00             	movzbl (%eax),%eax
 2ea:	3c 39                	cmp    $0x39,%al
 2ec:	7e c7                	jle    2b5 <atoi+0xf>
  return n;
 2ee:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 2f1:	c9                   	leave  
 2f2:	c3                   	ret    

000002f3 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 2f3:	55                   	push   %ebp
 2f4:	89 e5                	mov    %esp,%ebp
 2f6:	83 ec 10             	sub    $0x10,%esp
  char *dst;
  const char *src;

  dst = vdst;
 2f9:	8b 45 08             	mov    0x8(%ebp),%eax
 2fc:	89 45 fc             	mov    %eax,-0x4(%ebp)
  src = vsrc;
 2ff:	8b 45 0c             	mov    0xc(%ebp),%eax
 302:	89 45 f8             	mov    %eax,-0x8(%ebp)
  while(n-- > 0)
 305:	eb 17                	jmp    31e <memmove+0x2b>
    *dst++ = *src++;
 307:	8b 45 fc             	mov    -0x4(%ebp),%eax
 30a:	8d 50 01             	lea    0x1(%eax),%edx
 30d:	89 55 fc             	mov    %edx,-0x4(%ebp)
 310:	8b 55 f8             	mov    -0x8(%ebp),%edx
 313:	8d 4a 01             	lea    0x1(%edx),%ecx
 316:	89 4d f8             	mov    %ecx,-0x8(%ebp)
 319:	0f b6 12             	movzbl (%edx),%edx
 31c:	88 10                	mov    %dl,(%eax)
  while(n-- > 0)
 31e:	8b 45 10             	mov    0x10(%ebp),%eax
 321:	8d 50 ff             	lea    -0x1(%eax),%edx
 324:	89 55 10             	mov    %edx,0x10(%ebp)
 327:	85 c0                	test   %eax,%eax
 329:	7f dc                	jg     307 <memmove+0x14>
  return vdst;
 32b:	8b 45 08             	mov    0x8(%ebp),%eax
}
 32e:	c9                   	leave  
 32f:	c3                   	ret    

00000330 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 330:	b8 01 00 00 00       	mov    $0x1,%eax
 335:	cd 40                	int    $0x40
 337:	c3                   	ret    

00000338 <exit>:
SYSCALL(exit)
 338:	b8 02 00 00 00       	mov    $0x2,%eax
 33d:	cd 40                	int    $0x40
 33f:	c3                   	ret    

00000340 <wait>:
SYSCALL(wait)
 340:	b8 03 00 00 00       	mov    $0x3,%eax
 345:	cd 40                	int    $0x40
 347:	c3                   	ret    

00000348 <pipe>:
SYSCALL(pipe)
 348:	b8 04 00 00 00       	mov    $0x4,%eax
 34d:	cd 40                	int    $0x40
 34f:	c3                   	ret    

00000350 <read>:
SYSCALL(read)
 350:	b8 05 00 00 00       	mov    $0x5,%eax
 355:	cd 40                	int    $0x40
 357:	c3                   	ret    

00000358 <write>:
SYSCALL(write)
 358:	b8 10 00 00 00       	mov    $0x10,%eax
 35d:	cd 40                	int    $0x40
 35f:	c3                   	ret    

00000360 <close>:
SYSCALL(close)
 360:	b8 15 00 00 00       	mov    $0x15,%eax
 365:	cd 40                	int    $0x40
 367:	c3                   	ret    

00000368 <kill>:
SYSCALL(kill)
 368:	b8 06 00 00 00       	mov    $0x6,%eax
 36d:	cd 40                	int    $0x40
 36f:	c3                   	ret    

00000370 <exec>:
SYSCALL(exec)
 370:	b8 07 00 00 00       	mov    $0x7,%eax
 375:	cd 40                	int    $0x40
 377:	c3                   	ret    

00000378 <open>:
SYSCALL(open)
 378:	b8 0f 00 00 00       	mov    $0xf,%eax
 37d:	cd 40                	int    $0x40
 37f:	c3                   	ret    

00000380 <mknod>:
SYSCALL(mknod)
 380:	b8 11 00 00 00       	mov    $0x11,%eax
 385:	cd 40                	int    $0x40
 387:	c3                   	ret    

00000388 <unlink>:
SYSCALL(unlink)
 388:	b8 12 00 00 00       	mov    $0x12,%eax
 38d:	cd 40                	int    $0x40
 38f:	c3                   	ret    

00000390 <fstat>:
SYSCALL(fstat)
 390:	b8 08 00 00 00       	mov    $0x8,%eax
 395:	cd 40                	int    $0x40
 397:	c3                   	ret    

00000398 <link>:
SYSCALL(link)
 398:	b8 13 00 00 00       	mov    $0x13,%eax
 39d:	cd 40                	int    $0x40
 39f:	c3                   	ret    

000003a0 <mkdir>:
SYSCALL(mkdir)
 3a0:	b8 14 00 00 00       	mov    $0x14,%eax
 3a5:	cd 40                	int    $0x40
 3a7:	c3                   	ret    

000003a8 <chdir>:
SYSCALL(chdir)
 3a8:	b8 09 00 00 00       	mov    $0x9,%eax
 3ad:	cd 40                	int    $0x40
 3af:	c3                   	ret    

000003b0 <dup>:
SYSCALL(dup)
 3b0:	b8 0a 00 00 00       	mov    $0xa,%eax
 3b5:	cd 40                	int    $0x40
 3b7:	c3                   	ret    

000003b8 <getpid>:
SYSCALL(getpid)
 3b8:	b8 0b 00 00 00       	mov    $0xb,%eax
 3bd:	cd 40                	int    $0x40
 3bf:	c3                   	ret    

000003c0 <sbrk>:
SYSCALL(sbrk)
 3c0:	b8 0c 00 00 00       	mov    $0xc,%eax
 3c5:	cd 40                	int    $0x40
 3c7:	c3                   	ret    

000003c8 <sleep>:
SYSCALL(sleep)
 3c8:	b8 0d 00 00 00       	mov    $0xd,%eax
 3cd:	cd 40                	int    $0x40
 3cf:	c3                   	ret    

000003d0 <uptime>:
SYSCALL(uptime)
 3d0:	b8 0e 00 00 00       	mov    $0xe,%eax
 3d5:	cd 40                	int    $0x40
 3d7:	c3                   	ret    

000003d8 <hw>:
SYSCALL(hw)
 3d8:	b8 16 00 00 00       	mov    $0x16,%eax
 3dd:	cd 40                	int    $0x40
 3df:	c3                   	ret    

000003e0 <fkc>:
SYSCALL(fkc)
 3e0:	b8 17 00 00 00       	mov    $0x17,%eax
 3e5:	cd 40                	int    $0x40
 3e7:	c3                   	ret    

000003e8 <putc>:
#include "stat.h"
#include "user.h"

static void
putc(int fd, char c)
{
 3e8:	55                   	push   %ebp
 3e9:	89 e5                	mov    %esp,%ebp
 3eb:	83 ec 18             	sub    $0x18,%esp
 3ee:	8b 45 0c             	mov    0xc(%ebp),%eax
 3f1:	88 45 f4             	mov    %al,-0xc(%ebp)
  write(fd, &c, 1);
 3f4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 3fb:	00 
 3fc:	8d 45 f4             	lea    -0xc(%ebp),%eax
 3ff:	89 44 24 04          	mov    %eax,0x4(%esp)
 403:	8b 45 08             	mov    0x8(%ebp),%eax
 406:	89 04 24             	mov    %eax,(%esp)
 409:	e8 4a ff ff ff       	call   358 <write>
}
 40e:	c9                   	leave  
 40f:	c3                   	ret    

00000410 <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	56                   	push   %esi
 414:	53                   	push   %ebx
 415:	83 ec 30             	sub    $0x30,%esp
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 418:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  if(sgn && xx < 0){
 41f:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 423:	74 17                	je     43c <printint+0x2c>
 425:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 429:	79 11                	jns    43c <printint+0x2c>
    neg = 1;
 42b:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    x = -xx;
 432:	8b 45 0c             	mov    0xc(%ebp),%eax
 435:	f7 d8                	neg    %eax
 437:	89 45 ec             	mov    %eax,-0x14(%ebp)
 43a:	eb 06                	jmp    442 <printint+0x32>
  } else {
    x = xx;
 43c:	8b 45 0c             	mov    0xc(%ebp),%eax
 43f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  }

  i = 0;
 442:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  do{
    buf[i++] = digits[x % base];
 449:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 44c:	8d 41 01             	lea    0x1(%ecx),%eax
 44f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 452:	8b 5d 10             	mov    0x10(%ebp),%ebx
 455:	8b 45 ec             	mov    -0x14(%ebp),%eax
 458:	ba 00 00 00 00       	mov    $0x0,%edx
 45d:	f7 f3                	div    %ebx
 45f:	89 d0                	mov    %edx,%eax
 461:	0f b6 80 90 0b 00 00 	movzbl 0xb90(%eax),%eax
 468:	88 44 0d dc          	mov    %al,-0x24(%ebp,%ecx,1)
  }while((x /= base) != 0);
 46c:	8b 75 10             	mov    0x10(%ebp),%esi
 46f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 472:	ba 00 00 00 00       	mov    $0x0,%edx
 477:	f7 f6                	div    %esi
 479:	89 45 ec             	mov    %eax,-0x14(%ebp)
 47c:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 480:	75 c7                	jne    449 <printint+0x39>
  if(neg)
 482:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 486:	74 10                	je     498 <printint+0x88>
    buf[i++] = '-';
 488:	8b 45 f4             	mov    -0xc(%ebp),%eax
 48b:	8d 50 01             	lea    0x1(%eax),%edx
 48e:	89 55 f4             	mov    %edx,-0xc(%ebp)
 491:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)

  while(--i >= 0)
 496:	eb 1f                	jmp    4b7 <printint+0xa7>
 498:	eb 1d                	jmp    4b7 <printint+0xa7>
    putc(fd, buf[i]);
 49a:	8d 55 dc             	lea    -0x24(%ebp),%edx
 49d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 4a0:	01 d0                	add    %edx,%eax
 4a2:	0f b6 00             	movzbl (%eax),%eax
 4a5:	0f be c0             	movsbl %al,%eax
 4a8:	89 44 24 04          	mov    %eax,0x4(%esp)
 4ac:	8b 45 08             	mov    0x8(%ebp),%eax
 4af:	89 04 24             	mov    %eax,(%esp)
 4b2:	e8 31 ff ff ff       	call   3e8 <putc>
  while(--i >= 0)
 4b7:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
 4bb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 4bf:	79 d9                	jns    49a <printint+0x8a>
}
 4c1:	83 c4 30             	add    $0x30,%esp
 4c4:	5b                   	pop    %ebx
 4c5:	5e                   	pop    %esi
 4c6:	5d                   	pop    %ebp
 4c7:	c3                   	ret    

000004c8 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 4c8:	55                   	push   %ebp
 4c9:	89 e5                	mov    %esp,%ebp
 4cb:	83 ec 38             	sub    $0x38,%esp
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 4ce:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  ap = (uint*)(void*)&fmt + 1;
 4d5:	8d 45 0c             	lea    0xc(%ebp),%eax
 4d8:	83 c0 04             	add    $0x4,%eax
 4db:	89 45 e8             	mov    %eax,-0x18(%ebp)
  for(i = 0; fmt[i]; i++){
 4de:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 4e5:	e9 7c 01 00 00       	jmp    666 <printf+0x19e>
    c = fmt[i] & 0xff;
 4ea:	8b 55 0c             	mov    0xc(%ebp),%edx
 4ed:	8b 45 f0             	mov    -0x10(%ebp),%eax
 4f0:	01 d0                	add    %edx,%eax
 4f2:	0f b6 00             	movzbl (%eax),%eax
 4f5:	0f be c0             	movsbl %al,%eax
 4f8:	25 ff 00 00 00       	and    $0xff,%eax
 4fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    if(state == 0){
 500:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 504:	75 2c                	jne    532 <printf+0x6a>
      if(c == '%'){
 506:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 50a:	75 0c                	jne    518 <printf+0x50>
        state = '%';
 50c:	c7 45 ec 25 00 00 00 	movl   $0x25,-0x14(%ebp)
 513:	e9 4a 01 00 00       	jmp    662 <printf+0x19a>
      } else {
        putc(fd, c);
 518:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 51b:	0f be c0             	movsbl %al,%eax
 51e:	89 44 24 04          	mov    %eax,0x4(%esp)
 522:	8b 45 08             	mov    0x8(%ebp),%eax
 525:	89 04 24             	mov    %eax,(%esp)
 528:	e8 bb fe ff ff       	call   3e8 <putc>
 52d:	e9 30 01 00 00       	jmp    662 <printf+0x19a>
      }
    } else if(state == '%'){
 532:	83 7d ec 25          	cmpl   $0x25,-0x14(%ebp)
 536:	0f 85 26 01 00 00    	jne    662 <printf+0x19a>
      if(c == 'd'){
 53c:	83 7d e4 64          	cmpl   $0x64,-0x1c(%ebp)
 540:	75 2d                	jne    56f <printf+0xa7>
        printint(fd, *ap, 10, 1);
 542:	8b 45 e8             	mov    -0x18(%ebp),%eax
 545:	8b 00                	mov    (%eax),%eax
 547:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 54e:	00 
 54f:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 556:	00 
 557:	89 44 24 04          	mov    %eax,0x4(%esp)
 55b:	8b 45 08             	mov    0x8(%ebp),%eax
 55e:	89 04 24             	mov    %eax,(%esp)
 561:	e8 aa fe ff ff       	call   410 <printint>
        ap++;
 566:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 56a:	e9 ec 00 00 00       	jmp    65b <printf+0x193>
      } else if(c == 'x' || c == 'p'){
 56f:	83 7d e4 78          	cmpl   $0x78,-0x1c(%ebp)
 573:	74 06                	je     57b <printf+0xb3>
 575:	83 7d e4 70          	cmpl   $0x70,-0x1c(%ebp)
 579:	75 2d                	jne    5a8 <printf+0xe0>
        printint(fd, *ap, 16, 0);
 57b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 57e:	8b 00                	mov    (%eax),%eax
 580:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 587:	00 
 588:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 58f:	00 
 590:	89 44 24 04          	mov    %eax,0x4(%esp)
 594:	8b 45 08             	mov    0x8(%ebp),%eax
 597:	89 04 24             	mov    %eax,(%esp)
 59a:	e8 71 fe ff ff       	call   410 <printint>
        ap++;
 59f:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 5a3:	e9 b3 00 00 00       	jmp    65b <printf+0x193>
      } else if(c == 's'){
 5a8:	83 7d e4 73          	cmpl   $0x73,-0x1c(%ebp)
 5ac:	75 45                	jne    5f3 <printf+0x12b>
        s = (char*)*ap;
 5ae:	8b 45 e8             	mov    -0x18(%ebp),%eax
 5b1:	8b 00                	mov    (%eax),%eax
 5b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
        ap++;
 5b6:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
        if(s == 0)
 5ba:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 5be:	75 09                	jne    5c9 <printf+0x101>
          s = "(null)";
 5c0:	c7 45 f4 44 09 00 00 	movl   $0x944,-0xc(%ebp)
        while(*s != 0){
 5c7:	eb 1e                	jmp    5e7 <printf+0x11f>
 5c9:	eb 1c                	jmp    5e7 <printf+0x11f>
          putc(fd, *s);
 5cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 5ce:	0f b6 00             	movzbl (%eax),%eax
 5d1:	0f be c0             	movsbl %al,%eax
 5d4:	89 44 24 04          	mov    %eax,0x4(%esp)
 5d8:	8b 45 08             	mov    0x8(%ebp),%eax
 5db:	89 04 24             	mov    %eax,(%esp)
 5de:	e8 05 fe ff ff       	call   3e8 <putc>
          s++;
 5e3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
        while(*s != 0){
 5e7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 5ea:	0f b6 00             	movzbl (%eax),%eax
 5ed:	84 c0                	test   %al,%al
 5ef:	75 da                	jne    5cb <printf+0x103>
 5f1:	eb 68                	jmp    65b <printf+0x193>
        }
      } else if(c == 'c'){
 5f3:	83 7d e4 63          	cmpl   $0x63,-0x1c(%ebp)
 5f7:	75 1d                	jne    616 <printf+0x14e>
        putc(fd, *ap);
 5f9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 5fc:	8b 00                	mov    (%eax),%eax
 5fe:	0f be c0             	movsbl %al,%eax
 601:	89 44 24 04          	mov    %eax,0x4(%esp)
 605:	8b 45 08             	mov    0x8(%ebp),%eax
 608:	89 04 24             	mov    %eax,(%esp)
 60b:	e8 d8 fd ff ff       	call   3e8 <putc>
        ap++;
 610:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 614:	eb 45                	jmp    65b <printf+0x193>
      } else if(c == '%'){
 616:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 61a:	75 17                	jne    633 <printf+0x16b>
        putc(fd, c);
 61c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 61f:	0f be c0             	movsbl %al,%eax
 622:	89 44 24 04          	mov    %eax,0x4(%esp)
 626:	8b 45 08             	mov    0x8(%ebp),%eax
 629:	89 04 24             	mov    %eax,(%esp)
 62c:	e8 b7 fd ff ff       	call   3e8 <putc>
 631:	eb 28                	jmp    65b <printf+0x193>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 633:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
 63a:	00 
 63b:	8b 45 08             	mov    0x8(%ebp),%eax
 63e:	89 04 24             	mov    %eax,(%esp)
 641:	e8 a2 fd ff ff       	call   3e8 <putc>
        putc(fd, c);
 646:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 649:	0f be c0             	movsbl %al,%eax
 64c:	89 44 24 04          	mov    %eax,0x4(%esp)
 650:	8b 45 08             	mov    0x8(%ebp),%eax
 653:	89 04 24             	mov    %eax,(%esp)
 656:	e8 8d fd ff ff       	call   3e8 <putc>
      }
      state = 0;
 65b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  for(i = 0; fmt[i]; i++){
 662:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 666:	8b 55 0c             	mov    0xc(%ebp),%edx
 669:	8b 45 f0             	mov    -0x10(%ebp),%eax
 66c:	01 d0                	add    %edx,%eax
 66e:	0f b6 00             	movzbl (%eax),%eax
 671:	84 c0                	test   %al,%al
 673:	0f 85 71 fe ff ff    	jne    4ea <printf+0x22>
    }
  }
}
 679:	c9                   	leave  
 67a:	c3                   	ret    

0000067b <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 67b:	55                   	push   %ebp
 67c:	89 e5                	mov    %esp,%ebp
 67e:	83 ec 10             	sub    $0x10,%esp
  Header *bp, *p;

  bp = (Header*)ap - 1;
 681:	8b 45 08             	mov    0x8(%ebp),%eax
 684:	83 e8 08             	sub    $0x8,%eax
 687:	89 45 f8             	mov    %eax,-0x8(%ebp)
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 68a:	a1 ac 0b 00 00       	mov    0xbac,%eax
 68f:	89 45 fc             	mov    %eax,-0x4(%ebp)
 692:	eb 24                	jmp    6b8 <free+0x3d>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 694:	8b 45 fc             	mov    -0x4(%ebp),%eax
 697:	8b 00                	mov    (%eax),%eax
 699:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 69c:	77 12                	ja     6b0 <free+0x35>
 69e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 6a1:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 6a4:	77 24                	ja     6ca <free+0x4f>
 6a6:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6a9:	8b 00                	mov    (%eax),%eax
 6ab:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 6ae:	77 1a                	ja     6ca <free+0x4f>
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6b0:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6b3:	8b 00                	mov    (%eax),%eax
 6b5:	89 45 fc             	mov    %eax,-0x4(%ebp)
 6b8:	8b 45 f8             	mov    -0x8(%ebp),%eax
 6bb:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 6be:	76 d4                	jbe    694 <free+0x19>
 6c0:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6c3:	8b 00                	mov    (%eax),%eax
 6c5:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 6c8:	76 ca                	jbe    694 <free+0x19>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6ca:	8b 45 f8             	mov    -0x8(%ebp),%eax
 6cd:	8b 40 04             	mov    0x4(%eax),%eax
 6d0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 6d7:	8b 45 f8             	mov    -0x8(%ebp),%eax
 6da:	01 c2                	add    %eax,%edx
 6dc:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6df:	8b 00                	mov    (%eax),%eax
 6e1:	39 c2                	cmp    %eax,%edx
 6e3:	75 24                	jne    709 <free+0x8e>
    bp->s.size += p->s.ptr->s.size;
 6e5:	8b 45 f8             	mov    -0x8(%ebp),%eax
 6e8:	8b 50 04             	mov    0x4(%eax),%edx
 6eb:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6ee:	8b 00                	mov    (%eax),%eax
 6f0:	8b 40 04             	mov    0x4(%eax),%eax
 6f3:	01 c2                	add    %eax,%edx
 6f5:	8b 45 f8             	mov    -0x8(%ebp),%eax
 6f8:	89 50 04             	mov    %edx,0x4(%eax)
    bp->s.ptr = p->s.ptr->s.ptr;
 6fb:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6fe:	8b 00                	mov    (%eax),%eax
 700:	8b 10                	mov    (%eax),%edx
 702:	8b 45 f8             	mov    -0x8(%ebp),%eax
 705:	89 10                	mov    %edx,(%eax)
 707:	eb 0a                	jmp    713 <free+0x98>
  } else
    bp->s.ptr = p->s.ptr;
 709:	8b 45 fc             	mov    -0x4(%ebp),%eax
 70c:	8b 10                	mov    (%eax),%edx
 70e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 711:	89 10                	mov    %edx,(%eax)
  if(p + p->s.size == bp){
 713:	8b 45 fc             	mov    -0x4(%ebp),%eax
 716:	8b 40 04             	mov    0x4(%eax),%eax
 719:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 720:	8b 45 fc             	mov    -0x4(%ebp),%eax
 723:	01 d0                	add    %edx,%eax
 725:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 728:	75 20                	jne    74a <free+0xcf>
    p->s.size += bp->s.size;
 72a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 72d:	8b 50 04             	mov    0x4(%eax),%edx
 730:	8b 45 f8             	mov    -0x8(%ebp),%eax
 733:	8b 40 04             	mov    0x4(%eax),%eax
 736:	01 c2                	add    %eax,%edx
 738:	8b 45 fc             	mov    -0x4(%ebp),%eax
 73b:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 73e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 741:	8b 10                	mov    (%eax),%edx
 743:	8b 45 fc             	mov    -0x4(%ebp),%eax
 746:	89 10                	mov    %edx,(%eax)
 748:	eb 08                	jmp    752 <free+0xd7>
  } else
    p->s.ptr = bp;
 74a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 74d:	8b 55 f8             	mov    -0x8(%ebp),%edx
 750:	89 10                	mov    %edx,(%eax)
  freep = p;
 752:	8b 45 fc             	mov    -0x4(%ebp),%eax
 755:	a3 ac 0b 00 00       	mov    %eax,0xbac
}
 75a:	c9                   	leave  
 75b:	c3                   	ret    

0000075c <morecore>:

static Header*
morecore(uint nu)
{
 75c:	55                   	push   %ebp
 75d:	89 e5                	mov    %esp,%ebp
 75f:	83 ec 28             	sub    $0x28,%esp
  char *p;
  Header *hp;

  if(nu < 4096)
 762:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 769:	77 07                	ja     772 <morecore+0x16>
    nu = 4096;
 76b:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
  p = sbrk(nu * sizeof(Header));
 772:	8b 45 08             	mov    0x8(%ebp),%eax
 775:	c1 e0 03             	shl    $0x3,%eax
 778:	89 04 24             	mov    %eax,(%esp)
 77b:	e8 40 fc ff ff       	call   3c0 <sbrk>
 780:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(p == (char*)-1)
 783:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
 787:	75 07                	jne    790 <morecore+0x34>
    return 0;
 789:	b8 00 00 00 00       	mov    $0x0,%eax
 78e:	eb 22                	jmp    7b2 <morecore+0x56>
  hp = (Header*)p;
 790:	8b 45 f4             	mov    -0xc(%ebp),%eax
 793:	89 45 f0             	mov    %eax,-0x10(%ebp)
  hp->s.size = nu;
 796:	8b 45 f0             	mov    -0x10(%ebp),%eax
 799:	8b 55 08             	mov    0x8(%ebp),%edx
 79c:	89 50 04             	mov    %edx,0x4(%eax)
  free((void*)(hp + 1));
 79f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7a2:	83 c0 08             	add    $0x8,%eax
 7a5:	89 04 24             	mov    %eax,(%esp)
 7a8:	e8 ce fe ff ff       	call   67b <free>
  return freep;
 7ad:	a1 ac 0b 00 00       	mov    0xbac,%eax
}
 7b2:	c9                   	leave  
 7b3:	c3                   	ret    

000007b4 <malloc>:

void*
malloc(uint nbytes)
{
 7b4:	55                   	push   %ebp
 7b5:	89 e5                	mov    %esp,%ebp
 7b7:	83 ec 28             	sub    $0x28,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7ba:	8b 45 08             	mov    0x8(%ebp),%eax
 7bd:	83 c0 07             	add    $0x7,%eax
 7c0:	c1 e8 03             	shr    $0x3,%eax
 7c3:	83 c0 01             	add    $0x1,%eax
 7c6:	89 45 ec             	mov    %eax,-0x14(%ebp)
  if((prevp = freep) == 0){
 7c9:	a1 ac 0b 00 00       	mov    0xbac,%eax
 7ce:	89 45 f0             	mov    %eax,-0x10(%ebp)
 7d1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 7d5:	75 23                	jne    7fa <malloc+0x46>
    base.s.ptr = freep = prevp = &base;
 7d7:	c7 45 f0 a4 0b 00 00 	movl   $0xba4,-0x10(%ebp)
 7de:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7e1:	a3 ac 0b 00 00       	mov    %eax,0xbac
 7e6:	a1 ac 0b 00 00       	mov    0xbac,%eax
 7eb:	a3 a4 0b 00 00       	mov    %eax,0xba4
    base.s.size = 0;
 7f0:	c7 05 a8 0b 00 00 00 	movl   $0x0,0xba8
 7f7:	00 00 00 
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7fa:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7fd:	8b 00                	mov    (%eax),%eax
 7ff:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(p->s.size >= nunits){
 802:	8b 45 f4             	mov    -0xc(%ebp),%eax
 805:	8b 40 04             	mov    0x4(%eax),%eax
 808:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 80b:	72 4d                	jb     85a <malloc+0xa6>
      if(p->s.size == nunits)
 80d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 810:	8b 40 04             	mov    0x4(%eax),%eax
 813:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 816:	75 0c                	jne    824 <malloc+0x70>
        prevp->s.ptr = p->s.ptr;
 818:	8b 45 f4             	mov    -0xc(%ebp),%eax
 81b:	8b 10                	mov    (%eax),%edx
 81d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 820:	89 10                	mov    %edx,(%eax)
 822:	eb 26                	jmp    84a <malloc+0x96>
      else {
        p->s.size -= nunits;
 824:	8b 45 f4             	mov    -0xc(%ebp),%eax
 827:	8b 40 04             	mov    0x4(%eax),%eax
 82a:	2b 45 ec             	sub    -0x14(%ebp),%eax
 82d:	89 c2                	mov    %eax,%edx
 82f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 832:	89 50 04             	mov    %edx,0x4(%eax)
        p += p->s.size;
 835:	8b 45 f4             	mov    -0xc(%ebp),%eax
 838:	8b 40 04             	mov    0x4(%eax),%eax
 83b:	c1 e0 03             	shl    $0x3,%eax
 83e:	01 45 f4             	add    %eax,-0xc(%ebp)
        p->s.size = nunits;
 841:	8b 45 f4             	mov    -0xc(%ebp),%eax
 844:	8b 55 ec             	mov    -0x14(%ebp),%edx
 847:	89 50 04             	mov    %edx,0x4(%eax)
      }
      freep = prevp;
 84a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 84d:	a3 ac 0b 00 00       	mov    %eax,0xbac
      return (void*)(p + 1);
 852:	8b 45 f4             	mov    -0xc(%ebp),%eax
 855:	83 c0 08             	add    $0x8,%eax
 858:	eb 38                	jmp    892 <malloc+0xde>
    }
    if(p == freep)
 85a:	a1 ac 0b 00 00       	mov    0xbac,%eax
 85f:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 862:	75 1b                	jne    87f <malloc+0xcb>
      if((p = morecore(nunits)) == 0)
 864:	8b 45 ec             	mov    -0x14(%ebp),%eax
 867:	89 04 24             	mov    %eax,(%esp)
 86a:	e8 ed fe ff ff       	call   75c <morecore>
 86f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 872:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 876:	75 07                	jne    87f <malloc+0xcb>
        return 0;
 878:	b8 00 00 00 00       	mov    $0x0,%eax
 87d:	eb 13                	jmp    892 <malloc+0xde>
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 87f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 882:	89 45 f0             	mov    %eax,-0x10(%ebp)
 885:	8b 45 f4             	mov    -0xc(%ebp),%eax
 888:	8b 00                	mov    (%eax),%eax
 88a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  }
 88d:	e9 70 ff ff ff       	jmp    802 <malloc+0x4e>
}
 892:	c9                   	leave  
 893:	c3                   	ret    
