
vmlinuz.32k-text.bin:     file format binary


Disassembly of section .text:

0000000001000000 <.text>:
 1000000:	fc                   	cld    
 1000001:	f6 86 11 02 00 00 40 	testb  $0x40,0x211(%rsi)
 1000008:	75 0c                	jne    0x1000016
 100000a:	fa                   	cli    
 100000b:	b8 18 00 00 00       	mov    $0x18,%eax
 1000010:	8e d8                	mov    %eax,%ds
 1000012:	8e c0                	mov    %eax,%es
 1000014:	8e d0                	mov    %eax,%ss
 1000016:	8d a6 e8 01 00 00    	lea    0x1e8(%rsi),%esp
 100001c:	e8 00 00 00 00       	callq  0x1000021
 1000021:	5d                   	pop    %rbp
 1000022:	81 ed 21 00 00 00    	sub    $0x21,%ebp
 1000028:	b8 c0 6c 31 00       	mov    $0x316cc0,%eax
 100002d:	01 e8                	add    %ebp,%eax
 100002f:	89 c4                	mov    %eax,%esp
 1000031:	e8 ba 7e 2f 00       	callq  0x12f7ef0
 1000036:	85 c0                	test   %eax,%eax
 1000038:	0f 85 a2 7e 2f 00    	jne    0x12f7ee0
 100003e:	89 eb                	mov    %ebp,%ebx
 1000040:	8b 86 30 02 00 00    	mov    0x230(%rsi),%eax
 1000046:	48 01 c3             	add    %rax,%rbx
 1000049:	f7 d0                	not    %eax
 100004b:	21 c3                	and    %eax,%ebx
 100004d:	81 fb 00 00 00 01    	cmp    $0x1000000,%ebx
 1000053:	7d 05                	jge    0x100005a
 1000055:	bb 00 00 00 01       	mov    $0x1000000,%ebx
 100005a:	8b 86 60 02 00 00    	mov    0x260(%rsi),%eax
 1000060:	2d 00 20 32 00       	sub    $0x322000,%eax
 1000065:	01 c3                	add    %eax,%ebx
 1000067:	01 ad ea 2a 30 00    	add    %ebp,0x302aea(%rbp)
 100006d:	0f 01 95 e8 2a 30 00 	lgdt   0x302ae8(%rbp)
 1000074:	0f 20 e0             	mov    %cr4,%rax
 1000077:	83 c8 20             	or     $0x20,%eax
 100007a:	0f 22 e0             	mov    %rax,%cr4
 100007d:	e8 de b6 2f 00       	callq  0x12fb760
 1000082:	31 d2                	xor    %edx,%edx
 1000084:	85 c0                	test   %eax,%eax
 1000086:	74 06                	je     0x100008e
 1000088:	83 e8 20             	sub    $0x20,%eax
 100008b:	0f ab c2             	bts    %eax,%edx
 100008e:	8d bb 00 b0 31 00    	lea    0x31b000(%rbx),%edi
 1000094:	31 c0                	xor    %eax,%eax
 1000096:	b9 00 18 00 00       	mov    $0x1800,%ecx
 100009b:	f3 ab                	rep stos %eax,%es:(%rdi)
 100009d:	8d bb 00 b0 31 00    	lea    0x31b000(%rbx),%edi
 10000a3:	8d 87 07 10 00 00    	lea    0x1007(%rdi),%eax
 10000a9:	89 07                	mov    %eax,(%rdi)
 10000ab:	01 57 04             	add    %edx,0x4(%rdi)
 10000ae:	8d bb 00 c0 31 00    	lea    0x31c000(%rbx),%edi
 10000b4:	8d 87 07 10 00 00    	lea    0x1007(%rdi),%eax
 10000ba:	b9 04 00 00 00       	mov    $0x4,%ecx
 10000bf:	89 07                	mov    %eax,(%rdi)
 10000c1:	01 57 04             	add    %edx,0x4(%rdi)
 10000c4:	05 00 10 00 00       	add    $0x1000,%eax
 10000c9:	83 c7 08             	add    $0x8,%edi
 10000cc:	49 75 f0             	rex.WB jne 0x10000bf
 10000cf:	8d bb 00 d0 31 00    	lea    0x31d000(%rbx),%edi
 10000d5:	b8 83 01 00 00       	mov    $0x183,%eax
 10000da:	b9 00 08 00 00       	mov    $0x800,%ecx
 10000df:	89 07                	mov    %eax,(%rdi)
 10000e1:	01 57 04             	add    %edx,0x4(%rdi)
 10000e4:	05 00 00 20 00       	add    $0x200000,%eax
 10000e9:	83 c7 08             	add    $0x8,%edi
 10000ec:	49 75 f0             	rex.WB jne 0x10000df
 10000ef:	8d 83 00 b0 31 00    	lea    0x31b000(%rbx),%eax
 10000f5:	0f 22 d8             	mov    %rax,%cr3
 10000f8:	b9 80 00 00 c0       	mov    $0xc0000080,%ecx
 10000fd:	0f 32                	rdmsr  
 10000ff:	0f ba e8 08          	bts    $0x8,%eax
 1000103:	0f 30                	wrmsr  
 1000105:	31 c0                	xor    %eax,%eax
 1000107:	0f 00 d0             	lldt   %ax
 100010a:	b8 20 00 00 00       	mov    $0x20,%eax
 100010f:	0f 00 d8             	ltr    %ax
 1000112:	6a 10                	pushq  $0x10
 1000114:	8d 85 00 02 00 00    	lea    0x200(%rbp),%eax
 100011a:	8b bd 18 2b 30 00    	mov    0x302b18(%rbp),%edi
 1000120:	83 ff 00             	cmp    $0x0,%edi
 1000123:	74 0e                	je     0x1000133
 1000125:	8d 85 90 03 00 00    	lea    0x390(%rbp),%eax
 100012b:	89 f2                	mov    %esi,%edx
 100012d:	8b b5 1c 2b 30 00    	mov    0x302b1c(%rbp),%esi
 1000133:	50                   	push   %rax
 1000134:	b8 01 00 00 80       	mov    $0x80000001,%eax
 1000139:	0f 22 c0             	mov    %rax,%cr0
 100013c:	cb                   	lret   
	...
 100018d:	00 00                	add    %al,(%rax)
 100018f:	00 83 c4 04 59 5a    	add    %al,0x5a5904c4(%rbx)
 1000195:	5e                   	pop    %rsi
 1000196:	e8 00 00 00 00       	callq  0x100019b
 100019b:	5d                   	pop    %rbp
 100019c:	81 ed 9b 01 00 00    	sub    $0x19b,%ebp
 10001a2:	89 8d 18 2b 30 00    	mov    %ecx,0x302b18(%rbp)
 10001a8:	89 95 1c 2b 30 00    	mov    %edx,0x302b1c(%rbp)
 10001ae:	0f 01 85 38 2b 30 00 	sgdt   0x302b38(%rbp)
 10001b5:	c6 85 20 2b 30 00 00 	movb   $0x0,0x302b20(%rbp)
 10001bc:	0f 20 c0             	mov    %cr0,%rax
 10001bf:	0f ba f0 1f          	btr    $0x1f,%eax
 10001c3:	0f 22 c0             	mov    %rax,%cr0
 10001c6:	e9 35 fe ff ff       	jmpq   0x1000000
	...
 10001ff:	00 31                	add    %dh,(%rcx)
 1000201:	c0 8e d8 8e c0 8e d0 	rorb   $0xd0,-0x713f7128(%rsi)
 1000208:	8e e0                	mov    %eax,%fs
 100020a:	8e e8                	mov    %eax,%gs
 100020c:	48 8d 2d ed fd ff ff 	lea    -0x213(%rip),%rbp        # 0x1000000
 1000213:	8b 86 30 02 00 00    	mov    0x230(%rsi),%eax
 1000219:	ff c8                	dec    %eax
 100021b:	48 01 c5             	add    %rax,%rbp
 100021e:	48 f7 d0             	not    %rax
 1000221:	48 21 c5             	and    %rax,%rbp
 1000224:	48 81 fd 00 00 00 01 	cmp    $0x1000000,%rbp
 100022b:	7d 07                	jge    0x1000234
 100022d:	48 c7 c5 00 00 00 01 	mov    $0x1000000,%rbp
 1000234:	8b 9e 60 02 00 00    	mov    0x260(%rsi),%ebx
 100023a:	81 eb 00 20 32 00    	sub    $0x322000,%ebx
 1000240:	48 01 eb             	add    %rbp,%rbx
 1000243:	48 8d a3 c0 6c 31 00 	lea    0x316cc0(%rbx),%rsp
 100024a:	48 31 c0             	xor    %rax,%rax
 100024d:	e8 00 00 00 00       	callq  0x1000252
 1000252:	5f                   	pop    %rdi
 1000253:	48 81 ef 52 02 00 00 	sub    $0x252,%rdi
 100025a:	e8 e4 7b 2f 00       	callq  0x12f7e43
 100025f:	48 8d 05 82 28 30 00 	lea    0x302882(%rip),%rax        # 0x1302ae8
 1000266:	48 89 05 6d 28 30 00 	mov    %rax,0x30286d(%rip)        # 0x1302ada
 100026d:	0f 01 15 64 28 30 00 	lgdt   0x302864(%rip)        # 0x1302ad8
 1000274:	56                   	push   %rsi
 1000275:	48 89 f7             	mov    %rsi,%rdi
 1000278:	e8 03 b5 2f 00       	callq  0x12fb780
 100027d:	5e                   	pop    %rsi
 100027e:	48 89 c1             	mov    %rax,%rcx
 1000281:	48 8d 3d 0c 00 00 00 	lea    0xc(%rip),%rdi        # 0x1000294
 1000288:	6a 08                	pushq  $0x8
 100028a:	48 8d 80 00 10 00 00 	lea    0x1000(%rax),%rax
 1000291:	50                   	push   %rax
 1000292:	48 cb                	lretq  
 1000294:	48 8d a3 c0 6c 31 00 	lea    0x316cc0(%rbx),%rsp
 100029b:	56                   	push   %rsi
 100029c:	48 8d bb 00 10 32 00 	lea    0x321000(%rbx),%rdi
 10002a3:	e8 38 b7 2f 00       	callq  0x12fb9e0
 10002a8:	5e                   	pop    %rsi
 10002a9:	6a 00                	pushq  $0x0
 10002ab:	9d                   	popfq  
 10002ac:	e8 00 00 00 00       	callq  0x10002b1
 10002b1:	58                   	pop    %rax
 10002b2:	48 2d b1 02 00 00    	sub    $0x2b1,%rax
 10002b8:	48 89 df             	mov    %rbx,%rdi
 10002bb:	e8 83 7b 2f 00       	callq  0x12f7e43
 10002c0:	56                   	push   %rsi
 10002c1:	48 8d 35 f0 29 30 00 	lea    0x3029f0(%rip),%rsi        # 0x1302cb8
 10002c8:	48 8d bb b8 2c 30 00 	lea    0x302cb8(%rbx),%rdi
 10002cf:	48 c7 c1 c0 2c 30 00 	mov    $0x302cc0,%rcx
 10002d6:	48 c1 e9 03          	shr    $0x3,%rcx
 10002da:	fd                   	std    
 10002db:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
 10002de:	fc                   	cld    
 10002df:	5e                   	pop    %rsi
 10002e0:	48 8d 83 00 7e 2f 00 	lea    0x2f7e00(%rbx),%rax
 10002e7:	ff e0                	jmpq   *%rax
	...
 100038d:	00 00                	add    %al,(%rax)
 100038f:	00 48 83             	add    %cl,-0x7d(%rax)
 1000392:	e4 f0                	in     $0xf0,%al
 1000394:	e8 f7 c3 2f 00       	callq  0x12fc790
 1000399:	48 89 c6             	mov    %rax,%rsi
 100039c:	67 8b 86 14 02 00 00 	mov    0x214(%esi),%eax
 10003a3:	48 8d 80 00 02 00 00 	lea    0x200(%rax),%rax
 10003aa:	ff e0                	jmpq   *%rax
 10003ac:	fd                   	std    
 10003ad:	37                   	(bad)  
 10003ae:	7a 58                	jp     0x1000408
 10003b0:	5a                   	pop    %rdx
 10003b1:	00 00                	add    %al,(%rax)
 10003b3:	01 69 22             	add    %ebp,0x22(%rcx)
 10003b6:	de 36                	fidivs (%rsi)
 10003b8:	02 01                	add    (%rcx),%al
 10003ba:	04 00                	add    $0x0,%al
 10003bc:	21 01                	and    %eax,(%rcx)
 10003be:	1a 00                	sbb    (%rax),%al
 10003c0:	01 c9                	add    %ecx,%ecx
 10003c2:	80 b3 ff ff 51 01 e6 	xorb   $0xe6,0x151ffff(%rbx)
 10003c9:	5d                   	pop    %rbp
 10003ca:	00 3f                	add    %bh,(%rdi)
 10003cc:	91                   	xchg   %eax,%ecx
 10003cd:	45 84 68 3d          	test   %r13b,0x3d(%r8)
 10003d1:	89 a6 da 8a cc 93    	mov    %esp,-0x6c337526(%rsi)
 10003d7:	e2 4e                	loop   0x1000427
 10003d9:	f1                   	icebp  
 10003da:	e9 e1 e8 ef f6       	jmpq   0xfffffffff7efecc0
 10003df:	14 b1                	adc    $0xb1,%al
 10003e1:	83 f1 20             	xor    $0x20,%ecx
 10003e4:	ec                   	in     (%dx),%al
 10003e5:	74 56                	je     0x100043d
 10003e7:	17                   	(bad)  
 10003e8:	7d 74                	jge    0x100045e
 10003ea:	b5 b1                	mov    $0xb1,%ch
 10003ec:	57                   	push   %rdi
 10003ed:	d8 30                	fdivs  (%rax)
 10003ef:	f7 6f d2             	imull  -0x2e(%rdi)
 10003f2:	6e                   	outsb  %ds:(%rsi),(%dx)
 10003f3:	45 38 6b 63          	cmp    %r13b,0x63(%r11)
 10003f7:	35 d0 88 2d 55       	xor    $0x552d88d0,%eax
 10003fc:	8b 1e                	mov    (%rsi),%ebx
 10003fe:	f9                   	stc    
 10003ff:	ff 13                	callq  *(%rbx)
 1000401:	4f 62                	rex.WRXB (bad) 
 1000403:	0d f3 7b 3a b3       	or     $0xb33a7bf3,%eax
 1000408:	1b 8f d0 34 56 0b    	sbb    0xb5634d0(%rdi),%ecx
 100040e:	3d a8 5f ac eb       	cmp    $0xebac5fa8,%eax
 1000413:	fb                   	sti    
 1000414:	1e                   	(bad)  
 1000415:	20 64 2b bf          	and    %ah,-0x41(%rbx,%rbp,1)
 1000419:	58                   	pop    %rax
 100041a:	ce                   	(bad)  
 100041b:	0d 49 5d cb 2a       	or     $0x2acb5d49,%eax
 1000420:	ff 35 c2 d4 23 eb    	pushq  -0x14dc2b3e(%rip)        # 0xffffffffec23d8e8
 1000426:	12 4a 55             	adc    0x55(%rdx),%cl
 1000429:	c7                   	(bad)  
 100042a:	cd ad                	int    $0xad
 100042c:	05 06 f9 34 4a       	add    $0x4a34f906,%eax
 1000431:	fe                   	(bad)  
 1000432:	10 48 7b             	adc    %cl,0x7b(%rax)
 1000435:	42 d5                	rex.X (bad) 
 1000437:	bf 95 4f 63 1d       	mov    $0x1d634f95,%edi
 100043c:	7c d3                	jl     0x1000411
 100043e:	0f 75 40 15          	pcmpeqw 0x15(%rax),%mm0
 1000442:	ea                   	(bad)  
 1000443:	dc a4 cf 10 1e d9 e8 	fsubl  -0x1726e1f0(%rdi,%rcx,8)
 100044a:	2d 20 d4 9f 16       	sub    $0x169fd420,%eax
 100044f:	66 24 40             	data16 and $0x40,%al
 1000452:	08 c5                	or     %al,%ch
 1000454:	54                   	push   %rsp
 1000455:	91                   	xchg   %eax,%ecx
 1000456:	1c 33                	sbb    $0x33,%al
 1000458:	5e                   	pop    %rsi
 1000459:	ae                   	scas   %es:(%rdi),%al
 100045a:	e4 f8                	in     $0xf8,%al
 100045c:	b8 a5 cd b4 e7       	mov    $0xe7b4cda5,%eax
 1000461:	c6                   	(bad)  
 1000462:	38 2a                	cmp    %ch,(%rdx)
 1000464:	d7                   	xlat   %ds:(%rbx)
 1000465:	c8 94 9c 99          	enterq $0x9c94,$0x99
 1000469:	fa                   	cli    
 100046a:	30 c7                	xor    %al,%bh
 100046c:	9c                   	pushfq 
 100046d:	e2 7d                	loop   0x10004ec
 100046f:	65 80 7e 62 8e       	cmpb   $0x8e,%gs:0x62(%rsi)
 1000474:	08 28                	or     %ch,(%rax)
 1000476:	e2 35                	loop   0x10004ad
 1000478:	51                   	push   %rcx
 1000479:	65 35 73 f0 7e c6    	gs xor $0xc67ef073,%eax
 100047f:	11 b2 cd e9 26 e0    	adc    %esi,-0x1fd91633(%rdx)
 1000485:	3d bb a1 dc e4       	cmp    $0xe4dca1bb,%eax
 100048a:	57                   	push   %rdi
 100048b:	55                   	push   %rbp
 100048c:	f8                   	clc    
 100048d:	55                   	push   %rbp
 100048e:	71 02                	jno    0x1000492
 1000490:	dd f0                	(bad)  
 1000492:	99                   	cltd   
 1000493:	f9                   	stc    
 1000494:	82                   	(bad)  
 1000495:	37                   	(bad)  
 1000496:	4f f7 e2             	rex.WRXB mul %r10
 1000499:	51                   	push   %rcx
 100049a:	31 66 ac             	xor    %esp,-0x54(%rsi)
 100049d:	61                   	(bad)  
 100049e:	cd 3f                	int    $0x3f
 10004a0:	58                   	pop    %rax
 10004a1:	30 a0 e6 cb 5c 4d    	xor    %ah,0x4d5ccbe6(%rax)
 10004a7:	1b d4                	sbb    %esp,%edx
 10004a9:	57                   	push   %rdi
 10004aa:	73 6d                	jae    0x1000519
 10004ac:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 10004ad:	e1 c8                	loope  0x1000477
 10004af:	fe                   	(bad)  
 10004b0:	79 21                	jns    0x10004d3
 10004b2:	b5 a8                	mov    $0xa8,%ch
 10004b4:	33 8f 62 84 7d 5a    	xor    0x5a7d8462(%rdi),%ecx
 10004ba:	51                   	push   %rcx
 10004bb:	62 92 74 49 5c       	(bad)
 10004c0:	c4                   	(bad)  
 10004c1:	6d                   	insl   (%dx),%es:(%rdi)
 10004c2:	b2 92                	mov    $0x92,%dl
 10004c4:	e7 a0                	out    %eax,$0xa0
 10004c6:	c8 ce 07 04          	enterq $0x7ce,$0x4
 10004ca:	ee                   	out    %al,(%dx)
 10004cb:	9f                   	lahf   
 10004cc:	de a5 42 cb 88 3f    	fisubs 0x3f88cb42(%rbp)
 10004d2:	5c                   	pop    %rsp
 10004d3:	00 8f d0 4e af 26    	add    %cl,0x26af4ed0(%rdi)
 10004d9:	28 94 71 1f 3d 8f 24 	sub    %dl,0x248f3d1f(%rcx,%rsi,2)
 10004e0:	e1 70                	loope  0x1000552
 10004e2:	9e                   	sahf   
 10004e3:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 10004e4:	23 5f ec             	and    -0x14(%rdi),%ebx
 10004e7:	28 cb                	sub    %cl,%bl
 10004e9:	85 d1                	test   %edx,%ecx
 10004eb:	95                   	xchg   %eax,%ebp
 10004ec:	98                   	cwtl   
 10004ed:	8a 7e 2a             	mov    0x2a(%rsi),%bh
 10004f0:	91                   	xchg   %eax,%ecx
 10004f1:	f2 27                	repnz (bad) 
 10004f3:	75 f7                	jne    0x10004ec
 10004f5:	19 c0                	sbb    %eax,%eax
 10004f7:	06                   	(bad)  
 10004f8:	98                   	cwtl   
 10004f9:	4d 98                	rex.WRB cltq 
 10004fb:	fd                   	std    
 10004fc:	d8 af d5 90 0f c4    	fsubrs -0x3bf06f2b(%rdi)
 1000502:	25 53 f8 f5 91       	and    $0x91f5f853,%eax
 1000507:	36 31 05 a5 b0 ee 6f 	xor    %eax,%ss:0x6feeb0a5(%rip)        # 0x70eeb5b3
 100050e:	c1 70 4d 47          	shll   $0x47,0x4d(%rax)
 1000512:	0c d1                	or     $0xd1,%al
 1000514:	91                   	xchg   %eax,%ecx
 1000515:	11 aa ad 60 1d ba    	adc    %ebp,-0x45e29f53(%rdx)
 100051b:	ce                   	(bad)  
 100051c:	b1 27                	mov    $0x27,%cl
 100051e:	18 5c 59 86          	sbb    %bl,-0x7a(%rcx,%rbx,2)
 1000522:	e9 66 52 58 be       	jmpq   0xffffffffbf58578d
 1000527:	e9 76 ac 59 e4       	jmpq   0xffffffffe559b1a2
 100052c:	e5 5b                	in     $0x5b,%eax
 100052e:	05 08 f9 c7 da       	add    $0xdac7f908,%eax
 1000533:	ad                   	lods   %ds:(%rsi),%eax
 1000534:	fc                   	cld    
 1000535:	fb                   	sti    
 1000536:	52                   	push   %rdx
 1000537:	2b 74 cd 1e          	sub    0x1e(%rbp,%rcx,8),%esi
 100053b:	5b                   	pop    %rbx
 100053c:	20 42 f9             	and    %al,-0x7(%rdx)
 100053f:	dd 53 3d             	fstl   0x3d(%rbx)
 1000542:	f8                   	clc    
 1000543:	29 64 09 3b          	sub    %esp,0x3b(%rcx,%rcx,1)
 1000547:	80 cb 2a             	or     $0x2a,%bl
 100054a:	6c                   	insb   (%dx),%es:(%rdi)
 100054b:	df b5 3b f0 c4 bd    	fbstp  -0x423b0fc5(%rbp)
 1000551:	2e 5f                	cs pop %rdi
 1000553:	aa                   	stos   %al,%es:(%rdi)
 1000554:	0f 3e                	(bad)  
 1000556:	4b                   	rex.WXB
 1000557:	66 42 90             	rex.X xchg %ax,%ax
 100055a:	13 0e                	adc    (%rsi),%ecx
 100055c:	ff 10                	callq  *(%rax)
 100055e:	93                   	xchg   %eax,%ebx
 100055f:	f8                   	clc    
 1000560:	71 78                	jno    0x10005da
 1000562:	59                   	pop    %rcx
 1000563:	f8                   	clc    
 1000564:	0b cd                	or     %ebp,%ecx
 1000566:	ff 95 28 46 0f a9    	callq  *-0x56f0b9d8(%rbp)
 100056c:	fc                   	cld    
 100056d:	7c de                	jl     0x100054d
 100056f:	fb                   	sti    
 1000570:	9a                   	(bad)  
 1000571:	30 2e                	xor    %ch,(%rsi)
 1000573:	56                   	push   %rsi
 1000574:	c0 8f 85 f3 83 81 c0 	rorb   $0xc0,-0x7e7c0c7b(%rdi)
 100057b:	65 c4                	gs (bad) 
 100057d:	25 53 f8 f5 91       	and    $0x91f5f853,%eax
 1000582:	36 31 05 a5 b0 ee 6f 	xor    %eax,%ss:0x6feeb0a5(%rip)        # 0x70eeb62e
 1000589:	c1 70 4d 47          	shll   $0x47,0x4d(%rax)
 100058d:	0c d1                	or     $0xd1,%al
 100058f:	91                   	xchg   %eax,%ecx
 1000590:	11 aa ad 60 1d ba    	adc    %ebp,-0x45e29f53(%rdx)
 1000596:	ce                   	(bad)  
 1000597:	b1 27                	mov    $0x27,%cl
 1000599:	18 5c 59 86          	sbb    %bl,-0x7a(%rcx,%rbx,2)
 100059d:	e9 66 52 58 be       	jmpq   0xffffffffbf585808
 10005a2:	e9 76 ac 59 e4       	jmpq   0xffffffffe559b21d
 10005a7:	e5 5b                	in     $0x5b,%eax
 10005a9:	05 08 f9 c7 61       	add    $0x61c7f908,%eax
 10005ae:	25 4b fc 81 d6       	and    $0xd681fc4b,%eax
 10005b3:	90                   	nop
 10005b4:	ef                   	out    %eax,(%dx)
 10005b5:	fe 00                	incb   (%rax)
 10005b7:	17                   	(bad)  
 10005b8:	b0 6f                	mov    $0x6f,%al
 10005ba:	b4 4e                	mov    $0x4e,%ah
 10005bc:	4c 3f                	rex.WR (bad) 
 10005be:	f2 5b                	repnz pop %rbx
 10005c0:	d9 d1                	(bad)  
 10005c2:	4d 22 8d 4e 49 d2 f1 	rex.WRB and -0xe2db6b2(%r13),%r9b
 10005c9:	ac                   	lods   %ds:(%rsi),%al
 10005ca:	b8 38 36 cd 7f       	mov    $0x7fcd3638,%eax
 10005cf:	84 59 85             	test   %bl,-0x7b(%rcx)
 10005d2:	83 10 e8             	adcl   $0xffffffe8,(%rax)
 10005d5:	6d                   	insl   (%dx),%es:(%rdi)
 10005d6:	53                   	push   %rbx
 10005d7:	9c                   	pushfq 
 10005d8:	9c                   	pushfq 
 10005d9:	5f                   	pop    %rdi
 10005da:	ab                   	stos   %eax,%es:(%rdi)
 10005db:	d3 7c 6b 6a          	sarl   %cl,0x6a(%rbx,%rbp,2)
 10005df:	57                   	push   %rdi
 10005e0:	85 e5                	test   %esp,%ebp
 10005e2:	bf f7 75 2d 74       	mov    $0x742d75f7,%edi
 10005e7:	32 28                	xor    (%rax),%ch
 10005e9:	1f                   	(bad)  
 10005ea:	b4 ae                	mov    $0xae,%ah
 10005ec:	f7 f9                	idiv   %ecx
 10005ee:	0b 7f 88             	or     -0x78(%rdi),%edi
 10005f1:	08 0b                	or     %cl,(%rbx)
 10005f3:	5c                   	pop    %rsp
 10005f4:	e5 17                	in     $0x17,%eax
 10005f6:	f2 b9 ae c3 50 54    	repnz mov $0x5450c3ae,%ecx
 10005fc:	28 04 14             	sub    %al,(%rsp,%rdx,1)
 10005ff:	d2 37                	shlb   %cl,(%rdi)
 1000601:	3c 86                	cmp    $0x86,%al
 1000603:	4c a2 2f a7 86 08 20 	rex.WR movabs %al,0xf75d8f200886a72f
 100060a:	8f 5d f7 
 100060d:	09 a6 1b 42 45 ae    	or     %esp,-0x51babde5(%rsi)
 1000613:	69 c5 fd 22 e5 70    	imul   $0x70e522fd,%ebp,%eax
 1000619:	87 35 07 6e 19 a5    	xchg   %esi,-0x5ae691f9(%rip)        # 0xffffffffa6197426
 100061f:	55                   	push   %rbp
 1000620:	f4                   	hlt    
 1000621:	c6                   	(bad)  
 1000622:	a1 65 b1 b7 39 c7 07 	movabs 0x74ab07c739b7b165,%eax
 1000629:	ab 74 
 100062b:	bc 04 ba 65 9d       	mov    $0x9d65ba04,%esp
 1000630:	33 8a 4b aa 08 2d    	xor    0x2d08aa4b(%rdx),%ecx
 1000636:	14 21                	adc    $0x21,%al
 1000638:	d7                   	xlat   %ds:(%rbx)
 1000639:	41 19 8a 9d cc 36 7b 	sbb    %ecx,0x7b36cc9d(%r10)
 1000640:	1f                   	(bad)  
 1000641:	ef                   	out    %eax,(%dx)
 1000642:	a9 23 ea e3 89       	test   $0x89e3ea23,%eax
 1000647:	1a f4                	sbb    %ah,%dh
 1000649:	2f                   	(bad)  
 100064a:	70 b8                	jo     0x1000604
 100064c:	d2 a7 ec c5 38 b0    	shlb   %cl,-0x4fc73a14(%rdi)
 1000652:	8a a4 70 76 20 c4 8f 	mov    -0x703bdf8a(%rax,%rsi,2),%ah
 1000659:	ee                   	out    %al,(%dx)
 100065a:	75 7a                	jne    0x10006d6
 100065c:	d6                   	(bad)  
 100065d:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100065e:	15 27 24 1c d6       	adc    $0xd61c2427,%eax
 1000663:	4d ef                	rex.WRB out %eax,(%dx)
 1000665:	e6 a9                	out    %al,$0xa9
 1000667:	e3 57                	jrcxz  0x10006c0
 1000669:	96                   	xchg   %eax,%esi
 100066a:	65 f7 27             	mull   %gs:(%rdi)
 100066d:	fd                   	std    
 100066e:	4d 9d                	rex.WRB popfq 
 1000670:	29 22                	sub    %esp,(%rdx)
 1000672:	1c 42                	sbb    $0x42,%al
 1000674:	1c 2b                	sbb    $0x2b,%al
 1000676:	ce                   	(bad)  
 1000677:	73 d3                	jae    0x100064c
 1000679:	cd 1a                	int    $0x1a
 100067b:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 100067c:	ea                   	(bad)  
 100067d:	41 34 f5             	rex.B xor $0xf5,%al
 1000680:	1a 18                	sbb    (%rax),%bl
 1000682:	6e                   	outsb  %ds:(%rsi),(%dx)
 1000683:	7b 0c                	jnp    0x1000691
 1000685:	25 da 45 97 e8       	and    $0xe89745da,%eax
 100068a:	4f bc f6 a1 8b ee 9e 	rex.WRXB movabs $0xac39259eee8ba1f6,%r12
 1000691:	25 39 ac 
 1000694:	9f                   	lahf   
 1000695:	9c                   	pushfq 
 1000696:	36 32 5d 74          	xor    %ss:0x74(%rbp),%bl
 100069a:	02 d5                	add    %ch,%dl
 100069c:	26 ce                	es (bad) 
 100069e:	eb 5b                	jmp    0x10006fb
 10006a0:	04 e7                	add    $0xe7,%al
 10006a2:	2f                   	(bad)  
 10006a3:	f5                   	cmc    
 10006a4:	b9 22 fd 2d f5       	mov    $0xf52dfd22,%ecx
 10006a9:	62                   	(bad)  
 10006aa:	94                   	xchg   %eax,%esp
 10006ab:	08 dc                	or     %bl,%ah
 10006ad:	1c db                	sbb    $0xdb,%al
 10006af:	0b 82 32 0c ae d1    	or     -0x2e51f3ce(%rdx),%eax
 10006b5:	c9                   	leaveq 
 10006b6:	00 63 cf             	add    %ah,-0x31(%rbx)
 10006b9:	2a a5 b5 d8 03 21    	sub    0x2103d8b5(%rbp),%ah
 10006bf:	b1 b6                	mov    $0xb6,%cl
 10006c1:	1b d6                	sbb    %esi,%edx
 10006c3:	b4 72                	mov    $0x72,%ah
 10006c5:	4c 13 7e fa          	adc    -0x6(%rsi),%r15
 10006c9:	37                   	(bad)  
 10006ca:	65 26 26 40 e5 3f    	gs es es rex in $0x3f,%eax
 10006d0:	84 43 e9             	test   %al,-0x17(%rbx)
 10006d3:	c0 5d 72 f0          	rcrb   $0xf0,0x72(%rbp)
 10006d7:	f5                   	cmc    
 10006d8:	af                   	scas   %es:(%rdi),%eax
 10006d9:	40 8b 9f 80 9e 47 85 	rex mov -0x7ab86180(%rdi),%ebx
 10006e0:	e6 7c                	out    %al,$0x7c
 10006e2:	4d 6b c4 42          	imul   $0x42,%r12,%r8
 10006e6:	96                   	xchg   %eax,%esi
 10006e7:	c8 d0 c8 59          	enterq $0xc8d0,$0x59
 10006eb:	d8 3f                	fdivrs (%rdi)
 10006ed:	e4 42                	in     $0x42,%al
 10006ef:	d5                   	(bad)  
 10006f0:	85 09                	test   %ecx,(%rcx)
 10006f2:	80 38 82             	cmpb   $0x82,(%rax)
 10006f5:	c5 8a d2             	(bad)
 10006f8:	1f                   	(bad)  
 10006f9:	46 68 3b 75 44 e1    	rex.RX pushq $0xffffffffe144753b
 10006ff:	42 b0 a0             	rex.X mov $0xa0,%al
 1000702:	b3 c1                	mov    $0xc1,%bl
 1000704:	e5 ef                	in     $0xef,%eax
 1000706:	8c b1 40 b3 03 bd    	mov    %?,-0x42fc4cc0(%rcx)
 100070c:	63 00                	movsxd (%rax),%eax
 100070e:	e2 31                	loop   0x1000741
 1000710:	42 6c                	rex.X insb (%dx),%es:(%rdi)
 1000712:	2b 3e                	sub    (%rsi),%edi
 1000714:	48 f9                	rex.W stc 
 1000716:	0b 55 c6             	or     -0x3a(%rbp),%edx
 1000719:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 100071a:	ac                   	lods   %ds:(%rsi),%al
 100071b:	38 07                	cmp    %al,(%rdi)
 100071d:	4a bf ac a4 20 8e c2 	rex.WX movabs $0xc813e2c28e20a4ac,%rdi
 1000724:	e2 13 c8 
 1000727:	44 71 cd             	rex.R jno 0x10006f7
 100072a:	d9 b9 79 92 ff 0f    	fnstcw 0xfff9279(%rcx)
 1000730:	8b b8 d8 e3 3f 7f    	mov    0x7f3fe3d8(%rax),%edi
 1000736:	2a 37                	sub    (%rdi),%dh
 1000738:	2d 58 4f dd e5       	sub    $0xe5dd4f58,%eax
 100073d:	6e                   	outsb  %ds:(%rsi),(%dx)
 100073e:	22 e2                	and    %dl,%ah
 1000740:	65 71 14             	gs jno 0x1000757
 1000743:	e2 21                	loop   0x1000766
 1000745:	38 16                	cmp    %dl,(%rsi)
 1000747:	19 88 9b ab 1b 90    	sbb    %ecx,-0x6fe45465(%rax)
 100074d:	7f 28                	jg     0x1000777
 100074f:	b2 a1                	mov    $0xa1,%dl
 1000751:	4e 0c 16             	rex.WRX or $0x16,%al
 1000754:	f0 67 32 ef          	lock addr32 xor %bh,%ch
 1000758:	3e c0 5a f8 84       	rcrb   $0x84,%ds:-0x8(%rdx)
 100075d:	3b 5a 0a             	cmp    0xa(%rdx),%ebx
 1000760:	b3 37                	mov    $0x37,%bl
 1000762:	5f                   	pop    %rdi
 1000763:	cf                   	iret   
 1000764:	1d 2b be ac 49       	sbb    $0x49acbe2b,%eax
 1000769:	ce                   	(bad)  
 100076a:	8a cd                	mov    %ch,%cl
 100076c:	8b 27                	mov    (%rdi),%esp
 100076e:	5a                   	pop    %rdx
 100076f:	12 ff                	adc    %bh,%bh
 1000771:	a8 1c                	test   $0x1c,%al
 1000773:	5c                   	pop    %rsp
 1000774:	9c                   	pushfq 
 1000775:	f8                   	clc    
 1000776:	ec                   	in     (%dx),%al
 1000777:	74 d8                	je     0x1000751
 1000779:	14 b8                	adc    $0xb8,%al
 100077b:	d8 48 4d             	fmuls  0x4d(%rax)
 100077e:	1c 56                	sbb    $0x56,%al
 1000780:	89 a4 de 06 73 86 c4 	mov    %esp,-0x3b798cfa(%rsi,%rbx,8)
 1000787:	80 aa 0c 5a ac 35 a5 	subb   $0xa5,0x35ac5a0c(%rdx)
 100078e:	f9                   	stc    
 100078f:	43 b0 91             	rex.XB mov $0x91,%r8b
 1000792:	13 be 7d 85 26 88    	adc    -0x77d97a83(%rsi),%edi
 1000798:	59                   	pop    %rcx
 1000799:	52                   	push   %rdx
 100079a:	21 f6                	and    %esi,%esi
 100079c:	f6 f6                	div    %dh
 100079e:	5f                   	pop    %rdi
 100079f:	24 b1                	and    $0xb1,%al
 10007a1:	ad                   	lods   %ds:(%rsi),%eax
 10007a2:	f0 33 8a bf b4 b0 de 	lock xor -0x214f4b41(%rdx),%ecx
 10007a9:	7e 7a                	jle    0x1000825
 10007ab:	b1 ea                	mov    $0xea,%cl
 10007ad:	63 31                	movsxd (%rcx),%esi
 10007af:	eb d7                	jmp    0x1000788
 10007b1:	79 82                	jns    0x1000735
 10007b3:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 10007b4:	d5                   	(bad)  
 10007b5:	ba cc 88 67 e6       	mov    $0xe66788cc,%edx
 10007ba:	23 75 95             	and    -0x6b(%rbp),%esi
 10007bd:	6d                   	insl   (%dx),%es:(%rdi)
 10007be:	91                   	xchg   %eax,%ecx
 10007bf:	78 dc                	js     0x100079d
 10007c1:	e9 c4 6c df fc       	jmpq   0xfffffffffddf748a
 10007c6:	59                   	pop    %rcx
 10007c7:	b8 84 19 e6 7e       	mov    $0x7ee61984,%eax
 10007cc:	bf b6 63 0e 99       	mov    $0x990e63b6,%edi
 10007d1:	7a 50                	jp     0x1000823
 10007d3:	0d 81 c2 98 41       	or     $0x4198c281,%eax
 10007d8:	a1 f8 67 50 a0 ea f6 	movabs 0x6292f6eaa05067f8,%eax
 10007df:	92 62 
 10007e1:	ea                   	(bad)  
 10007e2:	7e 23                	jle    0x1000807
 10007e4:	31 ce                	xor    %ecx,%esi
 10007e6:	1c f9                	sbb    $0xf9,%al
 10007e8:	5b                   	pop    %rbx
 10007e9:	2a 12                	sub    (%rdx),%dl
 10007eb:	bc 5f 9f b4 f1       	mov    $0xf1b49f5f,%esp
 10007f0:	4d 02 da             	rex.WRB add %r10b,%r11b
 10007f3:	b6 4f                	mov    $0x4f,%dh
 10007f5:	9f                   	lahf   
 10007f6:	62                   	(bad)  
 10007f7:	77 f3                	ja     0x10007ec
 10007f9:	df 98 8c 5f 82 50    	fistps 0x50825f8c(%rax)
 10007ff:	f8                   	clc    
 1000800:	17                   	(bad)  
 1000801:	2b 89 3c 2d f6 b6    	sub    -0x4909d2c4(%rcx),%ecx
 1000807:	e2 c6                	loop   0x10007cf
 1000809:	f3 3e 2f             	repz ds (bad) 
 100080c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100080d:	e8 47 5c 08 5d       	callq  0x5e086459
 1000812:	f2 f2 99             	repnz repnz cltd 
 1000815:	2e 7b 59             	jnp,pn 0x1000871
 1000818:	af                   	scas   %es:(%rdi),%eax
 1000819:	68 f1 c7 fb 19       	pushq  $0x19fbc7f1
 100081e:	e5 bd                	in     $0xbd,%eax
 1000820:	50                   	push   %rax
 1000821:	27                   	(bad)  
 1000822:	5e                   	pop    %rsi
 1000823:	e9 a7 e2 a7 47       	jmpq   0x48a7eacf
 1000828:	da 72 b3             	fidivl -0x4d(%rdx)
 100082b:	fc                   	cld    
 100082c:	2e 65 a0 da 90 cc d6 	cs movabs %gs:0xc66ebb4ed6cc90da,%al
 1000833:	4e bb 6e c6 
 1000837:	ae                   	scas   %es:(%rdi),%al
 1000838:	e8 52 19 46 3d       	callq  0x3e46218f
 100083d:	26 c3                	es retq 
 100083f:	dc 93 38 57 0d 00    	fcoml  0xd5738(%rbx)
 1000845:	5e                   	pop    %rsi
 1000846:	75 c6                	jne    0x100080e
 1000848:	e5 48                	in     $0x48,%eax
 100084a:	3a 9d 82 fb 4c ab    	cmp    -0x54b3047e(%rbp),%bl
 1000850:	ef                   	out    %eax,(%dx)
 1000851:	c6                   	(bad)  
 1000852:	c8 00 bf f0          	enterq $0xbf00,$0xf0
 1000856:	41 ec                	rex.B in (%dx),%al
 1000858:	ca 6c 1c             	lret   $0x1c6c
 100085b:	3b 9f d4 0f d3 fd    	cmp    -0x22cf02c(%rdi),%ebx
 1000861:	51                   	push   %rcx
 1000862:	4c 9f                	rex.WR lahf 
 1000864:	b3 60                	mov    $0x60,%bl
 1000866:	43 8c 86 8b 14 2b 84 	rex.XB mov %es,-0x7bd4eb75(%r14)
 100086d:	4c 82                	rex.WR (bad) 
 100086f:	73 47                	jae    0x10008b8
 1000871:	c9                   	leaveq 
 1000872:	83 70 27 7a          	xorl   $0x7a,0x27(%rax)
 1000876:	4a 2a 37             	rex.WX sub (%rdi),%sil
 1000879:	fc                   	cld    
 100087a:	60                   	(bad)  
 100087b:	96                   	xchg   %eax,%esi
 100087c:	27                   	(bad)  
 100087d:	51                   	push   %rcx
 100087e:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 100087f:	00 9f 42 3d 92 96    	add    %bl,-0x696dc2be(%rdi)
 1000885:	f6 87 31 84 e7 21 0c 	testb  $0xc,0x21e78431(%rdi)
 100088c:	24 90                	and    $0x90,%al
 100088e:	01 bb 3f 27 96 c7    	add    %edi,-0x3869d8c1(%rbx)
 1000894:	5d                   	pop    %rbp
 1000895:	3b e5                	cmp    %ebp,%esp
 1000897:	b0 e1                	mov    $0xe1,%al
 1000899:	44 ff a4 57 59 c7 19 	rex.R jmpq *-0x77e638a7(%rdi,%rdx,2)
 10008a0:	88 
 10008a1:	a2 8c 64 b8 b9 6a 42 	movabs %al,0xdfe0426ab9b8648c
 10008a8:	e0 df 
 10008aa:	74 0b                	je     0x10008b7
 10008ac:	91                   	xchg   %eax,%ecx
 10008ad:	af                   	scas   %es:(%rdi),%eax
 10008ae:	d8 29                	fsubrs (%rcx)
 10008b0:	18 b4 34 1e 28 21 df 	sbb    %dh,-0x20ded7e2(%rsp,%rsi,1)
 10008b7:	d4                   	(bad)  
 10008b8:	36 41 1f             	ss rex.B (bad) 
 10008bb:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10008bc:	1c 9c                	sbb    $0x9c,%al
 10008be:	8b 08                	mov    (%rax),%ecx
 10008c0:	76 8b                	jbe    0x100084d
 10008c2:	14 86                	adc    $0x86,%al
 10008c4:	94                   	xchg   %eax,%esp
 10008c5:	ab                   	stos   %eax,%es:(%rdi)
 10008c6:	0a 0e                	or     (%rsi),%cl
 10008c8:	19 a2 8f db 9e dc    	sbb    %esp,-0x23612471(%rdx)
 10008ce:	bc 0b 5b 47 73       	mov    $0x73475b0b,%esp
 10008d3:	87 8f d5 c9 eb fa    	xchg   %ecx,-0x514362b(%rdi)
 10008d9:	3b bc 0b 37 5e 31 9e 	cmp    -0x61cea1c9(%rbx,%rcx,1),%edi
 10008e0:	32 42 77             	xor    0x77(%rdx),%al
 10008e3:	bf 53 68 a0 6c       	mov    $0x6ca06853,%edi
 10008e8:	06                   	(bad)  
 10008e9:	35 a7 9f ad 54       	xor    $0x54ad9fa7,%eax
 10008ee:	90                   	nop
 10008ef:	2f                   	(bad)  
 10008f0:	c7                   	(bad)  
 10008f1:	23 8d 3f 75 b2 5a    	and    0x5ab2753f(%rbp),%ecx
 10008f7:	a8 0b                	test   $0xb,%al
 10008f9:	cf                   	iret   
 10008fa:	46 1f                	rex.RX (bad) 
 10008fc:	11 28                	adc    %ebp,(%rax)
 10008fe:	7c 04                	jl     0x1000904
 1000900:	f7 db                	neg    %ebx
 1000902:	6e                   	outsb  %ds:(%rsi),(%dx)
 1000903:	eb f6                	jmp    0x10008fb
 1000905:	14 f1                	adc    $0xf1,%al
 1000907:	12 f3                	adc    %bl,%dh
 1000909:	fe                   	(bad)  
 100090a:	b8 08 98 0b 97       	mov    $0x970b9808,%eax
 100090f:	ab                   	stos   %eax,%es:(%rdi)
 1000910:	c2 3a 82             	retq   $0x823a
 1000913:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1000914:	23 fd                	and    %ebp,%edi
 1000916:	7f 80                	jg     0x1000898
 1000918:	34 30                	xor    $0x30,%al
 100091a:	f3 59                	repz pop %rcx
 100091c:	e8 2b fe ff 0d       	callq  0xf00074c
 1000921:	14 0e                	adc    $0xe,%al
 1000923:	d7                   	xlat   %ds:(%rbx)
 1000924:	16                   	(bad)  
 1000925:	1d a9 45 37 1f       	sbb    $0x1f3745a9,%eax
 100092a:	08 e4                	or     %ah,%ah
 100092c:	15 d2 1d 67 72       	adc    $0x72671dd2,%eax
 1000931:	4d 2c 6c             	rex.WRB sub $0x6c,%al
 1000934:	79 8c                	jns    0x10008c2
 1000936:	6d                   	insl   (%dx),%es:(%rdi)
 1000937:	52                   	push   %rdx
 1000938:	62                   	(bad)  
 1000939:	af                   	scas   %es:(%rdi),%eax
 100093a:	77 93                	ja     0x10008cf
 100093c:	90                   	nop
 100093d:	61                   	(bad)  
 100093e:	42 b3 16             	rex.X mov $0x16,%bl
 1000941:	d8 cb                	fmul   %st(3),%st
 1000943:	b6 5c                	mov    $0x5c,%dh
 1000945:	00 f0                	add    %dh,%al
 1000947:	af                   	scas   %es:(%rdi),%eax
 1000948:	f1                   	icebp  
 1000949:	98                   	cwtl   
 100094a:	62                   	(bad)  
 100094b:	06                   	(bad)  
 100094c:	3e 46 e8 99 49 b1 62 	ds rex.RX callq 0x63b152ec
 1000953:	44 01 9e f6 47 21 ee 	add    %r11d,-0x11deb80a(%rsi)
 100095a:	c9                   	leaveq 
 100095b:	ac                   	lods   %ds:(%rsi),%al
 100095c:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100095d:	e7 eb                	out    %eax,$0xeb
 100095f:	03 ac 20 8f a5 c5 63 	add    0x63c5a58f(%rax,%riz,1),%ebp
 1000966:	bc 60 17 b3 5a       	mov    $0x5ab31760,%esp
 100096b:	e4 e8                	in     $0xe8,%al
 100096d:	f1                   	icebp  
 100096e:	dd 8e 2e e1 d9 b9    	fisttpll -0x46261ed2(%rsi)
 1000974:	e7 24                	out    %eax,$0x24
 1000976:	0a 8d 83 d5 ce 2b    	or     0x2bced583(%rbp),%cl
 100097c:	8f 0a 1d cb          	(bad)
 1000980:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1000981:	87 22                	xchg   %esp,(%rdx)
 1000983:	cb                   	lret   
 1000984:	0a 71 ff             	or     -0x1(%rcx),%dh
 1000987:	d1 1c 47             	rcrl   (%rdi,%rax,2)
 100098a:	bc e2 78 73 53       	mov    $0x537378e2,%esp
 100098f:	3f                   	(bad)  
 1000990:	de a0 7b 1c 3b de    	fisubs -0x21c4e385(%rax)
 1000996:	04 d4                	add    $0xd4,%al
 1000998:	ab                   	stos   %eax,%es:(%rdi)
 1000999:	55                   	push   %rbp
 100099a:	4b 1f                	rex.WXB (bad) 
 100099c:	32 59 c5             	xor    -0x3b(%rcx),%bl
 100099f:	ca 51 6a             	lret   $0x6a51
 10009a2:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10009a3:	c0 fc f1             	sar    $0xf1,%ah
 10009a6:	ce                   	(bad)  
 10009a7:	d5                   	(bad)  
 10009a8:	b4 ff                	mov    $0xff,%ah
 10009aa:	da 07                	fiaddl (%rdi)
 10009ac:	90                   	nop
 10009ad:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 10009ae:	57                   	push   %rdi
 10009af:	90                   	nop
 10009b0:	eb b1                	jmp    0x1000963
 10009b2:	12 e4                	adc    %ah,%ah
 10009b4:	ee                   	out    %al,(%dx)
 10009b5:	5d                   	pop    %rbp
 10009b6:	52                   	push   %rdx
 10009b7:	0a cd                	or     %ch,%cl
 10009b9:	6a d5                	pushq  $0xffffffffffffffd5
 10009bb:	6c                   	insb   (%dx),%es:(%rdi)
 10009bc:	56                   	push   %rsi
 10009bd:	bc cf 97 b9 2b       	mov    $0x2bb997cf,%esp
 10009c2:	bb d6 53 1c db       	mov    $0xdb1c53d6,%ebx
 10009c7:	6e                   	outsb  %ds:(%rsi),(%dx)
 10009c8:	0c 34                	or     $0x34,%al
 10009ca:	ec                   	in     (%dx),%al
 10009cb:	3d 71 19 c0 90       	cmp    $0x90c01971,%eax
 10009d0:	6e                   	outsb  %ds:(%rsi),(%dx)
 10009d1:	73 d6                	jae    0x10009a9
 10009d3:	fa                   	cli    
 10009d4:	d6                   	(bad)  
 10009d5:	a9 36 84 89 62       	test   $0x62898436,%eax
 10009da:	9f                   	lahf   
 10009db:	16                   	(bad)  
 10009dc:	ed                   	in     (%dx),%eax
 10009dd:	49 b6 0a             	rex.WB mov $0xa,%r14b
 10009e0:	75 b4                	jne    0x1000996
 10009e2:	90                   	nop
 10009e3:	fc                   	cld    
 10009e4:	1a ce                	sbb    %dh,%cl
 10009e6:	64 05 d9 7f 5f ab    	fs add $0xab5f7fd9,%eax
 10009ec:	e3 1a                	jrcxz  0x1000a08
 10009ee:	c5 e8 5b             	(bad)
 10009f1:	fb                   	sti    
 10009f2:	0c 7d                	or     $0x7d,%al
 10009f4:	82                   	(bad)  
 10009f5:	56                   	push   %rsi
 10009f6:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10009f7:	e7 1d                	out    %eax,$0x1d
 10009f9:	c5 69 db 65 32       	vpand  0x32(%rbp),%xmm2,%xmm12
 10009fe:	98                   	cwtl   
 10009ff:	74 47                	je     0x1000a48
 1000a01:	ae                   	scas   %es:(%rdi),%al
 1000a02:	f4                   	hlt    
 1000a03:	19 26                	sbb    %esp,(%rsi)
 1000a05:	55                   	push   %rbp
 1000a06:	55                   	push   %rbp
 1000a07:	26 e0 b4             	es loopne 0x10009be
 1000a0a:	0f ed c1             	paddsw %mm1,%mm0
 1000a0d:	4e 86 8f ac 7d 95 ee 	rex.WRX xchg %r9b,-0x116a8254(%rdi)
 1000a14:	89 6b e5             	mov    %ebp,-0x1b(%rbx)
 1000a17:	0d ed 0d da 44       	or     $0x44da0ded,%eax
 1000a1c:	35 c4 26 28 4d       	xor    $0x4d2826c4,%eax
 1000a21:	26 10 91 21 4c 7f bb 	adc    %dl,%es:-0x4480b3df(%rcx)
 1000a28:	b1 b5                	mov    $0xb5,%cl
 1000a2a:	19 ef                	sbb    %ebp,%edi
 1000a2c:	91                   	xchg   %eax,%ecx
 1000a2d:	dd 77 eb             	fnsave -0x15(%rdi)
 1000a30:	58                   	pop    %rax
 1000a31:	0a c5                	or     %ch,%al
 1000a33:	60                   	(bad)  
 1000a34:	81 56 00 14 43 f4 08 	adcl   $0x8f44314,0x0(%rsi)
 1000a3b:	96                   	xchg   %eax,%esi
 1000a3c:	8f                   	(bad)  
 1000a3d:	5d                   	pop    %rbp
 1000a3e:	71 34                	jno    0x1000a74
 1000a40:	f6 bd 01 26 05 95    	idivb  -0x6afad9ff(%rbp)
 1000a46:	fc                   	cld    
 1000a47:	23 69 05             	and    0x5(%rcx),%ebp
 1000a4a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1000a4b:	e9 ed 6e ce 56       	jmpq   0x57ce793d
 1000a50:	fa                   	cli    
 1000a51:	5d                   	pop    %rbp
 1000a52:	69 a8 64 81 68 e4 bb 	imul   $0x62f09ebb,-0x1b977e9c(%rax),%ebp
 1000a59:	9e f0 62 
 1000a5c:	c2 20 90             	retq   $0x9020
 1000a5f:	c9                   	leaveq 
 1000a60:	d7                   	xlat   %ds:(%rbx)
 1000a61:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1000a62:	f7 fd                	idiv   %ebp
 1000a64:	95                   	xchg   %eax,%ebp
 1000a65:	64 83 d1 42          	fs adc $0x42,%ecx
 1000a69:	73 65                	jae    0x1000ad0
 1000a6b:	49 8d 71 00          	lea    0x0(%r9),%rsi
 1000a6f:	c7 c0 1d ee de 0b    	mov    $0xbdeee1d,%eax
 1000a75:	37                   	(bad)  
 1000a76:	44 2f                	rex.R (bad) 
 1000a78:	fd                   	std    
 1000a79:	c3                   	retq   
 1000a7a:	9e                   	sahf   
 1000a7b:	fa                   	cli    
 1000a7c:	db a3 2f cb 92 1b    	(bad)  0x1b92cb2f(%rbx)
 1000a82:	d9 f8                	fprem  
 1000a84:	64 ce                	fs (bad) 
 1000a86:	32 64 41 cb          	xor    -0x35(%rcx,%rax,2),%ah
 1000a8a:	eb 9b                	jmp    0x1000a27
 1000a8c:	c2 ea 14             	retq   $0x14ea
 1000a8f:	a0 60 1e ba f5 a5 96 	movabs 0x41e296a5f5ba1e60,%al
 1000a96:	e2 41 
 1000a98:	16                   	(bad)  
 1000a99:	8a bd 7c 30 1e 6b    	mov    0x6b1e307c(%rbp),%bh
 1000a9f:	46                   	rex.RX
 1000aa0:	26 cf                	es iret 
 1000aa2:	5b                   	pop    %rbx
 1000aa3:	36 72 6a             	ss jb  0x1000b10
 1000aa6:	e0 78                	loopne 0x1000b20
 1000aa8:	16                   	(bad)  
 1000aa9:	09 5b 32             	or     %ebx,0x32(%rbx)
 1000aac:	50                   	push   %rax
 1000aad:	b4 15                	mov    $0x15,%ah
 1000aaf:	05 f2 b6 67 41       	add    $0x4167b6f2,%eax
 1000ab4:	12 70 e6             	adc    -0x1a(%rax),%dh
 1000ab7:	2a 3e                	sub    (%rsi),%bh
 1000ab9:	f6 61 0c             	mulb   0xc(%rcx)
 1000abc:	4e                   	rex.WRX
 1000abd:	46 2f                	rex.RX (bad) 
 1000abf:	6c                   	insb   (%dx),%es:(%rdi)
 1000ac0:	35 11 9b 1d b4       	xor    $0xb41d9b11,%eax
 1000ac5:	2a f0                	sub    %al,%dh
 1000ac7:	0d a9 58 eb d5       	or     $0xd5eb58a9,%eax
 1000acc:	12 90 5e ba 86 62    	adc    0x6286ba5e(%rax),%dl
 1000ad2:	59                   	pop    %rcx
 1000ad3:	d7                   	xlat   %ds:(%rbx)
 1000ad4:	2e 96                	cs xchg %eax,%esi
 1000ad6:	2f                   	(bad)  
 1000ad7:	e1 05                	loope  0x1000ade
 1000ad9:	d0 e1                	shl    %cl
 1000adb:	8e 1a                	mov    (%rdx),%ds
 1000add:	1b ed                	sbb    %ebp,%ebp
 1000adf:	26 f3 ed             	es repz in (%dx),%eax
 1000ae2:	ff cc                	dec    %esp
 1000ae4:	e9 c6 2e a6 23       	jmpq   0x24a639af
 1000ae9:	91                   	xchg   %eax,%ecx
 1000aea:	f3 f7 e0             	repz mul %eax
 1000aed:	25 77 0a f8 99       	and    $0x99f80a77,%eax
 1000af2:	fc                   	cld    
 1000af3:	28 e1                	sub    %ah,%cl
 1000af5:	03 d7                	add    %edi,%edx
 1000af7:	da d4                	fcmovbe %st(4),%st
 1000af9:	1a 56 06             	sbb    0x6(%rsi),%dl
 1000afc:	74 68                	je     0x1000b66
 1000afe:	b7 83                	mov    $0x83,%bh
 1000b00:	36 ef                	ss out %eax,(%dx)
 1000b02:	dc a0 52 a6 61 fe    	fsubl  -0x19e59ae(%rax)
 1000b08:	da 33                	fidivl (%rbx)
 1000b0a:	bf 2c 6a af b2       	mov    $0xb2af6a2c,%edi
 1000b0f:	0f ef 18             	pxor   (%rax),%mm3
 1000b12:	47 71 0b             	rex.RXB jno 0x1000b20
 1000b15:	b8 f2 99 ac 96       	mov    $0x96ac99f2,%eax
 1000b1a:	3c 62                	cmp    $0x62,%al
 1000b1c:	7a 89                	jp     0x1000aa7
 1000b1e:	75 fb                	jne    0x1000b1b
 1000b20:	c5 1d b8             	(bad)
 1000b23:	37                   	(bad)  
 1000b24:	e4 05                	in     $0x5,%al
 1000b26:	10 2d 11 43 63 27    	adc    %ch,0x27634311(%rip)        # 0x28634e3d
 1000b2c:	db e9                	fucomi %st(1),%st
 1000b2e:	8e be a3 a3 fe 9f    	mov    -0x60015c5d(%rsi),%?
 1000b34:	a9 1e 24 0d 65       	test   $0x650d241e,%eax
 1000b39:	83 d8 d0             	sbb    $0xffffffd0,%eax
 1000b3c:	31 d3                	xor    %edx,%ebx
 1000b3e:	c0 fd 7d             	sar    $0x7d,%ch
 1000b41:	d1 5d 3e             	rcrl   0x3e(%rbp)
 1000b44:	2e e0 16             	loopne,pn 0x1000b5d
 1000b47:	b1 61                	mov    $0x61,%cl
 1000b49:	1c 06                	sbb    $0x6,%al
 1000b4b:	d7                   	xlat   %ds:(%rbx)
 1000b4c:	ff 37                	pushq  (%rdi)
 1000b4e:	a1 aa 68 59 7e 4c b4 	movabs 0x8c2fb44c7e5968aa,%eax
 1000b55:	2f 8c 
 1000b57:	fa                   	cli    
 1000b58:	e9 fa aa ed 9a       	jmpq   0xffffffff9bedb657
 1000b5d:	e4 b3                	in     $0xb3,%al
 1000b5f:	ca dc 6f             	lret   $0x6fdc
 1000b62:	b8 34 5c 70 ae       	mov    $0xae705c34,%eax
 1000b67:	70 40                	jo     0x1000ba9
 1000b69:	02 6d 4e             	add    0x4e(%rbp),%ch
 1000b6c:	91                   	xchg   %eax,%ecx
 1000b6d:	ed                   	in     (%dx),%eax
 1000b6e:	c6                   	(bad)  
 1000b6f:	97                   	xchg   %eax,%edi
 1000b70:	39 fa                	cmp    %edi,%edx
 1000b72:	0a 0e                	or     (%rsi),%cl
 1000b74:	7d 74                	jge    0x1000bea
 1000b76:	12 26                	adc    (%rsi),%ah
 1000b78:	fa                   	cli    
 1000b79:	97                   	xchg   %eax,%edi
 1000b7a:	52                   	push   %rdx
 1000b7b:	59                   	pop    %rcx
 1000b7c:	e9 2c 63 32 ff       	jmpq   0x326ead
 1000b81:	b9 0d 78 c6 de       	mov    $0xdec6780d,%ecx
 1000b86:	87 4f 64             	xchg   %ecx,0x64(%rdi)
 1000b89:	eb 88                	jmp    0x1000b13
 1000b8b:	00 37                	add    %dh,(%rdi)
 1000b8d:	3f                   	(bad)  
 1000b8e:	a3 96 40 d1 0c 34 ce 	movabs %eax,0xf77cce340cd14096
 1000b95:	7c f7 
 1000b97:	fb                   	sti    
 1000b98:	8d 2a                	lea    (%rdx),%ebp
 1000b9a:	54                   	push   %rsp
 1000b9b:	ee                   	out    %al,(%dx)
 1000b9c:	52                   	push   %rdx
 1000b9d:	b7 43                	mov    $0x43,%bh
 1000b9f:	4e 60                	rex.WRX (bad) 
 1000ba1:	be 67 86 0c 5d       	mov    $0x5d0c8667,%esi
 1000ba6:	2a f1                	sub    %cl,%dh
 1000ba8:	4f e4 34             	rex.WRXB in $0x34,%al
 1000bab:	00 80 86 ab 3a 4c    	add    %al,0x4c3aab86(%rax)
 1000bb1:	0c 48                	or     $0x48,%al
 1000bb3:	ab                   	stos   %eax,%es:(%rdi)
 1000bb4:	0e                   	(bad)  
 1000bb5:	af                   	scas   %es:(%rdi),%eax
 1000bb6:	f7 24 eb             	mull   (%rbx,%rbp,8)
 1000bb9:	c1 f2 1e             	shl    $0x1e,%edx
 1000bbc:	05 e6 df 0e 4d       	add    $0x4d0edfe6,%eax
 1000bc1:	31 1c b4             	xor    %ebx,(%rsp,%rsi,4)
 1000bc4:	76 61                	jbe    0x1000c27
 1000bc6:	80 c3 8d             	add    $0x8d,%bl
 1000bc9:	04 7c                	add    $0x7c,%al
 1000bcb:	2b fb                	sub    %ebx,%edi
 1000bcd:	9d                   	popfq  
 1000bce:	bf ea ef 3c 7c       	mov    $0x7c3cefea,%edi
 1000bd3:	01 1c 40             	add    %ebx,(%rax,%rax,2)
 1000bd6:	13 38                	adc    (%rax),%edi
 1000bd8:	3c d6                	cmp    $0xd6,%al
 1000bda:	09 a6 47 72 ce e6    	or     %esp,-0x19318db9(%rsi)
 1000be0:	8d b7 33 c7 ef 14    	lea    0x14efc733(%rdi),%esi
 1000be6:	22 46 86             	and    -0x7a(%rsi),%al
 1000be9:	c3                   	retq   
 1000bea:	02 49 21             	add    0x21(%rcx),%cl
 1000bed:	de 00                	fiadds (%rax)
 1000bef:	88 61 74             	mov    %ah,0x74(%rcx)
 1000bf2:	6f                   	outsl  %ds:(%rsi),(%dx)
 1000bf3:	e8 d8 f8 84 84       	callq  0xffffffff858504d0
 1000bf8:	90                   	nop
 1000bf9:	b1 7d                	mov    $0x7d,%cl
 1000bfb:	6f                   	outsl  %ds:(%rsi),(%dx)
 1000bfc:	6b 6a a2 e7          	imul   $0xffffffe7,-0x5e(%rdx),%ebp
 1000c00:	76 ea                	jbe    0x1000bec
 1000c02:	63 01                	movsxd (%rcx),%eax
 1000c04:	79 7b                	jns    0x1000c81
 1000c06:	7f fb                	jg     0x1000c03
 1000c08:	60                   	(bad)  
 1000c09:	9b                   	fwait
 1000c0a:	fc                   	cld    
 1000c0b:	43 79 25             	rex.XB jns 0x1000c33
 1000c0e:	72 65                	jb     0x1000c75
 1000c10:	1c 3a                	sbb    $0x3a,%al
 1000c12:	b6 70                	mov    $0x70,%dh
 1000c14:	c3                   	retq   
 1000c15:	42 0d fd bb 7b 68    	rex.X or $0x687bbbfd,%eax
 1000c1b:	7c 1e                	jl     0x1000c3b
 1000c1d:	39 a2 e3 62 bc 39    	cmp    %esp,0x39bc62e3(%rdx)
 1000c23:	39 f8                	cmp    %edi,%eax
 1000c25:	08 04 a7             	or     %al,(%rdi,%riz,4)
 1000c28:	c4 c2 b6 05          	(bad)
 1000c2c:	a1 3d 23 8e f9 20 56 	movabs 0x42575620f98e233d,%eax
 1000c33:	57 42 
 1000c35:	c1 b7 ec 33 0a fd 70 	shll   $0x70,-0x2f5cc14(%rdi)
 1000c3c:	37                   	(bad)  
 1000c3d:	ea                   	(bad)  
 1000c3e:	8c 41 30             	mov    %es,0x30(%rcx)
 1000c41:	71 6f                	jno    0x1000cb2
 1000c43:	0b ac 3b 7c 06 4e 3d 	or     0x3d4e067c(%rbx,%rdi,1),%ebp
 1000c4a:	d9 21                	fldenv (%rcx)
 1000c4c:	41 0b a9 8d fd 0b 2e 	or     0x2e0bfd8d(%r9),%ebp
 1000c53:	59                   	pop    %rcx
 1000c54:	a3 73 99 63 77 33 c8 	movabs %eax,0x24b3c83377639973
 1000c5b:	b3 24 
 1000c5d:	c2 43 94             	retq   $0x9443
 1000c60:	76 d4                	jbe    0x1000c36
 1000c62:	ce                   	(bad)  
 1000c63:	0b db                	or     %ebx,%ebx
 1000c65:	1c 6d                	sbb    $0x6d,%al
 1000c67:	c9                   	leaveq 
 1000c68:	bb 51 6b 62 ac       	mov    $0xac626b51,%ebx
 1000c6d:	8b 15 85 b8 61 51    	mov    0x5161b885(%rip),%edx        # 0x5261c4f8
 1000c73:	7d 7e                	jge    0x1000cf3
 1000c75:	a0 9a 58 ce 39 f7 b7 	movabs 0xfe46b7f739ce589a,%al
 1000c7c:	46 fe 
 1000c7e:	bf 0e 6e 71 1a       	mov    $0x1a716e0e,%edi
 1000c83:	c6                   	(bad)  
 1000c84:	4d 25 af 8c 14 da    	rex.WRB and $0xffffffffda148caf,%rax
 1000c8a:	ee                   	out    %al,(%dx)
 1000c8b:	cf                   	iret   
 1000c8c:	ea                   	(bad)  
 1000c8d:	9b                   	fwait
 1000c8e:	b9 4b c1 d6 2c       	mov    $0x2cd6c14b,%ecx
 1000c93:	66 04 cf             	data16 add $0xcf,%al
 1000c96:	a8 f6                	test   $0xf6,%al
 1000c98:	a8 6d                	test   $0x6d,%al
 1000c9a:	49                   	rex.WB
 1000c9b:	48 60                	rex.W (bad) 
 1000c9d:	f7 49 01 ae f5 45 e9 	testl  $0xe945f5ae,0x1(%rcx)
 1000ca4:	e3 bc                	jrcxz  0x1000c62
 1000ca6:	5a                   	pop    %rdx
 1000ca7:	d0 45 42             	rolb   0x42(%rbp)
 1000caa:	f5                   	cmc    
 1000cab:	61                   	(bad)  
 1000cac:	4b 6b b0 21 50 3b 53 	rex.WXB imul $0xffffffffffffff90,0x533b5021(%r8),%rsi
 1000cb3:	90 
 1000cb4:	33 3f                	xor    (%rdi),%edi
 1000cb6:	f4                   	hlt    
 1000cb7:	64 34 3b             	fs xor $0x3b,%al
 1000cba:	1f                   	(bad)  
 1000cbb:	0e                   	(bad)  
 1000cbc:	b2 b2                	mov    $0xb2,%dl
 1000cbe:	a9 cc ae c1 b0       	test   $0xb0c1aecc,%eax
 1000cc3:	92                   	xchg   %eax,%edx
 1000cc4:	92                   	xchg   %eax,%edx
 1000cc5:	5f                   	pop    %rdi
 1000cc6:	7e 11                	jle    0x1000cd9
 1000cc8:	13 c8                	adc    %eax,%ecx
 1000cca:	4a 98                	rex.WX cltq 
 1000ccc:	39 bb b1 24 62 b2    	cmp    %edi,-0x4d9ddb4f(%rbx)
 1000cd2:	ee                   	out    %al,(%dx)
 1000cd3:	2f                   	(bad)  
 1000cd4:	35 d4 e8 ae b8       	xor    $0xb8aee8d4,%eax
 1000cd9:	80 54 23 79 1a       	adcb   $0x1a,0x79(%rbx,%riz,1)
 1000cde:	e5 fb                	in     $0xfb,%eax
 1000ce0:	4c 58                	rex.WR pop %rax
 1000ce2:	d5                   	(bad)  
 1000ce3:	fd                   	std    
 1000ce4:	5e                   	pop    %rsi
 1000ce5:	bb 08 03 66 15       	mov    $0x15660308,%ebx
 1000cea:	60                   	(bad)  
 1000ceb:	1c 61                	sbb    $0x61,%al
 1000ced:	86 44 dc 90          	xchg   %al,-0x70(%rsp,%rbx,8)
 1000cf1:	c0 3a a4             	sarb   $0xa4,(%rdx)
 1000cf4:	2c 21                	sub    $0x21,%al
 1000cf6:	32 21                	xor    (%rcx),%ah
 1000cf8:	d1 7f 0b             	sarl   0xb(%rdi)
 1000cfb:	cb                   	lret   
 1000cfc:	87 52 a9             	xchg   %edx,-0x57(%rdx)
 1000cff:	ac                   	lods   %ds:(%rsi),%al
 1000d00:	fe                   	(bad)  
 1000d01:	53                   	push   %rbx
 1000d02:	2f                   	(bad)  
 1000d03:	65 67 1a a0 81 23 51 	sbb    %gs:0x50512381(%eax),%ah
 1000d0a:	50 
 1000d0b:	6c                   	insb   (%dx),%es:(%rdi)
 1000d0c:	cd f1                	int    $0xf1
 1000d0e:	e4 82                	in     $0x82,%al
 1000d10:	8b f3                	mov    %ebx,%esi
 1000d12:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1000d13:	1c 4d                	sbb    $0x4d,%al
 1000d15:	f6 a4 28 fb 38 52 ea 	mulb   -0x15adc705(%rax,%rbp,1)
 1000d1c:	00 2a                	add    %ch,(%rdx)
 1000d1e:	ca b2 54             	lret   $0x54b2
 1000d21:	a9 88 1b 55 29       	test   $0x29551b88,%eax
 1000d26:	91                   	xchg   %eax,%ecx
 1000d27:	88 f0                	mov    %dh,%al
 1000d29:	e3 be                	jrcxz  0x1000ce9
 1000d2b:	bf cd 61 73 70       	mov    $0x707361cd,%edi
 1000d30:	ed                   	in     (%dx),%eax
 1000d31:	bc 06 8d 3b 5d       	mov    $0x5d3b8d06,%esp
 1000d36:	b2 80                	mov    $0x80,%dl
 1000d38:	e8 07 66 ce 71       	callq  0x72ce7344
 1000d3d:	b8 74 3e 87 9a       	mov    $0x9a873e74,%eax
 1000d42:	49 3c 36             	rex.WB cmp $0x36,%al
 1000d45:	53                   	push   %rbx
 1000d46:	59                   	pop    %rcx
 1000d47:	d0 14 08             	rclb   (%rax,%rcx,1)
 1000d4a:	1d 41 dd dc 5f       	sbb    $0x5fdcdd41,%eax
 1000d4f:	38 95 19 96 9c 80    	cmp    %dl,-0x7f6369e7(%rbp)
 1000d55:	c4                   	(bad)  
 1000d56:	c8 f9 e1 ce          	enterq $0xe1f9,$0xce
 1000d5a:	ed                   	in     (%dx),%eax
 1000d5b:	2e 93                	cs xchg %eax,%ebx
 1000d5d:	f3 07                	repz (bad) 
 1000d5f:	11 74 26 fa          	adc    %esi,-0x6(%rsi,%riz,1)
 1000d63:	c6                   	(bad)  
 1000d64:	74 a9                	je     0x1000d0f
 1000d66:	e6 74                	out    %al,$0x74
 1000d68:	19 eb                	sbb    %ebp,%ebx
 1000d6a:	df 32                	fbstp  (%rdx)
 1000d6c:	d1 c3                	rol    %ebx
 1000d6e:	a9 4f 52 82 95       	test   $0x9582524f,%eax
 1000d73:	52                   	push   %rdx
 1000d74:	43 92                	rex.XB xchg %eax,%r10d
 1000d76:	32 e4                	xor    %ah,%ah
 1000d78:	57                   	push   %rdi
 1000d79:	b7 74                	mov    $0x74,%bh
 1000d7b:	3b 88 1c cc 6d 1f    	cmp    0x1f6dcc1c(%rax),%ecx
 1000d81:	7d 65                	jge    0x1000de8
 1000d83:	62                   	(bad)  
 1000d84:	09 71 f9             	or     %esi,-0x7(%rcx)
 1000d87:	18 cd                	sbb    %cl,%ch
 1000d89:	9e                   	sahf   
 1000d8a:	2a fe                	sub    %dh,%bh
 1000d8c:	69 2d a0 19 cf e6 5c 	imul   $0x888ec5c,-0x1930e660(%rip),%ebp        # 0xffffffffe7cf2736
 1000d93:	ec 88 08 
 1000d96:	c6                   	(bad)  
 1000d97:	eb f1                	jmp    0x1000d8a
 1000d99:	3b 08                	cmp    (%rax),%ecx
 1000d9b:	99                   	cltd   
 1000d9c:	9d                   	popfq  
 1000d9d:	90                   	nop
 1000d9e:	7e 5c                	jle    0x1000dfc
 1000da0:	8b 6a ba             	mov    -0x46(%rdx),%ebp
 1000da3:	61                   	(bad)  
 1000da4:	99                   	cltd   
 1000da5:	34 75                	xor    $0x75,%al
 1000da7:	43 fb                	rex.XB sti 
 1000da9:	0c a6                	or     $0xa6,%al
 1000dab:	8f c7                	pop    %rdi
 1000dad:	df 4d 92             	fisttps -0x6e(%rbp)
 1000db0:	0a 5d 43             	or     0x43(%rbp),%bl
 1000db3:	00 7c c6 00          	add    %bh,0x0(%rsi,%rax,8)
 1000db7:	49 0c 17             	rex.WB or $0x17,%al
 1000dba:	92                   	xchg   %eax,%edx
 1000dbb:	4f 78 78             	rex.WRXB js 0x1000e36
 1000dbe:	7a 19                	jp     0x1000dd9
 1000dc0:	b4 09                	mov    $0x9,%ah
 1000dc2:	17                   	(bad)  
 1000dc3:	05 51 48 73 f5       	add    $0xf5734851,%eax
 1000dc8:	90                   	nop
 1000dc9:	43 9f                	rex.XB lahf 
 1000dcb:	83 a2 c0 90 e8 2b 15 	andl   $0x15,0x2be890c0(%rdx)
 1000dd2:	90                   	nop
 1000dd3:	f1                   	icebp  
 1000dd4:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1000dd5:	90                   	nop
 1000dd6:	31 9c a2 22 2a 99 1a 	xor    %ebx,0x1a992a22(%rdx,%riz,4)
 1000ddd:	51                   	push   %rcx
 1000dde:	ab                   	stos   %eax,%es:(%rdi)
 1000ddf:	ea                   	(bad)  
 1000de0:	92                   	xchg   %eax,%edx
 1000de1:	72 a0                	jb     0x1000d83
 1000de3:	7f dd                	jg     0x1000dc2
 1000de5:	81 f7 0c 0b 96 6d    	xor    $0x6d960b0c,%edi
 1000deb:	83 7c 71 2c 25       	cmpl   $0x25,0x2c(%rcx,%rsi,2)
 1000df0:	be b5 7d 66 0b       	mov    $0xb667db5,%esi
 1000df5:	0f bb a2 e2 fe e1 00 	btc    %esp,0xe1fee2(%rdx)
 1000dfc:	03 6a 7c             	add    0x7c(%rdx),%ebp
 1000dff:	62                   	(bad)  
 1000e00:	b8 1b b5 fb 8d       	mov    $0x8dfbb51b,%eax
 1000e05:	ce                   	(bad)  
 1000e06:	ac                   	lods   %ds:(%rsi),%al
 1000e07:	b9 c9 69 be 20       	mov    $0x20be69c9,%ecx
 1000e0c:	6b ae 09 98 bf e0 e1 	imul   $0xffffffe1,-0x1f4067f7(%rsi),%ebp
 1000e13:	89 d2                	mov    %edx,%edx
 1000e15:	f7 66 ab             	mull   -0x55(%rsi)
 1000e18:	9d                   	popfq  
 1000e19:	a2 ac bc 98 8f 37 f3 	movabs %al,0xd49f3378f98bcac
 1000e20:	49 0d 
 1000e22:	18 40 c2             	sbb    %al,-0x3e(%rax)
 1000e25:	5f                   	pop    %rdi
 1000e26:	e3 c3                	jrcxz  0x1000deb
 1000e28:	ae                   	scas   %es:(%rdi),%al
 1000e29:	c3                   	retq   
 1000e2a:	3d 16 4c 33 7c       	cmp    $0x7c334c16,%eax
 1000e2f:	48 13 53 0a          	adc    0xa(%rbx),%rdx
 1000e33:	46 71 f2             	rex.RX jno 0x1000e28
 1000e36:	41 ad                	rex.B lods %ds:(%rsi),%eax
 1000e38:	84 cb                	test   %cl,%bl
 1000e3a:	1b 1f                	sbb    (%rdi),%ebx
 1000e3c:	0a a0 69 ce 7e 79    	or     0x797ece69(%rax),%ah
 1000e42:	46                   	rex.RX
 1000e43:	45 17                	rex.RB (bad) 
 1000e45:	80 d8 9d             	sbb    $0x9d,%al
 1000e48:	e5 6b                	in     $0x6b,%eax
 1000e4a:	ca 82 db             	lret   $0xdb82
 1000e4d:	87 21                	xchg   %esp,(%rcx)
 1000e4f:	cb                   	lret   
 1000e50:	a9 24 f1 4a 3a       	test   $0x3a4af124,%eax
 1000e55:	18 bf a0 07 46 bd    	sbb    %bh,-0x42b9f860(%rdi)
 1000e5b:	31 88 1b b5 94 1a    	xor    %ecx,0x1a94b51b(%rax)
 1000e61:	b0 fa                	mov    $0xfa,%al
 1000e63:	f1                   	icebp  
 1000e64:	29 90 56 da 9a dd    	sub    %edx,-0x226525aa(%rax)
 1000e6a:	b2 c0                	mov    $0xc0,%dl
 1000e6c:	36 36 cf             	ss ss iret 
 1000e6f:	30 3e                	xor    %bh,(%rsi)
 1000e71:	b4 88                	mov    $0x88,%ah
 1000e73:	10 7e 57             	adc    %bh,0x57(%rsi)
 1000e76:	55                   	push   %rbp
 1000e77:	cd e1                	int    $0xe1
 1000e79:	29 24 d8             	sub    %esp,(%rax,%rbx,8)
 1000e7c:	c7 86 36 e7 cb e2 04 	movl   $0x26f20004,-0x1d3418ca(%rsi)
 1000e83:	00 f2 26 
 1000e86:	29 be aa 48 2e 9f    	sub    %edi,-0x60d1b756(%rsi)
 1000e8c:	bd f3 f9 a4 f3       	mov    $0xf3a4f9f3,%ebp
 1000e91:	0d e0 41 e2 e5       	or     $0xe5e241e0,%eax
 1000e96:	ca 33 bf             	lret   $0xbf33
 1000e99:	d0 de                	rcr    %dh
 1000e9b:	aa                   	stos   %al,%es:(%rdi)
 1000e9c:	7e ba                	jle    0x1000e58
 1000e9e:	55                   	push   %rbp
 1000e9f:	9e                   	sahf   
 1000ea0:	f7 33                	divl   (%rbx)
 1000ea2:	1c 98                	sbb    $0x98,%al
 1000ea4:	ca 94 0a             	lret   $0xa94
 1000ea7:	75 2f                	jne    0x1000ed8
 1000ea9:	ac                   	lods   %ds:(%rsi),%al
 1000eaa:	e7 48                	out    %eax,$0x48
 1000eac:	dc 09                	fmull  (%rcx)
 1000eae:	50                   	push   %rax
 1000eaf:	06                   	(bad)  
 1000eb0:	0b f9                	or     %ecx,%edi
 1000eb2:	1c 09                	sbb    $0x9,%al
 1000eb4:	7a e2                	jp     0x1000e98
 1000eb6:	01 de                	add    %ebx,%esi
 1000eb8:	51                   	push   %rcx
 1000eb9:	23 eb                	and    %ebx,%ebp
 1000ebb:	5e                   	pop    %rsi
 1000ebc:	b4 e0                	mov    $0xe0,%ah
 1000ebe:	47 c2 55 27          	rex.RXB retq $0x2755
 1000ec2:	d2 65 7b             	shlb   %cl,0x7b(%rbp)
 1000ec5:	3f                   	(bad)  
 1000ec6:	0e                   	(bad)  
 1000ec7:	2c 34                	sub    $0x34,%al
 1000ec9:	4c 30 79 ec          	rex.WR xor %r15b,-0x14(%rcx)
 1000ecd:	31 1e                	xor    %ebx,(%rsi)
 1000ecf:	99                   	cltd   
 1000ed0:	dc c5                	fadd   %st,%st(5)
 1000ed2:	4d                   	rex.WRB
 1000ed3:	44 c8 c4 3b 0d       	rex.R enterq $0x3bc4,$0xd
 1000ed8:	36 36 bc 5a 2c 96 86 	ss ss mov $0x86962c5a,%esp
 1000edf:	b7 a7                	mov    $0xa7,%bh
 1000ee1:	60                   	(bad)  
 1000ee2:	07                   	(bad)  
 1000ee3:	e0 24                	loopne 0x1000f09
 1000ee5:	11 cd                	adc    %ecx,%ebp
 1000ee7:	06                   	(bad)  
 1000ee8:	c8 1a c8 04          	enterq $0xc81a,$0x4
 1000eec:	64 ce                	fs (bad) 
 1000eee:	6d                   	insl   (%dx),%es:(%rdi)
 1000eef:	58                   	pop    %rax
 1000ef0:	22 8a 74 92 8c 59    	and    0x598c9274(%rdx),%cl
 1000ef6:	ad                   	lods   %ds:(%rsi),%eax
 1000ef7:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1000ef8:	ba b3 e9 39 d9       	mov    $0xd939e9b3,%edx
 1000efd:	0d a2 c0 e3 73       	or     $0x73e3c0a2,%eax
 1000f02:	00 0a                	add    %cl,(%rdx)
 1000f04:	e3 55                	jrcxz  0x1000f5b
 1000f06:	46 07                	rex.RX (bad) 
 1000f08:	33 6f 66             	xor    0x66(%rdi),%ebp
 1000f0b:	31 15 d5 21 c6 10    	xor    %edx,0x10c621d5(%rip)        # 0x11c630e6
 1000f11:	2a b0 d5 8c 48 d0    	sub    -0x2fb7732b(%rax),%dh
 1000f17:	11 22                	adc    %esp,(%rdx)
 1000f19:	f7 ac ba 6b a6 02 d0 	imull  -0x2ffd5995(%rdx,%rdi,4)
 1000f20:	5f                   	pop    %rdi
 1000f21:	46 de f3             	rex.RX fdivp %st,%st(3)
 1000f24:	bc 9b c7 d2 0b       	mov    $0xbd2c79b,%esp
 1000f29:	7f 24                	jg     0x1000f4f
 1000f2b:	4b c8 f4 98 7f       	rex.WXB enterq $0x98f4,$0x7f
 1000f30:	ad                   	lods   %ds:(%rsi),%eax
 1000f31:	80 57 3d ae          	adcb   $0xae,0x3d(%rdi)
 1000f35:	2f                   	(bad)  
 1000f36:	96                   	xchg   %eax,%esi
 1000f37:	77 56                	ja     0x1000f8f
 1000f39:	f3 07                	repz (bad) 
 1000f3b:	c0 7a cf ff          	sarb   $0xff,-0x31(%rdx)
 1000f3f:	c5 68 0a             	(bad)
 1000f42:	2a 91 56 de 5a 5b    	sub    0x5b5ade56(%rcx),%dl
 1000f48:	bd 77 c9 47 a4       	mov    $0xa447c977,%ebp
 1000f4d:	13 3d 89 23 ca 87    	adc    -0x7835dc77(%rip),%edi        # 0xffffffff88ca32dc
 1000f53:	74 85                	je     0x1000eda
 1000f55:	6f                   	outsl  %ds:(%rsi),(%dx)
 1000f56:	ff d2                	callq  *%rdx
 1000f58:	3f                   	(bad)  
 1000f59:	a1 5b 06 81 57 95 58 	movabs 0x4fe458955781065b,%eax
 1000f60:	e4 4f 
 1000f62:	fa                   	cli    
 1000f63:	6a 17                	pushq  $0x17
 1000f65:	db 42 80             	fildl  -0x80(%rdx)
 1000f68:	b9 02 2d fe 85       	mov    $0x85fe2d02,%ecx
 1000f6d:	d1 88 fd a0 6b 2c    	rorl   0x2c6ba0fd(%rax)
 1000f73:	e0 f7                	loopne 0x1000f6c
 1000f75:	c3                   	retq   
 1000f76:	9f                   	lahf   
 1000f77:	b6 3f                	mov    $0x3f,%dh
 1000f79:	19 3d 39 40 b4 1d    	sbb    %edi,0x1db44039(%rip)        # 0x1eb44fb8
 1000f7f:	23 64 3f 50          	and    0x50(%rdi,%rdi,1),%esp
 1000f83:	90                   	nop
 1000f84:	74 03                	je     0x1000f89
 1000f86:	07                   	(bad)  
 1000f87:	3c e5                	cmp    $0xe5,%al
 1000f89:	3d 78 34 7f f3       	cmp    $0xf37f3478,%eax
 1000f8e:	43 7f 5b             	rex.XB jg 0x1000fec
 1000f91:	ab                   	stos   %eax,%es:(%rdi)
 1000f92:	07                   	(bad)  
 1000f93:	9e                   	sahf   
 1000f94:	4c                   	rex.WR
 1000f95:	f2 57                	repnz push %rdi
 1000f97:	8e 50 5c             	mov    0x5c(%rax),%ss
 1000f9a:	99                   	cltd   
 1000f9b:	e2 27                	loop   0x1000fc4
 1000f9d:	ce                   	(bad)  
 1000f9e:	c9                   	leaveq 
 1000f9f:	9c                   	pushfq 
 1000fa0:	96                   	xchg   %eax,%esi
 1000fa1:	8f                   	(bad)  
 1000fa2:	8b 98 3e 71 cc a1    	mov    -0x5e338ec2(%rax),%ebx
 1000fa8:	81 68 19 b1 50 61 79 	subl   $0x796150b1,0x19(%rax)
 1000faf:	29 5d d2             	sub    %ebx,-0x2e(%rbp)
 1000fb2:	b5 e8                	mov    $0xe8,%ch
 1000fb4:	dd 44 df 46          	fldl   0x46(%rdi,%rbx,8)
 1000fb8:	96                   	xchg   %eax,%esi
 1000fb9:	d0 25 ac 02 df ce    	shlb   -0x3120fd54(%rip)        # 0xffffffffcfdf126b
 1000fbf:	3d f9 d5 cd 1d       	cmp    $0x1dcdd5f9,%eax
 1000fc4:	06                   	(bad)  
 1000fc5:	88 13                	mov    %dl,(%rbx)
 1000fc7:	bb 76 3a 0b af       	mov    $0xaf0b3a76,%ebx
 1000fcc:	7c 80                	jl     0x1000f4e
 1000fce:	b2 91                	mov    $0x91,%dl
 1000fd0:	ac                   	lods   %ds:(%rsi),%al
 1000fd1:	f1                   	icebp  
 1000fd2:	2c 37                	sub    $0x37,%al
 1000fd4:	56                   	push   %rsi
 1000fd5:	09 82 8b c1 ec f2    	or     %eax,-0xd133e75(%rdx)
 1000fdb:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1000fdc:	a1 5e ba cc 6d 49 a5 	movabs 0x95c7a5496dccba5e,%eax
 1000fe3:	c7 95 
 1000fe5:	bb 65 ba f2 68       	mov    $0x68f2ba65,%ebx
 1000fea:	93                   	xchg   %eax,%ebx
 1000feb:	db 92 21 ec f5 68    	fistl  0x68f5ec21(%rdx)
 1000ff1:	0a ed                	or     %ch,%ch
 1000ff3:	03 65 0a             	add    0xa(%rbp),%esp
 1000ff6:	6c                   	insb   (%dx),%es:(%rdi)
 1000ff7:	1d a4 73 d0 29       	sbb    $0x29d073a4,%eax
 1000ffc:	22 84 e3 f3 b2 e9 f4 	and    -0xb164d0d(%rbx,%riz,8),%al
 1001003:	04 3b                	add    $0x3b,%al
 1001005:	aa                   	stos   %al,%es:(%rdi)
 1001006:	9c                   	pushfq 
 1001007:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1001008:	e2 3c                	loop   0x1001046
 100100a:	00 bc 41 ca f0 c0 92 	add    %bh,-0x6d3f0f36(%rcx,%rax,2)
 1001011:	c6                   	(bad)  
 1001012:	77 91                	ja     0x1000fa5
 1001014:	f0 40 20 c0          	lock and %al,%al
 1001018:	63 6d 95             	movsxd -0x6b(%rbp),%ebp
 100101b:	80 8f 52 1c 93 6d d9 	orb    $0xd9,0x6d931c52(%rdi)
 1001022:	e3 c8                	jrcxz  0x1000fec
 1001024:	a0 6e 48 1e ff 54 a5 	movabs 0x3a39a554ff1e486e,%al
 100102b:	39 3a 
 100102d:	a3 2c 38 74 70 df d9 	movabs %eax,0x9122d9df7074382c
 1001034:	22 91 
 1001036:	97                   	xchg   %eax,%edi
 1001037:	14 84                	adc    $0x84,%al
 1001039:	95                   	xchg   %eax,%ebp
 100103a:	0d df 4f e6 f5       	or     $0xf5e64fdf,%eax
 100103f:	1f                   	(bad)  
 1001040:	ce                   	(bad)  
 1001041:	fc                   	cld    
 1001042:	c6                   	(bad)  
 1001043:	3d d6 89 70 4c       	cmp    $0x4c7089d6,%eax
 1001048:	6b b3 1d 6e 52 d7 7c 	imul   $0x7c,-0x28ad91e3(%rbx),%esi
 100104f:	bc fd ce c2 c8       	mov    $0xc8c2cefd,%esp
 1001054:	28 68 d4             	sub    %ch,-0x2c(%rax)
 1001057:	8d                   	(bad)  
 1001058:	ee                   	out    %al,(%dx)
 1001059:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100105a:	b2 ea                	mov    $0xea,%dl
 100105c:	38 e9                	cmp    %ch,%cl
 100105e:	3f                   	(bad)  
 100105f:	14 55                	adc    $0x55,%al
 1001061:	93                   	xchg   %eax,%ebx
 1001062:	2c e0                	sub    $0xe0,%al
 1001064:	ed                   	in     (%dx),%eax
 1001065:	70 e9                	jo     0x1001050
 1001067:	73 ee                	jae    0x1001057
 1001069:	1b 0f                	sbb    (%rdi),%ecx
 100106b:	8c cf                	mov    %cs,%edi
 100106d:	02 e3                	add    %bl,%ah
 100106f:	95                   	xchg   %eax,%ebp
 1001070:	9f                   	lahf   
 1001071:	28 fa                	sub    %bh,%dl
 1001073:	47 b0 fb             	rex.RXB mov $0xfb,%r8b
 1001076:	0a c5                	or     %ch,%al
 1001078:	b6 dc                	mov    $0xdc,%dh
 100107a:	39 bf 25 6b a8 fd    	cmp    %edi,-0x25794db(%rdi)
 1001080:	ba b2 9d 7d e2       	mov    $0xe27d9db2,%edx
 1001085:	4c f5                	rex.WR cmc 
 1001087:	c5 60 27             	(bad)
 100108a:	4b 52                	rex.WXB push %r10
 100108c:	95                   	xchg   %eax,%ebp
 100108d:	89 1a                	mov    %ebx,(%rdx)
 100108f:	a3 db 53 3c 21 58 fe 	movabs %eax,0x3426fe58213c53db
 1001096:	26 34 
 1001098:	4d e1 d5             	rex.WRB loope 0x1001070
 100109b:	62                   	(bad)  
 100109c:	db 00                	fildl  (%rax)
 100109e:	90                   	nop
 100109f:	37                   	(bad)  
 10010a0:	a0 a4 8a 2e 59 ba a4 	movabs 0x173a4ba592e8aa4,%al
 10010a7:	73 01 
 10010a9:	d9 65 1e             	fldenv 0x1e(%rbp)
 10010ac:	0e                   	(bad)  
 10010ad:	25 07 13 04 21       	and    $0x21041307,%eax
 10010b2:	04 63                	add    $0x63,%al
 10010b4:	dc 4c fa e1          	fmull  -0x1f(%rdx,%rdi,8)
 10010b8:	47 e1 42             	rex.RXB loope 0x10010fd
 10010bb:	4a 98                	rex.WX cltq 
 10010bd:	a1 ec 1d 1e 46 4b 83 	movabs 0xa383834b461e1dec,%eax
 10010c4:	83 a3 
 10010c6:	7c 78                	jl     0x1001140
 10010c8:	68 09 2d 5b 55       	pushq  $0x555b2d09
 10010cd:	96                   	xchg   %eax,%esi
 10010ce:	78 bd                	js     0x100108d
 10010d0:	60                   	(bad)  
 10010d1:	9b                   	fwait
 10010d2:	bb d6 e0 5a 23       	mov    $0x235ae0d6,%ebx
 10010d7:	aa                   	stos   %al,%es:(%rdi)
 10010d8:	79 c6                	jns    0x10010a0
 10010da:	7d 77                	jge    0x1001153
 10010dc:	de 43 d5             	fiadds -0x2b(%rbx)
 10010df:	8a d9                	mov    %cl,%bl
 10010e1:	90                   	nop
 10010e2:	88 e3                	mov    %ah,%bl
 10010e4:	29 de                	sub    %ebx,%esi
 10010e6:	f3 a9 a8 b7 bd df    	repz test $0xdfbdb7a8,%eax
 10010ec:	51                   	push   %rcx
 10010ed:	94                   	xchg   %eax,%esp
 10010ee:	f9                   	stc    
 10010ef:	00 5e 59             	add    %bl,0x59(%rsi)
 10010f2:	00 6c 98 13          	add    %ch,0x13(%rax,%rbx,4)
 10010f6:	3d 8e 58 81 e7       	cmp    $0xe781588e,%eax
 10010fb:	ee                   	out    %al,(%dx)
 10010fc:	df e3                	(bad)  
 10010fe:	8f                   	(bad)  
 10010ff:	f0 62 c3             	lock (bad) 
 1001102:	fa                   	cli    
 1001103:	0b d2                	or     %edx,%edx
 1001105:	38 8c 55 f4 a1 d0 e0 	cmp    %cl,-0x1f2f5e0c(%rbp,%rdx,2)
 100110c:	77 1d                	ja     0x100112b
 100110e:	f3 0c 05             	repz or $0x5,%al
 1001111:	91                   	xchg   %eax,%ecx
 1001112:	e6 e5                	out    %al,$0xe5
 1001114:	e4 1d                	in     $0x1d,%al
 1001116:	28 e0                	sub    %ah,%al
 1001118:	57                   	push   %rdi
 1001119:	38 00                	cmp    %al,(%rax)
 100111b:	dd a5 05 c8 ce a3    	frstor -0x5c3137fb(%rbp)
 1001121:	97                   	xchg   %eax,%edi
 1001122:	20 17                	and    %dl,(%rdi)
 1001124:	f1                   	icebp  
 1001125:	aa                   	stos   %al,%es:(%rdi)
 1001126:	11 0b                	adc    %ecx,(%rbx)
 1001128:	00 56 e2             	add    %dl,-0x1e(%rsi)
 100112b:	29 84 53 df 9e cf c3 	sub    %eax,-0x3c306121(%rbx,%rdx,2)
 1001132:	1f                   	(bad)  
 1001133:	29 12                	sub    %edx,(%rdx)
 1001135:	65 19 7d 33          	sbb    %edi,%gs:0x33(%rbp)
 1001139:	ff f2                	push   %rdx
 100113b:	e6 82                	out    %al,$0x82
 100113d:	a3 f9 e9 2b 83 56 5f 	movabs %eax,0x9c2b5f56832be9f9
 1001144:	2b 9c 
 1001146:	3e 8b 79 df          	mov    %ds:-0x21(%rcx),%edi
 100114a:	78 22                	js     0x100116e
 100114c:	f6 8e 35 0e 62 99 26 	testb  $0x26,-0x669df1cb(%rsi)
 1001153:	3d 3f ae a5 bc       	cmp    $0xbca5ae3f,%eax
 1001158:	14 12                	adc    $0x12,%al
 100115a:	06                   	(bad)  
 100115b:	c7                   	(bad)  
 100115c:	ae                   	scas   %es:(%rdi),%al
 100115d:	8f 08 26 02          	(bad)
 1001161:	e5 2b                	in     $0x2b,%eax
 1001163:	b2 69                	mov    $0x69,%dl
 1001165:	d8 d5                	fcom   %st(5)
 1001167:	41 ec                	rex.B in (%dx),%al
 1001169:	c5 6a 88             	(bad)
 100116c:	fa                   	cli    
 100116d:	dd e4                	fucom  %st(4)
 100116f:	28 ca                	sub    %cl,%dl
 1001171:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1001172:	32 39                	xor    (%rcx),%bh
 1001174:	47                   	rex.RXB
 1001175:	4f 92                	rex.WRXB xchg %rax,%r10
 1001177:	8c 57 7f             	mov    %ss,0x7f(%rdi)
 100117a:	dd c5                	ffree  %st(5)
 100117c:	5a                   	pop    %rdx
 100117d:	94                   	xchg   %eax,%esp
 100117e:	0e                   	(bad)  
 100117f:	f4                   	hlt    
 1001180:	81 8b 83 fe 1c 1b 02 	orl    $0x7cff5c02,0x1b1cfe83(%rbx)
 1001187:	5c ff 7c 
 100118a:	99                   	cltd   
 100118b:	6c                   	insb   (%dx),%es:(%rdi)
 100118c:	17                   	(bad)  
 100118d:	39 f9                	cmp    %edi,%ecx
 100118f:	e5 ce                	in     $0xce,%eax
 1001191:	71 fb                	jno    0x100118e
 1001193:	83 11 41             	adcl   $0x41,(%rcx)
 1001196:	f4                   	hlt    
 1001197:	47 a9 37 54 a5 6f    	rex.RXB test $0x6fa55437,%eax
 100119d:	a9 9d f5 27 6c       	test   $0x6c27f59d,%eax
 10011a2:	22 c8                	and    %al,%cl
 10011a4:	2b 1c c6             	sub    (%rsi,%rax,8),%ebx
 10011a7:	51                   	push   %rcx
 10011a8:	9c                   	pushfq 
 10011a9:	6b b0 b3 2e b6 2f 01 	imul   $0x1,0x2fb62eb3(%rax),%esi
 10011b0:	7b f4                	jnp    0x10011a6
 10011b2:	f9                   	stc    
 10011b3:	5d                   	pop    %rbp
 10011b4:	d1 60 cc             	shll   -0x34(%rax)
 10011b7:	c9                   	leaveq 
 10011b8:	1d 73 4c 4b 6b       	sbb    $0x6b4b4c73,%eax
 10011bd:	2f                   	(bad)  
 10011be:	ff                   	(bad)  
 10011bf:	f8                   	clc    
 10011c0:	6a 0a                	pushq  $0xa
 10011c2:	f7 ca 31 a4 e0 03    	test   $0x3e0a431,%edx
 10011c8:	0b a2 6a 90 fa 1a    	or     0x1afa906a(%rdx),%esp
 10011ce:	1f                   	(bad)  
 10011cf:	f1                   	icebp  
 10011d0:	71 67                	jno    0x1001239
 10011d2:	59                   	pop    %rcx
 10011d3:	77 33                	ja     0x1001208
 10011d5:	71 46                	jno    0x100121d
 10011d7:	33 66 35             	xor    0x35(%rsi),%esp
 10011da:	d1 b6 b5 a6 5b ce    	shll   -0x31a4594b(%rsi)
 10011e0:	1e                   	(bad)  
 10011e1:	55                   	push   %rbp
 10011e2:	7b 23                	jnp    0x1001207
 10011e4:	11 44 70 d7          	adc    %eax,-0x29(%rax,%rsi,2)
 10011e8:	bb de ff d5 a2       	mov    $0xa2d5ffde,%ebx
 10011ed:	ae                   	scas   %es:(%rdi),%al
 10011ee:	d4                   	(bad)  
 10011ef:	41 0e                	rex.B (bad) 
 10011f1:	2d bd 9c a8 01       	sub    $0x1a89cbd,%eax
 10011f6:	ce                   	(bad)  
 10011f7:	ca ee 5e             	lret   $0x5eee
 10011fa:	c6                   	(bad)  
 10011fb:	b4 ba                	mov    $0xba,%ah
 10011fd:	f1                   	icebp  
 10011fe:	5b                   	pop    %rbx
 10011ff:	2f                   	(bad)  
 1001200:	59                   	pop    %rcx
 1001201:	07                   	(bad)  
 1001202:	ad                   	lods   %ds:(%rsi),%eax
 1001203:	37                   	(bad)  
 1001204:	11 ef                	adc    %ebp,%edi
 1001206:	c8 5e 79 a1          	enterq $0x795e,$0xa1
 100120a:	01 39                	add    %edi,(%rcx)
 100120c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100120d:	74 31                	je     0x1001240
 100120f:	b4 34                	mov    $0x34,%ah
 1001211:	81 6b 2c 95 1d 99 29 	subl   $0x29991d95,0x2c(%rbx)
 1001218:	9a                   	(bad)  
 1001219:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 100121a:	91                   	xchg   %eax,%ecx
 100121b:	6b b3 07 e3 98 2f 1b 	imul   $0x1b,0x2f98e307(%rbx),%esi
 1001222:	81 6a 8a 39 09 28 7a 	subl   $0x7a280939,-0x76(%rdx)
 1001229:	4d 98                	rex.WRB cltq 
 100122b:	a0 be 10 10 cf f0 f9 	movabs 0x714af9f0cf1010be,%al
 1001232:	4a 71 
 1001234:	6c                   	insb   (%dx),%es:(%rdi)
 1001235:	4e 06                	rex.WRX (bad) 
 1001237:	39 e0                	cmp    %esp,%eax
 1001239:	2c 4e                	sub    $0x4e,%al
 100123b:	22 68 74             	and    0x74(%rax),%ch
 100123e:	45 be 3c fe a5 2e    	rex.RB mov $0x2ea5fe3c,%r14d
 1001244:	4b c1 b6 c6 e1 20 d6 	rex.WXB shlq $0x90,-0x29df1e3a(%r14)
 100124b:	90 
 100124c:	13 c4                	adc    %esp,%eax
 100124e:	6e                   	outsb  %ds:(%rsi),(%dx)
 100124f:	d3 a4 e1 bc 2f 27 fa 	shll   %cl,-0x5d8d044(%rcx,%riz,8)
 1001256:	31 08                	xor    %ecx,(%rax)
 1001258:	63 91 ab 64 aa 0c    	movsxd 0xcaa64ab(%rcx),%edx
 100125e:	65 88 48 43          	mov    %cl,%gs:0x43(%rax)
 1001262:	36 c9                	ss leaveq 
 1001264:	48 7c d3             	rex.W jl 0x100123a
 1001267:	cd b3                	int    $0xb3
 1001269:	08 8e a7 95 af b7    	or     %cl,-0x48506a59(%rsi)
 100126f:	bb cb 8f 2a b3       	mov    $0xb32a8fcb,%ebx
 1001274:	be 5d 33 94 f0       	mov    $0xf094335d,%esi
 1001279:	28 b1 44 51 d8 25    	sub    %dh,0x25d85144(%rcx)
 100127f:	9f                   	lahf   
 1001280:	0f fa d6             	psubd  %mm6,%mm2
 1001283:	cf                   	iret   
 1001284:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1001285:	aa                   	stos   %al,%es:(%rdi)
 1001286:	82                   	(bad)  
 1001287:	44 14 b1             	rex.R adc $0xb1,%al
 100128a:	20 ce                	and    %cl,%dh
 100128c:	0d 0c aa 0b e5       	or     $0xe50baa0c,%eax
 1001291:	41 18 cd             	sbb    %cl,%r13b
 1001294:	f8                   	clc    
 1001295:	e5 94                	in     $0x94,%eax
 1001297:	39 52 0a             	cmp    %edx,0xa(%rdx)
 100129a:	94                   	xchg   %eax,%esp
 100129b:	ab                   	stos   %eax,%es:(%rdi)
 100129c:	82                   	(bad)  
 100129d:	f3 60                	repz (bad) 
 100129f:	9b                   	fwait
 10012a0:	8a 45 a2             	mov    -0x5e(%rbp),%al
 10012a3:	31 28                	xor    %ebp,(%rax)
 10012a5:	12 e0                	adc    %al,%ah
 10012a7:	d2 56 7c             	rclb   %cl,0x7c(%rsi)
 10012aa:	ef                   	out    %eax,(%dx)
 10012ab:	3d 3b 94 52 4f       	cmp    $0x4f52943b,%eax
 10012b0:	0a 0b                	or     (%rbx),%cl
 10012b2:	92                   	xchg   %eax,%edx
 10012b3:	56                   	push   %rsi
 10012b4:	01 24 52             	add    %esp,(%rdx,%rdx,2)
 10012b7:	de b5 10 50 bb 5a    	fidivs 0x5abb5010(%rbp)
 10012bd:	4d b6 9c             	rex.WRB mov $0x9c,%r14b
 10012c0:	95                   	xchg   %eax,%ebp
 10012c1:	52                   	push   %rdx
 10012c2:	72 4f                	jb     0x1001313
 10012c4:	6a d1                	pushq  $0xffffffffffffffd1
 10012c6:	a3 a8 e7 55 d2 11 e0 	movabs %eax,0xe4bde011d255e7a8
 10012cd:	bd e4 
 10012cf:	72 f3                	jb     0x10012c4
 10012d1:	a2 f7 e9 37 7f 22 e5 	movabs %al,0xea73e5227f37e9f7
 10012d8:	73 ea 
 10012da:	4b ba 4c 36 dd e0 54 	rex.WXB movabs $0x75749854e0dd364c,%r10
 10012e1:	98 74 75 
 10012e4:	c2 a0 e0             	retq   $0xe0a0
 10012e7:	fe 4f 66             	decb   0x66(%rdi)
 10012ea:	c1 09 4a             	rorl   $0x4a,(%rcx)
 10012ed:	56                   	push   %rsi
 10012ee:	b7 c8                	mov    $0xc8,%bh
 10012f0:	b4 d8                	mov    $0xd8,%ah
 10012f2:	f4                   	hlt    
 10012f3:	44 98                	rex.R cwtl 
 10012f5:	ca ae c3             	lret   $0xc3ae
 10012f8:	01 92 c0 e2 f8 93    	add    %edx,-0x6c071d40(%rdx)
 10012fe:	4a ec                	rex.WX in (%dx),%al
 1001300:	09 13                	or     %edx,(%rbx)
 1001302:	b2 bf                	mov    $0xbf,%dl
 1001304:	54                   	push   %rsp
 1001305:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1001306:	72 c6                	jb     0x10012ce
 1001308:	9c                   	pushfq 
 1001309:	91                   	xchg   %eax,%ecx
 100130a:	6c                   	insb   (%dx),%es:(%rdi)
 100130b:	47                   	rex.RXB
 100130c:	65 1f                	gs (bad) 
 100130e:	61                   	(bad)  
 100130f:	f6 c5 20             	test   $0x20,%ch
 1001312:	2e 7e 4d             	jle,pn 0x1001362
 1001315:	e4 96                	in     $0x96,%al
 1001317:	0c 8b                	or     $0x8b,%al
 1001319:	19 f1                	sbb    %esi,%ecx
 100131b:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100131c:	10 68 8b             	adc    %ch,-0x75(%rax)
 100131f:	35 cc eb 0a 4e       	xor    $0x4e0aebcc,%eax
 1001324:	55                   	push   %rbp
 1001325:	45 27                	rex.RB (bad) 
 1001327:	a2 f9 5d 35 f9 32 93 	movabs %al,0x156b9332f9355df9
 100132e:	6b 15 
 1001330:	0c 32                	or     $0x32,%al
 1001332:	0c 7b                	or     $0x7b,%al
 1001334:	b7 9f                	mov    $0x9f,%bh
 1001336:	b8 3c a8 26 84       	mov    $0x8426a83c,%eax
 100133b:	8b 42 73             	mov    0x73(%rdx),%eax
 100133e:	90                   	nop
 100133f:	d0 e7                	shl    %bh
 1001341:	13 aa 8b b0 ec 55    	adc    0x55ecb08b(%rdx),%ebp
 1001347:	ba d4 47 ba 9a       	mov    $0x9aba47d4,%edx
 100134c:	47 30 12             	rex.RXB xor %r10b,(%r10)
 100134f:	ce                   	(bad)  
 1001350:	7d d5                	jge    0x1001327
 1001352:	a1 0c 71 5c 3d e1 c3 	movabs 0x1290c3e13d5c710c,%eax
 1001359:	90 12 
 100135b:	e2 2b                	loop   0x1001388
 100135d:	db 51 46             	fistl  0x46(%rcx)
 1001360:	99                   	cltd   
 1001361:	09 76 17             	or     %esi,0x17(%rsi)
 1001364:	f3 c0 b3 12 ec 67 a4 	repz shlb $0xae,-0x5b9813ee(%rbx)
 100136b:	ae 
 100136c:	cb                   	lret   
 100136d:	63 73 ea             	movsxd -0x16(%rbx),%esi
 1001370:	de 6a c7             	fisubrs -0x39(%rdx)
 1001373:	4f 23 b2 83 82 7c f1 	rex.WRXB and -0xe837d7d(%r10),%r14
 100137a:	b5 ce                	mov    $0xce,%ch
 100137c:	2b 07                	sub    (%rdi),%eax
 100137e:	5d                   	pop    %rbp
 100137f:	79 5d                	jns    0x10013de
 1001381:	c9                   	leaveq 
 1001382:	d1 e0                	shl    %eax
 1001384:	86 36                	xchg   %dh,(%rsi)
 1001386:	e3 9f                	jrcxz  0x1001327
 1001388:	fb                   	sti    
 1001389:	16                   	(bad)  
 100138a:	6d                   	insl   (%dx),%es:(%rdi)
 100138b:	28 fb                	sub    %bh,%bl
 100138d:	91                   	xchg   %eax,%ecx
 100138e:	51                   	push   %rcx
 100138f:	3f                   	(bad)  
 1001390:	84 2b                	test   %ch,(%rbx)
 1001392:	b2 96                	mov    $0x96,%dl
 1001394:	af                   	scas   %es:(%rdi),%eax
 1001395:	ad                   	lods   %ds:(%rsi),%eax
 1001396:	bf 18 d9 cf 83       	mov    $0x83cfd918,%edi
 100139b:	5a                   	pop    %rdx
 100139c:	29 d4                	sub    %edx,%esp
 100139e:	e0 ee                	loopne 0x100138e
 10013a0:	be 60 43 83 4b       	mov    $0x4b834360,%esi
 10013a5:	8c f9                	mov    %?,%ecx
 10013a7:	1d 2e d7 f5 91       	sbb    $0x91f5d72e,%eax
 10013ac:	7a 9a                	jp     0x1001348
 10013ae:	e6 2c                	out    %al,$0x2c
 10013b0:	1f                   	(bad)  
 10013b1:	9f                   	lahf   
 10013b2:	06                   	(bad)  
 10013b3:	7e 2d                	jle    0x10013e2
 10013b5:	b2 0d                	mov    $0xd,%dl
 10013b7:	69 57 09 6c 05 c2 ed 	imul   $0xedc2056c,0x9(%rdi),%edx
 10013be:	64 cd bb             	fs int $0xbb
 10013c1:	74 38                	je     0x10013fb
 10013c3:	da 1e                	ficompl (%rsi)
 10013c5:	1d e5 ba e9 7a       	sbb    $0x7ae9bae5,%eax
 10013ca:	3c b0                	cmp    $0xb0,%al
 10013cc:	6d                   	insl   (%dx),%es:(%rdi)
 10013cd:	b7 bb                	mov    $0xbb,%bh
 10013cf:	c0 57 15 f5          	rclb   $0xf5,0x15(%rdi)
 10013d3:	c1 82 a1 b6 2a 68 57 	roll   $0x57,0x682ab6a1(%rdx)
 10013da:	8d 74 58 f3          	lea    -0xd(%rax,%rbx,2),%esi
 10013de:	fb                   	sti    
 10013df:	97                   	xchg   %eax,%edi
 10013e0:	7c 17                	jl     0x10013f9
 10013e2:	b2 25                	mov    $0x25,%dl
 10013e4:	59                   	pop    %rcx
 10013e5:	1d ab 57 90 50       	sbb    $0x509057ab,%eax
 10013ea:	49 05 9c b0 88 45    	rex.WB add $0x4588b09c,%rax
 10013f0:	9c                   	pushfq 
 10013f1:	8b ec                	mov    %esp,%ebp
 10013f3:	a8 ea                	test   $0xea,%al
 10013f5:	aa                   	stos   %al,%es:(%rdi)
 10013f6:	ae                   	scas   %es:(%rdi),%al
 10013f7:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 10013f8:	d3 00                	roll   %cl,(%rax)
 10013fa:	35 48 a2 9c d0       	xor    $0xd09ca248,%eax
 10013ff:	42                   	rex.X
 1001400:	4c d5                	rex.WR (bad) 
 1001402:	92                   	xchg   %eax,%edx
 1001403:	9d                   	popfq  
 1001404:	f8                   	clc    
 1001405:	66 4f 9f             	data16 rex.WRXB lahf 
 1001408:	3f                   	(bad)  
 1001409:	c2 ea 38             	retq   $0x38ea
 100140c:	fc                   	cld    
 100140d:	66 1c 4c             	data16 sbb $0x4c,%al
 1001410:	39 6f c4             	cmp    %ebp,-0x3c(%rdi)
 1001413:	ef                   	out    %eax,(%dx)
 1001414:	87 3c 83             	xchg   %edi,(%rbx,%rax,4)
 1001417:	bf 86 ea 25 fa       	mov    $0xfa25ea86,%edi
 100141c:	d9 13                	fsts   (%rbx)
 100141e:	1b 3b                	sbb    (%rbx),%edi
 1001420:	b0 3a                	mov    $0x3a,%al
 1001422:	29 15 b1 9b 46 41    	sub    %edx,0x41469bb1(%rip)        # 0x4246afd9
 1001428:	c8 ef 1c 8c          	enterq $0x1cef,$0x8c
 100142c:	36 fe 04 2a          	incb   %ss:(%rdx,%rbp,1)
 1001430:	23 37                	and    (%rdi),%esi
 1001432:	e2 83                	loop   0x10013b7
 1001434:	26 b0 24             	es mov $0x24,%al
 1001437:	30 31                	xor    %dh,(%rcx)
 1001439:	54                   	push   %rsp
 100143a:	4c 6c                	rex.WR insb (%dx),%es:(%rdi)
 100143c:	e1 5b                	loope  0x1001499
 100143e:	5a                   	pop    %rdx
 100143f:	88 42 09             	mov    %al,0x9(%rdx)
 1001442:	29 be 88 c0 8c d4    	sub    %edi,-0x2b733f78(%rsi)
 1001448:	40 3c bb             	cmp    $0xbb,%al
 100144b:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100144c:	7a 9d                	jp     0x10013eb
 100144e:	4b                   	rex.WXB
 100144f:	46 15 2a c8 eb 6e    	rex.RX adc $0x6eebc82a,%eax
 1001455:	0b 1d c5 77 e9 e1    	or     -0x1e16883b(%rip),%ebx        # 0xffffffffe2e98c20
 100145b:	61                   	(bad)  
 100145c:	f4                   	hlt    
 100145d:	c7                   	(bad)  
 100145e:	17                   	(bad)  
 100145f:	9d                   	popfq  
 1001460:	52                   	push   %rdx
 1001461:	45 fb                	rex.RB sti 
 1001463:	75 80                	jne    0x10013e5
 1001465:	df a2 d2 ff 4e 3d    	fbld   0x3d4effd2(%rdx)
 100146b:	8d 8b f8 db aa 17    	lea    0x17aadbf8(%rbx),%ecx
 1001471:	1d e2 8f 96 43       	sbb    $0x43968fe2,%eax
 1001476:	73 e0                	jae    0x1001458
 1001478:	c9                   	leaveq 
 1001479:	67 2d 5d e7 34 23    	addr32 sub $0x2334e75d,%eax
 100147f:	89 1a                	mov    %ebx,(%rdx)
 1001481:	ea                   	(bad)  
 1001482:	1d 72 49 97 52       	sbb    $0x52974972,%eax
 1001487:	13 a0 ad c4 c1 c3    	adc    -0x3c3e3b53(%rax),%esp
 100148d:	07                   	(bad)  
 100148e:	c6                   	(bad)  
 100148f:	1a 31                	sbb    (%rcx),%dh
 1001491:	d0 59 0f             	rcrb   0xf(%rcx)
 1001494:	00 77 15             	add    %dh,0x15(%rdi)
 1001497:	ec                   	in     (%dx),%al
 1001498:	ff 62 74             	jmpq   *0x74(%rdx)
 100149b:	41 5b                	pop    %r11
 100149d:	c4                   	(bad)  
 100149e:	cf                   	iret   
 100149f:	49 93                	xchg   %rax,%r11
 10014a1:	e2 49                	loop   0x10014ec
 10014a3:	13 37                	adc    (%rdi),%esi
 10014a5:	3b 83 7f 5f 28 40    	cmp    0x40285f7f(%rbx),%eax
 10014ab:	06                   	(bad)  
 10014ac:	fa                   	cli    
 10014ad:	e0 f4                	loopne 0x10014a3
 10014af:	2b 65 1b             	sub    0x1b(%rbp),%esp
 10014b2:	d8 74 6d 18          	fdivs  0x18(%rbp,%rbp,2)
 10014b6:	fe 8f e4 db 94 df    	decb   -0x206b241c(%rdi)
 10014bc:	8e f1                	mov    %ecx,%?
 10014be:	2c 38                	sub    $0x38,%al
 10014c0:	2f                   	(bad)  
 10014c1:	e3 c3                	jrcxz  0x1001486
 10014c3:	c7                   	(bad)  
 10014c4:	14 b0                	adc    $0xb0,%al
 10014c6:	68 85 b0 e8 70       	pushq  $0x70e8b085
 10014cb:	f0 d5                	lock (bad) 
 10014cd:	23 88 ad a0 ab ff    	and    -0x545f53(%rax),%ecx
 10014d3:	1e                   	(bad)  
 10014d4:	5b                   	pop    %rbx
 10014d5:	17                   	(bad)  
 10014d6:	ef                   	out    %eax,(%dx)
 10014d7:	02 0d 20 c9 53 e7    	add    -0x18ac36e0(%rip),%cl        # 0xffffffffe853ddfd
 10014dd:	69 22 50 d4 3e 5d    	imul   $0x5d3ed450,(%rdx),%esp
 10014e3:	4b 79 15             	rex.WXB jns 0x10014fb
 10014e6:	aa                   	stos   %al,%es:(%rdi)
 10014e7:	da 51 19             	ficoml 0x19(%rcx)
 10014ea:	a8 8d                	test   $0x8d,%al
 10014ec:	ff 26                	jmpq   *(%rsi)
 10014ee:	c0 dd 33             	rcr    $0x33,%ch
 10014f1:	d9 5c b6 29          	fstps  0x29(%rsi,%rsi,4)
 10014f5:	fd                   	std    
 10014f6:	53                   	push   %rbx
 10014f7:	d4                   	(bad)  
 10014f8:	cf                   	iret   
 10014f9:	c6                   	(bad)  
 10014fa:	b4 4e                	mov    $0x4e,%ah
 10014fc:	72 a4                	jb     0x10014a2
 10014fe:	c0 e6 1c             	shl    $0x1c,%dh
 1001501:	17                   	(bad)  
 1001502:	f5                   	cmc    
 1001503:	09 42 16             	or     %eax,0x16(%rdx)
 1001506:	cf                   	iret   
 1001507:	36 f8                	ss clc 
 1001509:	42 72 bd             	rex.X jb 0x10014c9
 100150c:	43 fb                	rex.XB sti 
 100150e:	6e                   	outsb  %ds:(%rsi),(%dx)
 100150f:	3c 44                	cmp    $0x44,%al
 1001511:	c7                   	(bad)  
 1001512:	70 28                	jo     0x100153c
 1001514:	15 40 26 4b 92       	adc    $0x924b2640,%eax
 1001519:	c8 40 f8 97          	enterq $0xf840,$0x97
 100151d:	c8 f1 39 50          	enterq $0x39f1,$0x50
 1001521:	2e b6 c9             	cs mov $0xc9,%dh
 1001524:	d4                   	(bad)  
 1001525:	65 af                	gs scas %es:(%rdi),%eax
 1001527:	c7                   	(bad)  
 1001528:	5e                   	pop    %rsi
 1001529:	81 f0 ca 48 e0 62    	xor    $0x62e048ca,%eax
 100152f:	6b 74 9e 58 df       	imul   $0xffffffdf,0x58(%rsi,%rbx,4),%esi
 1001534:	35 a7 23 9c 3b       	xor    $0x3b9c23a7,%eax
 1001539:	90                   	nop
 100153a:	67 f2 37             	addr32 repnz (bad) 
 100153d:	5e                   	pop    %rsi
 100153e:	35 ab d1 42 3f       	xor    $0x3f42d1ab,%eax
 1001543:	54                   	push   %rsp
 1001544:	d6                   	(bad)  
 1001545:	7e 42                	jle    0x1001589
 1001547:	16                   	(bad)  
 1001548:	dc 48 af             	fmull  -0x51(%rax)
 100154b:	a8 b8                	test   $0xb8,%al
 100154d:	d1 ea                	shr    %edx
 100154f:	e4 26                	in     $0x26,%al
 1001551:	16                   	(bad)  
 1001552:	dc 73 5f             	fdivl  0x5f(%rbx)
 1001555:	84 5e bb             	test   %bl,-0x45(%rsi)
 1001558:	f1                   	icebp  
 1001559:	67 c4                	addr32 (bad) 
 100155b:	ca 6e 31             	lret   $0x316e
 100155e:	4c cd 12             	rex.WR int $0x12
 1001561:	dd bb be f5 e7 24    	fnstsw 0x24e7f5be(%rbx)
 1001567:	da 37                	fidivl (%rdi)
 1001569:	31 e5                	xor    %esp,%ebp
 100156b:	7f 21                	jg     0x100158e
 100156d:	9c                   	pushfq 
 100156e:	26 4a 16             	es rex.WX (bad) 
 1001571:	d4                   	(bad)  
 1001572:	35 b0 ad ed 89       	xor    $0x89edadb0,%eax
 1001577:	4c c8 30 17 7d       	rex.WR enterq $0x1730,$0x7d
 100157c:	16                   	(bad)  
 100157d:	db fc                	(bad)  
 100157f:	a1 33 40 93 3e 85 cf 	movabs 0xaf01cf853e934033,%eax
 1001586:	01 af 
 1001588:	1c a1                	sbb    $0xa1,%al
 100158a:	86 ba 47 cd c7 f1    	xchg   %bh,-0xe3832b9(%rdx)
 1001590:	6f                   	outsl  %ds:(%rsi),(%dx)
 1001591:	10 c2                	adc    %al,%dl
 1001593:	9a                   	(bad)  
 1001594:	96                   	xchg   %eax,%esi
 1001595:	3f                   	(bad)  
 1001596:	a8 59                	test   $0x59,%al
 1001598:	d2 a7 22 56 b4 1a    	shlb   %cl,0x1ab45622(%rdi)
 100159e:	88 de                	mov    %bl,%dh
 10015a0:	d6                   	(bad)  
 10015a1:	4c 9f                	rex.WR lahf 
 10015a3:	0f 21 cc             	mov    %db1,%rsp
 10015a6:	6d                   	insl   (%dx),%es:(%rdi)
 10015a7:	33 56 36             	xor    0x36(%rsi),%edx
 10015aa:	7c 2d                	jl     0x10015d9
 10015ac:	a1 94 41 20 4d 3b 29 	movabs 0x30e4293b4d204194,%eax
 10015b3:	e4 30 
 10015b5:	46 8d 9b 7a 92 97 79 	rex.RX lea 0x7997927a(%rbx),%r11d
 10015bc:	72 56                	jb     0x1001614
 10015be:	c3                   	retq   
 10015bf:	d8 43 f8             	fadds  -0x8(%rbx)
 10015c2:	09 26                	or     %esp,(%rsi)
 10015c4:	51                   	push   %rcx
 10015c5:	d6                   	(bad)  
 10015c6:	f4                   	hlt    
 10015c7:	39 ca                	cmp    %ecx,%edx
 10015c9:	68 42 06 2e 00       	pushq  $0x2e0642
 10015ce:	4e ba aa 5f ec cc 12 	rex.WRX movabs $0xd59ced12ccec5faa,%rdx
 10015d5:	ed 9c d5 
 10015d8:	b8 3b 9a 3f 4e       	mov    $0x4e3f9a3b,%eax
 10015dd:	80 b4 a1 8f 1a 16 ee 	xorb   $0xfa,-0x11e9e571(%rcx,%riz,4)
 10015e4:	fa 
 10015e5:	24 de                	and    $0xde,%al
 10015e7:	c8 b2 a1 47          	enterq $0xa1b2,$0x47
 10015eb:	cd 01                	int    $0x1
 10015ed:	e0 97                	loopne 0x1001586
 10015ef:	35 56 69 7f ae       	xor    $0xae7f6956,%eax
 10015f4:	c0 d8 e5             	rcr    $0xe5,%al
 10015f7:	3c ca                	cmp    $0xca,%al
 10015f9:	cc                   	int3   
 10015fa:	ee                   	out    %al,(%dx)
 10015fb:	5d                   	pop    %rbp
 10015fc:	cd e8                	int    $0xe8
 10015fe:	ae                   	scas   %es:(%rdi),%al
 10015ff:	d3 08                	rorl   %cl,(%rax)
 1001601:	f4                   	hlt    
 1001602:	c3                   	retq   
 1001603:	5b                   	pop    %rbx
 1001604:	66 7f 05             	data16 jg 0x100160c
 1001607:	49 a6                	rex.WB cmpsb %es:(%rdi),%ds:(%rsi)
 1001609:	79 84                	jns    0x100158f
 100160b:	61                   	(bad)  
 100160c:	08 0d 2e e2 38 8d    	or     %cl,-0x72c71dd2(%rip)        # 0xffffffff8e38f840
 1001612:	5f                   	pop    %rdi
 1001613:	84 c0                	test   %al,%al
 1001615:	16                   	(bad)  
 1001616:	99                   	cltd   
 1001617:	35 c3 f3 81 4c       	xor    $0x4c81f3c3,%eax
 100161c:	da 4a c7             	fimull -0x39(%rdx)
 100161f:	ba 77 a8 9c 21       	mov    $0x219ca877,%edx
 1001624:	6f                   	outsl  %ds:(%rsi),(%dx)
 1001625:	53                   	push   %rbx
 1001626:	32 6d a4             	xor    -0x5c(%rbp),%ch
 1001629:	8c 2d 9f d8 e6 64    	mov    %gs,0x64e6d89f(%rip)        # 0x65e6eece
 100162f:	d3 63 09             	shll   %cl,0x9(%rbx)
 1001632:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1001633:	37                   	(bad)  
 1001634:	32 33                	xor    (%rbx),%dh
 1001636:	59                   	pop    %rcx
 1001637:	e7 e3                	out    %eax,$0xe3
 1001639:	0e                   	(bad)  
 100163a:	80 fc 4a             	cmp    $0x4a,%ah
 100163d:	b4 fc                	mov    $0xfc,%ah
 100163f:	25 b7 af 9d f6       	and    $0xf69dafb7,%eax
 1001644:	9c                   	pushfq 
 1001645:	3d 7f d7 81 73       	cmp    $0x7381d77f,%eax
 100164a:	30 0a                	xor    %cl,(%rdx)
 100164c:	f4                   	hlt    
 100164d:	57                   	push   %rdi
 100164e:	24 b8                	and    $0xb8,%al
 1001650:	74 ad                	je     0x10015ff
 1001652:	bd b1 5c 11 4f       	mov    $0x4f115cb1,%ebp
 1001657:	fb                   	sti    
 1001658:	e9 06 06 5f a2       	jmpq   0xffffffffa35f1c63
 100165d:	62                   	(bad)  
 100165e:	ef                   	out    %eax,(%dx)
 100165f:	b3 63                	mov    $0x63,%bl
 1001661:	51                   	push   %rcx
 1001662:	9e                   	sahf   
 1001663:	55                   	push   %rbp
 1001664:	58                   	pop    %rax
 1001665:	5b                   	pop    %rbx
 1001666:	a9 5f 4a 37 b0       	test   $0xb0374a5f,%eax
 100166b:	85 1e                	test   %ebx,(%rsi)
 100166d:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100166e:	54                   	push   %rsp
 100166f:	cc                   	int3   
 1001670:	ee                   	out    %al,(%dx)
 1001671:	b8 12 6f 50 34       	mov    $0x34506f12,%eax
 1001676:	80 a6 1f 38 3f 09 99 	andb   $0x99,0x93f381f(%rsi)
 100167d:	bf 9d c4 51 a3       	mov    $0xa351c49d,%edi
 1001682:	61                   	(bad)  
 1001683:	9c                   	pushfq 
 1001684:	10 f1                	adc    %dh,%cl
 1001686:	e1 59                	loope  0x10016e1
 1001688:	eb 5c                	jmp    0x10016e6
 100168a:	5f                   	pop    %rdi
 100168b:	94                   	xchg   %eax,%esp
 100168c:	14 06                	adc    $0x6,%al
 100168e:	c2 1f 07             	retq   $0x71f
 1001691:	d4                   	(bad)  
 1001692:	4c 8e bb b3 fa 60 68 	rex.WR mov 0x6860fab3(%rbx),%?
 1001699:	6b 97 5b 90 bb 05 94 	imul   $0xffffff94,0x5bb905b(%rdi),%edx
 10016a0:	00 70 3d             	add    %dh,0x3d(%rax)
 10016a3:	ca f5 3f             	lret   $0x3ff5
 10016a6:	29 e4                	sub    %esp,%esp
 10016a8:	bd e9 53 00 06       	mov    $0x60053e9,%ebp
 10016ad:	b1 65                	mov    $0x65,%cl
 10016af:	73 a1                	jae    0x1001652
 10016b1:	bf 23 22 59 43       	mov    $0x43592223,%edi
 10016b6:	a9 36 3f 35 51       	test   $0x51353f36,%eax
 10016bb:	86 f6                	xchg   %dh,%dh
 10016bd:	fd                   	std    
 10016be:	ac                   	lods   %ds:(%rsi),%al
 10016bf:	b9 ca e4 f7 41       	mov    $0x41f7e4ca,%ecx
 10016c4:	bd d3 ac 21 36       	mov    $0x3621acd3,%ebp
 10016c9:	1a ba 97 7d ad ff    	sbb    -0x528269(%rdx),%bh
 10016cf:	5b                   	pop    %rbx
 10016d0:	9e                   	sahf   
 10016d1:	d7                   	xlat   %ds:(%rbx)
 10016d2:	e3 c8                	jrcxz  0x100169c
 10016d4:	3a a1 8a 47 2e 08    	cmp    0x82e478a(%rcx),%ah
 10016da:	29 29                	sub    %ebp,(%rcx)
 10016dc:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 10016dd:	26 ad                	lods   %es:(%rsi),%eax
 10016df:	49 d5                	rex.WB (bad) 
 10016e1:	4e 80 a6 cf 9d 9c 9c 	rex.WRX andb $0x94,-0x63636231(%rsi)
 10016e8:	94 
 10016e9:	4d d3 b9 5c 50 a0 d6 	rex.WRB sarq %cl,-0x295fafa4(%r9)
 10016f0:	9a                   	(bad)  
 10016f1:	17                   	(bad)  
 10016f2:	dc 60 00             	fsubl  0x0(%rax)
 10016f5:	1f                   	(bad)  
 10016f6:	2d 97 75 93 24       	sub    $0x24937597,%eax
 10016fb:	00 ec                	add    %ch,%ah
 10016fd:	e1 12                	loope  0x1001711
 10016ff:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1001700:	72 ee                	jb     0x10016f0
 1001702:	04 fd                	add    $0xfd,%al
 1001704:	8a 8c 27 40 34 14 72 	mov    0x72143440(%rdi,%riz,1),%cl
 100170b:	5d                   	pop    %rbp
 100170c:	92                   	xchg   %eax,%edx
 100170d:	f7 1d c5 45 dc e8    	negl   -0x1723ba3b(%rip)        # 0xffffffffe9dc5cd8
 1001713:	05 44 9f a8 85       	add    $0x85a89f44,%eax
 1001718:	8b 86 f7 53 d0 9a    	mov    -0x652fac09(%rsi),%eax
 100171e:	59                   	pop    %rcx
 100171f:	7e 21                	jle    0x1001742
 1001721:	a9 97 9d 74 d8       	test   $0xd8749d97,%eax
 1001726:	78 a2                	js     0x10016ca
 1001728:	c3                   	retq   
 1001729:	27                   	(bad)  
 100172a:	f6 1f                	negb   (%rdi)
 100172c:	ed                   	in     (%dx),%eax
 100172d:	75 40                	jne    0x100176f
 100172f:	6a fe                	pushq  $0xfffffffffffffffe
 1001731:	ad                   	lods   %ds:(%rsi),%eax
 1001732:	af                   	scas   %es:(%rdi),%eax
 1001733:	22 3b                	and    (%rbx),%bh
 1001735:	cc                   	int3   
 1001736:	6a 83                	pushq  $0xffffffffffffff83
 1001738:	b5 8c                	mov    $0x8c,%ch
 100173a:	9a                   	(bad)  
 100173b:	56                   	push   %rsi
 100173c:	74 dc                	je     0x100171a
 100173e:	1b 23                	sbb    (%rbx),%esp
 1001740:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1001741:	1f                   	(bad)  
 1001742:	e5 b6                	in     $0xb6,%eax
 1001744:	15 1b 92 d1 00       	adc    $0xd1921b,%eax
 1001749:	50                   	push   %rax
 100174a:	f7 bc 25 01 3f 93 e5 	idivl  -0x1a6cc0ff(%rbp,%riz,1)
 1001751:	cd 70                	int    $0x70
 1001753:	57                   	push   %rdi
 1001754:	6e                   	outsb  %ds:(%rsi),(%dx)
 1001755:	69 e1 4b eb d1 cb    	imul   $0xcbd1eb4b,%ecx,%esp
 100175b:	6a 34                	pushq  $0x34
 100175d:	6d                   	insl   (%dx),%es:(%rdi)
 100175e:	ff 0e                	decl   (%rsi)
 1001760:	2d ee d2 5c 01       	sub    $0x15cd2ee,%eax
 1001765:	c3                   	retq   
 1001766:	2f                   	(bad)  
 1001767:	7b 99                	jnp    0x1001702
 1001769:	99                   	cltd   
 100176a:	69 6c 45 23 96 c3 65 	imul   $0xf365c396,0x23(%rbp,%rax,2),%ebp
 1001771:	f3 
 1001772:	59                   	pop    %rcx
 1001773:	b8 2c 94 47 e4       	mov    $0xe447942c,%eax
 1001778:	32 4a ad             	xor    -0x53(%rdx),%cl
 100177b:	d1 b1 2a d9 ba e1    	shll   -0x1e4526d6(%rcx)
 1001781:	93                   	xchg   %eax,%ebx
 1001782:	3f                   	(bad)  
 1001783:	4c 04 4e             	rex.WR add $0x4e,%al
 1001786:	e1 ea                	loope  0x1001772
 1001788:	8f                   	(bad)  
 1001789:	77 45                	ja     0x10017d0
 100178b:	58                   	pop    %rax
 100178c:	89 be 2f 6a b7 38    	mov    %edi,0x38b76a2f(%rsi)
 1001792:	92                   	xchg   %eax,%edx
 1001793:	65 67 9a             	gs addr32 (bad) 
 1001796:	07                   	(bad)  
 1001797:	7e 38                	jle    0x10017d1
 1001799:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 100179a:	47 e6 5f             	rex.RXB out %al,$0x5f
 100179d:	59                   	pop    %rcx
 100179e:	eb 39                	jmp    0x10017d9
 10017a0:	34 4e                	xor    $0x4e,%al
 10017a2:	8a a5 53 bc e8 d1    	mov    -0x2e1743ad(%rbp),%ah
 10017a8:	61                   	(bad)  
 10017a9:	65 ba ca 67 48 f4    	gs mov $0xf44867ca,%edx
 10017af:	42 78 67             	rex.X js 0x1001819
 10017b2:	da 49 e8             	fimull -0x18(%rcx)
 10017b5:	5e                   	pop    %rsi
 10017b6:	df bb e0 4e e4 2e    	fistpll 0x2ee44ee0(%rbx)
 10017bc:	bd b3 e3 d1 1b       	mov    $0x1bd1e3b3,%ebp
 10017c1:	28 48 3c             	sub    %cl,0x3c(%rax)
 10017c4:	51                   	push   %rcx
 10017c5:	ae                   	scas   %es:(%rdi),%al
 10017c6:	64 26 e4 20          	fs es in $0x20,%al
 10017ca:	08 25 9c 43 88 d6    	or     %ah,-0x2977bc64(%rip)        # 0xffffffffd7885b6c
 10017d0:	e6 c8                	out    %al,$0xc8
 10017d2:	59                   	pop    %rcx
 10017d3:	bf 57 c6 40 13       	mov    $0x1340c657,%edi
 10017d8:	5c                   	pop    %rsp
 10017d9:	2a 0a                	sub    (%rdx),%cl
 10017db:	eb 74                	jmp    0x1001851
 10017dd:	a3 7f 94 ff bd 7d 28 	movabs %eax,0x28b7287dbdff947f
 10017e4:	b7 28 
 10017e6:	3f                   	(bad)  
 10017e7:	48 69 a7 11 08 bf d6 	imul   $0x37a415de,-0x2940f7ef(%rdi),%rsp
 10017ee:	de 15 a4 37 
 10017f2:	97                   	xchg   %eax,%edi
 10017f3:	ef                   	out    %eax,(%dx)
 10017f4:	69 62 e2 77 9b 13 c3 	imul   $0xc3139b77,-0x1e(%rdx),%esp
 10017fb:	cf                   	iret   
 10017fc:	b8 9e 28 8f ab       	mov    $0xab8f289e,%eax
 1001801:	f0 3d 7a 83 6e 61    	lock cmp $0x616e837a,%eax
 1001807:	96                   	xchg   %eax,%esi
 1001808:	40 75 35             	rex jne 0x1001840
 100180b:	ab                   	stos   %eax,%es:(%rdi)
 100180c:	84 f5                	test   %dh,%ch
 100180e:	80 d4 da             	adc    $0xda,%ah
 1001811:	bf 63 89 a5 72       	mov    $0x72a58963,%edi
 1001816:	e2 06                	loop   0x100181e
 1001818:	d9 d2                	(bad)  
 100181a:	50                   	push   %rax
 100181b:	b4 a6                	mov    $0xa6,%ah
 100181d:	f2 99                	repnz cltd 
 100181f:	2f                   	(bad)  
 1001820:	2e 8f                	cs (bad) 
 1001822:	3e c7 c7 22 23 cc 49 	ds mov $0x49cc2322,%edi
 1001829:	db 91 7b ed e8 d7    	fistl  -0x28171285(%rcx)
 100182f:	5f                   	pop    %rdi
 1001830:	c4                   	(bad)  
 1001831:	bf 93 43 f8 dc       	mov    $0xdcf84393,%edi
 1001836:	26 fa                	es cli 
 1001838:	aa                   	stos   %al,%es:(%rdi)
 1001839:	64 b5 f4             	fs mov $0xf4,%ch
 100183c:	74 eb                	je     0x1001829
 100183e:	30 2b                	xor    %ch,(%rbx)
 1001840:	56                   	push   %rsi
 1001841:	d3 64 84 c0          	shll   %cl,-0x40(%rsp,%rax,4)
 1001845:	db 77 f2             	(bad)  -0xe(%rdi)
 1001848:	76 4d                	jbe    0x1001897
 100184a:	0a 23                	or     (%rbx),%ah
 100184c:	6e                   	outsb  %ds:(%rsi),(%dx)
 100184d:	ab                   	stos   %eax,%es:(%rdi)
 100184e:	37                   	(bad)  
 100184f:	d8 ff                	fdivr  %st(7),%st
 1001851:	53                   	push   %rbx
 1001852:	86 d1                	xchg   %dl,%cl
 1001854:	3c 68                	cmp    $0x68,%al
 1001856:	bb 87 44 2e 9f       	mov    $0x9f2e4487,%ebx
 100185b:	a3 6e 19 60 d9 1d ca 	movabs %eax,0xbf77ca1dd960196e
 1001862:	77 bf 
 1001864:	af                   	scas   %es:(%rdi),%eax
 1001865:	66 25 c0 81          	and    $0x81c0,%ax
 1001869:	98                   	cwtl   
 100186a:	0a 2d 70 48 45 73    	or     0x73454870(%rip),%ch        # 0x744560e0
 1001870:	1d 60 ec 58 d4       	sbb    $0xd458ec60,%eax
 1001875:	11 7d 7f             	adc    %edi,0x7f(%rbp)
 1001878:	8a 66 07             	mov    0x7(%rsi),%ah
 100187b:	b3 72                	mov    $0x72,%bl
 100187d:	d7                   	xlat   %ds:(%rbx)
 100187e:	59                   	pop    %rcx
 100187f:	d6                   	(bad)  
 1001880:	82                   	(bad)  
 1001881:	1b e3                	sbb    %ebx,%esp
 1001883:	01 4d b3             	add    %ecx,-0x4d(%rbp)
 1001886:	91                   	xchg   %eax,%ecx
 1001887:	0d e0 a6 67 c9       	or     $0xc967a6e0,%eax
 100188c:	72 c1                	jb     0x100184f
 100188e:	52                   	push   %rdx
 100188f:	ad                   	lods   %ds:(%rsi),%eax
 1001890:	33 9e d3 7e 11 84    	xor    -0x7bee812d(%rsi),%ebx
 1001896:	23 f3                	and    %ebx,%esi
 1001898:	f5                   	cmc    
 1001899:	a9 7d 47 c4 63       	test   $0x63c4477d,%eax
 100189e:	69 fa 43 22 09 33    	imul   $0x33092243,%edx,%edi
 10018a4:	2e 48 d6             	cs rex.W (bad) 
 10018a7:	9d                   	popfq  
 10018a8:	70 1b                	jo     0x10018c5
 10018aa:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 10018ab:	2d 35 d1 4f fa       	sub    $0xfa4fd135,%eax
 10018b0:	15 75 f7 62 81       	adc    $0x8162f775,%eax
 10018b5:	81 0c 33 ad 38 b8 7b 	orl    $0x7bb838ad,(%rbx,%rsi,1)
 10018bc:	97                   	xchg   %eax,%edi
 10018bd:	6b 83 d6 d7 c2 c7 b7 	imul   $0xffffffb7,-0x383d282a(%rbx),%eax
 10018c4:	82                   	(bad)  
 10018c5:	2d 73 03 f8 ac       	sub    $0xacf80373,%eax
 10018ca:	df a6 04 32 d7 a4    	fbld   -0x5b28cdfc(%rsi)
 10018d0:	c3                   	retq   
 10018d1:	f7 b0 f5 30 97 71    	divl   0x719730f5(%rax)
 10018d7:	12 31                	adc    (%rcx),%dh
 10018d9:	ae                   	scas   %es:(%rdi),%al
 10018da:	12 08                	adc    (%rax),%cl
 10018dc:	60                   	(bad)  
 10018dd:	56                   	push   %rsi
 10018de:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 10018df:	e1 fb                	loope  0x10018dc
 10018e1:	cd f3                	int    $0xf3
 10018e3:	4f 6d                	rex.WRXB insl (%dx),%es:(%rdi)
 10018e5:	c2 c2 30             	retq   $0x30c2
 10018e8:	48 fc                	rex.W cld 
 10018ea:	e8 5c 80 b1 83       	callq  0xffffffff84b1994b
 10018ef:	7f 9b                	jg     0x100188c
 10018f1:	e8 20 5b bb e0       	callq  0xffffffffe1bb7416
 10018f6:	99                   	cltd   
 10018f7:	17                   	(bad)  
 10018f8:	ee                   	out    %al,(%dx)
 10018f9:	4b 1c 90             	rex.WXB sbb $0x90,%al
 10018fc:	f2 bf 6f e3 4b ea    	repnz mov $0xea4be36f,%edi
 1001902:	b4 6e                	mov    $0x6e,%ah
 1001904:	ce                   	(bad)  
 1001905:	7b 5d                	jnp    0x1001964
 1001907:	42 bf 8e b5 5b c6    	rex.X mov $0xc65bb58e,%edi
 100190d:	90                   	nop
 100190e:	03 a1 e0 75 38 68    	add    0x683875e0(%rcx),%esp
 1001914:	a8 ba                	test   $0xba,%al
 1001916:	7a 35                	jp     0x100194d
 1001918:	e0 c3                	loopne 0x10018dd
 100191a:	27                   	(bad)  
 100191b:	73 21                	jae    0x100193e
 100191d:	8b 9f 4f 58 72 00    	mov    0x72584f(%rdi),%ebx
 1001923:	e0 f6                	loopne 0x100191b
 1001925:	2c 89                	sub    $0x89,%al
 1001927:	6f                   	outsl  %ds:(%rsi),(%dx)
 1001928:	2e 39 52 53          	cmp    %edx,%cs:0x53(%rdx)
 100192c:	9c                   	pushfq 
 100192d:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 100192e:	6d                   	insl   (%dx),%es:(%rdi)
 100192f:	21 60 ef             	and    %esp,-0x11(%rax)
 1001932:	aa                   	stos   %al,%es:(%rdi)
 1001933:	3e b9 d0 71 b1 5c    	ds mov $0x5cb171d0,%ecx
 1001939:	5c                   	pop    %rsp
 100193a:	bc 31 c4 42 4f       	mov    $0x4f42c431,%esp
 100193f:	30 1c f9             	xor    %bl,(%rcx,%rdi,8)
 1001942:	54                   	push   %rsp
 1001943:	31 8b 55 33 0d b3    	xor    %ecx,-0x4cf2ccab(%rbx)
 1001949:	f0 0a d0             	lock or %al,%dl
 100194c:	c2 98 03             	retq   $0x398
 100194f:	14 92                	adc    $0x92,%al
 1001951:	3b 75 2c             	cmp    0x2c(%rbp),%esi
 1001954:	d9 0f                	(bad)  (%rdi)
 1001956:	0d ba 8f e7 b0       	or     $0xb0e78fba,%eax
 100195b:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 100195c:	5e                   	pop    %rsi
 100195d:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100195e:	12 e8                	adc    %al,%ch
 1001960:	10 88 fd e5 02 02    	adc    %cl,0x202e5fd(%rax)
 1001966:	92                   	xchg   %eax,%edx
 1001967:	eb 83                	jmp    0x10018ec
 1001969:	c4                   	(bad)  
 100196a:	e4 70                	in     $0x70,%al
 100196c:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 100196d:	31 67 62             	xor    %esp,0x62(%rdi)
 1001970:	b6 b0                	mov    $0xb0,%dh
 1001972:	d1 3d 64 60 1e a6    	sarl   -0x59e19f9c(%rip)        # 0xffffffffa71e79dc
 1001978:	79 44                	jns    0x10019be
 100197a:	60                   	(bad)  
 100197b:	28 24 18             	sub    %ah,(%rax,%rbx,1)
 100197e:	ec                   	in     (%dx),%al
 100197f:	4d 96                	rex.WRB xchg %rax,%r14
 1001981:	ca 64 ce             	lret   $0xce64
 1001984:	f8                   	clc    
 1001985:	66 66 e0 f3          	data16 data16 loopne 0x100197c
 1001989:	5a                   	pop    %rdx
 100198a:	3d 55 9e b6 75       	cmp    $0x75b69e55,%eax
 100198f:	9b                   	fwait
 1001990:	6c                   	insb   (%dx),%es:(%rdi)
 1001991:	06                   	(bad)  
 1001992:	16                   	(bad)  
 1001993:	c5 52 ff             	(bad)
 1001996:	be 1d 19 3b 16       	mov    $0x163b191d,%esi
 100199b:	dc fa                	fdivr  %st,%st(2)
 100199d:	61                   	(bad)  
 100199e:	1b 77 a5             	sbb    -0x5b(%rdi),%esi
 10019a1:	a0 9d d0 ff 45 ac 45 	movabs 0xcd2945ac45ffd09d,%al
 10019a8:	29 cd 
 10019aa:	4b 2b a3 07 d4 58 b5 	rex.WXB sub -0x4aa72bf9(%r11),%rsp
 10019b1:	32 86 c1 f3 3d b3    	xor    -0x4cc20c3f(%rsi),%al
 10019b7:	89 d1                	mov    %edx,%ecx
 10019b9:	8f                   	(bad)  
 10019ba:	ec                   	in     (%dx),%al
 10019bb:	cf                   	iret   
 10019bc:	d5                   	(bad)  
 10019bd:	d7                   	xlat   %ds:(%rbx)
 10019be:	53                   	push   %rbx
 10019bf:	e4 dd                	in     $0xdd,%al
 10019c1:	66 4a b0 04          	data16 rex.WX mov $0x4,%al
 10019c5:	39 e6                	cmp    %esp,%esi
 10019c7:	72 61                	jb     0x1001a2a
 10019c9:	9e                   	sahf   
 10019ca:	1e                   	(bad)  
 10019cb:	1e                   	(bad)  
 10019cc:	80 d1 72             	adc    $0x72,%cl
 10019cf:	74 82                	je     0x1001953
 10019d1:	14 35                	adc    $0x35,%al
 10019d3:	de 36                	fidivs (%rsi)
 10019d5:	8d a6 14 bc cb c3    	lea    -0x3c3443ec(%rsi),%esp
 10019db:	29 73 a2             	sub    %esi,-0x5e(%rbx)
 10019de:	24 eb                	and    $0xeb,%al
 10019e0:	db b4 20 8d 87 64 dc 	(bad)  -0x239b7873(%rax,%riz,1)
 10019e7:	6e                   	outsb  %ds:(%rsi),(%dx)
 10019e8:	4f 5b                	rex.WRXB pop %r11
 10019ea:	93                   	xchg   %eax,%ebx
 10019eb:	33 be f1 bc 07 3e    	xor    0x3e07bcf1(%rsi),%edi
 10019f1:	29 14 6e             	sub    %edx,(%rsi,%rbp,2)
 10019f4:	81 e1 4a 71 74 35    	and    $0x3574714a,%ecx
 10019fa:	4c e0 22             	rex.WR loopne 0x1001a1f
 10019fd:	be 25 74 c3 8f       	mov    $0x8fc37425,%esi
 1001a02:	02 e8                	add    %al,%ch
 1001a04:	7a 2c                	jp     0x1001a32
 1001a06:	8d 78 1f             	lea    0x1f(%rax),%edi
 1001a09:	3a 6b 30             	cmp    0x30(%rbx),%ch
 1001a0c:	e7 cf                	out    %eax,$0xcf
 1001a0e:	9d                   	popfq  
 1001a0f:	a8 1d                	test   $0x1d,%al
 1001a11:	b9 b9 48 4b e9       	mov    $0xe94b48b9,%ecx
 1001a16:	fb                   	sti    
 1001a17:	49 6a c1             	rex.WB pushq $0xffffffffffffffc1
 1001a1a:	fc                   	cld    
 1001a1b:	d7                   	xlat   %ds:(%rbx)
 1001a1c:	ac                   	lods   %ds:(%rsi),%al
 1001a1d:	cc                   	int3   
 1001a1e:	d9 ed                	fldln2 
 1001a20:	88 88 11 80 31 2e    	mov    %cl,0x2e318011(%rax)
 1001a26:	78 2b                	js     0x1001a53
 1001a28:	18 2d 7d e0 af 1e    	sbb    %ch,0x1eafe07d(%rip)        # 0x1faffaab
 1001a2e:	30 04 e9             	xor    %al,(%rcx,%rbp,8)
 1001a31:	3a 0d ce 1c f7 77    	cmp    0x77f71cce(%rip),%cl        # 0x78f73705
 1001a37:	62                   	(bad)  
 1001a38:	4a 57                	rex.WX push %rdi
 1001a3a:	23 71 d5             	and    -0x2b(%rcx),%esi
 1001a3d:	5c                   	pop    %rsp
 1001a3e:	8e 04 c9             	mov    (%rcx,%rcx,8),%es
 1001a41:	ff 77 42             	pushq  0x42(%rdi)
 1001a44:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1001a45:	06                   	(bad)  
 1001a46:	11 18                	adc    %ebx,(%rax)
 1001a48:	3f                   	(bad)  
 1001a49:	f2 91                	repnz xchg %eax,%ecx
 1001a4b:	16                   	(bad)  
 1001a4c:	7d 5d                	jge    0x1001aab
 1001a4e:	6c                   	insb   (%dx),%es:(%rdi)
 1001a4f:	17                   	(bad)  
 1001a50:	20 f1                	and    %dh,%cl
 1001a52:	04 c7                	add    $0xc7,%al
 1001a54:	0f 42 f5             	cmovb  %ebp,%esi
 1001a57:	44 ff 8b 45 88 f4 ff 	rex.R decl -0xb77bb(%rbx)
 1001a5e:	99                   	cltd   
 1001a5f:	e9 cc 55 ac 0c       	jmpq   0xdac7030
 1001a64:	3f                   	(bad)  
 1001a65:	44                   	rex.R
 1001a66:	45 ae                	rex.RB scas %es:(%rdi),%al
 1001a68:	ce                   	(bad)  
 1001a69:	88 68 e0             	mov    %ch,-0x20(%rax)
 1001a6c:	be 84 a0 6d 9b       	mov    $0x9b6da084,%esi
 1001a71:	ab                   	stos   %eax,%es:(%rdi)
 1001a72:	f7 62 10             	mull   0x10(%rdx)
 1001a75:	e0 29                	loopne 0x1001aa0
 1001a77:	f9                   	stc    
 1001a78:	22 5a ee             	and    -0x12(%rdx),%bl
 1001a7b:	d0 6e 23             	shrb   0x23(%rsi)
 1001a7e:	bf 5b 86 9b 81       	mov    $0x819b865b,%edi
 1001a83:	c7                   	(bad)  
 1001a84:	64 aa                	fs stos %al,%es:(%rdi)
 1001a86:	ce                   	(bad)  
 1001a87:	0f 7a                	(bad)  
 1001a89:	76 69                	jbe    0x1001af4
 1001a8b:	97                   	xchg   %eax,%edi
 1001a8c:	b2 34                	mov    $0x34,%dl
 1001a8e:	7d 6b                	jge    0x1001afb
 1001a90:	c1 65 5e 91          	shll   $0x91,0x5e(%rbp)
 1001a94:	b0 b4                	mov    $0xb4,%al
 1001a96:	3e b0 2d             	ds mov $0x2d,%al
 1001a99:	3d ec 55 20 65       	cmp    $0x652055ec,%eax
 1001a9e:	0f 68 51 50          	punpckhbw 0x50(%rcx),%mm2
 1001aa2:	e5 a1                	in     $0xa1,%eax
 1001aa4:	49 1e                	rex.WB (bad) 
 1001aa6:	1c 4a                	sbb    $0x4a,%al
 1001aa8:	da bf 37 7d 92 fb    	fidivrl -0x46d82c9(%rdi)
 1001aae:	4e b5 3e             	rex.WRX mov $0x3e,%bpl
 1001ab1:	9e                   	sahf   
 1001ab2:	82                   	(bad)  
 1001ab3:	fb                   	sti    
 1001ab4:	27                   	(bad)  
 1001ab5:	9d                   	popfq  
 1001ab6:	1b 90 87 94 f8 15    	sbb    0x15f89487(%rax),%edx
 1001abc:	7b 5a                	jnp    0x1001b18
 1001abe:	43 74 9f             	rex.XB je 0x1001a60
 1001ac1:	d2 a4 b4 4c 91 02 26 	shlb   %cl,0x2602914c(%rsp,%rsi,4)
 1001ac8:	de bc c3 70 0d 08 eb 	fidivrs -0x14f7f290(%rbx,%rax,8)
 1001acf:	8b d4                	mov    %esp,%edx
 1001ad1:	bd 86 23 a2 67       	mov    $0x67a22386,%ebp
 1001ad6:	d2 8c 7c 86 87 c2 9c 	rorb   %cl,-0x633d787a(%rsp,%rdi,2)
 1001add:	1a 76 4e             	sbb    0x4e(%rsi),%dh
 1001ae0:	65 13 ea             	gs adc %edx,%ebp
 1001ae3:	c4                   	(bad)  
 1001ae4:	16                   	(bad)  
 1001ae5:	53                   	push   %rbx
 1001ae6:	d3 16                	rcll   %cl,(%rsi)
 1001ae8:	95                   	xchg   %eax,%ebp
 1001ae9:	8d 10                	lea    (%rax),%edx
 1001aeb:	15 3d f8 b0 b1       	adc    $0xb1b0f83d,%eax
 1001af0:	47 2f                	rex.RXB (bad) 
 1001af2:	25 05 73 5f 69       	and    $0x695f7305,%eax
 1001af7:	5d                   	pop    %rbp
 1001af8:	44 a4                	rex.R movsb %ds:(%rsi),%es:(%rdi)
 1001afa:	bf 16 d2 07 81       	mov    $0x8107d216,%edi
 1001aff:	0c 24                	or     $0x24,%al
 1001b01:	e3 2d                	jrcxz  0x1001b30
 1001b03:	5e                   	pop    %rsi
 1001b04:	ad                   	lods   %ds:(%rsi),%eax
 1001b05:	2e 87 d7             	cs xchg %edx,%edi
 1001b08:	4e 0f 11 94 f0 b2 75 	rex.WRX movups %xmm10,0x3b75b2(%rax,%r14,8)
 1001b0f:	3b 00 
 1001b11:	20 61 ee             	and    %ah,-0x12(%rcx)
 1001b14:	2e 3c 3d             	cs cmp $0x3d,%al
 1001b17:	cf                   	iret   
 1001b18:	6c                   	insb   (%dx),%es:(%rdi)
 1001b19:	2a a0 10 46 51 8d    	sub    -0x72aeb9f0(%rax),%ah
 1001b1f:	01 b4 c1 c4 c2 ce 19 	add    %esi,0x19cec2c4(%rcx,%rax,8)
 1001b26:	38 96 7c 58 05 6e    	cmp    %dl,0x6e05587c(%rsi)
 1001b2c:	4f e2 87             	rex.WRXB loop 0x1001ab6
 1001b2f:	7e fc                	jle    0x1001b2d
 1001b31:	63 22                	movsxd (%rdx),%esp
 1001b33:	eb 54                	jmp    0x1001b89
 1001b35:	6b 52 96 24          	imul   $0x24,-0x6a(%rdx),%edx
 1001b39:	51                   	push   %rcx
 1001b3a:	ba c3 10 87 55       	mov    $0x558710c3,%edx
 1001b3f:	2b 6f 38             	sub    0x38(%rdi),%ebp
 1001b42:	82                   	(bad)  
 1001b43:	fe                   	(bad)  
 1001b44:	98                   	cwtl   
 1001b45:	80 f0 90             	xor    $0x90,%al
 1001b48:	5b                   	pop    %rbx
 1001b49:	56                   	push   %rsi
 1001b4a:	50                   	push   %rax
 1001b4b:	8c 37                	mov    %?,(%rdi)
 1001b4d:	06                   	(bad)  
 1001b4e:	40 20 f7             	and    %sil,%dil
 1001b51:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1001b52:	56                   	push   %rsi
 1001b53:	8a 4d 02             	mov    0x2(%rbp),%cl
 1001b56:	10 a5 da c4 63 92    	adc    %ah,-0x6d9c3b26(%rbp)
 1001b5c:	0c 81                	or     $0x81,%al
 1001b5e:	2a 08                	sub    (%rax),%cl
 1001b60:	98                   	cwtl   
 1001b61:	43 7a b3             	rex.XB jp 0x1001b17
 1001b64:	d7                   	xlat   %ds:(%rbx)
 1001b65:	1e                   	(bad)  
 1001b66:	47 3f                	rex.RXB (bad) 
 1001b68:	35 6f e3 1d d9       	xor    $0xd91de36f,%eax
 1001b6d:	00 ee                	add    %ch,%dh
 1001b6f:	45 d1 13             	rex.RB rcll (%r11)
 1001b72:	19 b4 60 e6 17 fe 68 	sbb    %esi,0x68fe17e6(%rax,%riz,2)
 1001b79:	bf ce 03 02 6b       	mov    $0x6b0203ce,%edi
 1001b7e:	b3 e9                	mov    $0xe9,%bl
 1001b80:	b6 3d                	mov    $0x3d,%dh
 1001b82:	db 0a                	fisttpl (%rdx)
 1001b84:	42 fb                	rex.X sti 
 1001b86:	48 c4                	rex.W (bad) 
 1001b88:	6d                   	insl   (%dx),%es:(%rdi)
 1001b89:	0e                   	(bad)  
 1001b8a:	35 97 34 20 96       	xor    $0x96203497,%eax
 1001b8f:	ef                   	out    %eax,(%dx)
 1001b90:	37                   	(bad)  
 1001b91:	a3 6b bf fd 1d 85 f8 	movabs %eax,0x8d82f8851dfdbf6b
 1001b98:	82 8d 
 1001b9a:	d9 d2                	(bad)  
 1001b9c:	f7 2b                	imull  (%rbx)
 1001b9e:	77 90                	ja     0x1001b30
 1001ba0:	c2 7b d1             	retq   $0xd17b
 1001ba3:	7c 2e                	jl     0x1001bd3
 1001ba5:	67 71 17             	addr32 jno 0x1001bbf
 1001ba8:	64 5f                	fs pop %rdi
 1001baa:	ae                   	scas   %es:(%rdi),%al
 1001bab:	5f                   	pop    %rdi
 1001bac:	2e 66 b9 b8 39       	cs mov $0x39b8,%cx
 1001bb1:	ca 6d 70             	lret   $0x706d
 1001bb4:	2f                   	(bad)  
 1001bb5:	9a                   	(bad)  
 1001bb6:	d6                   	(bad)  
 1001bb7:	96                   	xchg   %eax,%esi
 1001bb8:	fb                   	sti    
 1001bb9:	d6                   	(bad)  
 1001bba:	e0 8e                	loopne 0x1001b4a
 1001bbc:	0f a8                	pushq  %gs
 1001bbe:	f0 70 e7             	lock jo 0x1001ba8
 1001bc1:	ba 24 77 7f d6       	mov    $0xd67f7724,%edx
 1001bc6:	17                   	(bad)  
 1001bc7:	c3                   	retq   
 1001bc8:	25 ef 3f 0f b8       	and    $0xb80f3fef,%eax
 1001bcd:	79 29                	jns    0x1001bf8
 1001bcf:	e2 30                	loop   0x1001c01
 1001bd1:	5b                   	pop    %rbx
 1001bd2:	ff a9 72 e5 b5 32    	ljmp   *0x32b5e572(%rcx)
 1001bd8:	a9 cd db 27 76       	test   $0x7627dbcd,%eax
 1001bdd:	7d d7                	jge    0x1001bb6
 1001bdf:	92                   	xchg   %eax,%edx
 1001be0:	29 b5 86 da 92 99    	sub    %esi,-0x666d257a(%rbp)
 1001be6:	52                   	push   %rdx
 1001be7:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1001be8:	56                   	push   %rsi
 1001be9:	73 f3                	jae    0x1001bde
 1001beb:	30 bc 6b a1 fa 59 c0 	xor    %bh,-0x3fa6055f(%rbx,%rbp,2)
 1001bf2:	21 9c 54 59 89 9a b4 	and    %ebx,-0x4b6576a7(%rsp,%rdx,2)
 1001bf9:	fc                   	cld    
 1001bfa:	c5 d2 22             	(bad)
 1001bfd:	9d                   	popfq  
 1001bfe:	50                   	push   %rax
 1001bff:	b6 d6                	mov    $0xd6,%dh
 1001c01:	13 37                	adc    (%rdi),%esi
 1001c03:	bf ed 0c f8 9b       	mov    $0x9bf80ced,%edi
 1001c08:	34 e9                	xor    $0xe9,%al
 1001c0a:	51                   	push   %rcx
 1001c0b:	85 72 2b             	test   %esi,0x2b(%rdx)
 1001c0e:	1b 00                	sbb    (%rax),%eax
 1001c10:	35 01 41 11 4f       	xor    $0x4f114101,%eax
 1001c15:	2d 89 76 8e 88       	sub    $0x888e7689,%eax
 1001c1a:	df 4f 55             	fisttps 0x55(%rdi)
 1001c1d:	7d fa                	jge    0x1001c19
 1001c1f:	a3 e1 d9 0b f6 c5 90 	movabs %eax,0xcf9590c5f60bd9e1
 1001c26:	95 cf 
 1001c28:	cb                   	lret   
 1001c29:	4f df a9 ef 97 10 d5 	rex.WRXB fildll -0x2aef6811(%r9)
 1001c30:	e8 3e 8e 4f 09       	callq  0xa4faa73
 1001c35:	bc 65 c7 09 d8       	mov    $0xd809c765,%esp
 1001c3a:	c5 19 ee cd          	vpmaxsw %xmm5,%xmm12,%xmm9
 1001c3e:	fb                   	sti    
 1001c3f:	84 02                	test   %al,(%rdx)
 1001c41:	e6 c7                	out    %al,$0xc7
 1001c43:	e2 be                	loop   0x1001c03
 1001c45:	2b 68 cf             	sub    -0x31(%rax),%ebp
 1001c48:	23 fc                	and    %esp,%edi
 1001c4a:	a2 e5 f5 ed 3f 7e b1 	movabs %al,0x17e4b17e3fedf5e5
 1001c51:	e4 17 
 1001c53:	ea                   	(bad)  
 1001c54:	51                   	push   %rcx
 1001c55:	dd 26                	frstor (%rsi)
 1001c57:	ef                   	out    %eax,(%dx)
 1001c58:	72 8a                	jb     0x1001be4
 1001c5a:	e6 fb                	out    %al,$0xfb
 1001c5c:	32 71 ca             	xor    -0x36(%rcx),%dh
 1001c5f:	7e 7e                	jle    0x1001cdf
 1001c61:	98                   	cwtl   
 1001c62:	ce                   	(bad)  
 1001c63:	6f                   	outsl  %ds:(%rsi),(%dx)
 1001c64:	40 ae                	scas   %es:(%rdi),%al
 1001c66:	24 13                	and    $0x13,%al
 1001c68:	36 ff c2             	ss inc %edx
 1001c6b:	1e                   	(bad)  
 1001c6c:	ac                   	lods   %ds:(%rsi),%al
 1001c6d:	74 28                	je     0x1001c97
 1001c6f:	57                   	push   %rdi
 1001c70:	29 65 0a             	sub    %esp,0xa(%rbp)
 1001c73:	64 2f                	fs (bad) 
 1001c75:	cb                   	lret   
 1001c76:	77 31                	ja     0x1001ca9
 1001c78:	34 ad                	xor    $0xad,%al
 1001c7a:	c1 42 ca 2f          	roll   $0x2f,-0x36(%rdx)
 1001c7e:	ac                   	lods   %ds:(%rsi),%al
 1001c7f:	3b d4                	cmp    %esp,%edx
 1001c81:	ef                   	out    %eax,(%dx)
 1001c82:	20 aa 6f e4 e0 46    	and    %ch,0x46e0e46f(%rdx)
 1001c88:	27                   	(bad)  
 1001c89:	24 f8                	and    $0xf8,%al
 1001c8b:	3c 45                	cmp    $0x45,%al
 1001c8d:	77 5e                	ja     0x1001ced
 1001c8f:	45 b7 a1             	rex.RB mov $0xa1,%r15b
 1001c92:	9d                   	popfq  
 1001c93:	e7 7f                	out    %eax,$0x7f
 1001c95:	34 51                	xor    $0x51,%al
 1001c97:	38 31                	cmp    %dh,(%rcx)
 1001c99:	6c                   	insb   (%dx),%es:(%rdi)
 1001c9a:	8c b6 73 47 ba d9    	mov    %?,-0x2645b88d(%rsi)
 1001ca0:	00 74 57 69          	add    %dh,0x69(%rdi,%rdx,2)
 1001ca4:	5e                   	pop    %rsi
 1001ca5:	25 be d2 66 6d       	and    $0x6d66d2be,%eax
 1001caa:	f0 1f                	lock (bad) 
 1001cac:	d1 7b 56             	sarl   0x56(%rbx)
 1001caf:	ad                   	lods   %ds:(%rsi),%eax
 1001cb0:	f1                   	icebp  
 1001cb1:	a0 e2 35 b5 8a f2 09 	movabs 0x2ed909f28ab535e2,%al
 1001cb8:	d9 2e 
 1001cba:	37                   	(bad)  
 1001cbb:	c1 d8 51             	rcr    $0x51,%eax
 1001cbe:	42 bf bf 4b ad 84    	rex.X mov $0x84ad4bbf,%edi
 1001cc4:	b5 6d                	mov    $0x6d,%ch
 1001cc6:	9e                   	sahf   
 1001cc7:	f9                   	stc    
 1001cc8:	a9 4f 1b 2e 93       	test   $0x932e1b4f,%eax
 1001ccd:	da 3f                	fidivrl (%rdi)
 1001ccf:	be 6c 55 c7 e4       	mov    $0xe4c7556c,%esi
 1001cd4:	f3 83 f6 32          	repz xor $0x32,%esi
 1001cd8:	33 55 73             	xor    0x73(%rbp),%edx
 1001cdb:	27                   	(bad)  
 1001cdc:	37                   	(bad)  
 1001cdd:	d0 e4                	shl    %ah
 1001cdf:	82                   	(bad)  
 1001ce0:	75 3b                	jne    0x1001d1d
 1001ce2:	1e                   	(bad)  
 1001ce3:	25 11 c5 bc cd       	and    $0xcdbcc511,%eax
 1001ce8:	92                   	xchg   %eax,%edx
 1001ce9:	90                   	nop
 1001cea:	2c 2b                	sub    $0x2b,%al
 1001cec:	45 00 47 6b          	add    %r8b,0x6b(%r15)
 1001cf0:	1b 54 8b 5e          	sbb    0x5e(%rbx,%rcx,4),%edx
 1001cf4:	5b                   	pop    %rbx
 1001cf5:	5c                   	pop    %rsp
 1001cf6:	d5                   	(bad)  
 1001cf7:	32 bb 20 41 ae b6    	xor    -0x4951bee0(%rbx),%bh
 1001cfd:	4c a2 00 e5 03 82 01 	rex.WR movabs %al,0x484dcd018203e500
 1001d04:	cd 4d 48 
 1001d07:	a3 b6 3c a9 d0 96 7e 	movabs %eax,0x6b1d7e96d0a93cb6
 1001d0e:	1d 6b 
 1001d10:	c4                   	(bad)  
 1001d11:	90                   	nop
 1001d12:	93                   	xchg   %eax,%ebx
 1001d13:	ee                   	out    %al,(%dx)
 1001d14:	e9 85 f2 9c 92       	jmpq   0xffffffff939d0f9e
 1001d19:	e3 da                	jrcxz  0x1001cf5
 1001d1b:	64 2a 98 77 7a 5d cf 	sub    %fs:-0x30a28589(%rax),%bl
 1001d22:	b2 c1                	mov    $0xc1,%dl
 1001d24:	0e                   	(bad)  
 1001d25:	91                   	xchg   %eax,%ecx
 1001d26:	3b 7d 4c             	cmp    0x4c(%rbp),%edi
 1001d29:	65 1d c7 b7 71 94    	gs sbb $0x9471b7c7,%eax
 1001d2f:	8c 21                	mov    %fs,(%rcx)
 1001d31:	84 3f                	test   %bh,(%rdi)
 1001d33:	4d 2d be d3 72 c9    	rex.WRB sub $0xffffffffc972d3be,%rax
 1001d39:	b2 06                	mov    $0x6,%dl
 1001d3b:	ea                   	(bad)  
 1001d3c:	0b 60 92             	or     -0x6e(%rax),%esp
 1001d3f:	2a ab 58 7b 2d 5e    	sub    0x5e2d7b58(%rbx),%ch
 1001d45:	31 9e f6 43 6d 76    	xor    %ebx,0x766d43f6(%rsi)
 1001d4b:	d4                   	(bad)  
 1001d4c:	19 95 53 85 b4 eb    	sbb    %edx,-0x144b7aad(%rbp)
 1001d52:	bc e4 16 09 e8       	mov    $0xe80916e4,%esp
 1001d57:	50                   	push   %rax
 1001d58:	c0 ef b1             	shr    $0xb1,%bh
 1001d5b:	51                   	push   %rcx
 1001d5c:	fb                   	sti    
 1001d5d:	b0 53                	mov    $0x53,%al
 1001d5f:	fa                   	cli    
 1001d60:	f1                   	icebp  
 1001d61:	58                   	pop    %rax
 1001d62:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1001d63:	9e                   	sahf   
 1001d64:	f6 78 82             	idivb  -0x7e(%rax)
 1001d67:	eb 74                	jmp    0x1001ddd
 1001d69:	b1 dc                	mov    $0xdc,%cl
 1001d6b:	a8 69                	test   $0x69,%al
 1001d6d:	95                   	xchg   %eax,%ebp
 1001d6e:	81 2e a0 bf 88 62    	subl   $0x6288bfa0,(%rsi)
 1001d74:	eb dd                	jmp    0x1001d53
 1001d76:	0a 8c e0 30 52 aa 08 	or     0x8aa5230(%rax,%riz,8),%cl
 1001d7d:	cb                   	lret   
 1001d7e:	60                   	(bad)  
 1001d7f:	74 c2                	je     0x1001d43
 1001d81:	23 19                	and    (%rcx),%ebx
 1001d83:	6c                   	insb   (%dx),%es:(%rdi)
 1001d84:	f8                   	clc    
 1001d85:	80 c9 ea             	or     $0xea,%cl
 1001d88:	fe                   	(bad)  
 1001d89:	13 6b 80             	adc    -0x80(%rbx),%ebp
 1001d8c:	3e 78 e7             	js,pt  0x1001d76
 1001d8f:	9e                   	sahf   
 1001d90:	64 93                	fs xchg %eax,%ebx
 1001d92:	6b 09 43             	imul   $0x43,(%rcx),%ecx
 1001d95:	e1 45                	loope  0x1001ddc
 1001d97:	6b 11 d6             	imul   $0xffffffd6,(%rcx),%edx
 1001d9a:	94                   	xchg   %eax,%esp
 1001d9b:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1001d9c:	ad                   	lods   %ds:(%rsi),%eax
 1001d9d:	78 58                	js     0x1001df7
 1001d9f:	20 bc cf 90 d2 f6 e9 	and    %bh,-0x16092d70(%rdi,%rcx,8)
 1001da6:	16                   	(bad)  
 1001da7:	06                   	(bad)  
 1001da8:	41 ba e6 c5 ae 0a    	mov    $0xaaec5e6,%r10d
 1001dae:	b7 14                	mov    $0x14,%bh
 1001db0:	d2 87 2b 6d 0c 0f    	rolb   %cl,0xf0c6d2b(%rdi)
 1001db6:	28 e3                	sub    %ah,%bl
 1001db8:	33 37                	xor    (%rdi),%esi
 1001dba:	da 7a 71             	fidivrl 0x71(%rdx)
 1001dbd:	5e                   	pop    %rsi
 1001dbe:	9b                   	fwait
 1001dbf:	90                   	nop
 1001dc0:	b6 2b                	mov    $0x2b,%dh
 1001dc2:	83 92 04 fc 3d 2a 65 	adcl   $0x65,0x2a3dfc04(%rdx)
 1001dc9:	40 e9 a7 62 1b 3f    	rex jmpq 0x401b8076
 1001dcf:	bc 0c a4 89 81       	mov    $0x8189a40c,%esp
 1001dd4:	f0 9f                	lock lahf 
 1001dd6:	e8 85 9e a2 87       	callq  0xffffffff88a2bc60
 1001ddb:	95                   	xchg   %eax,%ebp
 1001ddc:	f3 4e ac             	rep rex.WRX lods %ds:(%rsi),%al
 1001ddf:	69 99 a2 d5 02 f1 e9 	imul   $0x776cece9,-0xefd2a5e(%rcx),%ebx
 1001de6:	ec 6c 77 
 1001de9:	63 07                	movsxd (%rdi),%eax
 1001deb:	86 ad a6 43 84 9d    	xchg   %ch,-0x627bbc5a(%rbp)
 1001df1:	d4                   	(bad)  
 1001df2:	18 8b cb 45 b6 2c    	sbb    %cl,0x2cb645cb(%rbx)
 1001df8:	c4                   	(bad)  
 1001df9:	5b                   	pop    %rbx
 1001dfa:	8f                   	(bad)  
 1001dfb:	7c 36                	jl     0x1001e33
 1001dfd:	30 75 d2             	xor    %dh,-0x2e(%rbp)
 1001e00:	26 ad                	lods   %es:(%rsi),%eax
 1001e02:	44 1d 48 81 bb 3e    	rex.R sbb $0x3ebb8148,%eax
 1001e08:	8f                   	(bad)  
 1001e09:	98                   	cwtl   
 1001e0a:	db a5 99 09 df 16    	(bad)  0x16df0999(%rbp)
 1001e10:	4c d5                	rex.WR (bad) 
 1001e12:	2d 89 8f b2 3f       	sub    $0x3fb28f89,%eax
 1001e17:	e3 0e                	jrcxz  0x1001e27
 1001e19:	55                   	push   %rbp
 1001e1a:	4e 02 b8 41 57 63 4e 	rex.WRX add 0x4e635741(%rax),%r15b
 1001e21:	af                   	scas   %es:(%rdi),%eax
 1001e22:	6e                   	outsb  %ds:(%rsi),(%dx)
 1001e23:	ca 05 36             	lret   $0x3605
 1001e26:	70 b4                	jo     0x1001ddc
 1001e28:	e2 fb                	loop   0x1001e25
 1001e2a:	e4 90                	in     $0x90,%al
 1001e2c:	e4 f9                	in     $0xf9,%al
 1001e2e:	5c                   	pop    %rsp
 1001e2f:	fb                   	sti    
 1001e30:	d5                   	(bad)  
 1001e31:	e7 55                	out    %eax,$0x55
 1001e33:	4a fc                	rex.WX cld 
 1001e35:	43 d1 80 9f 76 56 e9 	rex.XB roll -0x16a98961(%r8)
 1001e3c:	17                   	(bad)  
 1001e3d:	9b                   	fwait
 1001e3e:	f4                   	hlt    
 1001e3f:	e8 2f 4e fb 40       	callq  0x41fb6c73
 1001e44:	be 9b c0 e6 93       	mov    $0x93e6c09b,%esi
 1001e49:	6f                   	outsl  %ds:(%rsi),(%dx)
 1001e4a:	54                   	push   %rsp
 1001e4b:	fc                   	cld    
 1001e4c:	cc                   	int3   
 1001e4d:	62                   	(bad)  
 1001e4e:	09 ca                	or     %ecx,%edx
 1001e50:	ec                   	in     (%dx),%al
 1001e51:	13 c1                	adc    %ecx,%eax
 1001e53:	6c                   	insb   (%dx),%es:(%rdi)
 1001e54:	ef                   	out    %eax,(%dx)
 1001e55:	57                   	push   %rdi
 1001e56:	4d 14 23             	rex.WRB adc $0x23,%al
 1001e59:	94                   	xchg   %eax,%esp
 1001e5a:	d9 eb                	fldpi  
 1001e5c:	3b 83 9d 03 c2 48    	cmp    0x48c2039d(%rbx),%eax
 1001e62:	fb                   	sti    
 1001e63:	ee                   	out    %al,(%dx)
 1001e64:	46 0c f5             	rex.RX or $0xf5,%al
 1001e67:	c3                   	retq   
 1001e68:	8a db                	mov    %bl,%bl
 1001e6a:	0e                   	(bad)  
 1001e6b:	d0 02                	rolb   (%rdx)
 1001e6d:	5f                   	pop    %rdi
 1001e6e:	48 9d                	rex.W popfq 
 1001e70:	42 e2 a1             	rex.X loop 0x1001e14
 1001e73:	08 2a                	or     %ch,(%rdx)
 1001e75:	0c 1c                	or     $0x1c,%al
 1001e77:	b7 29                	mov    $0x29,%bh
 1001e79:	fb                   	sti    
 1001e7a:	29 d3                	sub    %edx,%ebx
 1001e7c:	18 ad 3a fe d3 28    	sbb    %ch,0x28d3fe3a(%rbp)
 1001e82:	01 81 21 64 a5 3d    	add    %eax,0x3da56421(%rcx)
 1001e88:	b1 2b                	mov    $0x2b,%cl
 1001e8a:	11 0b                	adc    %ecx,(%rbx)
 1001e8c:	f0 5f                	lock pop %rdi
 1001e8e:	4b 86 1c 64          	rex.WXB xchg %bl,(%r12,%r12,2)
 1001e92:	b0 02                	mov    $0x2,%al
 1001e94:	51                   	push   %rcx
 1001e95:	5d                   	pop    %rbp
 1001e96:	0e                   	(bad)  
 1001e97:	33 76 74             	xor    0x74(%rsi),%esi
 1001e9a:	f4                   	hlt    
 1001e9b:	8c 75 23             	mov    %?,0x23(%rbp)
 1001e9e:	d1 94 cd 28 78 52 23 	rcll   0x23527828(%rbp,%rcx,8)
 1001ea5:	c1 23 7b             	shll   $0x7b,(%rbx)
 1001ea8:	53                   	push   %rbx
 1001ea9:	e2 41                	loop   0x1001eec
 1001eab:	c2 40 c8             	retq   $0xc840
 1001eae:	29 22                	sub    %esp,(%rdx)
 1001eb0:	ee                   	out    %al,(%dx)
 1001eb1:	21 48 32             	and    %ecx,0x32(%rax)
 1001eb4:	7b 60                	jnp    0x1001f16
 1001eb6:	77 75                	ja     0x1001f2d
 1001eb8:	6d                   	insl   (%dx),%es:(%rdi)
 1001eb9:	69 c4 e7 53 d2 9a    	imul   $0x9ad253e7,%esp,%eax
 1001ebf:	92                   	xchg   %eax,%edx
 1001ec0:	91                   	xchg   %eax,%ecx
 1001ec1:	0c 35                	or     $0x35,%al
 1001ec3:	62                   	(bad)  
 1001ec4:	f6 d4                	not    %ah
 1001ec6:	a1 01 f5 5e 2e 9f a7 	movabs 0xcc9ca79f2e5ef501,%eax
 1001ecd:	9c cc 
 1001ecf:	4a 32 74 9c 68       	rex.WX xor 0x68(%rsp,%r11,4),%sil
 1001ed4:	07                   	(bad)  
 1001ed5:	b6 f4                	mov    $0xf4,%dh
 1001ed7:	72 f7                	jb     0x1001ed0
 1001ed9:	02 44 49 1a          	add    0x1a(%rcx,%rcx,2),%al
 1001edd:	01 a9 48 07 1d 84    	add    %ebp,-0x7be2f8b8(%rcx)
 1001ee3:	42 c4                	rex.X (bad) 
 1001ee5:	cb                   	lret   
 1001ee6:	5d                   	pop    %rbp
 1001ee7:	6b f5 8e             	imul   $0xffffff8e,%ebp,%esi
 1001eea:	0d b5 9d fa 6b       	or     $0x6bfa9db5,%eax
 1001eef:	89 dc                	mov    %ebx,%esp
 1001ef1:	d1 40 df             	roll   -0x21(%rax)
 1001ef4:	aa                   	stos   %al,%es:(%rdi)
 1001ef5:	26 71 80             	es jno 0x1001e78
 1001ef8:	1a 64 2b b3          	sbb    -0x4d(%rbx,%rbp,1),%ah
 1001efc:	7e 8f                	jle    0x1001e8d
 1001efe:	7a 4e                	jp     0x1001f4e
 1001f00:	cf                   	iret   
 1001f01:	b2 4a                	mov    $0x4a,%dl
 1001f03:	d6                   	(bad)  
 1001f04:	d5                   	(bad)  
 1001f05:	4c                   	rex.WR
 1001f06:	40 9c                	rex pushfq 
 1001f08:	69 8f 58 8b fa 93 57 	imul   $0xbac64957,-0x6c0574a8(%rdi),%ecx
 1001f0f:	49 c6 ba 
 1001f12:	13 37                	adc    (%rdi),%esi
 1001f14:	24 93                	and    $0x93,%al
 1001f16:	f0 b4 7b             	lock mov $0x7b,%ah
 1001f19:	19 cd                	sbb    %ecx,%ebp
 1001f1b:	3e 75 50             	jne,pt 0x1001f6e
 1001f1e:	9e                   	sahf   
 1001f1f:	b5 68                	mov    $0x68,%ch
 1001f21:	1a 70 a7             	sbb    -0x59(%rax),%dh
 1001f24:	d3 c5                	rol    %cl,%ebp
 1001f26:	1e                   	(bad)  
 1001f27:	7c bb                	jl     0x1001ee4
 1001f29:	8e 41 51             	mov    0x51(%rcx),%es
 1001f2c:	1b 31                	sbb    (%rcx),%esi
 1001f2e:	c7                   	(bad)  
 1001f2f:	32 06                	xor    (%rsi),%al
 1001f31:	e3 2b                	jrcxz  0x1001f5e
 1001f33:	e4 50                	in     $0x50,%al
 1001f35:	f3 e0 87             	repz loopne 0x1001ebf
 1001f38:	84 ba ff 52 da 85    	test   %bh,-0x7a25ad01(%rdx)
 1001f3e:	e8 1b ae 8d 33       	callq  0x348dcd5e
 1001f43:	44                   	rex.R
 1001f44:	42 33 ac a8 12 d1 9e 	xor    -0x57612eee(%rax,%r13,4),%ebp
 1001f4b:	a8 
 1001f4c:	81 c1 f8 02 07 ce    	add    $0xce0702f8,%ecx
 1001f52:	f6 b4 a8 e1 46 6d ec 	divb   -0x1392b91f(%rax,%rbp,4)
 1001f59:	0b cf                	or     %edi,%ecx
 1001f5b:	bd 81 e4 a1 17       	mov    $0x17a1e481,%ebp
 1001f60:	a1 9d b5 ee 41 73 10 	movabs 0x2316107341eeb59d,%eax
 1001f67:	16 23 
 1001f69:	bf f5 b6 8e 91       	mov    $0x918eb6f5,%edi
 1001f6e:	6d                   	insl   (%dx),%es:(%rdi)
 1001f6f:	7d 14                	jge    0x1001f85
 1001f71:	c6                   	(bad)  
 1001f72:	e1 85                	loope  0x1001ef9
 1001f74:	27                   	(bad)  
 1001f75:	83 4c dd 63 80       	orl    $0xffffff80,0x63(%rbp,%rbx,8)
 1001f7a:	ad                   	lods   %ds:(%rsi),%eax
 1001f7b:	cd ad                	int    $0xad
 1001f7d:	ae                   	scas   %es:(%rdi),%al
 1001f7e:	5f                   	pop    %rdi
 1001f7f:	3e 7f e5             	jg,pt  0x1001f67
 1001f82:	ed                   	in     (%dx),%eax
 1001f83:	e9 17 b5 52 b8       	jmpq   0xffffffffb952d49f
 1001f88:	04 af                	add    $0xaf,%al
 1001f8a:	6f                   	outsl  %ds:(%rsi),(%dx)
 1001f8b:	47 81 06 cd 75 02 4d 	rex.RXB addl $0x4d0275cd,(%r14)
 1001f92:	8a 57 9d             	mov    -0x63(%rdi),%dl
 1001f95:	04 e1                	add    $0xe1,%al
 1001f97:	38 59 cc             	cmp    %bl,-0x34(%rcx)
 1001f9a:	4c b6 c3             	rex.WR mov $0xc3,%sil
 1001f9d:	7d 87                	jge    0x1001f26
 1001f9f:	27                   	(bad)  
 1001fa0:	49 54                	rex.WB push %r12
 1001fa2:	84 bb cb ed 16 96    	test   %bh,-0x69e91235(%rbx)
 1001fa8:	1c 98                	sbb    $0x98,%al
 1001faa:	5c                   	pop    %rsp
 1001fab:	b2 57                	mov    $0x57,%dl
 1001fad:	dd 1c 1c             	fstpl  (%rsp,%rbx,1)
 1001fb0:	d7                   	xlat   %ds:(%rbx)
 1001fb1:	70 c8                	jo     0x1001f7b
 1001fb3:	48 58                	rex.W pop %rax
 1001fb5:	51                   	push   %rcx
 1001fb6:	ab                   	stos   %eax,%es:(%rdi)
 1001fb7:	af                   	scas   %es:(%rdi),%eax
 1001fb8:	7c b2                	jl     0x1001f6c
 1001fba:	e5 3e                	in     $0x3e,%eax
 1001fbc:	bc dc e5 ea 9b       	mov    $0x9beae5dc,%esp
 1001fc1:	76 fa                	jbe    0x1001fbd
 1001fc3:	2c 8d                	sub    $0x8d,%al
 1001fc5:	60                   	(bad)  
 1001fc6:	21 c6                	and    %eax,%esi
 1001fc8:	e9 57 16 b7 b0       	jmpq   0xffffffffb1b73624
 1001fcd:	e0 39                	loopne 0x1002008
 1001fcf:	04 23                	add    $0x23,%al
 1001fd1:	97                   	xchg   %eax,%edi
 1001fd2:	cb                   	lret   
 1001fd3:	66 01 59 5b          	add    %bx,0x5b(%rcx)
 1001fd7:	89 89 98 5a 47 cb    	mov    %ecx,-0x34b8a568(%rcx)
 1001fdd:	62                   	(bad)  
 1001fde:	26 0f a8             	es pushq %gs
 1001fe1:	42 0f 27             	rex.X (bad) 
 1001fe4:	97                   	xchg   %eax,%edi
 1001fe5:	79 be                	jns    0x1001fa5
 1001fe7:	b7 70                	mov    $0x70,%bh
 1001fe9:	52                   	push   %rdx
 1001fea:	dd 8b b8 44 98 e9    	fisttpll -0x1667bb48(%rbx)
 1001ff0:	76 9c                	jbe    0x1001f8e
 1001ff2:	39 a8 4a af f8 0c    	cmp    %ebp,0xcf8af4a(%rax)
 1001ff8:	bf b0 c1 de 60       	mov    $0x60dec1b0,%edi
 1001ffd:	57                   	push   %rdi
 1001ffe:	b5 a3                	mov    $0xa3,%ch
 1002000:	8b 0e                	mov    (%rsi),%ecx
 1002002:	73 b3                	jae    0x1001fb7
 1002004:	73 3f                	jae    0x1002045
 1002006:	8d 90 70 b2 c3 16    	lea    0x16c3b270(%rax),%edx
 100200c:	ce                   	(bad)  
 100200d:	f9                   	stc    
 100200e:	21 e1                	and    %esp,%ecx
 1002010:	8e fa                	mov    %edx,%?
 1002012:	a0 3e 03 4b 41 4b 12 	movabs 0xbfa3124b414b033e,%al
 1002019:	a3 bf 
 100201b:	1b 3c 15 5c 07 72 ff 	sbb    -0x8df8a4(,%rdx,1),%edi
 1002022:	f3 e1 7d             	repz loope 0x10020a2
 1002025:	53                   	push   %rbx
 1002026:	06                   	(bad)  
 1002027:	dd 93 65 28 8e 41    	fstl   0x418e2865(%rbx)
 100202d:	9f                   	lahf   
 100202e:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 100202f:	66 86 2f             	data16 xchg %ch,(%rdi)
 1002032:	b0 c0                	mov    $0xc0,%al
 1002034:	f6 ad 6e a3 8f 26    	imulb  0x268fa36e(%rbp)
 100203a:	8e 66 f6             	mov    -0xa(%rsi),%fs
 100203d:	63 07                	movsxd (%rdi),%eax
 100203f:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1002040:	81 5b ac 94 b8 41 9e 	sbbl   $0x9e41b894,-0x54(%rbx)
 1002047:	3f                   	(bad)  
 1002048:	3a 95 ae 35 25 28    	cmp    0x282535ae(%rbp),%dl
 100204e:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100204f:	40 a1 d1 e6 0d e6 60 	rex movabs 0x7302d160e60de6d1,%eax
 1002056:	d1 02 73 
 1002059:	cd 11                	int    $0x11
 100205b:	2a c5                	sub    %ch,%al
 100205d:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 100205e:	40 a4                	rex movsb %ds:(%rsi),%es:(%rdi)
 1002060:	62                   	(bad)  
 1002061:	b9 59 07 0b d4       	mov    $0xd40b0759,%ecx
 1002066:	e7 f7                	out    %eax,$0xf7
 1002068:	ff 08                	decl   (%rax)
 100206a:	a2 6e 35 95 e8 15 dd 	movabs %al,0x7e4cdd15e895356e
 1002071:	4c 7e 
 1002073:	5c                   	pop    %rsp
 1002074:	81 dd e7 b0 ca 8e    	sbb    $0x8ecab0e7,%ebp
 100207a:	90                   	nop
 100207b:	cb                   	lret   
 100207c:	60                   	(bad)  
 100207d:	e6 c5                	out    %al,$0xc5
 100207f:	2d f7 71 6c 2f       	sub    $0x2f6c71f7,%eax
 1002084:	9e                   	sahf   
 1002085:	d1 41 86             	roll   -0x7a(%rcx)
 1002088:	25 a5 7a a9 cf       	and    $0xcfa97aa5,%eax
 100208d:	85 a1 90 ea 5a 5a    	test   %esp,0x5a5aea90(%rcx)
 1002093:	6f                   	outsl  %ds:(%rsi),(%dx)
 1002094:	ba 29 ce d3 70       	mov    $0x70d3ce29,%edx
 1002099:	92                   	xchg   %eax,%edx
 100209a:	10 41 2b             	adc    %al,0x2b(%rcx)
 100209d:	43 34 c5             	rex.XB xor $0xc5,%al
 10020a0:	7e 6c                	jle    0x100210e
 10020a2:	d8 33                	fdivs  (%rbx)
 10020a4:	9f                   	lahf   
 10020a5:	1c 27                	sbb    $0x27,%al
 10020a7:	fa                   	cli    
 10020a8:	78 b5                	js     0x100205f
 10020aa:	02 18                	add    (%rax),%bl
 10020ac:	d9 b4 22 60 24 56 a3 	fnstenv -0x5ca9dba0(%rdx,%riz,1)
 10020b3:	c4 43 4c f1          	(bad)
 10020b7:	3f                   	(bad)  
 10020b8:	78 9e                	js     0x1002058
 10020ba:	e1 82                	loope  0x100203e
 10020bc:	96                   	xchg   %eax,%esi
 10020bd:	b3 8e                	mov    $0x8e,%bl
 10020bf:	00 fc                	add    %bh,%ah
 10020c1:	a2 8f fc be 74 57 bf 	movabs %al,0xeb69bf5774befc8f
 10020c8:	69 eb 
 10020ca:	0d 94 91 12 7a       	or     $0x7a129194,%eax
 10020cf:	04 65                	add    $0x65,%al
 10020d1:	16                   	(bad)  
 10020d2:	5a                   	pop    %rdx
 10020d3:	38 fa                	cmp    %bh,%dl
 10020d5:	fc                   	cld    
 10020d6:	29 46 b6             	sub    %eax,-0x4a(%rsi)
 10020d9:	c0 26 f4             	shlb   $0xf4,(%rsi)
 10020dc:	f2 1c 3d             	repnz sbb $0x3d,%al
 10020df:	5f                   	pop    %rdi
 10020e0:	3e d8 ff             	ds fdivr %st(7),%st
 10020e3:	59                   	pop    %rcx
 10020e4:	e3 39                	jrcxz  0x100211f
 10020e6:	1e                   	(bad)  
 10020e7:	8b b9 98 58 50 c6    	mov    -0x39afa768(%rcx),%edi
 10020ed:	cc                   	int3   
 10020ee:	d5                   	(bad)  
 10020ef:	20 3e                	and    %bh,(%rsi)
 10020f1:	cc                   	int3   
 10020f2:	af                   	scas   %es:(%rdi),%eax
 10020f3:	e7 8a                	out    %eax,$0x8a
 10020f5:	f2 7b f0             	bnd jnp 0x10020e8
 10020f8:	a0 50 b3 65 c9 70 30 	movabs 0xd7e53070c965b350,%al
 10020ff:	e5 d7 
 1002101:	af                   	scas   %es:(%rdi),%eax
 1002102:	b2 48                	mov    $0x48,%dl
 1002104:	f7 c8 eb 9a 13 9f    	test   $0x9f139aeb,%eax
 100210a:	23 87 11 27 6a 26    	and    0x266a2711(%rdi),%eax
 1002110:	d0 9f 19 d8 9c 8f    	rcrb   -0x706327e7(%rdi)
 1002116:	d9 da                	(bad)  
 1002118:	73 60                	jae    0x100217a
 100211a:	fe                   	(bad)  
 100211b:	9a                   	(bad)  
 100211c:	ab                   	stos   %eax,%es:(%rdi)
 100211d:	84 be 4d ce e9 d6    	test   %bh,-0x291631b3(%rsi)
 1002123:	57                   	push   %rdi
 1002124:	c6                   	(bad)  
 1002125:	da 2a                	fisubrl (%rdx)
 1002127:	06                   	(bad)  
 1002128:	78 09                	js     0x1002133
 100212a:	3a 4a d6             	cmp    -0x2a(%rdx),%cl
 100212d:	9f                   	lahf   
 100212e:	f8                   	clc    
 100212f:	e2 27                	loop   0x1002158
 1002131:	1d 0f ab a9 3e       	sbb    $0x3ea9ab0f,%eax
 1002136:	60                   	(bad)  
 1002137:	b5 29                	mov    $0x29,%ch
 1002139:	19 8a c1 9a 02 2b    	sbb    %ecx,0x2b029ac1(%rdx)
 100213f:	56                   	push   %rsi
 1002140:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1002141:	8e ef                	mov    %edi,%gs
 1002143:	d3 12                	rcll   %cl,(%rdx)
 1002145:	43 28 e4             	rex.XB sub %spl,%r12b
 1002148:	7f 8d                	jg     0x10020d7
 100214a:	8b ff                	mov    %edi,%edi
 100214c:	f7 84 91 23 3c 47 75 	testl  $0x5062899b,0x75473c23(%rcx,%rdx,4)
 1002153:	9b 89 62 50 
 1002157:	68 65 4c 05 cc       	pushq  $0xffffffffcc054c65
 100215c:	7b 26                	jnp    0x1002184
 100215e:	77 92                	ja     0x10020f2
 1002160:	38 56 9c             	cmp    %dl,-0x64(%rsi)
 1002163:	e0 42                	loopne 0x10021a7
 1002165:	50                   	push   %rax
 1002166:	3f                   	(bad)  
 1002167:	31 ff                	xor    %edi,%edi
 1002169:	1b 33                	sbb    (%rbx),%esi
 100216b:	f1                   	icebp  
 100216c:	89 9c e0 bb 0a 9e 25 	mov    %ebx,0x259e0abb(%rax,%riz,8)
 1002173:	ee                   	out    %al,(%dx)
 1002174:	95                   	xchg   %eax,%ebp
 1002175:	2a 3b                	sub    (%rbx),%bh
 1002177:	e9 59 f8 2a c5       	jmpq   0xffffffffc62b19d5
 100217c:	09 b7 a8 9b d6 8a    	or     %esi,-0x75296458(%rdi)
 1002182:	06                   	(bad)  
 1002183:	8e 1a                	mov    (%rdx),%ds
 1002185:	e2 cd                	loop   0x1002154
 1002187:	9f                   	lahf   
 1002188:	4e                   	rex.WRX
 1002189:	40 d1 39             	rex sarl (%rcx)
 100218c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100218d:	e4 07                	in     $0x7,%al
 100218f:	80 e4 c3             	and    $0xc3,%ah
 1002192:	e1 b9                	loope  0x100214d
 1002194:	48 0b af 18 e9 e9 d8 	or     -0x271616e8(%rdi),%rbp
 100219b:	62                   	(bad)  
 100219c:	15 b5 89 9b 51       	adc    $0x519b89b5,%eax
 10021a1:	29 63 4f             	sub    %esp,0x4f(%rbx)
 10021a4:	14 05                	adc    $0x5,%al
 10021a6:	f9                   	stc    
 10021a7:	02 ab 47 9d d9 b2    	add    -0x4d2662b9(%rbx),%ch
 10021ad:	4b b9 04 a6 99 77 5b 	rex.WXB movabs $0x83ecea5b7799a604,%r9
 10021b4:	ea ec 83 
 10021b7:	2c 38                	sub    $0x38,%al
 10021b9:	6a 0d                	pushq  $0xd
 10021bb:	41 b8 72 f7 6d a2    	mov    $0xa26df772,%r8d
 10021c1:	08 87 b2 53 11 40    	or     %al,0x401153b2(%rdi)
 10021c7:	41 d3 8e 7d ff 17 a3 	rorl   %cl,-0x5ce80083(%r14)
 10021ce:	7e 70                	jle    0x1002240
 10021d0:	2d 06 ac 6a c4       	sub    $0xc46aac06,%eax
 10021d5:	c9                   	leaveq 
 10021d6:	d7                   	xlat   %ds:(%rbx)
 10021d7:	d4                   	(bad)  
 10021d8:	03 10                	add    (%rax),%edx
 10021da:	86 1c 58             	xchg   %bl,(%rax,%rbx,2)
 10021dd:	60                   	(bad)  
 10021de:	10 9b 88 72 90 56    	adc    %bl,0x56907288(%rbx)
 10021e4:	6f                   	outsl  %ds:(%rsi),(%dx)
 10021e5:	d3 06                	roll   %cl,(%rsi)
 10021e7:	e4 59                	in     $0x59,%al
 10021e9:	5b                   	pop    %rbx
 10021ea:	f7 2d 66 86 29 cd    	imull  -0x32d6799a(%rip)        # 0xffffffffce29a856
 10021f0:	c6                   	(bad)  
 10021f1:	a9 ee d3 56 43       	test   $0x4356d3ee,%eax
 10021f6:	64 e4 ec             	fs in  $0xec,%al
 10021f9:	c6                   	(bad)  
 10021fa:	21 a1 c1 73 87 82    	and    %esp,-0x7d788c3f(%rcx)
 1002200:	d7                   	xlat   %ds:(%rbx)
 1002201:	c7 80 19 1b 47 d5 86 	movl   $0xfe2d86,-0x2ab8e4e7(%rax)
 1002208:	2d fe 00 
 100220b:	e7 01                	out    %eax,$0x1
 100220d:	66 6e                	data16 outsb %ds:(%rsi),(%dx)
 100220f:	e8 02 b8 30 6e       	callq  0x6f30da16
 1002214:	c6                   	(bad)  
 1002215:	24 47                	and    $0x47,%al
 1002217:	e5 fe                	in     $0xfe,%eax
 1002219:	d5                   	(bad)  
 100221a:	8a 08                	mov    (%rax),%cl
 100221c:	51                   	push   %rcx
 100221d:	5e                   	pop    %rsi
 100221e:	94                   	xchg   %eax,%esp
 100221f:	29 da                	sub    %ebx,%edx
 1002221:	4b 0d 3b d3 41 c4    	rex.WXB or $0xffffffffc441d33b,%rax
 1002227:	64 ca af 00          	fs lret $0xaf
 100222b:	06                   	(bad)  
 100222c:	49 a6                	rex.WB cmpsb %es:(%rdi),%ds:(%rsi)
 100222e:	e7 fe                	out    %eax,$0xfe
 1002230:	33 2f                	xor    (%rdi),%ebp
 1002232:	2f                   	(bad)  
 1002233:	9e                   	sahf   
 1002234:	45 9a                	rex.RB (bad) 
 1002236:	db c2                	fcmovnb %st(2),%st
 1002238:	37                   	(bad)  
 1002239:	df fb                	(bad)  
 100223b:	63 f9                	movsxd %ecx,%edi
 100223d:	29 8a e0 11 d3 5f    	sub    %ecx,0x5fd311e0(%rdx)
 1002243:	74 9c                	je     0x10021e1
 1002245:	50                   	push   %rax
 1002246:	4c f8                	rex.WR clc 
 1002248:	61                   	(bad)  
 1002249:	20 88 52 e4 7b e1    	and    %cl,-0x1e841bae(%rax)
 100224f:	f8                   	clc    
 1002250:	01 2f                	add    %ebp,(%rdi)
 1002252:	d8 8a 8b a3 c2 23    	fmuls  0x23c2a38b(%rdx)
 1002258:	1d 7b 3a f4 68       	sbb    $0x68f43a7b,%eax
 100225d:	38 a2 d8 f8 e8 84    	cmp    %ah,-0x7b170728(%rdx)
 1002263:	2f                   	(bad)  
 1002264:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1002265:	aa                   	stos   %al,%es:(%rdi)
 1002266:	2f                   	(bad)  
 1002267:	35 e0 5c fb 8a       	xor    $0x8afb5ce0,%eax
 100226c:	63 73 03             	movsxd 0x3(%rbx),%esi
 100226f:	87 83 d9 1e 8a 6e    	xchg   %eax,0x6e8a1ed9(%rbx)
 1002275:	ff 00                	incl   (%rax)
 1002277:	db 87 d1 d6 58 a3    	fildl  -0x5ca7292f(%rdi)
 100227d:	98                   	cwtl   
 100227e:	7f 7a                	jg     0x10022fa
 1002280:	66 3c cf             	data16 cmp $0xcf,%al
 1002283:	49 96                	xchg   %rax,%r14
 1002285:	f1                   	icebp  
 1002286:	77 3d                	ja     0x10022c5
 1002288:	e6 eb                	out    %al,$0xeb
 100228a:	08 5c 92 d5          	or     %bl,-0x2b(%rdx,%rdx,4)
 100228e:	1f                   	(bad)  
 100228f:	49 76 fa             	rex.WB jbe 0x100228c
 1002292:	6d                   	insl   (%dx),%es:(%rdi)
 1002293:	11 08                	adc    %ecx,(%rax)
 1002295:	15 31 79 c0 7d       	adc    $0x7dc07931,%eax
 100229a:	f1                   	icebp  
 100229b:	e0 4f                	loopne 0x10022ec
 100229d:	80 a8 33 ea 6d 1e 9b 	subb   $0x9b,0x1e6dea33(%rax)
 10022a4:	66 7b d4             	data16 jnp 0x100227b
 10022a7:	0d 64 60 fe 14       	or     $0x14fe6064,%eax
 10022ac:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10022ad:	89 e5                	mov    %esp,%ebp
 10022af:	28 98 7c 49 70 3f    	sub    %bl,0x3f70497c(%rax)
 10022b5:	1b 33                	sbb    (%rbx),%esi
 10022b7:	59                   	pop    %rcx
 10022b8:	05 48 f5 4b 3f       	add    $0x3f4bf548,%eax
 10022bd:	9e                   	sahf   
 10022be:	b8 be fb 64 76       	mov    $0x7664fbbe,%eax
 10022c3:	ba 5b 4b 60 46       	mov    $0x46604b5b,%edx
 10022c8:	5c                   	pop    %rsp
 10022c9:	e4 19                	in     $0x19,%al
 10022cb:	5e                   	pop    %rsi
 10022cc:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10022cd:	5b                   	pop    %rbx
 10022ce:	8d 26                	lea    (%rsi),%esp
 10022d0:	39 53 a8             	cmp    %edx,-0x58(%rbx)
 10022d3:	7f 54                	jg     0x1002329
 10022d5:	ef                   	out    %eax,(%dx)
 10022d6:	97                   	xchg   %eax,%edi
 10022d7:	ad                   	lods   %ds:(%rsi),%eax
 10022d8:	b4 17                	mov    $0x17,%ah
 10022da:	eb 6e                	jmp    0x100234a
 10022dc:	b5 08                	mov    $0x8,%ch
 10022de:	5b                   	pop    %rbx
 10022df:	30 53 64             	xor    %dl,0x64(%rbx)
 10022e2:	a3 17 42 f6 d5 5b da 	movabs %eax,0x25ffda5bd5f64217
 10022e9:	ff 25 
 10022eb:	6b 88 f1 35 46 24 1a 	imul   $0x1a,0x244635f1(%rax),%ecx
 10022f2:	04 f4                	add    $0xf4,%al
 10022f4:	57                   	push   %rdi
 10022f5:	06                   	(bad)  
 10022f6:	54                   	push   %rsp
 10022f7:	8b c9                	mov    %ecx,%ecx
 10022f9:	dd 94 4f b7 4f 88 4f 	fstl   0x4f884fb7(%rdi,%rcx,2)
 1002300:	fc                   	cld    
 1002301:	cb                   	lret   
 1002302:	1c 57                	sbb    $0x57,%al
 1002304:	9c                   	pushfq 
 1002305:	7e 42                	jle    0x1002349
 1002307:	c5 9c ab             	(bad)
 100230a:	32 9a 5a 4f e2 8a    	xor    -0x751db0a6(%rdx),%bl
 1002310:	32 40 41             	xor    0x41(%rax),%al
 1002313:	14 20                	adc    $0x20,%al
 1002315:	b3 6e                	mov    $0x6e,%bl
 1002317:	01 dd                	add    %ebx,%ebp
 1002319:	66 22 34 a9          	data16 and (%rcx,%rbp,4),%dh
 100231d:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100231e:	9e                   	sahf   
 100231f:	63 c8                	movsxd %eax,%ecx
 1002321:	8e a6 76 cd e4 6f    	mov    0x6fe4cd76(%rsi),%fs
 1002327:	72 dc                	jb     0x1002305
 1002329:	bc 3b b8 47 0a       	mov    $0xa47b83b,%esp
 100232e:	40 27                	rex (bad) 
 1002330:	4c 77 bb             	rex.WR ja 0x10022ee
 1002333:	99                   	cltd   
 1002334:	d3 5c f2 87          	rcrl   %cl,-0x79(%rdx,%rsi,8)
 1002338:	75 95                	jne    0x10022cf
 100233a:	6b bd 60 c2 c7 76 49 	imul   $0x49,0x76c7c260(%rbp),%edi
 1002341:	49 ca bd fe          	rex.WB lretq $0xfebd
 1002345:	b0 57                	mov    $0x57,%al
 1002347:	0c af                	or     $0xaf,%al
 1002349:	6f                   	outsl  %ds:(%rsi),(%dx)
 100234a:	79 ed                	jns    0x1002339
 100234c:	7b 09                	jnp    0x1002357
 100234e:	5b                   	pop    %rbx
 100234f:	5d                   	pop    %rbp
 1002350:	c0 08 32             	rorb   $0x32,(%rax)
 1002353:	10 9c c4 ba fe 4b f9 	adc    %bl,-0x6b40146(%rsp,%rax,8)
 100235a:	f2 94                	repnz xchg %eax,%esp
 100235c:	f3 7d 2a             	repz jge 0x1002389
 100235f:	51                   	push   %rcx
 1002360:	86 4d 0c             	xchg   %cl,0xc(%rbp)
 1002363:	66 0d 69 59          	or     $0x5969,%ax
 1002367:	05 4c d8 bb 3f       	add    $0x3fbbd84c,%eax
 100236c:	d7                   	xlat   %ds:(%rbx)
 100236d:	ee                   	out    %al,(%dx)
 100236e:	03 7d d6             	add    -0x2a(%rbp),%edi
 1002371:	d5                   	(bad)  
 1002372:	42 8b ca             	rex.X mov %edx,%ecx
 1002375:	6f                   	outsl  %ds:(%rsi),(%dx)
 1002376:	c7                   	(bad)  
 1002377:	31 64 9a 5a          	xor    %esp,0x5a(%rdx,%rbx,4)
 100237b:	d6                   	(bad)  
 100237c:	76 77                	jbe    0x10023f5
 100237e:	92                   	xchg   %eax,%edx
 100237f:	82                   	(bad)  
 1002380:	f7 8f d4 12 a3 f5 01 	testl  $0xbf8d0e01,-0xa5ced2c(%rdi)
 1002387:	0e 8d bf 
 100238a:	6b 7b 79 2a          	imul   $0x2a,0x79(%rbx),%edi
 100238e:	23 8d 1c 39 3e 7f    	and    0x7f3e391c(%rbp),%ecx
 1002394:	1d 67 c3 f7 8d       	sbb    $0x8df7c367,%eax
 1002399:	23 68 62             	and    0x62(%rax),%ebp
 100239c:	76 af                	jbe    0x100234d
 100239e:	d4                   	(bad)  
 100239f:	77 20                	ja     0x10023c1
 10023a1:	9a                   	(bad)  
 10023a2:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10023a3:	3e b4 5f             	ds mov $0x5f,%ah
 10023a6:	e1 12                	loope  0x10023ba
 10023a8:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10023a9:	30 23                	xor    %ah,(%rbx)
 10023ab:	1b 74 5f b8          	sbb    -0x48(%rdi,%rbx,2),%esi
 10023af:	fb                   	sti    
 10023b0:	0e                   	(bad)  
 10023b1:	ca 28 65             	lret   $0x6528
 10023b4:	14 4c                	adc    $0x4c,%al
 10023b6:	03 7f ba             	add    -0x46(%rdi),%edi
 10023b9:	28 b9 19 cb bb ef    	sub    %bh,-0x104434e7(%rcx)
 10023bf:	b2 4b                	mov    $0x4b,%dl
 10023c1:	e0 ae                	loopne 0x1002371
 10023c3:	40 7d 70             	rex jge 0x1002436
 10023c6:	16                   	(bad)  
 10023c7:	e1 ee                	loope  0x10023b7
 10023c9:	b0 18                	mov    $0x18,%al
 10023cb:	0c 7c                	or     $0x7c,%al
 10023cd:	f4                   	hlt    
 10023ce:	3b 8b e4 33 e5 c7    	cmp    -0x381acc1c(%rbx),%ecx
 10023d4:	6a be                	pushq  $0xffffffffffffffbe
 10023d6:	9e                   	sahf   
 10023d7:	38 78 13             	cmp    %bh,0x13(%rax)
 10023da:	8a b4 b4 82 9a 1d d9 	mov    -0x26e2657e(%rsp,%rsi,4),%dh
 10023e1:	c0 6c 28 f1 3f       	shrb   $0x3f,-0xf(%rax,%rbp,1)
 10023e6:	39 f3                	cmp    %esi,%ebx
 10023e8:	19 64 f6 74          	sbb    %esp,0x74(%rsi,%rsi,8)
 10023ec:	76 a1                	jbe    0x100238f
 10023ee:	34 69                	xor    $0x69,%al
 10023f0:	d6                   	(bad)  
 10023f1:	bb 01 5c d1 37       	mov    $0x37d15c01,%ebx
 10023f6:	77 4f                	ja     0x1002447
 10023f8:	29 c0                	sub    %eax,%eax
 10023fa:	01 93 48 70 6f ef    	add    %edx,-0x10908fb8(%rbx)
 1002400:	d5                   	(bad)  
 1002401:	94                   	xchg   %eax,%esp
 1002402:	94                   	xchg   %eax,%esp
 1002403:	25 93 92 ae 1b       	and    $0x1bae9293,%eax
 1002408:	18 c4                	sbb    %al,%ah
 100240a:	0e                   	(bad)  
 100240b:	09 9a 51 59 2c c0    	or     %ebx,-0x3fd3a6af(%rdx)
 1002411:	47 8e 17             	rex.RXB mov (%r15),%ss
 1002414:	1f                   	(bad)  
 1002415:	c7                   	(bad)  
 1002416:	ad                   	lods   %ds:(%rsi),%eax
 1002417:	37                   	(bad)  
 1002418:	30 3c 0f             	xor    %bh,(%rdi,%rcx,1)
 100241b:	49                   	rex.WB
 100241c:	9b                   	fwait
 100241d:	07                   	(bad)  
 100241e:	77 52                	ja     0x1002472
 1002420:	30 91 32 25 67 87    	xor    %dl,-0x7898dace(%rcx)
 1002426:	b9 46 30 23 34       	mov    $0x34233046,%ecx
 100242b:	f1                   	icebp  
 100242c:	5f                   	pop    %rdi
 100242d:	b9 fd 2b 2d 06       	mov    $0x62d2bfd,%ecx
 1002432:	81 01 e8 8f 0a 4d    	addl   $0x4d0a8fe8,(%rcx)
 1002438:	eb 01                	jmp    0x100243b
 100243a:	c3                   	retq   
 100243b:	1e                   	(bad)  
 100243c:	92                   	xchg   %eax,%edx
 100243d:	c9                   	leaveq 
 100243e:	7a 1e                	jp     0x100245e
 1002440:	3d 0f 25 40 48       	cmp    $0x4840250f,%eax
 1002445:	e7 32                	out    %eax,$0x32
 1002447:	bc bf 4b b7 f5       	mov    $0xf5b74bbf,%esp
 100244c:	9f                   	lahf   
 100244d:	6b be 78 6c 50 ce d5 	imul   $0xffffffd5,-0x31af9388(%rsi),%edi
 1002454:	ee                   	out    %al,(%dx)
 1002455:	f9                   	stc    
 1002456:	cb                   	lret   
 1002457:	e9 df 6b b3 89       	jmpq   0xffffffff8ab3903b
 100245c:	94                   	xchg   %eax,%esp
 100245d:	1e                   	(bad)  
 100245e:	88 bd 76 26 b1 64    	mov    %bh,0x64b12676(%rbp)
 1002464:	f0 dd 9b 35 3d 91 ad 	lock fstpl -0x526ec2cb(%rbx)
 100246b:	4c f9                	rex.WR stc 
 100246d:	fb                   	sti    
 100246e:	8a 4d 9d             	mov    -0x63(%rbp),%cl
 1002471:	08 41 33             	or     %al,0x33(%rcx)
 1002474:	c0 ed 70             	shr    $0x70,%ch
 1002477:	91                   	xchg   %eax,%ecx
 1002478:	31 95 0a 8a 1e a7    	xor    %edx,-0x58e175f6(%rbp)
 100247e:	3e f8                	ds clc 
 1002480:	c0 62 25 3d          	shlb   $0x3d,0x25(%rdx)
 1002484:	6b 39 29             	imul   $0x29,(%rcx),%edi
 1002487:	8a 7d b5             	mov    -0x4b(%rbp),%bh
 100248a:	ab                   	stos   %eax,%es:(%rdi)
 100248b:	43 fc                	rex.XB cld 
 100248d:	c0 b1 b9 b9 ae 52 de 	shlb   $0xde,0x52aeb9b9(%rcx)
 1002494:	a8 89                	test   $0x89,%al
 1002496:	15 ac 75 c0 54       	adc    $0x54c075ac,%eax
 100249b:	6f                   	outsl  %ds:(%rsi),(%dx)
 100249c:	63 61 c0             	movsxd -0x40(%rcx),%esp
 100249f:	83 9f b1 60 c4 c8 65 	sbbl   $0x65,-0x373b9f4f(%rdi)
 10024a6:	23 59 8b             	and    -0x75(%rcx),%ebx
 10024a9:	a9 31 d0 01 ef       	test   $0xef01d031,%eax
 10024ae:	6e                   	outsb  %ds:(%rsi),(%dx)
 10024af:	bb af b2 27 8a       	mov    $0x8a27b2af,%ebx
 10024b4:	1e                   	(bad)  
 10024b5:	87 00                	xchg   %eax,(%rax)
 10024b7:	9b                   	fwait
 10024b8:	2b 21                	sub    (%rcx),%esp
 10024ba:	20 ba 87 e7 4a 42    	and    %bh,0x424ae787(%rdx)
 10024c0:	59                   	pop    %rcx
 10024c1:	5d                   	pop    %rbp
 10024c2:	ca 46 1a             	lret   $0x1a46
 10024c5:	c1 ff 1c             	sar    $0x1c,%edi
 10024c8:	fc                   	cld    
 10024c9:	be dc 3c b4 c0       	mov    $0xc0b43cdc,%esi
 10024ce:	24 be                	and    $0xbe,%al
 10024d0:	12 90 ed fa 6f f4    	adc    -0xb900513(%rax),%dl
 10024d6:	aa                   	stos   %al,%es:(%rdi)
 10024d7:	ff 1e                	lcall  *(%rsi)
 10024d9:	49                   	rex.WB
 10024da:	3e 47 df ee          	ds rex.RXB fucomip %st(6),%st
 10024de:	1d 12 05 8d 17       	sbb    $0x178d0512,%eax
 10024e3:	74 40                	je     0x1002525
 10024e5:	98                   	cwtl   
 10024e6:	50                   	push   %rax
 10024e7:	6d                   	insl   (%dx),%es:(%rdi)
 10024e8:	fa                   	cli    
 10024e9:	44 cc                	rex.R int3 
 10024eb:	23 99 4c bb 2f 97    	and    -0x68d044b4(%rcx),%ebx
 10024f1:	a9 4c 6c b5 56       	test   $0x56b56c4c,%eax
 10024f6:	2a 9d 0c f3 98 5f    	sub    0x5f98f30c(%rbp),%bl
 10024fc:	93                   	xchg   %eax,%ebx
 10024fd:	29 1d 56 92 14 a5    	sub    %ebx,-0x5aeb6daa(%rip)        # 0xffffffffa614b759
 1002503:	35 62 41 ef d0       	xor    $0xd0ef4162,%eax
 1002508:	27                   	(bad)  
 1002509:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 100250a:	ce                   	(bad)  
 100250b:	58                   	pop    %rax
 100250c:	dd 1e                	fstpl  (%rsi)
 100250e:	3f                   	(bad)  
 100250f:	f5                   	cmc    
 1002510:	9f                   	lahf   
 1002511:	2e c1 6f d0 d0       	shrl   $0xd0,%cs:-0x30(%rdi)
 1002516:	3f                   	(bad)  
 1002517:	6c                   	insb   (%dx),%es:(%rdi)
 1002518:	6a 2f                	pushq  $0x2f
 100251a:	09 c4                	or     %eax,%esp
 100251c:	07                   	(bad)  
 100251d:	34 66                	xor    $0x66,%al
 100251f:	3d 79 b6 7a bc       	cmp    $0xbc7ab679,%eax
 1002524:	60                   	(bad)  
 1002525:	98                   	cwtl   
 1002526:	75 87                	jne    0x10024af
 1002528:	bf fb f6 c8 64       	mov    $0x64c8f6fb,%edi
 100252d:	18 d9                	sbb    %bl,%cl
 100252f:	54                   	push   %rsp
 1002530:	f0 b0 75             	lock mov $0x75,%al
 1002533:	5c                   	pop    %rsp
 1002534:	44 27                	rex.R (bad) 
 1002536:	7a 49                	jp     0x1002581
 1002538:	8b a0 f7 64 5f 39    	mov    0x395f64f7(%rax),%esp
 100253e:	05 bd b7 5d 7a       	add    $0x7a5db7bd,%eax
 1002543:	29 17                	sub    %edx,(%rdi)
 1002545:	c3                   	retq   
 1002546:	53                   	push   %rbx
 1002547:	65 38 b2 1a 0f 63 d1 	cmp    %dh,%gs:-0x2e9cf0e6(%rdx)
 100254e:	ec                   	in     (%dx),%al
 100254f:	4c 98                	rex.WR cltq 
 1002551:	19 fe                	sbb    %edi,%esi
 1002553:	02 ff                	add    %bh,%bh
 1002555:	ef                   	out    %eax,(%dx)
 1002556:	b9 6b 86 bc dd       	mov    $0xddbc866b,%ecx
 100255b:	a8 07                	test   $0x7,%al
 100255d:	df d5                	(bad)  
 100255f:	86 4a 12             	xchg   %cl,0x12(%rdx)
 1002562:	b9 45 10 5f e8       	mov    $0xe85f1045,%ecx
 1002567:	ef                   	out    %eax,(%dx)
 1002568:	b8 f6 77 d8 eb       	mov    $0xebd877f6,%eax
 100256d:	8e d2                	mov    %edx,%ss
 100256f:	38 f2                	cmp    %dh,%dl
 1002571:	1d 68 78 b5 e5       	sbb    $0xe5b57868,%eax
 1002576:	c0 38 2e             	sarb   $0x2e,(%rax)
 1002579:	9d                   	popfq  
 100257a:	f5                   	cmc    
 100257b:	ca 15 0f             	lret   $0xf15
 100257e:	cd 5b                	int    $0x5b
 1002580:	20 ee                	and    %ch,%dh
 1002582:	d9 61 69             	fldenv 0x69(%rcx)
 1002585:	ae                   	scas   %es:(%rdi),%al
 1002586:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1002587:	ca fd 9d             	lret   $0x9dfd
 100258a:	5b                   	pop    %rbx
 100258b:	0c c1                	or     $0xc1,%al
 100258d:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100258e:	c5 f5 f9 2a          	vpsubw (%rdx),%ymm1,%ymm5
 1002592:	cf                   	iret   
 1002593:	f7 8b 13 e5 9b 37 27 	testl  $0xe3e53627,0x379be513(%rbx)
 100259a:	36 e5 e3 
 100259d:	80 84 36 e0 f5 be 0b 	addb   $0x22,0xbbef5e0(%rsi,%rsi,1)
 10025a4:	22 
 10025a5:	8e 03                	mov    (%rbx),%es
 10025a7:	ef                   	out    %eax,(%dx)
 10025a8:	c1 90 8a d7 8c b4 e7 	rcll   $0xe7,-0x4b732876(%rax)
 10025af:	1c 31                	sbb    $0x31,%al
 10025b1:	7b cf                	jnp    0x1002582
 10025b3:	0d e5 25 7a 34       	or     $0x347a25e5,%eax
 10025b8:	b0 54                	mov    $0x54,%al
 10025ba:	48 c4                	rex.W (bad) 
 10025bc:	3d 25 6a ca cf       	cmp    $0xcfca6a25,%eax
 10025c1:	dc 84 ab 2d b3 01 85 	faddl  -0x7afe4cd3(%rbx,%rbp,4)
 10025c8:	e1 88                	loope  0x1002552
 10025ca:	a1 ef 7b 16 64 ab 3d 	movabs 0x95fc3dab64167bef,%eax
 10025d1:	fc 95 
 10025d3:	e1 b0                	loope  0x1002585
 10025d5:	36 8c b1 9d 21 c1 e6 	mov    %?,%ss:-0x193ede63(%rcx)
 10025dc:	ec                   	in     (%dx),%al
 10025dd:	18 d6                	sbb    %dl,%dh
 10025df:	97                   	xchg   %eax,%edi
 10025e0:	97                   	xchg   %eax,%edi
 10025e1:	a2 e5 cf 72 f5 59 9c 	movabs %al,0xb3b09c59f572cfe5
 10025e8:	b0 b3 
 10025ea:	09 43 9a             	or     %eax,-0x66(%rbx)
 10025ed:	b1 c1                	mov    $0xc1,%cl
 10025ef:	2a 39                	sub    (%rcx),%bh
 10025f1:	c8 2a 36 78          	enterq $0x362a,$0x78
 10025f5:	60                   	(bad)  
 10025f6:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10025f7:	d6                   	(bad)  
 10025f8:	09 92 84 8b 60 4a    	or     %edx,0x4a608b84(%rdx)
 10025fe:	07                   	(bad)  
 10025ff:	3d f5 42 c5 c2       	cmp    $0xc2c542f5,%eax
 1002604:	b9 01 b7 93 37       	mov    $0x3793b701,%ecx
 1002609:	37                   	(bad)  
 100260a:	cb                   	lret   
 100260b:	20 c2                	and    %al,%dl
 100260d:	94                   	xchg   %eax,%esp
 100260e:	22 86 ad 7e 00 e8    	and    -0x17ff8153(%rsi),%al
 1002614:	13 4a df             	adc    -0x21(%rdx),%ecx
 1002617:	ae                   	scas   %es:(%rdi),%al
 1002618:	9d                   	popfq  
 1002619:	93                   	xchg   %eax,%ebx
 100261a:	82                   	(bad)  
 100261b:	62                   	(bad)  
 100261c:	fa                   	cli    
 100261d:	2d aa e2 2f a9       	sub    $0xa92fe2aa,%eax
 1002622:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1002623:	c3                   	retq   
 1002624:	29 ee                	sub    %ebp,%esi
 1002626:	55                   	push   %rbp
 1002627:	1e                   	(bad)  
 1002628:	b3 52                	mov    $0x52,%bl
 100262a:	ed                   	in     (%dx),%eax
 100262b:	9e                   	sahf   
 100262c:	71 5c                	jno    0x100268a
 100262e:	41 19 7d f3          	sbb    %edi,-0xd(%r13)
 1002632:	20 f1                	and    %dh,%cl
 1002634:	4b 1d 9b 59 c5 8b    	rex.WXB sbb $0xffffffff8bc5599b,%rax
 100263a:	55                   	push   %rbp
 100263b:	58                   	pop    %rax
 100263c:	d6                   	(bad)  
 100263d:	90                   	nop
 100263e:	d3 47 c0             	roll   %cl,-0x40(%rdi)
 1002641:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1002642:	f9                   	stc    
 1002643:	83 81 2e 2c df b7 d6 	addl   $0xffffffd6,-0x4820d3d2(%rcx)
 100264a:	41 b7 de             	mov    $0xde,%r15b
 100264d:	79 59                	jns    0x10026a8
 100264f:	97                   	xchg   %eax,%edi
 1002650:	c3                   	retq   
 1002651:	0f ef 82 9c f1 2e b1 	pxor   -0x4ed10e64(%rdx),%mm0
 1002658:	84 ef                	test   %ch,%bh
 100265a:	31 32                	xor    %esi,(%rdx)
 100265c:	3c cb                	cmp    $0xcb,%al
 100265e:	ea                   	(bad)  
 100265f:	ca b6 e8             	lret   $0xe8b6
 1002662:	1e                   	(bad)  
 1002663:	2c 82                	sub    $0x82,%al
 1002665:	19 29                	sbb    %ebp,(%rcx)
 1002667:	13 d4                	adc    %esp,%edx
 1002669:	d0 73 5e             	shlb   0x5e(%rbx)
 100266c:	33 c3                	xor    %ebx,%eax
 100266e:	1d 34 a1 83 63       	sbb    $0x6383a134,%eax
 1002673:	fc                   	cld    
 1002674:	b9 41 9a 77 f0       	mov    $0xf0779a41,%ecx
 1002679:	f4                   	hlt    
 100267a:	c5 d2 69             	(bad)
 100267d:	fb                   	sti    
 100267e:	35 d2 c4 3a 11       	xor    $0x113ac4d2,%eax
 1002683:	19 67 d0             	sbb    %esp,-0x30(%rdi)
 1002686:	21 b7 7c 89 14 a1    	and    %esi,-0x5eeb7684(%rdi)
 100268c:	32 19                	xor    (%rcx),%bl
 100268e:	59                   	pop    %rcx
 100268f:	ee                   	out    %al,(%dx)
 1002690:	aa                   	stos   %al,%es:(%rdi)
 1002691:	4c 0f 79 53 66       	rex.WR vmwrite 0x66(%rbx),%r10
 1002696:	ac                   	lods   %ds:(%rsi),%al
 1002697:	5e                   	pop    %rsi
 1002698:	c4                   	(bad)  
 1002699:	94                   	xchg   %eax,%esp
 100269a:	82                   	(bad)  
 100269b:	09 cc                	or     %ecx,%esp
 100269d:	af                   	scas   %es:(%rdi),%eax
 100269e:	cb                   	lret   
 100269f:	3a 13                	cmp    (%rbx),%dl
 10026a1:	e7 1f                	out    %eax,$0x1f
 10026a3:	f3 40 af             	repz rex scas %es:(%rdi),%eax
 10026a6:	85 c4                	test   %eax,%esp
 10026a8:	15 58 73 40 63       	adc    $0x63407358,%eax
 10026ad:	de f0                	fdivp  %st,%st(0)
 10026af:	6f                   	outsl  %ds:(%rsi),(%dx)
 10026b0:	f5                   	cmc    
 10026b1:	d0 04 c6             	rolb   (%rsi,%rax,8)
 10026b4:	30 4c 8e 82          	xor    %cl,-0x7e(%rsi,%rcx,4)
 10026b8:	e0 de                	loopne 0x1002698
 10026ba:	b4 d1                	mov    $0xd1,%ah
 10026bc:	5f                   	pop    %rdi
 10026bd:	dd d6                	fst    %st(6)
 10026bf:	8a d9                	mov    %cl,%bl
 10026c1:	38 28                	cmp    %ch,(%rax)
 10026c3:	c7                   	(bad)  
 10026c4:	2f                   	(bad)  
 10026c5:	ac                   	lods   %ds:(%rsi),%al
 10026c6:	d7                   	xlat   %ds:(%rbx)
 10026c7:	a8 c8                	test   $0xc8,%al
 10026c9:	48 2a 9b a6 c4 cb fd 	rex.W sub -0x2343b5a(%rbx),%bl
 10026d0:	76 14                	jbe    0x10026e6
 10026d2:	ea                   	(bad)  
 10026d3:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10026d4:	44 f4                	rex.R hlt 
 10026d6:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10026d7:	91                   	xchg   %eax,%ecx
 10026d8:	e2 a1                	loop   0x100267b
 10026da:	62                   	(bad)  
 10026db:	46 71 98             	rex.RX jno 0x1002676
 10026de:	9e                   	sahf   
 10026df:	52                   	push   %rdx
 10026e0:	1d 39 65 a2 3e       	sbb    $0x3ea26539,%eax
 10026e5:	b1 97                	mov    $0x97,%cl
 10026e7:	e6 4e                	out    %al,$0x4e
 10026e9:	56                   	push   %rsi
 10026ea:	4e cb                	rex.WRX lretq 
 10026ec:	9f                   	lahf   
 10026ed:	20 16                	and    %dl,(%rsi)
 10026ef:	f0 b9 2c c5 89 ec    	lock mov $0xec89c52c,%ecx
 10026f5:	a9 78 b3 56 8a       	test   $0x8a56b378,%eax
 10026fa:	c2 37 04             	retq   $0x437
 10026fd:	fe 02                	incb   (%rdx)
 10026ff:	f0 d4                	lock (bad) 
 1002701:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1002702:	6b 8f 6e 91 9a b4 c9 	imul   $0xffffffc9,-0x4b656e92(%rdi),%ecx
 1002709:	57                   	push   %rdi
 100270a:	65 30 ba 13 d2 77 59 	xor    %bh,%gs:0x5977d213(%rdx)
 1002711:	45 71 05             	rex.RB jno 0x1002719
 1002714:	b8 c4 a6 e8 e4       	mov    $0xe4e8a6c4,%eax
 1002719:	2d 57 b1 9c 7e       	sub    $0x7e9cb157,%eax
 100271e:	87 8b 8e 48 49 f3    	xchg   %ecx,-0xcb6b772(%rbx)
 1002724:	a0 43 7a fd 24 e3 84 	movabs 0xb64184e324fd7a43,%al
 100272b:	41 b6 
 100272d:	f3 48 1c 3f          	repz rex.W sbb $0x3f,%al
 1002731:	40                   	rex
 1002732:	45 8a ee             	mov    %r14b,%r13b
 1002735:	ac                   	lods   %ds:(%rsi),%al
 1002736:	53                   	push   %rbx
 1002737:	c3                   	retq   
 1002738:	01 b8 5d d3 09 36    	add    %edi,0x3609d35d(%rax)
 100273e:	d6                   	(bad)  
 100273f:	3e 09 8b 9a 90 89 fc 	or     %ecx,%ds:-0x3766f66(%rbx)
 1002746:	6f                   	outsl  %ds:(%rsi),(%dx)
 1002747:	f8                   	clc    
 1002748:	eb fe                	jmp    0x1002748
 100274a:	24 97                	and    $0x97,%al
 100274c:	44 c3                	rex.R retq 
 100274e:	46                   	rex.RX
 100274f:	4c ac                	rex.WR lods %ds:(%rsi),%al
 1002751:	17                   	(bad)  
 1002752:	6b 83 34 b5 51 65 67 	imul   $0x67,0x6551b534(%rbx),%eax
 1002759:	9d                   	popfq  
 100275a:	9d                   	popfq  
 100275b:	10 04 57             	adc    %al,(%rdi,%rdx,2)
 100275e:	10 3c 8f             	adc    %bh,(%rdi,%rcx,4)
 1002761:	01 9d 55 4b d7 c0    	add    %ebx,-0x3f28b4ab(%rbp)
 1002767:	c3                   	retq   
 1002768:	39 0f                	cmp    %ecx,(%rdi)
 100276a:	4e b2 e7             	rex.WRX mov $0xe7,%dl
 100276d:	ff d3                	callq  *%rbx
 100276f:	af                   	scas   %es:(%rdi),%eax
 1002770:	25 6a 41 0a 53       	and    $0x530a416a,%eax
 1002775:	b7 5b                	mov    $0x5b,%bh
 1002777:	a2 e5 5f ac 38 17 82 	movabs %al,0x15e2821738ac5fe5
 100277e:	e2 15 
 1002780:	61                   	(bad)  
 1002781:	e3 84                	jrcxz  0x1002707
 1002783:	11 2b                	adc    %ebp,(%rbx)
 1002785:	a9 34 60 29 2d       	test   $0x2d296034,%eax
 100278a:	1b 2d 3f 44 9c 77    	sbb    0x779c443f(%rip),%ebp        # 0x789c6bcf
 1002790:	7e e7                	jle    0x1002779
 1002792:	b7 0d                	mov    $0xd,%bh
 1002794:	cd 56                	int    $0x56
 1002796:	b5 08                	mov    $0x8,%ch
 1002798:	7b 9d                	jnp    0x1002737
 100279a:	52                   	push   %rdx
 100279b:	cf                   	iret   
 100279c:	07                   	(bad)  
 100279d:	c4                   	(bad)  
 100279e:	3c a2                	cmp    $0xa2,%al
 10027a0:	ea                   	(bad)  
 10027a1:	67 ad                	lods   %ds:(%esi),%eax
 10027a3:	27                   	(bad)  
 10027a4:	e4 5c                	in     $0x5c,%al
 10027a6:	d3 01                	roll   %cl,(%rcx)
 10027a8:	16                   	(bad)  
 10027a9:	d3 f5                	shl    %cl,%ebp
 10027ab:	e4 5d                	in     $0x5d,%al
 10027ad:	5e                   	pop    %rsi
 10027ae:	22 77 8e             	and    -0x72(%rdi),%dh
 10027b1:	9f                   	lahf   
 10027b2:	78 86                	js     0x100273a
 10027b4:	9d                   	popfq  
 10027b5:	9c                   	pushfq 
 10027b6:	2b 77 f9             	sub    -0x7(%rdi),%esi
 10027b9:	f4                   	hlt    
 10027ba:	15 12 8e 61 0c       	adc    $0xc618e12,%eax
 10027bf:	0e                   	(bad)  
 10027c0:	d6                   	(bad)  
 10027c1:	c2 d3 5b             	retq   $0x5bd3
 10027c4:	38 aa 11 6f 6e 55    	cmp    %ch,0x556e6f11(%rdx)
 10027ca:	4f 92                	rex.WRXB xchg %rax,%r10
 10027cc:	70 b0                	jo     0x100277e
 10027ce:	9c                   	pushfq 
 10027cf:	65 40 10 73 ab       	adc    %sil,%gs:-0x55(%rbx)
 10027d4:	d8 2c c6             	fsubrs (%rsi,%rax,8)
 10027d7:	2b cc                	sub    %esp,%ecx
 10027d9:	93                   	xchg   %eax,%ebx
 10027da:	5a                   	pop    %rdx
 10027db:	5d                   	pop    %rbp
 10027dc:	c4                   	(bad)  
 10027dd:	13 a8 1b 28 9b 8b    	adc    -0x7464d7e5(%rax),%ebp
 10027e3:	d4                   	(bad)  
 10027e4:	22 14 3f             	and    (%rdi,%rdi,1),%dl
 10027e7:	fa                   	cli    
 10027e8:	aa                   	stos   %al,%es:(%rdi)
 10027e9:	4a 8a 75 6d          	rex.WX mov 0x6d(%rbp),%sil
 10027ed:	79 73                	jns    0x1002862
 10027ef:	19 b1 c9 13 80 0f    	sbb    %esi,0xf8013c9(%rcx)
 10027f5:	0d 19 d2 b1 cc       	or     $0xccb1d219,%eax
 10027fa:	57                   	push   %rdi
 10027fb:	35 9c 1f 33 e8       	xor    $0xe8331f9c,%eax
 1002800:	9f                   	lahf   
 1002801:	13 23                	adc    (%rbx),%esp
 1002803:	a0 90 e7 ec 85 b0 79 	movabs 0x87b479b085ece790,%al
 100280a:	b4 87 
 100280c:	ac                   	lods   %ds:(%rsi),%al
 100280d:	10 72 7d             	adc    %dh,0x7d(%rdx)
 1002810:	15 d0 69 a8 28       	adc    $0x28a869d0,%eax
 1002815:	b8 c5 b1 fb 66       	mov    $0x66fbb1c5,%eax
 100281a:	69 55 be 5b 26 e1 3a 	imul   $0x3ae1265b,-0x42(%rbp),%edx
 1002821:	06                   	(bad)  
 1002822:	05 7c e5 cb 67       	add    $0x67cbe57c,%eax
 1002827:	7f fb                	jg     0x1002824
 1002829:	af                   	scas   %es:(%rdi),%eax
 100282a:	47                   	rex.RXB
 100282b:	46 b1 94             	rex.RX mov $0x94,%cl
 100282e:	86 94 95 cb 0d ce 80 	xchg   %dl,-0x7f31f235(%rbp,%rdx,4)
 1002835:	cb                   	lret   
 1002836:	4f 97                	rex.WRXB xchg %rax,%r15
 1002838:	d4                   	(bad)  
 1002839:	c5 74 9a             	(bad)
 100283c:	82                   	(bad)  
 100283d:	c0 4e 0a 27          	rorb   $0x27,0xa(%rsi)
 1002841:	6f                   	outsl  %ds:(%rsi),(%dx)
 1002842:	e3 dd                	jrcxz  0x1002821
 1002844:	7f 7b                	jg     0x10028c1
 1002846:	0d 36 17 54 9c       	or     $0x9c541736,%eax
 100284b:	6d                   	insl   (%dx),%es:(%rdi)
 100284c:	61                   	(bad)  
 100284d:	76 0d                	jbe    0x100285c
 100284f:	98                   	cwtl   
 1002850:	e0 e6                	loopne 0x1002838
 1002852:	db a7 e7 9e bc 0c    	(bad)  0xcbc9ee7(%rdi)
 1002858:	d6                   	(bad)  
 1002859:	4a 79 6f             	rex.WX jns 0x10028cb
 100285c:	2d ad 0f 32 22       	sub    $0x22320fad,%eax
 1002861:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1002862:	96                   	xchg   %eax,%esi
 1002863:	e3 47                	jrcxz  0x10028ac
 1002865:	22 55 72             	and    0x72(%rbp),%dl
 1002868:	89 24 24             	mov    %esp,(%rsp)
 100286b:	d8 b0 4a e3 ec e0    	fdivs  -0x1f131cb6(%rax)
 1002871:	af                   	scas   %es:(%rdi),%eax
 1002872:	ad                   	lods   %ds:(%rsi),%eax
 1002873:	46 c4                	rex.RX (bad) 
 1002875:	0a af f3 81 00 8a    	or     -0x75ff7e0d(%rdi),%ch
 100287b:	38 19                	cmp    %bl,(%rcx)
 100287d:	65 2f                	gs (bad) 
 100287f:	dd b2 86 d6 2f d7    	fnsave -0x28d0297a(%rdx)
 1002885:	42 f5                	rex.X cmc 
 1002887:	ee                   	out    %al,(%dx)
 1002888:	a0 0d 6d e0 7e f2 fe 	movabs 0x3dacfef27ee06d0d,%al
 100288f:	ac 3d 
 1002891:	c3                   	retq   
 1002892:	b4 7a                	mov    $0x7a,%ah
 1002894:	1a 9f 97 b7 92 dc    	sbb    -0x236d4869(%rdi),%bl
 100289a:	8f                   	(bad)  
 100289b:	8f                   	(bad)  
 100289c:	26 ba f8 5f e4 63    	es mov $0x63e45ff8,%edx
 10028a2:	2f                   	(bad)  
 10028a3:	f1                   	icebp  
 10028a4:	f9                   	stc    
 10028a5:	79 40                	jns    0x10028e7
 10028a7:	5e                   	pop    %rsi
 10028a8:	db 19                	fistpl (%rcx)
 10028aa:	34 86                	xor    $0x86,%al
 10028ac:	0a a5 e3 f0 1b bc    	or     -0x43e40f1d(%rbp),%ah
 10028b2:	68 d3 9e 08 c9       	pushq  $0xffffffffc9089ed3
 10028b7:	03 3e                	add    (%rsi),%edi
 10028b9:	07                   	(bad)  
 10028ba:	2d da a2 f4 48       	sub    $0x48f4a2da,%eax
 10028bf:	d2 e7                	shl    %cl,%bh
 10028c1:	0f c3 41 03          	movnti %eax,0x3(%rcx)
 10028c5:	7b 70                	jnp    0x1002937
 10028c7:	3c ef                	cmp    $0xef,%al
 10028c9:	bf 1f de 6a ae       	mov    $0xae6ade1f,%edi
 10028ce:	eb a1                	jmp    0x1002871
 10028d0:	0e                   	(bad)  
 10028d1:	80 a5 16 1d 31 a0 e0 	andb   $0xe0,-0x5fcee2ea(%rbp)
 10028d8:	d0 fd                	sar    %ch
 10028da:	e7 46                	out    %eax,$0x46
 10028dc:	1a 0d 4f 5f ad a4    	sbb    -0x5b52a0b1(%rip),%cl        # 0xffffffffa5ad8831
 10028e2:	d3 a0 0c bb 5b bb    	shll   %cl,-0x44a444f4(%rax)
 10028e8:	23 56 07             	and    0x7(%rsi),%edx
 10028eb:	39 81 14 97 86 73    	cmp    %eax,0x73869714(%rcx)
 10028f1:	78 94                	js     0x1002887
 10028f3:	d8 93 8a 87 27 a8    	fcoms  -0x57d87876(%rbx)
 10028f9:	8f                   	(bad)  
 10028fa:	2b 7b f2             	sub    -0xe(%rbx),%edi
 10028fd:	7f 27                	jg     0x1002926
 10028ff:	9e                   	sahf   
 1002900:	79 36                	jns    0x1002938
 1002902:	06                   	(bad)  
 1002903:	48 d1 b4 a1 86 a3 1e 	shlq   0x2a1ea386(%rcx,%riz,4)
 100290a:	2a 
 100290b:	e7 25                	out    %eax,$0x25
 100290d:	67 ce                	addr32 (bad) 
 100290f:	3d 75 aa 03 86       	cmp    $0x8603aa75,%eax
 1002914:	36 11 4f e3          	adc    %ecx,%ss:-0x1d(%rdi)
 1002918:	f9                   	stc    
 1002919:	f4                   	hlt    
 100291a:	50                   	push   %rax
 100291b:	7f 36                	jg     0x1002953
 100291d:	6c                   	insb   (%dx),%es:(%rdi)
 100291e:	7b 42                	jnp    0x1002962
 1002920:	9c                   	pushfq 
 1002921:	b2 cf                	mov    $0xcf,%dl
 1002923:	72 e0                	jb     0x1002905
 1002925:	66 b3 05             	data16 mov $0x5,%bl
 1002928:	9b                   	fwait
 1002929:	ed                   	in     (%dx),%eax
 100292a:	c8 b5 26 a4          	enterq $0x26b5,$0xa4
 100292e:	90                   	nop
 100292f:	32 bb 7e b0 2b 49    	xor    0x492bb07e(%rbx),%bh
 1002935:	5c                   	pop    %rsp
 1002936:	dd 0b                	fisttpll (%rbx)
 1002938:	6e                   	outsb  %ds:(%rsi),(%dx)
 1002939:	18 cf                	sbb    %cl,%bh
 100293b:	93                   	xchg   %eax,%ebx
 100293c:	a3 4f 72 02 7a 9f 56 	movabs %eax,0x944e569f7a02724f
 1002943:	4e 94 
 1002945:	43 dc 6d 25          	rex.XB fsubrl 0x25(%r13)
 1002949:	2d 2c 3f 9e d0       	sub    $0xd09e3f2c,%eax
 100294e:	0e                   	(bad)  
 100294f:	19 ef                	sbb    %ebp,%edi
 1002951:	61                   	(bad)  
 1002952:	b4 26                	mov    $0x26,%ah
 1002954:	ea                   	(bad)  
 1002955:	05 18 23 eb c6       	add    $0xc6eb2318,%eax
 100295a:	94                   	xchg   %eax,%esp
 100295b:	1a 3d 0e 01 20 1d    	sbb    0x1d20010e(%rip),%bh        # 0x1e202a6f
 1002961:	c3                   	retq   
 1002962:	eb 18                	jmp    0x100297c
 1002964:	78 f1                	js     0x1002957
 1002966:	08 5f 86             	or     %bl,-0x7a(%rdi)
 1002969:	40 3a bd 54 06 df 10 	cmp    0x10df0654(%rbp),%dil
 1002970:	a3 4a 27 d4 d5 e8 87 	movabs %eax,0xd65687e8d5d4274a
 1002977:	56 d6 
 1002979:	b0 53                	mov    $0x53,%al
 100297b:	ab                   	stos   %eax,%es:(%rdi)
 100297c:	73 28                	jae    0x10029a6
 100297e:	f3 0d 6f 4b 2a 6a    	repz or $0x6a2a4b6f,%eax
 1002984:	af                   	scas   %es:(%rdi),%eax
 1002985:	0d 64 98 97 bf       	or     $0xbf979864,%eax
 100298a:	54                   	push   %rsp
 100298b:	b6 78                	mov    $0x78,%dh
 100298d:	77 d7                	ja     0x1002966
 100298f:	fb                   	sti    
 1002990:	91                   	xchg   %eax,%ecx
 1002991:	ba 47 e2 5e b8       	mov    $0xb85ee247,%edx
 1002996:	3a 4c de 5e          	cmp    0x5e(%rsi,%rbx,8),%cl
 100299a:	9e                   	sahf   
 100299b:	7f 36                	jg     0x10029d3
 100299d:	6c                   	insb   (%dx),%es:(%rdi)
 100299e:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100299f:	0d 62 a2 f4 bc       	or     $0xbcf4a262,%eax
 10029a4:	0d c7 a9 8f 9c       	or     $0x9c8fa9c7,%eax
 10029a9:	33 fd                	xor    %ebp,%edi
 10029ab:	87 55 ee             	xchg   %edx,-0x12(%rbp)
 10029ae:	c1 87 6a c6 5f 6a 7b 	roll   $0x7b,0x6a5fc66a(%rdi)
 10029b5:	1b a2 ef 87 ee cf    	sbb    -0x30117811(%rdx),%esp
 10029bb:	7a ab                	jp     0x1002968
 10029bd:	24 42                	and    $0x42,%al
 10029bf:	9d                   	popfq  
 10029c0:	b3 58                	mov    $0x58,%bl
 10029c2:	77 3b                	ja     0x10029ff
 10029c4:	f4                   	hlt    
 10029c5:	b7 17                	mov    $0x17,%bh
 10029c7:	1c 21                	sbb    $0x21,%al
 10029c9:	4a ee                	rex.WX out %al,(%dx)
 10029cb:	51                   	push   %rcx
 10029cc:	d8 f4                	fdiv   %st(4),%st
 10029ce:	fb                   	sti    
 10029cf:	ed                   	in     (%dx),%eax
 10029d0:	cf                   	iret   
 10029d1:	ca 5b 9f             	lret   $0x9f5b
 10029d4:	11 c6                	adc    %eax,%esi
 10029d6:	97                   	xchg   %eax,%edi
 10029d7:	51                   	push   %rcx
 10029d8:	da 0b                	fimull (%rbx)
 10029da:	08 7b 79             	or     %bh,0x79(%rbx)
 10029dd:	d7                   	xlat   %ds:(%rbx)
 10029de:	06                   	(bad)  
 10029df:	c8 37 09 a2          	enterq $0x937,$0xa2
 10029e3:	57                   	push   %rdi
 10029e4:	2e a2 6d 97 32 fb 01 	movabs %al,%cs:0x4f124a01fb32976d
 10029eb:	4a 12 4f 
 10029ee:	93                   	xchg   %eax,%ebx
 10029ef:	81 f9 3d 9c d2 03    	cmp    $0x3d29c3d,%ecx
 10029f5:	7a 1e                	jp     0x1002a15
 10029f7:	ef                   	out    %eax,(%dx)
 10029f8:	c3                   	retq   
 10029f9:	f2 d4                	repnz (bad) 
 10029fb:	cc                   	int3   
 10029fc:	e4 d3                	in     $0xd3,%al
 10029fe:	05 52 f6 16 9f       	add    $0x9f16f652,%eax
 1002a03:	da 4a 61             	fimull 0x61(%rdx)
 1002a06:	20 75 77             	and    %dh,0x77(%rbp)
 1002a09:	99                   	cltd   
 1002a0a:	9d                   	popfq  
 1002a0b:	3e a7                	cmpsl  %es:(%rdi),%ds:(%rsi)
 1002a0d:	64 cb                	fs lret 
 1002a0f:	f1                   	icebp  
 1002a10:	2c 4b                	sub    $0x4b,%al
 1002a12:	b7 3e                	mov    $0x3e,%bh
 1002a14:	8f 29 6a f8          	(bad)
 1002a18:	d0 79 ff             	sarb   -0x1(%rcx)
 1002a1b:	5f                   	pop    %rdi
 1002a1c:	a2 ca a0 8f 51 7e 5f 	movabs %al,0x49bb5f7e518fa0ca
 1002a23:	bb 49 
 1002a25:	1d 55 0a 24 de       	sbb    $0xde240a55,%eax
 1002a2a:	dc 80 de 12 b3 70    	faddl  0x70b312de(%rax)
 1002a30:	cd 1d                	int    $0x1d
 1002a32:	aa                   	stos   %al,%es:(%rdi)
 1002a33:	11 8c 04 3f cf 5e 75 	adc    %ecx,0x755ecf3f(%rsp,%rax,1)
 1002a3a:	94                   	xchg   %eax,%esp
 1002a3b:	82                   	(bad)  
 1002a3c:	7a f9                	jp     0x1002a37
 1002a3e:	91                   	xchg   %eax,%ecx
 1002a3f:	5c                   	pop    %rsp
 1002a40:	a1 8d bb ca 8f 54 c0 	movabs 0x3e74c0548fcabb8d,%eax
 1002a47:	74 3e 
 1002a49:	76 f7                	jbe    0x1002a42
 1002a4b:	20 e9                	and    %ch,%cl
 1002a4d:	5a                   	pop    %rdx
 1002a4e:	d5                   	(bad)  
 1002a4f:	ea                   	(bad)  
 1002a50:	8b cd                	mov    %ebp,%ecx
 1002a52:	7e 0a                	jle    0x1002a5e
 1002a54:	79 86                	jns    0x10029dc
 1002a56:	44 cf                	rex.R iret 
 1002a58:	0d 2c 13 48 a1       	or     $0xa148132c,%eax
 1002a5d:	d8 3b                	fdivrs (%rbx)
 1002a5f:	f7 3a                	idivl  (%rdx)
 1002a61:	f9                   	stc    
 1002a62:	af                   	scas   %es:(%rdi),%eax
 1002a63:	d9 53 11             	fsts   0x11(%rbx)
 1002a66:	ea                   	(bad)  
 1002a67:	25 03 99 17 dd       	and    $0xdd179903,%eax
 1002a6c:	e8 8a ec c2 65       	callq  0x66c316fb
 1002a71:	fe                   	(bad)  
 1002a72:	d5                   	(bad)  
 1002a73:	76 94                	jbe    0x1002a09
 1002a75:	14 71                	adc    $0x71,%al
 1002a77:	4f 97                	rex.WRXB xchg %rax,%r15
 1002a79:	25 00 78 4e 8b       	and    $0x8b4e7800,%eax
 1002a7e:	0a 8b 04 77 83 b8    	or     -0x477c88fc(%rbx),%cl
 1002a84:	cb                   	lret   
 1002a85:	b1 6e                	mov    $0x6e,%cl
 1002a87:	55                   	push   %rbp
 1002a88:	9b                   	fwait
 1002a89:	ee                   	out    %al,(%dx)
 1002a8a:	d1 8e b0 76 3b a1    	rorl   -0x5ec48950(%rsi)
 1002a90:	ef                   	out    %eax,(%dx)
 1002a91:	99                   	cltd   
 1002a92:	b3 67                	mov    $0x67,%bl
 1002a94:	3c ba                	cmp    $0xba,%al
 1002a96:	4c 03 4b 90          	add    -0x70(%rbx),%r9
 1002a9a:	e9 98 48 da e8       	jmpq   0xffffffffe9da7337
 1002a9f:	c0 c8 71             	ror    $0x71,%al
 1002aa2:	cc                   	int3   
 1002aa3:	ca 11 40             	lret   $0x4011
 1002aa6:	d9 bd 86 23 39 e5    	fnstcw -0x1ac6dc7a(%rbp)
 1002aac:	14 a8                	adc    $0xa8,%al
 1002aae:	e2 80                	loop   0x1002a30
 1002ab0:	be 86 d4 ab e6       	mov    $0xe6abd486,%esi
 1002ab5:	6c                   	insb   (%dx),%es:(%rdi)
 1002ab6:	82                   	(bad)  
 1002ab7:	55                   	push   %rbp
 1002ab8:	89 7b 55             	mov    %edi,0x55(%rbx)
 1002abb:	0e                   	(bad)  
 1002abc:	3d 43 3f 9e 9e       	cmp    $0x9e9e3f43,%eax
 1002ac1:	19 3d f4 4a e4 83    	sbb    %edi,-0x7c1bb50c(%rip)        # 0xffffffff84e475bb
 1002ac7:	99                   	cltd   
 1002ac8:	b9 4e 5c af 72       	mov    $0x72af5c4e,%ecx
 1002acd:	3b c7                	cmp    %edi,%eax
 1002acf:	0f 7d                	(bad)  
 1002ad1:	d0 00                	rolb   (%rax)
 1002ad3:	08 c1                	or     %al,%cl
 1002ad5:	b6 ce                	mov    $0xce,%dh
 1002ad7:	10 d5                	adc    %dl,%ch
 1002ad9:	59                   	pop    %rcx
 1002ada:	c5 97 9b             	(bad)
 1002add:	2e a9 d0 0b f0 8e    	cs test $0x8ef00bd0,%eax
 1002ae3:	c3                   	retq   
 1002ae4:	47 73 71             	rex.RXB jae 0x1002b58
 1002ae7:	4b 01 a4 f9 6d 84 fd 	add    %rsp,-0x2d027b93(%r9,%r15,8)
 1002aee:	d2 
 1002aef:	1b 78 6a             	sbb    0x6a(%rax),%edi
 1002af2:	9e                   	sahf   
 1002af3:	a2 cb cf b8 32 c8 5f 	movabs %al,0x2ec55fc832b8cfcb
 1002afa:	c5 2e 
 1002afc:	fd                   	std    
 1002afd:	17                   	(bad)  
 1002afe:	c1 f0 4f             	shl    $0x4f,%eax
 1002b01:	74 e7                	je     0x1002aea
 1002b03:	a9 cd 47 03 fb       	test   $0xfb0347cd,%eax
 1002b08:	91                   	xchg   %eax,%ecx
 1002b09:	fb                   	sti    
 1002b0a:	34 1f                	xor    $0x1f,%al
 1002b0c:	f1                   	icebp  
 1002b0d:	8b 58 99             	mov    -0x67(%rax),%ebx
 1002b10:	7e b8                	jle    0x1002aca
 1002b12:	1d f7 e0 ee bb       	sbb    $0xbbeee0f7,%eax
 1002b17:	0a 0f                	or     (%rdi),%cl
 1002b19:	2b a3 6a fe 28 ff    	sub    -0xd70196(%rbx),%esp
 1002b1f:	1e                   	(bad)  
 1002b20:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1002b21:	77 2c                	ja     0x1002b4f
 1002b23:	22 7a 2a             	and    0x2a(%rdx),%bh
 1002b26:	29 ba a4 3f 58 a0    	sub    %edi,-0x5fa7c05c(%rdx)
 1002b2c:	f2 58                	repnz pop %rax
 1002b2e:	44 9a                	rex.R (bad) 
 1002b30:	85 ca                	test   %ecx,%edx
 1002b32:	5f                   	pop    %rdi
 1002b33:	1d 96 a4 6e ac       	sbb    $0xac6ea496,%eax
 1002b38:	5c                   	pop    %rsp
 1002b39:	14 48                	adc    $0x48,%al
 1002b3b:	d7                   	xlat   %ds:(%rbx)
 1002b3c:	8b 4e 0d             	mov    0xd(%rsi),%ecx
 1002b3f:	8e 0f                	mov    (%rdi),%cs
 1002b41:	b1 38                	mov    $0x38,%cl
 1002b43:	81 f8 85 94 c9 3a    	cmp    $0x3ac99485,%eax
 1002b49:	fd                   	std    
 1002b4a:	bc 9e 07 f1 6a       	mov    $0x6af1079e,%esp
 1002b4f:	31 1b                	xor    %ebx,(%rbx)
 1002b51:	c4 03 d0 a6          	(bad)
 1002b55:	b6 cb                	mov    $0xcb,%dh
 1002b57:	65 f7 18             	negl   %gs:(%rax)
 1002b5a:	1b b7 3f 9c 84 96    	sbb    -0x697b63c1(%rdi),%esi
 1002b60:	84 72 45             	test   %dh,0x45(%rdx)
 1002b63:	fc                   	cld    
 1002b64:	de 80 87 49 07 dc    	fiadds -0x23f8b679(%rax)
 1002b6a:	22 e0                	and    %al,%ah
 1002b6c:	97                   	xchg   %eax,%edi
 1002b6d:	91                   	xchg   %eax,%ecx
 1002b6e:	8f                   	(bad)  
 1002b6f:	8e 2d 93 10 38 22    	mov    0x22381093(%rip),%gs        # 0x23383c08
 1002b75:	73 d8                	jae    0x1002b4f
 1002b77:	6f                   	outsl  %ds:(%rsi),(%dx)
 1002b78:	bf 4d 6e 3a 37       	mov    $0x373a6e4d,%edi
 1002b7d:	cb                   	lret   
 1002b7e:	86 ba 28 1b bc 37    	xchg   %bh,0x37bc1b28(%rdx)
 1002b84:	f2 dd ac c6 90 07 e2 	repnz (bad) 0x51e20790(%rsi,%rax,8)
 1002b8b:	51 
 1002b8c:	bf f4 35 41 aa       	mov    $0xaa4135f4,%edi
 1002b91:	b7 2b                	mov    $0x2b,%bh
 1002b93:	66 00 59 2f          	data16 add %bl,0x2f(%rcx)
 1002b97:	f3 87 66 cd          	xrelease xchg %esp,-0x33(%rsi)
 1002b9b:	41 09 64 2c 91       	or     %esp,-0x6f(%r12,%rbp,1)
 1002ba0:	51                   	push   %rcx
 1002ba1:	d8 14 9d f1 93 9a 69 	fcoms  0x699a93f1(,%rbx,4)
 1002ba8:	d7                   	xlat   %ds:(%rbx)
 1002ba9:	58                   	pop    %rax
 1002baa:	a3 9d 94 a7 66 39 87 	movabs %eax,0xc9d4873966a7949d
 1002bb1:	d4 c9 
 1002bb3:	f5                   	cmc    
 1002bb4:	11 f7                	adc    %esi,%edi
 1002bb6:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1002bb7:	72 b8                	jb     0x1002b71
 1002bb9:	ae                   	scas   %es:(%rdi),%al
 1002bba:	aa                   	stos   %al,%es:(%rdi)
 1002bbb:	5e                   	pop    %rsi
 1002bbc:	62                   	(bad)  
 1002bbd:	57                   	push   %rdi
 1002bbe:	3f                   	(bad)  
 1002bbf:	7b 5e                	jnp    0x1002c1f
 1002bc1:	64 c6                	fs (bad) 
 1002bc3:	13 c5                	adc    %ebp,%eax
 1002bc5:	33 64 7b 14          	xor    0x14(%rbx,%rdi,2),%esp
 1002bc9:	c6                   	(bad)  
 1002bca:	11 20                	adc    %esp,(%rax)
 1002bcc:	e6 26                	out    %al,$0x26
 1002bce:	c9                   	leaveq 
 1002bcf:	27                   	(bad)  
 1002bd0:	d3 22                	shll   %cl,(%rdx)
 1002bd2:	df 22                	fbld   (%rdx)
 1002bd4:	5a                   	pop    %rdx
 1002bd5:	ae                   	scas   %es:(%rdi),%al
 1002bd6:	aa                   	stos   %al,%es:(%rdi)
 1002bd7:	66 b5 66             	data16 mov $0x66,%ch
 1002bda:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1002bdb:	e0 b7                	loopne 0x1002b94
 1002bdd:	f0 d8 1c 8e          	lock fcomps (%rsi,%rcx,4)
 1002be1:	bb 02 0f 39 83       	mov    $0x83390f02,%ebx
 1002be6:	ba 6e 99 3a 20       	mov    $0x203a996e,%edx
 1002beb:	b5 14                	mov    $0x14,%ch
 1002bed:	6f                   	outsl  %ds:(%rsi),(%dx)
 1002bee:	98                   	cwtl   
 1002bef:	36 e5 27             	ss in  $0x27,%eax
 1002bf2:	52                   	push   %rdx
 1002bf3:	a2 eb d6 f8 67 7c e3 	movabs %al,0xb1d4e37c67f8d6eb
 1002bfa:	d4 b1 
 1002bfc:	17                   	(bad)  
 1002bfd:	ed                   	in     (%dx),%eax
 1002bfe:	2d 44 aa 1b 08       	sub    $0x81baa44,%eax
 1002c03:	35 12 6e 0c a9       	xor    $0xa90c6e12,%eax
 1002c08:	0d e7 26 c2 1f       	or     $0x1fc226e7,%eax
 1002c0d:	96                   	xchg   %eax,%esi
 1002c0e:	f8                   	clc    
 1002c0f:	3e a0 b9 e5 51 ed af 	movabs %ds:0xa4d45aafed51e5b9,%al
 1002c16:	5a d4 a4 
 1002c19:	cc                   	int3   
 1002c1a:	21 58 b3             	and    %ebx,-0x4d(%rax)
 1002c1d:	4d 7e c6             	rex.WRB jle 0x1002be6
 1002c20:	35 a0 f9 5c d1       	xor    $0xd15cf9a0,%eax
 1002c25:	1c 5d                	sbb    $0x5d,%al
 1002c27:	08 ec                	or     %ch,%ah
 1002c29:	73 95                	jae    0x1002bc0
 1002c2b:	ae                   	scas   %es:(%rdi),%al
 1002c2c:	16                   	(bad)  
 1002c2d:	93                   	xchg   %eax,%ebx
 1002c2e:	08 9d a6 5d d9 8c    	or     %bl,-0x7326a25a(%rbp)
 1002c34:	51                   	push   %rcx
 1002c35:	62                   	(bad)  
 1002c36:	b0 df                	mov    $0xdf,%al
 1002c38:	76 57                	jbe    0x1002c91
 1002c3a:	c2 40 76             	retq   $0x7640
 1002c3d:	0c 76                	or     $0x76,%al
 1002c3f:	0a f1                	or     %cl,%dh
 1002c41:	bf c8 c4 8d 06       	mov    $0x68dc4c8,%edi
 1002c46:	87 3b                	xchg   %edi,(%rbx)
 1002c48:	66 76 57             	data16 jbe 0x1002ca2
 1002c4b:	0c 88                	or     $0x88,%al
 1002c4d:	26 ee                	es out %al,(%dx)
 1002c4f:	98                   	cwtl   
 1002c50:	1f                   	(bad)  
 1002c51:	cf                   	iret   
 1002c52:	ae                   	scas   %es:(%rdi),%al
 1002c53:	e2 d7                	loop   0x1002c2c
 1002c55:	6e                   	outsb  %ds:(%rsi),(%dx)
 1002c56:	50                   	push   %rax
 1002c57:	b2 39                	mov    $0x39,%dl
 1002c59:	31 11                	xor    %edx,(%rcx)
 1002c5b:	fe 48 1f             	decb   0x1f(%rax)
 1002c5e:	f5                   	cmc    
 1002c5f:	b1 b6                	mov    $0xb6,%cl
 1002c61:	42 9c                	rex.X pushfq 
 1002c63:	70 b6                	jo     0x1002c1b
 1002c65:	bf ec f9 79 24       	mov    $0x2479f9ec,%edi
 1002c6a:	09 0c ed bf 38 73 08 	or     %ecx,0x87338bf(,%rbp,8)
 1002c71:	96                   	xchg   %eax,%esi
 1002c72:	eb 11                	jmp    0x1002c85
 1002c74:	30 c0                	xor    %al,%al
 1002c76:	9e                   	sahf   
 1002c77:	8f                   	(bad)  
 1002c78:	1f                   	(bad)  
 1002c79:	f5                   	cmc    
 1002c7a:	9a                   	(bad)  
 1002c7b:	66 b0 14             	data16 mov $0x14,%al
 1002c7e:	c2 ad 5d             	retq   $0x5dad
 1002c81:	22 1c 5b             	and    (%rbx,%rbx,2),%bl
 1002c84:	bb 4b f6 bf eb       	mov    $0xebbff64b,%ebx
 1002c89:	c4 82 ee 7d          	(bad)
 1002c8d:	11 31                	adc    %esi,(%rcx)
 1002c8f:	98                   	cwtl   
 1002c90:	df ce                	(bad)  
 1002c92:	9b                   	fwait
 1002c93:	ef                   	out    %eax,(%dx)
 1002c94:	cc                   	int3   
 1002c95:	bc 85 44 44 f2       	mov    $0xf2444485,%esp
 1002c9a:	96                   	xchg   %eax,%esi
 1002c9b:	74 4f                	je     0x1002cec
 1002c9d:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1002c9e:	d1 25 b6 45 98 ca    	shll   -0x3567ba4a(%rip)        # 0xffffffffcb98725a
 1002ca4:	44 29 c5             	sub    %r8d,%ebp
 1002ca7:	ef                   	out    %eax,(%dx)
 1002ca8:	34 66                	xor    $0x66,%al
 1002caa:	93                   	xchg   %eax,%ebx
 1002cab:	9b                   	fwait
 1002cac:	b0 72                	mov    $0x72,%al
 1002cae:	5b                   	pop    %rbx
 1002caf:	5f                   	pop    %rdi
 1002cb0:	fb                   	sti    
 1002cb1:	b3 73                	mov    $0x73,%bl
 1002cb3:	35 a0 a9 e4 f9       	xor    $0xf9e4a9a0,%eax
 1002cb8:	3b 71 20             	cmp    0x20(%rcx),%esi
 1002cbb:	de 49 3c             	fimuls 0x3c(%rcx)
 1002cbe:	78 af                	js     0x1002c6f
 1002cc0:	4c 31 d7             	xor    %r10,%rdi
 1002cc3:	de 43 5b             	fiadds 0x5b(%rbx)
 1002cc6:	bc e5 ec 2d de       	mov    $0xde2dece5,%esp
 1002ccb:	ae                   	scas   %es:(%rdi),%al
 1002ccc:	df 7f a9             	fistpll -0x57(%rdi)
 1002ccf:	70 98                	jo     0x1002c69
 1002cd1:	0d 44 b7 8f ef       	or     $0xef8fb744,%eax
 1002cd6:	2d 0a 35 be 69       	sub    $0x69be350a,%eax
 1002cdb:	8b 4b e4             	mov    -0x1c(%rbx),%ecx
 1002cde:	7d d6                	jge    0x1002cb6
 1002ce0:	19 75 51             	sbb    %esi,0x51(%rbp)
 1002ce3:	ca ad e3             	lret   $0xe3ad
 1002ce6:	17                   	(bad)  
 1002ce7:	1c fc                	sbb    $0xfc,%al
 1002ce9:	83 95 56 56 89 5d ed 	adcl   $0xffffffed,0x5d895656(%rbp)
 1002cf0:	7a 8e                	jp     0x1002c80
 1002cf2:	14 5e                	adc    $0x5e,%al
 1002cf4:	a0 76 38 bf a7 ca f9 	movabs 0xfb7df9caa7bf3876,%al
 1002cfb:	7d fb 
 1002cfd:	f2 93                	repnz xchg %eax,%ebx
 1002cff:	60                   	(bad)  
 1002d00:	dd 2b                	(bad)  (%rbx)
 1002d02:	0b 55 fa             	or     -0x6(%rbp),%edx
 1002d05:	83 33 ed             	xorl   $0xffffffed,(%rbx)
 1002d08:	63 33                	movsxd (%rbx),%esi
 1002d0a:	40 17                	rex (bad) 
 1002d0c:	28 2d 24 a2 ab 70    	sub    %ch,0x70aba224(%rip)        # 0x71abcf36
 1002d12:	04 f4                	add    $0xf4,%al
 1002d14:	66 d1 ee             	shr    %si
 1002d17:	73 c7                	jae    0x1002ce0
 1002d19:	cb                   	lret   
 1002d1a:	63 63 c9             	movsxd -0x37(%rbx),%esp
 1002d1d:	77 23                	ja     0x1002d42
 1002d1f:	f8                   	clc    
 1002d20:	47 7d be             	rex.RXB jge 0x1002ce1
 1002d23:	cb                   	lret   
 1002d24:	29 93 8b e1 68 a5    	sub    %edx,-0x5a971e75(%rbx)
 1002d2a:	15 b2 a9 c4 71       	adc    $0x71c4a9b2,%eax
 1002d2f:	d1 54 b7 64          	rcll   0x64(%rdi,%rsi,4)
 1002d33:	1a 66 86             	sbb    -0x7a(%rsi),%ah
 1002d36:	46 05 7e f5 72 39    	rex.RX add $0x3972f57e,%eax
 1002d3c:	c2 ba ad             	retq   $0xadba
 1002d3f:	8b a4 fb 82 db 4a 07 	mov    0x74adb82(%rbx,%rdi,8),%esp
 1002d46:	aa                   	stos   %al,%es:(%rdi)
 1002d47:	2c 2c                	sub    $0x2c,%al
 1002d49:	42 77 ff             	rex.X ja 0x1002d4b
 1002d4c:	7a 56                	jp     0x1002da4
 1002d4e:	96                   	xchg   %eax,%esi
 1002d4f:	75 5b                	jne    0x1002dac
 1002d51:	a0 ae ad eb e6 1b ae 	movabs 0xeca8ae1be6ebadae,%al
 1002d58:	a8 ec 
 1002d5a:	db 60 bf             	(bad)  -0x41(%rax)
 1002d5d:	54                   	push   %rsp
 1002d5e:	d4                   	(bad)  
 1002d5f:	20 fa                	and    %bh,%dl
 1002d61:	45 a1 b7 81 7c 75 b5 	rex.RB movabs 0x39fca7b5757c81b7,%eax
 1002d68:	a7 fc 39 
 1002d6b:	08 9c c3 d3 36 d2 e0 	or     %bl,-0x1f2dc92d(%rbx,%rax,8)
 1002d72:	a8 49                	test   $0x49,%al
 1002d74:	65 15 53 2c f9 a6    	gs adc $0xa6f92c53,%eax
 1002d7a:	66 6a 9a             	pushw  $0xff9a
 1002d7d:	4c 33 c9             	xor    %rcx,%r9
 1002d80:	b4 5a                	mov    $0x5a,%ah
 1002d82:	62 a2                	(bad)  
 1002d84:	1b 2e                	sbb    (%rsi),%ebp
 1002d86:	bd 66 69 df 77       	mov    $0x77df6966,%ebp
 1002d8b:	31 b3 2d 3d 07 5b    	xor    %esi,0x5b073d2d(%rbx)
 1002d91:	7c 1c                	jl     0x1002daf
 1002d93:	60                   	(bad)  
 1002d94:	1a 79 9f             	sbb    -0x61(%rcx),%bh
 1002d97:	10 dc                	adc    %bl,%ah
 1002d99:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1002d9a:	66 76 1f             	data16 jbe 0x1002dbc
 1002d9d:	5c                   	pop    %rsp
 1002d9e:	78 f2                	js     0x1002d92
 1002da0:	35 8c 14 27 e7       	xor    $0xe727148c,%eax
 1002da5:	8b d9                	mov    %ecx,%ebx
 1002da7:	0f 36                	(bad)  
 1002da9:	76 dd                	jbe    0x1002d88
 1002dab:	4f fa                	rex.WRXB cli 
 1002dad:	e9 b2 15 94 d4       	jmpq   0xffffffffd5944364
 1002db2:	1d 2b 60 3e 04       	sbb    $0x43e602b,%eax
 1002db7:	11 d3                	adc    %edx,%ebx
 1002db9:	de 56 32             	ficoms 0x32(%rsi)
 1002dbc:	36 c5 77 31          	(bad)
 1002dc0:	e4 78                	in     $0x78,%al
 1002dc2:	a1 74 fb e0 b9 dc 29 	movabs 0xd86029dcb9e0fb74,%eax
 1002dc9:	60 d8 
 1002dcb:	2a 2c 2f             	sub    (%rdi,%rbp,1),%ch
 1002dce:	ff 68 11             	ljmp   *0x11(%rax)
 1002dd1:	eb 7e                	jmp    0x1002e51
 1002dd3:	ed                   	in     (%dx),%eax
 1002dd4:	28 de                	sub    %bl,%dh
 1002dd6:	28 86 d8 bf 94 d5    	sub    %al,-0x2a6b4028(%rsi)
 1002ddc:	f6 8e de 4b c3 3e 4d 	testb  $0x4d,0x3ec34bde(%rsi)
 1002de3:	5c                   	pop    %rsp
 1002de4:	b0 1d                	mov    $0x1d,%al
 1002de6:	b4 00                	mov    $0x0,%ah
 1002de8:	05 55 13 27 1a       	add    $0x1a271355,%eax
 1002ded:	fe cc                	dec    %ah
 1002def:	6e                   	outsb  %ds:(%rsi),(%dx)
 1002df0:	e9 5d 4a f0 5f       	jmpq   0x60f07852
 1002df5:	5e                   	pop    %rsi
 1002df6:	ce                   	(bad)  
 1002df7:	ac                   	lods   %ds:(%rsi),%al
 1002df8:	22 db                	and    %bl,%bl
 1002dfa:	92                   	xchg   %eax,%edx
 1002dfb:	c8 42 f3 44          	enterq $0xf342,$0x44
 1002dff:	5d                   	pop    %rbp
 1002e00:	e7 6f                	out    %eax,$0x6f
 1002e02:	6c                   	insb   (%dx),%es:(%rdi)
 1002e03:	95                   	xchg   %eax,%ebp
 1002e04:	22 d1                	and    %cl,%dl
 1002e06:	e7 e3                	out    %eax,$0xe3
 1002e08:	65 64 b6 90          	gs fs mov $0x90,%dh
 1002e0c:	36 6a 48             	ss pushq $0x48
 1002e0f:	04 a0                	add    $0xa0,%al
 1002e11:	c8 02 31 ac          	enterq $0x3102,$0xac
 1002e15:	73 1f                	jae    0x1002e36
 1002e17:	34 ec                	xor    $0xec,%al
 1002e19:	56                   	push   %rsi
 1002e1a:	8a c6                	mov    %dh,%al
 1002e1c:	31 45 09             	xor    %eax,0x9(%rbp)
 1002e1f:	69 b3 7f cd d6 8e 3b 	imul   $0x3845b63b,-0x71293281(%rbx),%esi
 1002e26:	b6 45 38 
 1002e29:	3f                   	(bad)  
 1002e2a:	14 d9                	adc    $0xd9,%al
 1002e2c:	76 de                	jbe    0x1002e0c
 1002e2e:	18 62 57             	sbb    %ah,0x57(%rdx)
 1002e31:	58                   	pop    %rax
 1002e32:	ed                   	in     (%dx),%eax
 1002e33:	7b b2                	jnp    0x1002de7
 1002e35:	c8 52 aa e0          	enterq $0xaa52,$0xe0
 1002e39:	35 8c b2 0f 2e       	xor    $0x2e0fb28c,%eax
 1002e3e:	a1 46 6e a4 40 22 5f 	movabs 0x91c85f2240a46e46,%eax
 1002e45:	c8 91 
 1002e47:	d1 f7                	shl    %edi
 1002e49:	75 c9                	jne    0x1002e14
 1002e4b:	d1 62 3d             	shll   0x3d(%rdx)
 1002e4e:	15 3d 4b 7b c8       	adc    $0xc87b4b3d,%eax
 1002e53:	2b d4                	sub    %esp,%edx
 1002e55:	64 fc                	fs cld 
 1002e57:	b6 b9                	mov    $0xb9,%dh
 1002e59:	0a a0 c6 74 d2 c2    	or     -0x3d2d8b3a(%rax),%ah
 1002e5f:	c5 b0 50             	(bad)
 1002e62:	e5 a2                	in     $0xa2,%eax
 1002e64:	37                   	(bad)  
 1002e65:	e7 2b                	out    %eax,$0x2b
 1002e67:	ca 74 05             	lret   $0x574
 1002e6a:	8f                   	(bad)  
 1002e6b:	fb                   	sti    
 1002e6c:	9d                   	popfq  
 1002e6d:	29 86 34 fc f5 f8    	sub    %eax,-0x70a03cc(%rsi)
 1002e73:	b9 2a e4 7c 28       	mov    $0x287ce42a,%ecx
 1002e78:	d1 44 20 39          	roll   0x39(%rax,%riz,1)
 1002e7c:	03 f4                	add    %esp,%esi
 1002e7e:	19 16                	sbb    %edx,(%rsi)
 1002e80:	52                   	push   %rdx
 1002e81:	32 76 62             	xor    0x62(%rsi),%dh
 1002e84:	b7 31                	mov    $0x31,%bh
 1002e86:	49 6f                	rex.WB outsl %ds:(%rsi),(%dx)
 1002e88:	ef                   	out    %eax,(%dx)
 1002e89:	ec                   	in     (%dx),%al
 1002e8a:	2a b6 7f 5f e3 6d    	sub    0x6de35f7f(%rsi),%dh
 1002e90:	73 76                	jae    0x1002f08
 1002e92:	83 99 d3 e4 a5 ba 51 	sbbl   $0x51,-0x455a1b2d(%rcx)
 1002e99:	c7 c5 a8 9b 6a 61    	mov    $0x616a9ba8,%ebp
 1002e9f:	38 0c 42             	cmp    %cl,(%rdx,%rax,2)
 1002ea2:	d7                   	xlat   %ds:(%rbx)
 1002ea3:	a3 22 14 84 76 70 c1 	movabs %eax,0xbfa0c17076841422
 1002eaa:	a0 bf 
 1002eac:	1a 01                	sbb    (%rcx),%al
 1002eae:	53                   	push   %rbx
 1002eaf:	ed                   	in     (%dx),%eax
 1002eb0:	c2 b4 61             	retq   $0x61b4
 1002eb3:	b0 19                	mov    $0x19,%al
 1002eb5:	7a c5                	jp     0x1002e7c
 1002eb7:	e7 9c                	out    %eax,$0x9c
 1002eb9:	88 aa 92 5a 8e ac    	mov    %ch,-0x5371a56e(%rdx)
 1002ebf:	cc                   	int3   
 1002ec0:	4b af                	rex.WXB scas %es:(%rdi),%rax
 1002ec2:	c0 84 89 13 23 98 06 	rolb   $0xb8,0x6982313(%rcx,%rcx,4)
 1002ec9:	b8 
 1002eca:	5c                   	pop    %rsp
 1002ecb:	9b                   	fwait
 1002ecc:	3d 86 11 61 49       	cmp    $0x49611186,%eax
 1002ed1:	af                   	scas   %es:(%rdi),%eax
 1002ed2:	9c                   	pushfq 
 1002ed3:	b6 08                	mov    $0x8,%dh
 1002ed5:	12 48 7e             	adc    0x7e(%rax),%cl
 1002ed8:	39 9b 92 68 a4 ec    	cmp    %ebx,-0x135b976e(%rbx)
 1002ede:	6a ef                	pushq  $0xffffffffffffffef
 1002ee0:	35 24 b2 fb 4d       	xor    $0x4dfbb224,%eax
 1002ee5:	78 d2                	js     0x1002eb9
 1002ee7:	6f                   	outsl  %ds:(%rsi),(%dx)
 1002ee8:	84 41 d4             	test   %al,-0x2c(%rcx)
 1002eeb:	ca 3f 85             	lret   $0x853f
 1002eee:	e9 82 48 92 91       	jmpq   0xffffffff92927775
 1002ef3:	d5                   	(bad)  
 1002ef4:	d5                   	(bad)  
 1002ef5:	c2 6f c8             	retq   $0xc86f
 1002ef8:	8a 0a                	mov    (%rdx),%cl
 1002efa:	32 c0                	xor    %al,%al
 1002efc:	63 96 65 5a 5f e6    	movsxd -0x19a0a59b(%rsi),%edx
 1002f02:	9c                   	pushfq 
 1002f03:	88 5a 88             	mov    %bl,-0x78(%rdx)
 1002f06:	0d 11 64 7f 56       	or     $0x567f6411,%eax
 1002f0b:	8e e2                	mov    %edx,%fs
 1002f0d:	cc                   	int3   
 1002f0e:	37                   	(bad)  
 1002f0f:	1c 28                	sbb    $0x28,%al
 1002f11:	d8 58 f0             	fcomps -0x10(%rax)
 1002f14:	31 b2 7a 77 21 97    	xor    %esi,-0x68de8886(%rdx)
 1002f1a:	66 06                	data16 (bad) 
 1002f1c:	bf e2 b6 c3 1c       	mov    $0x1cc3b6e2,%edi
 1002f21:	2d eb 03 5f aa       	sub    $0xaa5f03eb,%eax
 1002f26:	52                   	push   %rdx
 1002f27:	72 1a                	jb     0x1002f43
 1002f29:	45 84 50 94          	test   %r10b,-0x6c(%r8)
 1002f2d:	5a                   	pop    %rdx
 1002f2e:	88 fe                	mov    %bh,%dh
 1002f30:	5e                   	pop    %rsi
 1002f31:	af                   	scas   %es:(%rdi),%eax
 1002f32:	86 22                	xchg   %ah,(%rdx)
 1002f34:	77 9b                	ja     0x1002ed1
 1002f36:	8f                   	(bad)  
 1002f37:	96                   	xchg   %eax,%esi
 1002f38:	1a 4a 21             	sbb    0x21(%rdx),%cl
 1002f3b:	51                   	push   %rcx
 1002f3c:	83 30 26             	xorl   $0x26,(%rax)
 1002f3f:	6a a1                	pushq  $0xffffffffffffffa1
 1002f41:	60                   	(bad)  
 1002f42:	7b 4d                	jnp    0x1002f91
 1002f44:	60                   	(bad)  
 1002f45:	08 04 81             	or     %al,(%rcx,%rax,4)
 1002f48:	40 ea                	rex (bad) 
 1002f4a:	30 5b 29             	xor    %bl,0x29(%rbx)
 1002f4d:	f6 68 44             	imulb  0x44(%rax)
 1002f50:	c3                   	retq   
 1002f51:	78 f0                	js     0x1002f43
 1002f53:	d2 36                	shlb   %cl,(%rsi)
 1002f55:	6a f1                	pushq  $0xfffffffffffffff1
 1002f57:	23 7d b0             	and    -0x50(%rbp),%edi
 1002f5a:	31 40 6b             	xor    %eax,0x6b(%rax)
 1002f5d:	5b                   	pop    %rbx
 1002f5e:	21 30                	and    %esi,(%rax)
 1002f60:	35 cf 2f ff 5b       	xor    $0x5bff2fcf,%eax
 1002f65:	f4                   	hlt    
 1002f66:	03 29                	add    (%rcx),%ebp
 1002f68:	12 1c 57             	adc    (%rdi,%rdx,2),%bl
 1002f6b:	a0 87 f8 8f ea 06 c2 	movabs 0x781ac206ea8ff887,%al
 1002f72:	1a 78 
 1002f74:	ac                   	lods   %ds:(%rsi),%al
 1002f75:	43 e9 a9 2d 96 d6    	rex.XB jmpq 0xffffffffd7965d24
 1002f7b:	fa                   	cli    
 1002f7c:	2f                   	(bad)  
 1002f7d:	9c                   	pushfq 
 1002f7e:	87 4e f5             	xchg   %ecx,-0xb(%rsi)
 1002f81:	0b 2e                	or     (%rsi),%ebp
 1002f83:	25 88 b5 86 78       	and    $0x7886b588,%eax
 1002f88:	95                   	xchg   %eax,%ebp
 1002f89:	32 1f                	xor    (%rdi),%bl
 1002f8b:	1c 21                	sbb    $0x21,%al
 1002f8d:	fd                   	std    
 1002f8e:	2d fe 91 40 62       	sub    $0x624091fe,%eax
 1002f93:	f7 e3                	mul    %ebx
 1002f95:	5e                   	pop    %rsi
 1002f96:	5b                   	pop    %rbx
 1002f97:	fd                   	std    
 1002f98:	9c                   	pushfq 
 1002f99:	f6 b0 52 5f a4 46    	divb   0x46a45f52(%rax)
 1002f9f:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1002fa0:	2f                   	(bad)  
 1002fa1:	fc                   	cld    
 1002fa2:	2a 22                	sub    (%rdx),%ah
 1002fa4:	e8 33 88 fd b6       	callq  0xffffffffb7fdb7dc
 1002fa9:	da e7                	(bad)  
 1002fab:	ff f7                	push   %rdi
 1002fad:	d2 bf b4 47 03 d0    	sarb   %cl,-0x2ffcb84c(%rdi)
 1002fb3:	49 e1 62             	rex.WB loope 0x1003018
 1002fb6:	fc                   	cld    
 1002fb7:	e2 3a                	loop   0x1002ff3
 1002fb9:	2c 8c                	sub    $0x8c,%al
 1002fbb:	b9 86 ec b6 6b       	mov    $0x6bb6ec86,%ecx
 1002fc0:	78 8e                	js     0x1002f50
 1002fc2:	75 10                	jne    0x1002fd4
 1002fc4:	08 8f b6 be c9 4e    	or     %cl,0x4ec9beb6(%rdi)
 1002fca:	61                   	(bad)  
 1002fcb:	73 42                	jae    0x100300f
 1002fcd:	97                   	xchg   %eax,%edi
 1002fce:	83 fd 17             	cmp    $0x17,%ebp
 1002fd1:	a1 0c a6 8b 12 08 e6 	movabs 0x5a2ee608128ba60c,%eax
 1002fd8:	2e 5a 
 1002fda:	cb                   	lret   
 1002fdb:	8f                   	(bad)  
 1002fdc:	57                   	push   %rdi
 1002fdd:	42                   	rex.X
 1002fde:	65 66 f2 82          	gs data16 repnz (bad) 
 1002fe2:	cb                   	lret   
 1002fe3:	bd 2e 9c 39 ab       	mov    $0xab399c2e,%ebp
 1002fe8:	3b 8a 72 a4 9d bf    	cmp    -0x40625b8e(%rdx),%ecx
 1002fee:	18 46 a0             	sbb    %al,-0x60(%rsi)
 1002ff1:	11 f3                	adc    %esi,%ebx
 1002ff3:	ea                   	(bad)  
 1002ff4:	91                   	xchg   %eax,%ecx
 1002ff5:	33 96 19 16 96 3b    	xor    0x3b961619(%rsi),%edx
 1002ffb:	59                   	pop    %rcx
 1002ffc:	b6 80                	mov    $0x80,%dh
 1002ffe:	9d                   	popfq  
 1002fff:	e2 6a                	loop   0x100306b
 1003001:	9b                   	fwait
 1003002:	10 ad 02 32 a3 b1    	adc    %ch,-0x4e5ccdfe(%rbp)
 1003008:	8f                   	(bad)  
 1003009:	91                   	xchg   %eax,%ecx
 100300a:	9d                   	popfq  
 100300b:	58                   	pop    %rax
 100300c:	42 d8 dc             	rex.X fcomp %st(4)
 100300f:	4b 84 54 37 85       	rex.WXB test %dl,-0x7b(%r15,%r14,1)
 1003014:	80 65 9a c5          	andb   $0xc5,-0x66(%rbp)
 1003018:	33 7c 54 60          	xor    0x60(%rsp,%rdx,2),%edi
 100301c:	08 66 99             	or     %ah,-0x67(%rsi)
 100301f:	e2 bc                	loop   0x1002fdd
 1003021:	8c 73 91             	mov    %?,-0x6f(%rbx)
 1003024:	f2 cc                	repnz int3 
 1003026:	09 29                	or     %ebp,(%rcx)
 1003028:	98                   	cwtl   
 1003029:	9b                   	fwait
 100302a:	3a 79 c4             	cmp    -0x3c(%rcx),%bh
 100302d:	42                   	rex.X
 100302e:	48 7d 34             	rex.W jge 0x1003065
 1003031:	1c fe                	sbb    $0xfe,%al
 1003033:	dd 9f 87 5b 2f 9e    	fstpl  -0x61d0a479(%rdi)
 1003039:	81 40 e9 9b 13 f5 6b 	addl   $0x6bf5139b,-0x17(%rax)
 1003040:	f9                   	stc    
 1003041:	eb e6                	jmp    0x1003029
 1003043:	ee                   	out    %al,(%dx)
 1003044:	65 44 ff cd          	gs rex.R dec %ebp
 1003048:	03 8e e7 e1 51 0b    	add    0xb51e1e7(%rsi),%ecx
 100304e:	be 00 ef 5c 98       	mov    $0x985cef00,%esi
 1003053:	b6 6b                	mov    $0x6b,%dh
 1003055:	ac                   	lods   %ds:(%rsi),%al
 1003056:	44 3f                	rex.R (bad) 
 1003058:	c7                   	(bad)  
 1003059:	13 38                	adc    (%rax),%edi
 100305b:	b0 ce                	mov    $0xce,%al
 100305d:	34 1e                	xor    $0x1e,%al
 100305f:	80 42 9d d1          	addb   $0xd1,-0x63(%rdx)
 1003063:	02 e7                	add    %bh,%ah
 1003065:	86 8c da a8 76 84 82 	xchg   %cl,-0x7d7b8958(%rdx,%rbx,8)
 100306c:	34 c6                	xor    $0xc6,%al
 100306e:	c7                   	(bad)  
 100306f:	33 b2 a0 6f ed 24    	xor    0x24ed6fa0(%rdx),%esi
 1003075:	de 4c 93 5f          	fimuls 0x5f(%rbx,%rdx,4)
 1003079:	1d 45 1d a6 f6       	sbb    $0xf6a61d45,%eax
 100307e:	98                   	cwtl   
 100307f:	ba f4 f6 83 55       	mov    $0x5583f6f4,%edx
 1003084:	f2 ae                	repnz scas %es:(%rdi),%al
 1003086:	65 09 b3 15 49 a8 c3 	or     %esi,%gs:-0x3c57b6eb(%rbx)
 100308d:	b3 b1                	mov    $0xb1,%bl
 100308f:	e2 c2                	loop   0x1003053
 1003091:	2f                   	(bad)  
 1003092:	b4 0b                	mov    $0xb,%ah
 1003094:	b4 a5                	mov    $0xa5,%ah
 1003096:	c9                   	leaveq 
 1003097:	7c 14                	jl     0x10030ad
 1003099:	be 2c 08 80 53       	mov    $0x5380082c,%esi
 100309e:	7d a6                	jge    0x1003046
 10030a0:	74 2c                	je     0x10030ce
 10030a2:	1b a4 17 33 da 32 da 	sbb    -0x25cd25cd(%rdi,%rdx,1),%esp
 10030a9:	67 e7 68             	addr32 out %eax,$0x68
 10030ac:	c1 3a 16             	sarl   $0x16,(%rdx)
 10030af:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10030b0:	c1 0e 0f             	rorl   $0xf,(%rsi)
 10030b3:	42 77 4c             	rex.X ja 0x1003102
 10030b6:	97                   	xchg   %eax,%edi
 10030b7:	44 d4                	rex.R (bad) 
 10030b9:	c3                   	retq   
 10030ba:	e7 91                	out    %eax,$0x91
 10030bc:	39 1e                	cmp    %ebx,(%rsi)
 10030be:	83 98 37 db a3 c4 a8 	sbbl   $0xffffffa8,-0x3b5c24c9(%rax)
 10030c5:	3f                   	(bad)  
 10030c6:	6b cf 4a             	imul   $0x4a,%edi,%ecx
 10030c9:	02 bf af 00 c1 35    	add    0x35c100af(%rdi),%bh
 10030cf:	5a                   	pop    %rdx
 10030d0:	b1 1f                	mov    $0x1f,%cl
 10030d2:	93                   	xchg   %eax,%ebx
 10030d3:	c8 60 6f ac          	enterq $0x6f60,$0xac
 10030d7:	51                   	push   %rcx
 10030d8:	f0 a7                	lock cmpsl %es:(%rdi),%ds:(%rsi)
 10030da:	62                   	(bad)  
 10030db:	1b 46 c2             	sbb    -0x3e(%rsi),%eax
 10030de:	de 4f cf             	fimuls -0x31(%rdi)
 10030e1:	37                   	(bad)  
 10030e2:	33 ce                	xor    %esi,%ecx
 10030e4:	61                   	(bad)  
 10030e5:	13 b2 4b ed b1 74    	adc    0x74b1ed4b(%rdx),%esi
 10030eb:	95                   	xchg   %eax,%ebp
 10030ec:	08 02                	or     %al,(%rdx)
 10030ee:	66 99                	cwtd   
 10030f0:	d6                   	(bad)  
 10030f1:	cb                   	lret   
 10030f2:	7c 60                	jl     0x1003154
 10030f4:	3a d9                	cmp    %cl,%bl
 10030f6:	f4                   	hlt    
 10030f7:	7f c9                	jg     0x10030c2
 10030f9:	47 8e 10             	rex.RXB mov (%r8),%ss
 10030fc:	13 5a 37             	adc    0x37(%rdx),%ebx
 10030ff:	81 42 b8 8a d3 d1 cf 	addl   $0xcfd1d38a,-0x48(%rdx)
 1003106:	18 31                	sbb    %dh,(%rcx)
 1003108:	2c f9                	sub    $0xf9,%al
 100310a:	96                   	xchg   %eax,%esi
 100310b:	16                   	(bad)  
 100310c:	63 d6                	movsxd %esi,%edx
 100310e:	80 0c e2 0f          	orb    $0xf,(%rdx,%riz,8)
 1003112:	74 d6                	je     0x10030ea
 1003114:	66 1c a4             	data16 sbb $0xa4,%al
 1003117:	21 99 8c 9d 3a b4    	and    %ebx,-0x4bc56274(%rcx)
 100311d:	69 b8 a2 c8 de df a2 	imul   $0x3e15aca2,-0x2021375e(%rax),%edi
 1003124:	ac 15 3e 
 1003127:	34 95                	xor    $0x95,%al
 1003129:	8b 95 55 cb e0 92    	mov    -0x6d1f34ab(%rbp),%edx
 100312f:	ba e9 5f f7 66       	mov    $0x66f75fe9,%edx
 1003134:	77 5c                	ja     0x1003192
 1003136:	57                   	push   %rdi
 1003137:	fe                   	(bad)  
 1003138:	d5                   	(bad)  
 1003139:	16                   	(bad)  
 100313a:	3c 7c                	cmp    $0x7c,%al
 100313c:	cc                   	int3   
 100313d:	95                   	xchg   %eax,%ebp
 100313e:	c3                   	retq   
 100313f:	d8 61 c1             	fsubs  -0x3f(%rcx)
 1003142:	19 61 c0             	sbb    %esp,-0x40(%rcx)
 1003145:	de 6a be             	fisubrs -0x42(%rdx)
 1003148:	b4 9c                	mov    $0x9c,%ah
 100314a:	56                   	push   %rsi
 100314b:	61                   	(bad)  
 100314c:	06                   	(bad)  
 100314d:	b8 48 4e 74 cb       	mov    $0xcb744e48,%eax
 1003152:	95                   	xchg   %eax,%ebp
 1003153:	9e                   	sahf   
 1003154:	50                   	push   %rax
 1003155:	6d                   	insl   (%dx),%es:(%rdi)
 1003156:	25 fb c7 62 0f       	and    $0xf62c7fb,%eax
 100315b:	2c 36                	sub    $0x36,%al
 100315d:	ed                   	in     (%dx),%eax
 100315e:	43 28 d3             	rex.XB sub %dl,%r11b
 1003161:	b2 4e                	mov    $0x4e,%dl
 1003163:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1003164:	9e                   	sahf   
 1003165:	43 86 1f             	rex.XB xchg %bl,(%r15)
 1003168:	62                   	(bad)  
 1003169:	0f 5d 31             	minps  (%rcx),%xmm6
 100316c:	e5 a9                	in     $0xa9,%eax
 100316e:	e9 f1 31 1b 5f       	jmpq   0x601b6364
 1003173:	f4                   	hlt    
 1003174:	73 c9                	jae    0x100313f
 1003176:	5a                   	pop    %rdx
 1003177:	f9                   	stc    
 1003178:	bd 89 f2 a9 a4       	mov    $0xa4a9f289,%ebp
 100317d:	ad                   	lods   %ds:(%rsi),%eax
 100317e:	62                   	(bad)  
 100317f:	00 95 79 2f 9e 63    	add    %dl,0x639e2f79(%rbp)
 1003185:	ff 68 2a             	ljmp   *0x2a(%rax)
 1003188:	f8                   	clc    
 1003189:	ef                   	out    %eax,(%dx)
 100318a:	d2 f9                	sar    %cl,%cl
 100318c:	a1 6c 73 0c e8 93 0f 	movabs 0x94850f93e80c736c,%eax
 1003193:	85 94 
 1003195:	a3 92 b0 e0 1e 58 62 	movabs %eax,0xe02a62581ee0b092
 100319c:	2a e0 
 100319e:	e9 92 35 4c ba       	jmpq   0xffffffffbb4c6735
 10031a3:	96                   	xchg   %eax,%esi
 10031a4:	51                   	push   %rcx
 10031a5:	21 07                	and    %eax,(%rdi)
 10031a7:	cb                   	lret   
 10031a8:	83 40 b8 f4          	addl   $0xfffffff4,-0x48(%rax)
 10031ac:	29 71 b5             	sub    %esi,-0x4b(%rcx)
 10031af:	bc be 85 a5 29       	mov    $0x29a585be,%esp
 10031b4:	9b                   	fwait
 10031b5:	38 0d 57 69 37 f2    	cmp    %cl,-0xdc896a9(%rip)        # 0xfffffffff3379b12
 10031bb:	1c e9                	sbb    $0xe9,%al
 10031bd:	17                   	(bad)  
 10031be:	5f                   	pop    %rdi
 10031bf:	86 8c 29 27 d4 72 80 	xchg   %cl,-0x7f8d2bd9(%rcx,%rbp,1)
 10031c6:	f4                   	hlt    
 10031c7:	da 36                	fidivl (%rsi)
 10031c9:	30 64 f8 5b          	xor    %ah,0x5b(%rax,%rdi,8)
 10031cd:	a1 50 73 4b d0 f6 0b 	movabs 0x32af0bf6d04b7350,%eax
 10031d4:	af 32 
 10031d6:	54                   	push   %rsp
 10031d7:	55                   	push   %rbp
 10031d8:	f1                   	icebp  
 10031d9:	78 5c                	js     0x1003237
 10031db:	ca c0 25             	lret   $0x25c0
 10031de:	f5                   	cmc    
 10031df:	0a da                	or     %dl,%bl
 10031e1:	f4                   	hlt    
 10031e2:	c9                   	leaveq 
 10031e3:	a0 74 c8 ba 17 a4 55 	movabs 0x49a855a417bac874,%al
 10031ea:	a8 49 
 10031ec:	b2 3b                	mov    $0x3b,%dl
 10031ee:	72 d4                	jb     0x10031c4
 10031f0:	57                   	push   %rdi
 10031f1:	31 45 49             	xor    %eax,0x49(%rbp)
 10031f4:	aa                   	stos   %al,%es:(%rdi)
 10031f5:	c4                   	(bad)  
 10031f6:	cb                   	lret   
 10031f7:	6f                   	outsl  %ds:(%rsi),(%dx)
 10031f8:	5b                   	pop    %rbx
 10031f9:	3e d6                	ds (bad) 
 10031fb:	38 e6                	cmp    %ah,%dh
 10031fd:	5f                   	pop    %rdi
 10031fe:	e8 a1 96 cf 61       	callq  0x62cfc8a4
 1003203:	ae                   	scas   %es:(%rdi),%al
 1003204:	65 b7 b6             	gs mov $0xb6,%bh
 1003207:	5d                   	pop    %rbp
 1003208:	7b d8                	jnp    0x10031e2
 100320a:	3e 10 7e 45          	adc    %bh,%ds:0x45(%rsi)
 100320e:	6c                   	insb   (%dx),%es:(%rdi)
 100320f:	3c 24                	cmp    $0x24,%al
 1003211:	05 1a ac a2 79       	add    $0x79a2ac1a,%eax
 1003216:	25 38 2d e1 be       	and    $0xbee12d38,%eax
 100321b:	dd f8                	(bad)  
 100321d:	06                   	(bad)  
 100321e:	e8 ab 4e 37 72       	callq  0x733780ce
 1003223:	67 b6 26             	addr32 mov $0x26,%dh
 1003226:	49 5d                	rex.WB pop %r13
 1003228:	7f bb                	jg     0x10031e5
 100322a:	fa                   	cli    
 100322b:	bc 7f af 83 d9       	mov    $0xd983af7f,%esp
 1003230:	b1 3f                	mov    $0x3f,%cl
 1003232:	c4                   	(bad)  
 1003233:	33 06                	xor    (%rsi),%eax
 1003235:	b3 17                	mov    $0x17,%bl
 1003237:	34 2d                	xor    $0x2d,%al
 1003239:	e5 e1                	in     $0xe1,%eax
 100323b:	d6                   	(bad)  
 100323c:	db e3                	fninit 
 100323e:	2d 9a 3e a2 f0       	sub    $0xf0a23e9a,%eax
 1003243:	dc dc                	(bad)  
 1003245:	14 f4                	adc    $0xf4,%al
 1003247:	f4                   	hlt    
 1003248:	57                   	push   %rdi
 1003249:	fc                   	cld    
 100324a:	6e                   	outsb  %ds:(%rsi),(%dx)
 100324b:	9d                   	popfq  
 100324c:	39 5e b9             	cmp    %ebx,-0x47(%rsi)
 100324f:	6c                   	insb   (%dx),%es:(%rdi)
 1003250:	47 ed                	rex.RXB in (%dx),%eax
 1003252:	58                   	pop    %rax
 1003253:	6e                   	outsb  %ds:(%rsi),(%dx)
 1003254:	35 76 3b 6a a3       	xor    $0xa36a3b76,%eax
 1003259:	17                   	(bad)  
 100325a:	90                   	nop
 100325b:	55                   	push   %rbp
 100325c:	6f                   	outsl  %ds:(%rsi),(%dx)
 100325d:	9a                   	(bad)  
 100325e:	1e                   	(bad)  
 100325f:	fc                   	cld    
 1003260:	40 dd 85 72 77 b9 c9 	rex fldl -0x3646888e(%rbp)
 1003267:	bc 44 c0 dd 84       	mov    $0x84ddc044,%esp
 100326c:	bb e7 d6 2c 35       	mov    $0x352cd6e7,%ebx
 1003271:	7e e9                	jle    0x100325c
 1003273:	9d                   	popfq  
 1003274:	80 0d e2 57 04 92 e1 	orb    $0xe1,-0x6dfba81e(%rip)        # 0xffffffff93048a5d
 100327b:	5b                   	pop    %rbx
 100327c:	4e 7a 59             	rex.WRX jp 0x10032d8
 100327f:	63 e2                	movsxd %edx,%esp
 1003281:	7a dc                	jp     0x100325f
 1003283:	bd 88 e0 b6 4d       	mov    $0x4db6e088,%ebp
 1003288:	16                   	(bad)  
 1003289:	30 e3                	xor    %ah,%bl
 100328b:	0c d8                	or     $0xd8,%al
 100328d:	63 05 54 a9 2d c4    	movsxd -0x3bd256ac(%rip),%eax        # 0xffffffffc52ddbe7
 1003293:	3e 2d a8 fd c9 7f    	ds sub $0x7fc9fda8,%eax
 1003299:	d2 a9 bb fb 8d e3    	shrb   %cl,-0x1c720445(%rcx)
 100329f:	22 b7 d8 92 54 20    	and    0x205492d8(%rdi),%dh
 10032a5:	0c 8c                	or     $0x8c,%al
 10032a7:	01 4a 8a             	add    %ecx,-0x76(%rdx)
 10032aa:	5f                   	pop    %rdi
 10032ab:	dd e9                	fucomp %st(1)
 10032ad:	d9 a8 ca 3c 4b 61    	fldcw  0x614b3cca(%rax)
 10032b3:	07                   	(bad)  
 10032b4:	9e                   	sahf   
 10032b5:	3a 26                	cmp    (%rsi),%ah
 10032b7:	55                   	push   %rbp
 10032b8:	c7                   	(bad)  
 10032b9:	ee                   	out    %al,(%dx)
 10032ba:	c6                   	(bad)  
 10032bb:	48 2f                	rex.W (bad) 
 10032bd:	62 f2 67 9c a4       	(bad)
 10032c2:	64 73 76             	fs jae 0x100333b
 10032c5:	40                   	rex
 10032c6:	f0 84 19             	lock test %bl,(%rcx)
 10032c9:	25 1d 6c 43 74       	and    $0x74436c1d,%eax
 10032ce:	5a                   	pop    %rdx
 10032cf:	ae                   	scas   %es:(%rdi),%al
 10032d0:	03 7e d2             	add    -0x2e(%rsi),%edi
 10032d3:	3c 52                	cmp    $0x52,%al
 10032d5:	cd df                	int    $0xdf
 10032d7:	7f 32                	jg     0x100330b
 10032d9:	bf c8 85 2f 23       	mov    $0x232f85c8,%edi
 10032de:	b6 bd                	mov    $0xbd,%dh
 10032e0:	11 ea                	adc    %ebp,%edx
 10032e2:	da c5                	fcmovb %st(5),%st
 10032e4:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10032e5:	20 78 93             	and    %bh,-0x6d(%rax)
 10032e8:	ba c4 32 2d 3b       	mov    $0x3b2d32c4,%edx
 10032ed:	d4                   	(bad)  
 10032ee:	99                   	cltd   
 10032ef:	ee                   	out    %al,(%dx)
 10032f0:	22 69 5b             	and    0x5b(%rcx),%ch
 10032f3:	25 5a 6a 60 e1       	and    $0xe1606a5a,%eax
 10032f8:	4b                   	rex.WXB
 10032f9:	40 eb 59             	rex jmp 0x1003355
 10032fc:	38 e4                	cmp    %ah,%ah
 10032fe:	27                   	(bad)  
 10032ff:	56                   	push   %rsi
 1003300:	42 3a d8             	rex.X cmp %al,%bl
 1003303:	52                   	push   %rdx
 1003304:	bc d1 48 7a b0       	mov    $0xb07a48d1,%esp
 1003309:	f4                   	hlt    
 100330a:	47                   	rex.RXB
 100330b:	f3 af                	repz scas %es:(%rdi),%eax
 100330d:	87 6b 78             	xchg   %ebp,0x78(%rbx)
 1003310:	71 f9                	jno    0x100330b
 1003312:	3b 65 fa             	cmp    -0x6(%rbp),%esp
 1003315:	07                   	(bad)  
 1003316:	ca 78 70             	lret   $0x7078
 1003319:	bc d5 d3 67 7f       	mov    $0x7f67d3d5,%esp
 100331e:	0e                   	(bad)  
 100331f:	d3 af cf d8 2e c7    	shrl   %cl,-0x38d12731(%rdi)
 1003325:	5a                   	pop    %rdx
 1003326:	47 d4                	rex.RXB (bad) 
 1003328:	1c 46                	sbb    $0x46,%al
 100332a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100332b:	41 d8 0e             	fmuls  (%r14)
 100332e:	90                   	nop
 100332f:	c6                   	(bad)  
 1003330:	88 14 60             	mov    %dl,(%rax,%riz,2)
 1003333:	31 db                	xor    %ebx,%ebx
 1003335:	46 87 37             	rex.RX xchg %r14d,(%rdi)
 1003338:	5b                   	pop    %rbx
 1003339:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100333a:	aa                   	stos   %al,%es:(%rdi)
 100333b:	1b b7 3d 69 e8 59    	sbb    0x59e8693d(%rdi),%esi
 1003341:	fc                   	cld    
 1003342:	20 35 cf 91 03 85    	and    %dh,-0x7afc6e31(%rip)        # 0xffffffff8603c517
 1003348:	08 23                	or     %ah,(%rbx)
 100334a:	2c 90                	sub    $0x90,%al
 100334c:	b8 69 84 ce d6       	mov    $0xd6ce8469,%eax
 1003351:	b0 09                	mov    $0x9,%al
 1003353:	65 e4 16             	gs in  $0x16,%al
 1003356:	57                   	push   %rdi
 1003357:	27                   	(bad)  
 1003358:	e3 b9                	jrcxz  0x1003313
 100335a:	c8 a7 b0 e6          	enterq $0xb0a7,$0xe6
 100335e:	3d c2 fb 57 42       	cmp    $0x4257fbc2,%eax
 1003363:	76 44                	jbe    0x10033a9
 1003365:	df b2 29 46 53 c7    	fbstp  -0x38acb9d7(%rdx)
 100336b:	24 d1                	and    $0xd1,%al
 100336d:	fc                   	cld    
 100336e:	e7 5a                	out    %eax,$0x5a
 1003370:	ea                   	(bad)  
 1003371:	d8 6f 3e             	fsubrs 0x3e(%rdi)
 1003374:	7f a9                	jg     0x100331f
 1003376:	86 62 2c             	xchg   %ah,0x2c(%rdx)
 1003379:	0e                   	(bad)  
 100337a:	b0 87                	mov    $0x87,%al
 100337c:	3f                   	(bad)  
 100337d:	82                   	(bad)  
 100337e:	da 03                	fiaddl (%rbx)
 1003380:	b5 49                	mov    $0x49,%ch
 1003382:	c1 f7 44             	shl    $0x44,%edi
 1003385:	e0 ce                	loopne 0x1003355
 1003387:	f1                   	icebp  
 1003388:	0f 22 2c             	mov    %rsp,%cr5
 100338b:	e6 6e                	out    %al,$0x6e
 100338d:	48 37                	rex.W (bad) 
 100338f:	62                   	(bad)  
 1003390:	66 b4 d7             	data16 mov $0xd7,%ah
 1003393:	b8 6a cc f5 0d       	mov    $0xdf5cc6a,%eax
 1003398:	3b c1                	cmp    %ecx,%eax
 100339a:	8b 9c 0f ac 8e 89 09 	mov    0x9898eac(%rdi,%rcx,1),%ebx
 10033a1:	04 10                	add    $0x10,%al
 10033a3:	5a                   	pop    %rdx
 10033a4:	22 15 b1 ee 19 47    	and    0x4719eeb1(%rip),%dl        # 0x481a225b
 10033aa:	7c df                	jl     0x100338b
 10033ac:	68 72 c6 a7 fc       	pushq  $0xfffffffffca7c672
 10033b1:	05 40 04 68 b5       	add    $0xb5680440,%eax
 10033b6:	fc                   	cld    
 10033b7:	28 c9                	sub    %cl,%cl
 10033b9:	36 82                	ss (bad) 
 10033bb:	db 5f 48             	fistpl 0x48(%rdi)
 10033be:	6b 63 bc ee          	imul   $0xffffffee,-0x44(%rbx),%esp
 10033c2:	ba 56 c7 6b 9e       	mov    $0x9e6bc756,%edx
 10033c7:	f4                   	hlt    
 10033c8:	b9 0b 88 73 59       	mov    $0x5973880b,%ecx
 10033cd:	91                   	xchg   %eax,%ecx
 10033ce:	24 93                	and    $0x93,%al
 10033d0:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 10033d1:	b5 c0                	mov    $0xc0,%ch
 10033d3:	aa                   	stos   %al,%es:(%rdi)
 10033d4:	3c 7b                	cmp    $0x7b,%al
 10033d6:	26 be 9e f2 b4 9e    	es mov $0x9eb4f29e,%esi
 10033dc:	5a                   	pop    %rdx
 10033dd:	76 e0                	jbe    0x10033bf
 10033df:	4d 21 d2             	and    %r10,%r10
 10033e2:	b8 82 85 bd bb       	mov    $0xbbbd8582,%eax
 10033e7:	cc                   	int3   
 10033e8:	8c 18                	mov    %ds,(%rax)
 10033ea:	31 95 aa 1d 72 05    	xor    %edx,0x5721daa(%rbp)
 10033f0:	09 a7 9a 33 ec 42    	or     %esp,0x42ec339a(%rdi)
 10033f6:	4a 2c d7             	rex.WX sub $0xd7,%al
 10033f9:	f9                   	stc    
 10033fa:	7c 86                	jl     0x1003382
 10033fc:	03 ae 6c 81 70 a2    	add    -0x5d8f7e94(%rsi),%ebp
 1003402:	b2 6c                	mov    $0x6c,%dl
 1003404:	33 7c ad bc          	xor    -0x44(%rbp,%rbp,4),%edi
 1003408:	cb                   	lret   
 1003409:	5c                   	pop    %rsp
 100340a:	27                   	(bad)  
 100340b:	29 2d ed 7f a9 cf    	sub    %ebp,-0x30568013(%rip)        # 0xffffffffd0a9b3fe
 1003411:	1f                   	(bad)  
 1003412:	a2 91 06 51 13 9f 13 	movabs %al,0x1ae9139f13510691
 1003419:	e9 1a 
 100341b:	83 25 3e 23 e4 eb f8 	andl   $0xfffffff8,-0x141bdcc2(%rip)        # 0xffffffffece45760
 1003422:	45 3b c9             	cmp    %r9d,%r9d
 1003425:	47 31 5c f1 31       	xor    %r11d,0x31(%r9,%r14,8)
 100342a:	82                   	(bad)  
 100342b:	38 a4 8f cd fd c6 57 	cmp    %ah,0x57c6fdcd(%rdi,%rcx,4)
 1003432:	49 d1 94 f6 bc 4c 9e 	rclq   -0x7761b344(%r14,%rsi,8)
 1003439:	88 
 100343a:	4e 51                	rex.WRX push %rcx
 100343c:	5e                   	pop    %rsi
 100343d:	c0 f8 d6             	sar    $0xd6,%al
 1003440:	9f                   	lahf   
 1003441:	8c fb                	mov    %?,%ebx
 1003443:	89 31                	mov    %esi,(%rcx)
 1003445:	c6                   	(bad)  
 1003446:	fd                   	std    
 1003447:	e0 7f                	loopne 0x10034c8
 1003449:	16                   	(bad)  
 100344a:	55                   	push   %rbp
 100344b:	d6                   	(bad)  
 100344c:	70 22                	jo     0x1003470
 100344e:	78 65                	js     0x10034b5
 1003450:	fd                   	std    
 1003451:	23 ef                	and    %edi,%ebp
 1003453:	78 c4                	js     0x1003419
 1003455:	62                   	(bad)  
 1003456:	a0 d8 4b 67 e3 23 20 	movabs 0x712d2023e3674bd8,%al
 100345d:	2d 71 
 100345f:	f0 6f                	lock outsl %ds:(%rsi),(%dx)
 1003461:	42 3a 3a             	rex.X cmp (%rdx),%dil
 1003464:	30 71 c1             	xor    %dh,-0x3f(%rcx)
 1003467:	07                   	(bad)  
 1003468:	35 4c ed 70 96       	xor    $0x9670ed4c,%eax
 100346d:	2c 19                	sub    $0x19,%al
 100346f:	0a 19                	or     (%rcx),%bl
 1003471:	00 df                	add    %bl,%bh
 1003473:	95                   	xchg   %eax,%ebp
 1003474:	71 a1                	jno    0x1003417
 1003476:	9f                   	lahf   
 1003477:	42                   	rex.X
 1003478:	45                   	rex.RB
 1003479:	46 86 d6             	rex.RX xchg %r10b,%sil
 100347c:	b9 e6 97 b3 79       	mov    $0x79b397e6,%ecx
 1003481:	80 a9 1c c0 c9 3a de 	subb   $0xde,0x3ac9c01c(%rcx)
 1003488:	e5 64                	in     $0x64,%eax
 100348a:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100348b:	90                   	nop
 100348c:	90                   	nop
 100348d:	33 0f                	xor    (%rdi),%ecx
 100348f:	d4                   	(bad)  
 1003490:	83 41 b8 ff          	addl   $0xffffffff,-0x48(%rcx)
 1003494:	c3                   	retq   
 1003495:	51                   	push   %rcx
 1003496:	46                   	rex.RX
 1003497:	64 a4                	movsb  %fs:(%rsi),%es:(%rdi)
 1003499:	30 dd                	xor    %bl,%ch
 100349b:	c2 c0 44             	retq   $0x44c0
 100349e:	c7                   	(bad)  
 100349f:	f5                   	cmc    
 10034a0:	fe 49 75             	decb   0x75(%rcx)
 10034a3:	e6 e1                	out    %al,$0xe1
 10034a5:	32 2c 86             	xor    (%rsi,%rax,4),%ch
 10034a8:	7e 72                	jle    0x100351c
 10034aa:	90                   	nop
 10034ab:	ff a0 23 19 2c de    	jmpq   *-0x21d3e6dd(%rax)
 10034b1:	19 2d e6 87 a2 08    	sbb    %ebp,0x8a287e6(%rip)        # 0x9a2bc9d
 10034b7:	08 d6                	or     %dl,%dh
 10034b9:	eb bc                	jmp    0x1003477
 10034bb:	41 62                	rex.B (bad) 
 10034bd:	64 60                	fs (bad) 
 10034bf:	32 15 dc 63 64 1f    	xor    0x1f6463dc(%rip),%dl        # 0x206498a1
 10034c5:	b7 d3                	mov    $0xd3,%bh
 10034c7:	24 c7                	and    $0xc7,%al
 10034c9:	93                   	xchg   %eax,%ebx
 10034ca:	52                   	push   %rdx
 10034cb:	9d                   	popfq  
 10034cc:	92                   	xchg   %eax,%edx
 10034cd:	44 ba 11 94 4c 22    	rex.R mov $0x224c9411,%edx
 10034d3:	25 06 c5 8a 12       	and    $0x128ac506,%eax
 10034d8:	95                   	xchg   %eax,%ebp
 10034d9:	e7 6b                	out    %eax,$0x6b
 10034db:	82                   	(bad)  
 10034dc:	b3 07                	mov    $0x7,%bl
 10034de:	a8 d3                	test   $0xd3,%al
 10034e0:	fe 09                	decb   (%rcx)
 10034e2:	50                   	push   %rax
 10034e3:	bc d1 f0 7c 6a       	mov    $0x6a7cf0d1,%esp
 10034e8:	9f                   	lahf   
 10034e9:	43 f1                	rex.XB icebp 
 10034eb:	b3 10                	mov    $0x10,%bl
 10034ed:	b5 ec                	mov    $0xec,%ch
 10034ef:	99                   	cltd   
 10034f0:	e4 c7                	in     $0xc7,%al
 10034f2:	14 cb                	adc    $0xcb,%al
 10034f4:	dc ed                	fsubr  %st,%st(5)
 10034f6:	df 35 39 78 9a 3d    	fbstp  0x3d9a7839(%rip)        # 0x3e9aad35
 10034fc:	48 d4                	rex.W (bad) 
 10034fe:	f1                   	icebp  
 10034ff:	45 50                	rex.RB push %r8
 1003501:	9e                   	sahf   
 1003502:	6f                   	outsl  %ds:(%rsi),(%dx)
 1003503:	f8                   	clc    
 1003504:	d8 15 8c 46 b7 11    	fcoms  0x11b7468c(%rip)        # 0x12b77b96
 100350a:	b7 94                	mov    $0x94,%bh
 100350c:	5d                   	pop    %rbp
 100350d:	b6 db                	mov    $0xdb,%dh
 100350f:	22 82 b4 d9 bc a5    	and    -0x5a43264c(%rdx),%al
 1003515:	2b a5 23 4c 4b 6e    	sub    0x6e4b4c23(%rbp),%esp
 100351b:	2a f8                	sub    %al,%bh
 100351d:	7b d2                	jnp    0x10034f1
 100351f:	dd 4d fc             	fisttpll -0x4(%rbp)
 1003522:	f5                   	cmc    
 1003523:	01 fb                	add    %edi,%ebx
 1003525:	e0 aa                	loopne 0x10034d1
 1003527:	51                   	push   %rcx
 1003528:	d8 e7                	fsub   %st(7),%st
 100352a:	3a 38                	cmp    (%rax),%bh
 100352c:	b1 28                	mov    $0x28,%cl
 100352e:	0e                   	(bad)  
 100352f:	9e                   	sahf   
 1003530:	1a 1a                	sbb    (%rdx),%bl
 1003532:	fe cc                	dec    %ah
 1003534:	ce                   	(bad)  
 1003535:	6d                   	insl   (%dx),%es:(%rdi)
 1003536:	3a 9d a3 57 3e b0    	cmp    -0x4fc1a85d(%rbp),%bl
 100353c:	41 80 2a 03          	subb   $0x3,(%r10)
 1003540:	7d bf                	jge    0x1003501
 1003542:	7b b0                	jnp    0x10034f4
 1003544:	fa                   	cli    
 1003545:	3b 65 54             	cmp    0x54(%rbp),%esp
 1003548:	c2 49 1f             	retq   $0x1f49
 100354b:	9f                   	lahf   
 100354c:	5d                   	pop    %rbp
 100354d:	59                   	pop    %rcx
 100354e:	e8 7f c5 8d ae       	callq  0xffffffffaf8dfad2
 1003553:	bc ef 28 ba 7b       	mov    $0x7bba28ef,%esp
 1003558:	d0 6f a4             	shrb   -0x5c(%rdi)
 100355b:	f1                   	icebp  
 100355c:	03 dd                	add    %ebp,%ebx
 100355e:	4f                   	rex.WRXB
 100355f:	9b                   	fwait
 1003560:	68 ab a8 1d 96       	pushq  $0xffffffff961da8ab
 1003565:	1e                   	(bad)  
 1003566:	eb 33                	jmp    0x100359b
 1003568:	59                   	pop    %rcx
 1003569:	5a                   	pop    %rdx
 100356a:	54                   	push   %rsp
 100356b:	22 99 b0 d4 ef 23    	and    0x23efd4b0(%rcx),%bl
 1003571:	f1                   	icebp  
 1003572:	90                   	nop
 1003573:	7e c8                	jle    0x100353d
 1003575:	7a 9b                	jp     0x1003512
 1003577:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1003578:	01 db                	add    %ebx,%ebx
 100357a:	96                   	xchg   %eax,%esi
 100357b:	c2 d6 3c             	retq   $0x3cd6
 100357e:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 100357f:	e4 1e                	in     $0x1e,%al
 1003581:	fc                   	cld    
 1003582:	6e                   	outsb  %ds:(%rsi),(%dx)
 1003583:	23 41 21             	and    0x21(%rcx),%eax
 1003586:	dc 67 0d             	fsubl  0xd(%rdi)
 1003589:	9d                   	popfq  
 100358a:	47 ac                	rex.RXB lods %ds:(%rsi),%al
 100358c:	41 20 d0             	and    %dl,%r8b
 100358f:	bf 86 94 a8 dd       	mov    $0xdda89486,%edi
 1003594:	b7 9e                	mov    $0x9e,%bh
 1003596:	7f a0                	jg     0x1003538
 1003598:	72 55                	jb     0x10035ef
 100359a:	37                   	(bad)  
 100359b:	72 28                	jb     0x10035c5
 100359d:	d4                   	(bad)  
 100359e:	0c fc                	or     $0xfc,%al
 10035a0:	05 65 c9 7b e2       	add    $0xe27bc965,%eax
 10035a5:	99                   	cltd   
 10035a6:	2b 40 60             	sub    0x60(%rax),%eax
 10035a9:	7a 80                	jp     0x100352b
 10035ab:	72 6d                	jb     0x100361a
 10035ad:	53                   	push   %rbx
 10035ae:	e6 58                	out    %al,$0x58
 10035b0:	c5 ec bc             	(bad)
 10035b3:	3f                   	(bad)  
 10035b4:	e5 94                	in     $0x94,%eax
 10035b6:	83 0a c5             	orl    $0xffffffc5,(%rdx)
 10035b9:	ae                   	scas   %es:(%rdi),%al
 10035ba:	76 bf                	jbe    0x100357b
 10035bc:	5e                   	pop    %rsi
 10035bd:	8a 6d af             	mov    -0x51(%rbp),%ch
 10035c0:	1f                   	(bad)  
 10035c1:	6d                   	insl   (%dx),%es:(%rdi)
 10035c2:	19 c8                	sbb    %ecx,%eax
 10035c4:	2e ba fa 2a 94 6a    	cs mov $0x6a942afa,%edx
 10035ca:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10035cb:	c3                   	retq   
 10035cc:	3d 58 8f d4 af       	cmp    $0xafd48f58,%eax
 10035d1:	50                   	push   %rax
 10035d2:	eb 04                	jmp    0x10035d8
 10035d4:	7b 5c                	jnp    0x1003632
 10035d6:	c1 9e 68 c1 e8 32 ae 	rcrl   $0xae,0x32e8c168(%rsi)
 10035dd:	b2 44                	mov    $0x44,%dl
 10035df:	fc                   	cld    
 10035e0:	db 87 97 2a f9 a8    	fildl  -0x5706d569(%rdi)
 10035e6:	c8 bd 65 d0          	enterq $0x65bd,$0xd0
 10035ea:	6f                   	outsl  %ds:(%rsi),(%dx)
 10035eb:	7c 89                	jl     0x1003576
 10035ed:	51                   	push   %rcx
 10035ee:	32 60 0f             	xor    0xf(%rax),%ah
 10035f1:	98                   	cwtl   
 10035f2:	84 2f                	test   %ch,(%rdi)
 10035f4:	31 e4                	xor    %esp,%esp
 10035f6:	f5                   	cmc    
 10035f7:	9d                   	popfq  
 10035f8:	fe                   	(bad)  
 10035f9:	2a 6e d8             	sub    -0x28(%rsi),%ch
 10035fc:	f1                   	icebp  
 10035fd:	bb bd bc 2d ec       	mov    $0xec2dbcbd,%ebx
 1003602:	f3 3f                	repz (bad) 
 1003604:	c7                   	(bad)  
 1003605:	76 9b                	jbe    0x10035a2
 1003607:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1003608:	c4                   	(bad)  
 1003609:	d9 fe                	fsin   
 100360b:	a2 7c 68 b7 10 52 35 	movabs %al,0x1902355210b7687c
 1003612:	02 19 
 1003614:	98                   	cwtl   
 1003615:	3f                   	(bad)  
 1003616:	13 e1                	adc    %ecx,%esp
 1003618:	31 8b 21 94 2a b7    	xor    %ecx,-0x48d56bdf(%rbx)
 100361e:	ee                   	out    %al,(%dx)
 100361f:	ca 2d 3c             	lret   $0x3c2d
 1003622:	9e                   	sahf   
 1003623:	70 5c                	jo     0x1003681
 1003625:	14 23                	adc    $0x23,%al
 1003627:	6e                   	outsb  %ds:(%rsi),(%dx)
 1003628:	30 77 f2             	xor    %dh,-0xe(%rdi)
 100362b:	07                   	(bad)  
 100362c:	14 d9                	adc    $0xd9,%al
 100362e:	ea                   	(bad)  
 100362f:	a1 67 b7 12 47 f2 7f 	movabs 0xad6d7ff24712b767,%eax
 1003636:	6d ad 
 1003638:	13 36                	adc    (%rsi),%esi
 100363a:	e1 32                	loope  0x100366e
 100363c:	94                   	xchg   %eax,%esp
 100363d:	02 40 75             	add    0x75(%rax),%al
 1003640:	87 59 f0             	xchg   %ebx,-0x10(%rcx)
 1003643:	54                   	push   %rsp
 1003644:	ac                   	lods   %ds:(%rsi),%al
 1003645:	39 93 e4 61 d7 72    	cmp    %edx,0x72d761e4(%rbx)
 100364b:	1c c6                	sbb    $0xc6,%al
 100364d:	cf                   	iret   
 100364e:	de a5 72 f5 2b a9    	fisubs -0x56d40a8e(%rbp)
 1003654:	66 30 14 9e          	data16 xor %dl,(%rsi,%rbx,4)
 1003658:	cf                   	iret   
 1003659:	27                   	(bad)  
 100365a:	e8 0b 9c c6 8d       	callq  0xffffffff8ec6d26a
 100365f:	5d                   	pop    %rbp
 1003660:	be 75 f9 50 c5       	mov    $0xc550f975,%esi
 1003665:	37                   	(bad)  
 1003666:	88 ec                	mov    %ch,%ah
 1003668:	3b 60 06             	cmp    0x6(%rax),%esp
 100366b:	e5 37                	in     $0x37,%eax
 100366d:	ff 6c 16 ed          	ljmp   *-0x13(%rsi,%rdx,1)
 1003671:	2f                   	(bad)  
 1003672:	4c 33 5f ef          	xor    -0x11(%rdi),%r11
 1003676:	c5 2c 94             	(bad)
 1003679:	1a e8                	sbb    %al,%ch
 100367b:	0c 0d                	or     $0xd,%al
 100367d:	77 3b                	ja     0x10036ba
 100367f:	ae                   	scas   %es:(%rdi),%al
 1003680:	ec                   	in     (%dx),%al
 1003681:	3b 84 36 eb f2 db ce 	cmp    -0x31240d15(%rsi,%rsi,1),%eax
 1003688:	81 09 3e 84 b3 d9    	orl    $0xd9b3843e,(%rcx)
 100368e:	27                   	(bad)  
 100368f:	c9                   	leaveq 
 1003690:	e4 9e                	in     $0x9e,%al
 1003692:	a1 d5 b9 2e d9 98 67 	movabs 0x9b656798d92eb9d5,%eax
 1003699:	65 9b 
 100369b:	f9                   	stc    
 100369c:	1a 36                	sbb    (%rsi),%dh
 100369e:	68 57 70 78 72       	pushq  $0x72787057
 10036a3:	9d                   	popfq  
 10036a4:	92                   	xchg   %eax,%edx
 10036a5:	2e 23 e9             	cs and %ecx,%ebp
 10036a8:	32 ba 1d f3 75 ae    	xor    -0x518a0ce3(%rdx),%bh
 10036ae:	09 99 00 1e 0c ab    	or     %ebx,-0x54f3e200(%rcx)
 10036b4:	5f                   	pop    %rdi
 10036b5:	ae                   	scas   %es:(%rdi),%al
 10036b6:	ab                   	stos   %eax,%es:(%rdi)
 10036b7:	d7                   	xlat   %ds:(%rbx)
 10036b8:	27                   	(bad)  
 10036b9:	93                   	xchg   %eax,%ebx
 10036ba:	67 8b 0c a7          	mov    (%edi,%eiz,4),%ecx
 10036be:	a8 25                	test   $0x25,%al
 10036c0:	f9                   	stc    
 10036c1:	6d                   	insl   (%dx),%es:(%rdi)
 10036c2:	bd 2c 8e fa a2       	mov    $0xa2fa8e2c,%ebp
 10036c7:	77 e6                	ja     0x10036af
 10036c9:	f7 3d a0 8c c9 b2    	idivl  -0x4d367360(%rip)        # 0xffffffffb3c9c36f
 10036cf:	ef                   	out    %eax,(%dx)
 10036d0:	b0 e1                	mov    $0xe1,%al
 10036d2:	49 10 31             	rex.WB adc %sil,(%r9)
 10036d5:	9a                   	(bad)  
 10036d6:	54                   	push   %rsp
 10036d7:	0a ae 71 07 d2 dc    	or     -0x232df88f(%rsi),%ch
 10036dd:	f8                   	clc    
 10036de:	a2 60 53 df bd e2 48 	movabs %al,0x9fd948e2bddf5360
 10036e5:	d9 9f 
 10036e7:	a9 97 b5 9c 4c       	test   $0x4c9cb597,%eax
 10036ec:	fd                   	std    
 10036ed:	ca 0f cd             	lret   $0xcd0f
 10036f0:	13 44 26 18          	adc    0x18(%rsi,%riz,1),%eax
 10036f4:	d2 1e                	rcrb   %cl,(%rsi)
 10036f6:	f2 ba 6c 6f ba c8    	repnz mov $0xc8ba6f6c,%edx
 10036fc:	d6                   	(bad)  
 10036fd:	8c e7                	mov    %fs,%edi
 10036ff:	54                   	push   %rsp
 1003700:	dd 97 eb d4 43 75    	fstl   0x7543d4eb(%rdi)
 1003706:	f3 1b 09             	repz sbb (%rcx),%ecx
 1003709:	4b 11 a8 dd 69 66 5b 	rex.WXB adc %rbp,0x5b6669dd(%r8)
 1003710:	f9                   	stc    
 1003711:	06                   	(bad)  
 1003712:	20 46 e7             	and    %al,-0x19(%rsi)
 1003715:	0d b7 05 a4 9c       	or     $0x9ca405b7,%eax
 100371a:	f0 1b c8             	lock sbb %eax,%ecx
 100371d:	d1 4a a8             	rorl   -0x58(%rdx)
 1003720:	62                   	(bad)  
 1003721:	e8 88 7e 34 e1       	callq  0xffffffffe234b5ae
 1003726:	f9                   	stc    
 1003727:	99                   	cltd   
 1003728:	8b de                	mov    %esi,%ebx
 100372a:	5e                   	pop    %rsi
 100372b:	bc 56 9a 0c 82       	mov    $0x820c9a56,%esp
 1003730:	c5 42 e5             	(bad)
 1003733:	07                   	(bad)  
 1003734:	95                   	xchg   %eax,%ebp
 1003735:	52                   	push   %rdx
 1003736:	0d 0f 1d bf ae       	or     $0xaebf1d0f,%eax
 100373b:	eb 52                	jmp    0x100378f
 100373d:	c8 52 7b ad          	enterq $0x7b52,$0xad
 1003741:	26 f1                	es icebp 
 1003743:	da 6f 14             	fisubrl 0x14(%rdi)
 1003746:	fa                   	cli    
 1003747:	30 2d 91 21 81 c5    	xor    %ch,-0x3a7ede6f(%rip)        # 0xffffffffc68158de
 100374d:	4e 7d 25             	rex.WRX jge 0x1003775
 1003750:	23 a1 bc ba 57 ac    	and    -0x53a84544(%rcx),%esp
 1003756:	94                   	xchg   %eax,%esp
 1003757:	37                   	(bad)  
 1003758:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1003759:	0c 99                	or     $0x99,%al
 100375b:	72 67                	jb     0x10037c4
 100375d:	2d 13 39 7f 61       	sub    $0x617f3913,%eax
 1003762:	bb ec 18 66 01       	mov    $0x16618ec,%ebx
 1003767:	9a                   	(bad)  
 1003768:	e6 a4                	out    %al,$0xa4
 100376a:	c6                   	(bad)  
 100376b:	93                   	xchg   %eax,%ebx
 100376c:	76 7a                	jbe    0x10037e8
 100376e:	c0 ff 9a             	sar    $0x9a,%bh
 1003771:	fd                   	std    
 1003772:	94                   	xchg   %eax,%esp
 1003773:	57                   	push   %rdi
 1003774:	2d 1a 27 7a 0e       	sub    $0xe7a271a,%eax
 1003779:	ab                   	stos   %eax,%es:(%rdi)
 100377a:	53                   	push   %rbx
 100377b:	bd f8 6a 7f 11       	mov    $0x117f6af8,%ebp
 1003780:	1c 90                	sbb    $0x90,%al
 1003782:	fc                   	cld    
 1003783:	84 32                	test   %dh,(%rdx)
 1003785:	8f                   	(bad)  
 1003786:	ef                   	out    %eax,(%dx)
 1003787:	fd                   	std    
 1003788:	01 67 dd             	add    %esp,-0x23(%rdi)
 100378b:	2a 45 ad             	sub    -0x53(%rbp),%al
 100378e:	c8 b0 12 2e          	enterq $0x12b0,$0x2e
 1003792:	09 e9                	or     %ebp,%ecx
 1003794:	c2 ee 94             	retq   $0x94ee
 1003797:	ed                   	in     (%dx),%eax
 1003798:	9b                   	fwait
 1003799:	36 78 ce             	ss js  0x100376a
 100379c:	8a 7d 10             	mov    0x10(%rbp),%bh
 100379f:	db b3 02 da 6b d1    	(bad)  -0x2e9425fe(%rbx)
 10037a5:	52                   	push   %rdx
 10037a6:	74 e4                	je     0x100378c
 10037a8:	e9 e9 da 15 a0       	jmpq   0xffffffffa1161296
 10037ad:	bd 21 44 c9 7c       	mov    $0x7cc94421,%ebp
 10037b2:	04 6f                	add    $0x6f,%al
 10037b4:	74 9e                	je     0x1003754
 10037b6:	45 c4                	rex.RB (bad) 
 10037b8:	84 06                	test   %al,(%rsi)
 10037ba:	30 ee                	xor    %ch,%dh
 10037bc:	58                   	pop    %rax
 10037bd:	09 b2 5b 94 b3 3d    	or     %esi,0x3db3945b(%rdx)
 10037c3:	4f c4                	rex.WRXB (bad) 
 10037c5:	90                   	nop
 10037c6:	b6 70                	mov    $0x70,%dh
 10037c8:	54                   	push   %rsp
 10037c9:	1e                   	(bad)  
 10037ca:	ec                   	in     (%dx),%al
 10037cb:	65 be 5f 94 5f a6    	gs mov $0xa65f945f,%esi
 10037d1:	e1 70                	loope  0x1003843
 10037d3:	88 fe                	mov    %bh,%dh
 10037d5:	1a db                	sbb    %bl,%bl
 10037d7:	75 4e                	jne    0x1003827
 10037d9:	7f ac                	jg     0x1003787
 10037db:	f5                   	cmc    
 10037dc:	98                   	cwtl   
 10037dd:	5e                   	pop    %rsi
 10037de:	26 d4                	es (bad) 
 10037e0:	fb                   	sti    
 10037e1:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10037e2:	ed                   	in     (%dx),%eax
 10037e3:	db 4e fb             	fisttpl -0x5(%rsi)
 10037e6:	cc                   	int3   
 10037e7:	d3 3d ff 92 1d 15    	sarl   %cl,0x151d92ff(%rip)        # 0x161dcaec
 10037ed:	84 c2                	test   %al,%dl
 10037ef:	79 5e                	jns    0x100384f
 10037f1:	fc                   	cld    
 10037f2:	01 84 e4 84 b7 21 85 	add    %eax,-0x7ade487c(%rsp,%riz,8)
 10037f9:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10037fa:	e4 25                	in     $0x25,%al
 10037fc:	7c 47                	jl     0x1003845
 10037fe:	6b 47 2d f9          	imul   $0xfffffff9,0x2d(%rdi),%eax
 1003802:	ae                   	scas   %es:(%rdi),%al
 1003803:	43 12 d0             	rex.XB adc %r8b,%dl
 1003806:	aa                   	stos   %al,%es:(%rdi)
 1003807:	6f                   	outsl  %ds:(%rsi),(%dx)
 1003808:	47 ec                	rex.RXB in (%dx),%al
 100380a:	2b 35 c5 88 d1 3b    	sub    0x3bd188c5(%rip),%esi        # 0x3cd1c0d5
 1003810:	82                   	(bad)  
 1003811:	30 33                	xor    %dh,(%rbx)
 1003813:	25 ed 9c 5b 1b       	and    $0x1b5b9ced,%eax
 1003818:	f7 34 69             	divl   (%rcx,%rbp,2)
 100381b:	d8 14 e3             	fcoms  (%rbx,%riz,8)
 100381e:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100381f:	37                   	(bad)  
 1003820:	f1                   	icebp  
 1003821:	b2 79                	mov    $0x79,%dl
 1003823:	2c d8                	sub    $0xd8,%al
 1003825:	f9                   	stc    
 1003826:	af                   	scas   %es:(%rdi),%eax
 1003827:	44 bc 7a 0b ca bb    	rex.R mov $0xbbca0b7a,%esp
 100382d:	9e                   	sahf   
 100382e:	60                   	(bad)  
 100382f:	58                   	pop    %rax
 1003830:	81 ae b4 09 84 6a ff 	subl   $0x6d8956ff,0x6a8409b4(%rsi)
 1003837:	56 89 6d 
 100383a:	7c 55                	jl     0x1003891
 100383c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100383d:	2d bd ac 0b 25       	sub    $0x250bacbd,%eax
 1003842:	36 7b ab             	ss jnp 0x10037f0
 1003845:	ed                   	in     (%dx),%eax
 1003846:	75 7e                	jne    0x10038c6
 1003848:	ba 6d 3b 42 7a       	mov    $0x7a423b6d,%edx
 100384d:	d7                   	xlat   %ds:(%rbx)
 100384e:	3e 6d                	ds insl (%dx),%es:(%rdi)
 1003850:	b2 ee                	mov    $0xee,%dl
 1003852:	66 c3                	retw   
 1003854:	f0 fd                	lock std 
 1003856:	c1 5e 66 eb          	rcrl   $0xeb,0x66(%rsi)
 100385a:	b9 ac 32 c9 e7       	mov    $0xe7c932ac,%ecx
 100385f:	72 1f                	jb     0x1003880
 1003861:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1003862:	1b fd                	sbb    %ebp,%edi
 1003864:	7f 57                	jg     0x10038bd
 1003866:	17                   	(bad)  
 1003867:	d5                   	(bad)  
 1003868:	78 94                	js     0x10037fe
 100386a:	7e 4e                	jle    0x10038ba
 100386c:	12 0a                	adc    (%rdx),%cl
 100386e:	01 57 6f             	add    %edx,0x6f(%rdi)
 1003871:	75 0c                	jne    0x100387f
 1003873:	9a                   	(bad)  
 1003874:	fc                   	cld    
 1003875:	9c                   	pushfq 
 1003876:	9c                   	pushfq 
 1003877:	ff 11                	callq  *(%rcx)
 1003879:	c9                   	leaveq 
 100387a:	d1 f0                	shl    %eax
 100387c:	d9 00                	flds   (%rax)
 100387e:	39 80 ac a1 62 68    	cmp    %eax,0x6862a1ac(%rax)
 1003884:	2b 73 fc             	sub    -0x4(%rbx),%esi
 1003887:	f3 95                	repz xchg %eax,%ebp
 1003889:	67 f4                	addr32 hlt 
 100388b:	13 ca                	adc    %edx,%ecx
 100388d:	4f 1b b8 48 7e 9f 15 	rex.WRXB sbb 0x159f7e48(%r8),%r15
 1003894:	be 7d 7a bf 9d       	mov    $0x9dbf7a7d,%esi
 1003899:	e4 a5                	in     $0xa5,%al
 100389b:	bc 70 6d 44 d1       	mov    $0xd1446d70,%esp
 10038a0:	70 c1                	jo     0x1003863
 10038a2:	e1 94                	loope  0x1003838
 10038a4:	e5 9f                	in     $0x9f,%eax
 10038a6:	4d fa                	rex.WRB cli 
 10038a8:	b6 93                	mov    $0x93,%dh
 10038aa:	48 3d be 75 39 fe    	cmp    $0xfffffffffe3975be,%rax
 10038b0:	0b e2                	or     %edx,%esp
 10038b2:	95                   	xchg   %eax,%ebp
 10038b3:	70 c9                	jo     0x100387e
 10038b5:	db 47 04             	fildl  0x4(%rdi)
 10038b8:	f1                   	icebp  
 10038b9:	d7                   	xlat   %ds:(%rbx)
 10038ba:	db 1c 7b             	fistpl (%rbx,%rdi,2)
 10038bd:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 10038be:	20 eb                	and    %ch,%bl
 10038c0:	f6 53 98             	notb   -0x68(%rbx)
 10038c3:	bb 63 10 d6 57       	mov    $0x57d61063,%ebx
 10038c8:	73 1f                	jae    0x10038e9
 10038ca:	72 7c                	jb     0x1003948
 10038cc:	81 3a dd b6 31 0a    	cmpl   $0xa31b6dd,(%rdx)
 10038d2:	1b 02                	sbb    (%rdx),%eax
 10038d4:	1d 5d b0 cc 43       	sbb    $0x43ccb05d,%eax
 10038d9:	98                   	cwtl   
 10038da:	16                   	(bad)  
 10038db:	c3                   	retq   
 10038dc:	fc                   	cld    
 10038dd:	13 d6                	adc    %esi,%edx
 10038df:	d3 dd                	rcr    %cl,%ebp
 10038e1:	44                   	rex.R
 10038e2:	46 97                	rex.RX xchg %eax,%edi
 10038e4:	e0 ac                	loopne 0x1003892
 10038e6:	50                   	push   %rax
 10038e7:	e7 7b                	out    %eax,$0x7b
 10038e9:	e9 00 6a 93 f9       	jmpq   0xfffffffffa93a2ee
 10038ee:	99                   	cltd   
 10038ef:	39 e9                	cmp    %ebp,%ecx
 10038f1:	d8 08                	fmuls  (%rax)
 10038f3:	2f                   	(bad)  
 10038f4:	13 d2                	adc    %edx,%edx
 10038f6:	fc                   	cld    
 10038f7:	17                   	(bad)  
 10038f8:	98                   	cwtl   
 10038f9:	a8 aa                	test   $0xaa,%al
 10038fb:	50                   	push   %rax
 10038fc:	7d 34                	jge    0x1003932
 10038fe:	06                   	(bad)  
 10038ff:	07                   	(bad)  
 1003900:	83 2c c0 68          	subl   $0x68,(%rax,%rax,8)
 1003904:	32 4b a7             	xor    -0x59(%rbx),%cl
 1003907:	cb                   	lret   
 1003908:	ee                   	out    %al,(%dx)
 1003909:	9c                   	pushfq 
 100390a:	3d 10 1a 91 19       	cmp    $0x19911a10,%eax
 100390f:	0e                   	(bad)  
 1003910:	bb a5 95 8f 27       	mov    $0x278f95a5,%ebx
 1003915:	37                   	(bad)  
 1003916:	b0 b5                	mov    $0xb5,%al
 1003918:	77 6b                	ja     0x1003985
 100391a:	70 f6                	jo     0x1003912
 100391c:	9f                   	lahf   
 100391d:	da 05 79 cd 75 97    	fiaddl -0x688a3287(%rip)        # 0xffffffff9876069c
 1003923:	ae                   	scas   %es:(%rdi),%al
 1003924:	29 ec                	sub    %ebp,%esp
 1003926:	05 1e f1 88 80       	add    $0x8088f11e,%eax
 100392b:	78 ae                	js     0x10038db
 100392d:	b9 58 61 9c 40       	mov    $0x409c6158,%ecx
 1003932:	b3 47                	mov    $0x47,%bl
 1003934:	11 79 1d             	adc    %edi,0x1d(%rcx)
 1003937:	9f                   	lahf   
 1003938:	09 90 5b 06 b6 54    	or     %edx,0x54b6065b(%rax)
 100393e:	12 01                	adc    (%rcx),%al
 1003940:	0a 53 97             	or     -0x69(%rbx),%dl
 1003943:	6b e8 78             	imul   $0x78,%eax,%ebp
 1003946:	21 d4                	and    %edx,%esp
 1003948:	88 80 31 20 74 fc    	mov    %al,-0x38bdfcf(%rax)
 100394e:	ae                   	scas   %es:(%rdi),%al
 100394f:	e6 9d                	out    %al,$0x9d
 1003951:	55                   	push   %rbp
 1003952:	d0 4a a3             	rorb   -0x5d(%rdx)
 1003955:	ea                   	(bad)  
 1003956:	cf                   	iret   
 1003957:	f1                   	icebp  
 1003958:	1e                   	(bad)  
 1003959:	bc 4b fc df 1e       	mov    $0x1edffc4b,%esp
 100395e:	6a e2                	pushq  $0xffffffffffffffe2
 1003960:	5a                   	pop    %rdx
 1003961:	cb                   	lret   
 1003962:	2f                   	(bad)  
 1003963:	a9 0a b3 a4 37       	test   $0x37a4b30a,%eax
 1003968:	49 35 47 20 5e 6f    	rex.WB xor $0x6f5e2047,%rax
 100396e:	49 96                	xchg   %rax,%r14
 1003970:	4e 34 8f             	rex.WRX xor $0x8f,%al
 1003973:	9e                   	sahf   
 1003974:	f3 b6 f0             	repz mov $0xf0,%dh
 1003977:	72 42                	jb     0x10039bb
 1003979:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 100397a:	3f                   	(bad)  
 100397b:	e5 f0                	in     $0xf0,%eax
 100397d:	eb a9                	jmp    0x1003928
 100397f:	39 5a 45             	cmp    %ebx,0x45(%rdx)
 1003982:	bd f3 09 5b 7e       	mov    $0x7e5b09f3,%ebp
 1003987:	4a 3a ad ab d5 aa 45 	rex.WX cmp 0x45aad5ab(%rbp),%bpl
 100398e:	1e                   	(bad)  
 100398f:	37                   	(bad)  
 1003990:	2d a3 38 76 77       	sub    $0x777638a3,%eax
 1003995:	6c                   	insb   (%dx),%es:(%rdi)
 1003996:	dd ec                	fucomp %st(4)
 1003998:	bb a5 d7 c6 ed       	mov    $0xedc6d7a5,%ebx
 100399d:	25 fa f7 44 be       	and    $0xbe44f7fa,%eax
 10039a2:	4f                   	rex.WRXB
 10039a3:	48 a7                	cmpsq  %es:(%rdi),%ds:(%rsi)
 10039a5:	05 75 32 1e 6c       	add    $0x6c1e3275,%eax
 10039aa:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10039ab:	d7                   	xlat   %ds:(%rbx)
 10039ac:	f8                   	clc    
 10039ad:	95                   	xchg   %eax,%ebp
 10039ae:	a2 c0 8c ec 32 44 a6 	movabs %al,0xee26a64432ec8cc0
 10039b5:	26 ee 
 10039b7:	9f                   	lahf   
 10039b8:	e6 d4                	out    %al,$0xd4
 10039ba:	50                   	push   %rax
 10039bb:	46 72 4b             	rex.RX jb 0x1003a09
 10039be:	6f                   	outsl  %ds:(%rsi),(%dx)
 10039bf:	d6                   	(bad)  
 10039c0:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 10039c1:	70 03                	jo     0x10039c6
 10039c3:	af                   	scas   %es:(%rdi),%eax
 10039c4:	20 0a                	and    %cl,(%rdx)
 10039c6:	f8                   	clc    
 10039c7:	78 60                	js     0x1003a29
 10039c9:	57                   	push   %rdi
 10039ca:	60                   	(bad)  
 10039cb:	60                   	(bad)  
 10039cc:	58                   	pop    %rax
 10039cd:	37                   	(bad)  
 10039ce:	9b                   	fwait
 10039cf:	52                   	push   %rdx
 10039d0:	d3 5c a4 91          	rcrl   %cl,-0x6f(%rsp,%riz,4)
 10039d4:	d0 ff                	sar    %bh
 10039d6:	2d 95 58 2c 29       	sub    $0x292c5895,%eax
 10039db:	a3 6e d0 32 b7 11 44 	movabs %eax,0x86d94411b732d06e
 10039e2:	d9 86 
 10039e4:	93                   	xchg   %eax,%ebx
 10039e5:	55                   	push   %rbp
 10039e6:	ed                   	in     (%dx),%eax
 10039e7:	00 9d 28 25 58 96    	add    %bl,-0x69a7dad8(%rbp)
 10039ed:	15 80 bc 8f 7f       	adc    $0x7f8fbc80,%eax
 10039f2:	af                   	scas   %es:(%rdi),%eax
 10039f3:	d2 ae 6e 54 02 cb    	shrb   %cl,-0x34fdab92(%rsi)
 10039f9:	73 d3                	jae    0x10039ce
 10039fb:	e2 03                	loop   0x1003a00
 10039fd:	e6 06                	out    %al,$0x6
 10039ff:	0e                   	(bad)  
 1003a00:	0e                   	(bad)  
 1003a01:	2e 37                	cs (bad) 
 1003a03:	3b f9                	cmp    %ecx,%edi
 1003a05:	bf 48 e6 aa 03       	mov    $0x3aae648,%edi
 1003a0a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1003a0b:	d5                   	(bad)  
 1003a0c:	a8 f1                	test   $0xf1,%al
 1003a0e:	25 48 1e bf 9f       	and    $0x9fbf1e48,%eax
 1003a13:	be d0 cc f1 4f       	mov    $0x4ff1ccd0,%esi
 1003a18:	9c                   	pushfq 
 1003a19:	3a 8f db bd 66 a4    	cmp    -0x5b994225(%rdi),%cl
 1003a1f:	a8 c2                	test   $0xc2,%al
 1003a21:	77 a3                	ja     0x10039c6
 1003a23:	32 31                	xor    (%rcx),%dh
 1003a25:	ba 76 c3 a6 00       	mov    $0xa6c376,%edx
 1003a2a:	fc                   	cld    
 1003a2b:	78 5e                	js     0x1003a8b
 1003a2d:	94                   	xchg   %eax,%esp
 1003a2e:	f0 6e                	lock outsb %ds:(%rsi),(%dx)
 1003a30:	c1 1d 2d 4a 88 7f 48 	rcrl   $0x48,0x7f884a2d(%rip)        # 0x80888464
 1003a37:	16                   	(bad)  
 1003a38:	9b                   	fwait
 1003a39:	7a 1a                	jp     0x1003a55
 1003a3b:	03 32                	add    (%rdx),%esi
 1003a3d:	c7                   	(bad)  
 1003a3e:	53                   	push   %rbx
 1003a3f:	89 9a 61 2d 6a 96    	mov    %ebx,-0x6995d29f(%rdx)
 1003a45:	58                   	pop    %rax
 1003a46:	c0 78 92 14          	sarb   $0x14,-0x6e(%rax)
 1003a4a:	70 8c                	jo     0x10039d8
 1003a4c:	df fc                	(bad)  
 1003a4e:	02 ef                	add    %bh,%ch
 1003a50:	11 0a                	adc    %ecx,(%rdx)
 1003a52:	cd d4                	int    $0xd4
 1003a54:	9d                   	popfq  
 1003a55:	5e                   	pop    %rsi
 1003a56:	4e d6                	rex.WRX (bad) 
 1003a58:	27                   	(bad)  
 1003a59:	14 bc                	adc    $0xbc,%al
 1003a5b:	1a 62 3a             	sbb    0x3a(%rdx),%ah
 1003a5e:	99                   	cltd   
 1003a5f:	83 32 d8             	xorl   $0xffffffd8,(%rdx)
 1003a62:	0b 70 30             	or     0x30(%rax),%esi
 1003a65:	9f                   	lahf   
 1003a66:	71 1d                	jno    0x1003a85
 1003a68:	8a 67 02             	mov    0x2(%rdi),%ah
 1003a6b:	98                   	cwtl   
 1003a6c:	73 6c                	jae    0x1003ada
 1003a6e:	7e d1                	jle    0x1003a41
 1003a70:	c6                   	(bad)  
 1003a71:	21 53 7e             	and    %edx,0x7e(%rbx)
 1003a74:	11 74 9f 4b          	adc    %esi,0x4b(%rdi,%rbx,4)
 1003a78:	b6 a4                	mov    $0xa4,%dh
 1003a7a:	74 31                	je     0x1003aad
 1003a7c:	45 bd 5f 06 f9 e6    	rex.RB mov $0xe6f9065f,%r13d
 1003a82:	4e 72 d0             	rex.WRX jb 0x1003a55
 1003a85:	c5 bf bc             	(bad)
 1003a88:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1003a89:	48 9a                	rex.W (bad) 
 1003a8b:	8a d4                	mov    %ah,%dl
 1003a8d:	dc d3                	(bad)  
 1003a8f:	4b ee                	rex.WXB out %al,(%dx)
 1003a91:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1003a92:	ba 9e 72 89 c6       	mov    $0xc689729e,%edx
 1003a97:	85 06                	test   %eax,(%rsi)
 1003a99:	ec                   	in     (%dx),%al
 1003a9a:	25 e4 20 2f 18       	and    $0x182f20e4,%eax
 1003a9f:	80 35 7a 7a 45 93 5a 	xorb   $0x5a,-0x6cba8586(%rip)        # 0xffffffff9445b520
 1003aa6:	86 1e                	xchg   %bl,(%rsi)
 1003aa8:	88 1c 11             	mov    %bl,(%rcx,%rdx,1)
 1003aab:	4a 8f                	rex.WX (bad) 
 1003aad:	f6 ae 4a 66 f6 06    	imulb  0x6f6664a(%rsi)
 1003ab3:	08 4e 70             	or     %cl,0x70(%rsi)
 1003ab6:	61                   	(bad)  
 1003ab7:	63 32                	movsxd (%rdx),%esi
 1003ab9:	5e                   	pop    %rsi
 1003aba:	d9 97 89 4a 08 c9    	fsts   -0x36f7b577(%rdi)
 1003ac0:	dc 21                	fsubl  (%rcx)
 1003ac2:	2d c4 e5 60 c2       	sub    $0xc260e5c4,%eax
 1003ac7:	2d 6b e0 4f 75       	sub    $0x754fe06b,%eax
 1003acc:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1003acd:	96                   	xchg   %eax,%esi
 1003ace:	b3 65                	mov    $0x65,%bl
 1003ad0:	f2 22 7a 35          	repnz and 0x35(%rdx),%bh
 1003ad4:	21 c1                	and    %eax,%ecx
 1003ad6:	af                   	scas   %es:(%rdi),%eax
 1003ad7:	61                   	(bad)  
 1003ad8:	13 f1                	adc    %ecx,%esi
 1003ada:	fc                   	cld    
 1003adb:	74 1a                	je     0x1003af7
 1003add:	a3 f9 28 c1 48 02 1c 	movabs %eax,0x27111c0248c128f9
 1003ae4:	11 27 
 1003ae6:	83 cb 4e             	or     $0x4e,%ebx
 1003ae9:	75 3b                	jne    0x1003b26
 1003aeb:	d6                   	(bad)  
 1003aec:	8b 0b                	mov    (%rbx),%ecx
 1003aee:	8f                   	(bad)  
 1003aef:	bc ec 4f bd 30       	mov    $0x30bd4fec,%esp
 1003af4:	12 ca                	adc    %dl,%cl
 1003af6:	6d                   	insl   (%dx),%es:(%rdi)
 1003af7:	6c                   	insb   (%dx),%es:(%rdi)
 1003af8:	65 c9                	gs leaveq 
 1003afa:	ae                   	scas   %es:(%rdi),%al
 1003afb:	53                   	push   %rbx
 1003afc:	7e d7                	jle    0x1003ad5
 1003afe:	76 fe                	jbe    0x1003afe
 1003b00:	19 2c d8             	sbb    %ebp,(%rax,%rbx,8)
 1003b03:	e7 e8                	out    %eax,$0xe8
 1003b05:	6d                   	insl   (%dx),%es:(%rdi)
 1003b06:	51                   	push   %rcx
 1003b07:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1003b08:	e0 a2                	loopne 0x1003aac
 1003b0a:	95                   	xchg   %eax,%ebp
 1003b0b:	21 23                	and    %esp,(%rbx)
 1003b0d:	31 e6                	xor    %esp,%esi
 1003b0f:	ed                   	in     (%dx),%eax
 1003b10:	f2 cf                	repnz iret 
 1003b12:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1003b13:	49 04 72             	rex.WB add $0x72,%al
 1003b16:	0f 13 1b             	movlps %xmm3,(%rbx)
 1003b19:	7f e5                	jg     0x1003b00
 1003b1b:	9b                   	fwait
 1003b1c:	ea                   	(bad)  
 1003b1d:	c1 6e a7 0d          	shrl   $0xd,-0x59(%rsi)
 1003b21:	b4 5f                	mov    $0x5f,%ah
 1003b23:	98                   	cwtl   
 1003b24:	e2 36                	loop   0x1003b5c
 1003b26:	95                   	xchg   %eax,%ebp
 1003b27:	60                   	(bad)  
 1003b28:	6f                   	outsl  %ds:(%rsi),(%dx)
 1003b29:	77 b2                	ja     0x1003add
 1003b2b:	45                   	rex.RB
 1003b2c:	f0 7e 1b             	lock jle 0x1003b4a
 1003b2f:	5a                   	pop    %rdx
 1003b30:	96                   	xchg   %eax,%esi
 1003b31:	0e                   	(bad)  
 1003b32:	0c 2d                	or     $0x2d,%al
 1003b34:	f5                   	cmc    
 1003b35:	7a a8                	jp     0x1003adf
 1003b37:	f7 de                	neg    %esi
 1003b39:	d9 12                	fsts   (%rdx)
 1003b3b:	40 ff 8f 73 d9 d5 11 	rex decl 0x11d5d973(%rdi)
 1003b42:	02 78 50             	add    0x50(%rax),%bh
 1003b45:	79 02                	jns    0x1003b49
 1003b47:	e5 34                	in     $0x34,%eax
 1003b49:	00 21                	add    %ah,(%rcx)
 1003b4b:	19 97 0f e9 82 93    	sbb    %edx,-0x6c7d16f1(%rdi)
 1003b51:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1003b52:	41 e1 17             	rex.B loope 0x1003b6c
 1003b55:	00 77 93             	add    %dh,-0x6d(%rdi)
 1003b58:	a1 23 76 28 2e dc af 	movabs 0x4cd5afdc2e287623,%eax
 1003b5f:	d5 4c 
 1003b61:	c6                   	(bad)  
 1003b62:	70 e7                	jo     0x1003b4b
 1003b64:	88 a3 28 83 7d d0    	mov    %ah,-0x2f827cd8(%rbx)
 1003b6a:	2a 9a fd 7f a1 31    	sub    0x31a17ffd(%rdx),%bl
 1003b70:	37                   	(bad)  
 1003b71:	23 b2 65 30 1c 21    	and    0x211c3065(%rdx),%esi
 1003b77:	f7 73 34             	divl   0x34(%rbx)
 1003b7a:	d7                   	xlat   %ds:(%rbx)
 1003b7b:	d7                   	xlat   %ds:(%rbx)
 1003b7c:	4b 16                	rex.WXB (bad) 
 1003b7e:	6a de                	pushq  $0xffffffffffffffde
 1003b80:	7d 48                	jge    0x1003bca
 1003b82:	d1 e0                	shl    %eax
 1003b84:	c0 cc 55             	ror    $0x55,%ah
 1003b87:	28 e3                	sub    %ah,%bl
 1003b89:	39 7a 82             	cmp    %edi,-0x7e(%rdx)
 1003b8c:	4c 0c fb             	rex.WR or $0xfb,%al
 1003b8f:	4c 20 9a a3 1a c6 66 	rex.WR and %r11b,0x66c61aa3(%rdx)
 1003b96:	02 85 3d 1a 68 c4    	add    -0x3b97e5c3(%rbp),%al
 1003b9c:	d1 89 99 36 a3 68    	rorl   0x68a33699(%rcx)
 1003ba2:	a0 49 e4 2b ea 38 df 	movabs 0xd015df38ea2be449,%al
 1003ba9:	15 d0 
 1003bab:	88 b1 f6 02 1b 74    	mov    %dh,0x741b02f6(%rcx)
 1003bb1:	a0 cc da 5e ac 5e 58 	movabs 0xa839585eac5edacc,%al
 1003bb8:	39 a8 
 1003bba:	b0 e7                	mov    $0xe7,%al
 1003bbc:	3e 42 d5             	ds rex.X (bad) 
 1003bbf:	68 9a 9e 29 ed       	pushq  $0xffffffffed299e9a
 1003bc4:	93                   	xchg   %eax,%ebx
 1003bc5:	8e d8                	mov    %eax,%ds
 1003bc7:	88 62 65             	mov    %ah,0x65(%rdx)
 1003bca:	ac                   	lods   %ds:(%rsi),%al
 1003bcb:	53                   	push   %rbx
 1003bcc:	64 ed                	fs in  (%dx),%eax
 1003bce:	46 f6 90 2f 6f 21 6a 	rex.RX notb 0x6a216f2f(%rax)
 1003bd5:	6f                   	outsl  %ds:(%rsi),(%dx)
 1003bd6:	0c fa                	or     $0xfa,%al
 1003bd8:	e3 88                	jrcxz  0x1003b62
 1003bda:	af                   	scas   %es:(%rdi),%eax
 1003bdb:	8e 28                	mov    (%rax),%gs
 1003bdd:	c8 f3 b9 41          	enterq $0xb9f3,$0x41
 1003be1:	82                   	(bad)  
 1003be2:	f4                   	hlt    
 1003be3:	cd 89                	int    $0x89
 1003be5:	91                   	xchg   %eax,%ecx
 1003be6:	3e 01 db             	ds add %ebx,%ebx
 1003be9:	27                   	(bad)  
 1003bea:	75 00                	jne    0x1003bec
 1003bec:	01 36                	add    %esi,(%rsi)
 1003bee:	92                   	xchg   %eax,%edx
 1003bef:	f2 4f a3 b6 20 31 05 	repnz rex.WRXB movabs %rax,0x79a239ae053120b6
 1003bf6:	ae 39 a2 79 
 1003bfa:	0d 7b dc f0 0a       	or     $0xaf0dc7b,%eax
 1003bff:	7e cc                	jle    0x1003bcd
 1003c01:	26 37                	es (bad) 
 1003c03:	0e                   	(bad)  
 1003c04:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1003c05:	75 7a                	jne    0x1003c81
 1003c07:	7a ac                	jp     0x1003bb5
 1003c09:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1003c0a:	aa                   	stos   %al,%es:(%rdi)
 1003c0b:	85 6c 61 58          	test   %ebp,0x58(%rcx,%riz,2)
 1003c0f:	c2 a6 70             	retq   $0x70a6
 1003c12:	55                   	push   %rbp
 1003c13:	69 84 74 fe 5c ff c5 	imul   $0xcb767489,-0x3a00a302(%rsp,%rsi,2),%eax
 1003c1a:	89 74 76 cb 
 1003c1e:	ed                   	in     (%dx),%eax
 1003c1f:	cf                   	iret   
 1003c20:	89 f5                	mov    %esi,%ebp
 1003c22:	50                   	push   %rax
 1003c23:	c0 df 7a             	rcr    $0x7a,%bh
 1003c26:	02 77 d7             	add    -0x29(%rdi),%dh
 1003c29:	f0 6c                	lock insb (%dx),%es:(%rdi)
 1003c2b:	0f dc ba 66 61 91 54 	paddusb 0x54916166(%rdx),%mm7
 1003c32:	cd 93                	int    $0x93
 1003c34:	aa                   	stos   %al,%es:(%rdi)
 1003c35:	72 28                	jb     0x1003c5f
 1003c37:	c7                   	(bad)  
 1003c38:	a1 07 7a 68 12 df 34 	movabs 0xd21d34df12687a07,%eax
 1003c3f:	1d d2 
 1003c41:	25 bc 59 da 06       	and    $0x6da59bc,%eax
 1003c46:	a1 11 9c e1 93 ad 36 	movabs 0x2bf136ad93e19c11,%eax
 1003c4d:	f1 2b 
 1003c4f:	36 2c d3             	ss sub $0xd3,%al
 1003c52:	3c a4                	cmp    $0xa4,%al
 1003c54:	92                   	xchg   %eax,%edx
 1003c55:	09 d7                	or     %edx,%edi
 1003c57:	aa                   	stos   %al,%es:(%rdi)
 1003c58:	28 f3                	sub    %dh,%bl
 1003c5a:	27                   	(bad)  
 1003c5b:	61                   	(bad)  
 1003c5c:	68 d2 70 38 76       	pushq  $0x763870d2
 1003c61:	26 03 21             	add    %es:(%rcx),%esp
 1003c64:	52                   	push   %rdx
 1003c65:	9a                   	(bad)  
 1003c66:	3d a3 93 ca 0d       	cmp    $0xdca93a3,%eax
 1003c6b:	78 7f                	js     0x1003cec
 1003c6d:	61                   	(bad)  
 1003c6e:	63 7c 14 d1          	movsxd -0x2f(%rsp,%rdx,1),%edi
 1003c72:	80 bc 92 52 2d 4f d4 	cmpb   $0xb2,-0x2bb0d2ae(%rdx,%rdx,4)
 1003c79:	b2 
 1003c7a:	81 e4 66 b9 f4 27    	and    $0x27f4b966,%esp
 1003c80:	74 bf                	je     0x1003c41
 1003c82:	5b                   	pop    %rbx
 1003c83:	fb                   	sti    
 1003c84:	8a 24 b6             	mov    (%rsi,%rsi,4),%ah
 1003c87:	4a 81 09 cf 61 d7 c7 	rex.WX orq $0xffffffffc7d761cf,(%rcx)
 1003c8e:	49 e1 06             	rex.WB loope 0x1003c97
 1003c91:	1e                   	(bad)  
 1003c92:	90                   	nop
 1003c93:	21 21                	and    %esp,(%rcx)
 1003c95:	59                   	pop    %rcx
 1003c96:	2b 6c e4 b2          	sub    -0x4e(%rsp,%riz,8),%ebp
 1003c9a:	88 24 b7             	mov    %ah,(%rdi,%rsi,4)
 1003c9d:	61                   	(bad)  
 1003c9e:	0b 3f                	or     (%rdi),%edi
 1003ca0:	a8 06                	test   $0x6,%al
 1003ca2:	7d a0                	jge    0x1003c44
 1003ca4:	81 6b 09 4c b5 8f b8 	subl   $0xb88fb54c,0x9(%rbx)
 1003cab:	1e                   	(bad)  
 1003cac:	e9 a1 81 a8 1b       	jmpq   0x1ca8be52
 1003cb1:	4e 61                	rex.WRX (bad) 
 1003cb3:	db 32                	(bad)  (%rdx)
 1003cb5:	8e f6                	mov    %esi,%?
 1003cb7:	c2 e1 fa             	retq   $0xfae1
 1003cba:	55                   	push   %rbp
 1003cbb:	06                   	(bad)  
 1003cbc:	3f                   	(bad)  
 1003cbd:	29 c8                	sub    %ecx,%eax
 1003cbf:	4c 32 b0 48 95 98 83 	rex.WR xor -0x7c676ab8(%rax),%r14b
 1003cc6:	37                   	(bad)  
 1003cc7:	f1                   	icebp  
 1003cc8:	21 32                	and    %esi,(%rdx)
 1003cca:	ff 43 f2             	incl   -0xe(%rbx)
 1003ccd:	af                   	scas   %es:(%rdi),%eax
 1003cce:	15 d6 5e 91 99       	adc    $0x99915ed6,%eax
 1003cd3:	b5 2f                	mov    $0x2f,%ch
 1003cd5:	99                   	cltd   
 1003cd6:	c1 d5 31             	rcl    $0x31,%ebp
 1003cd9:	e5 78                	in     $0x78,%eax
 1003cdb:	9a                   	(bad)  
 1003cdc:	d7                   	xlat   %ds:(%rbx)
 1003cdd:	ac                   	lods   %ds:(%rsi),%al
 1003cde:	0d f9 6f ba f2       	or     $0xf2ba6ff9,%eax
 1003ce3:	0b 2b                	or     (%rbx),%ebp
 1003ce5:	34 be                	xor    $0xbe,%al
 1003ce7:	94                   	xchg   %eax,%esp
 1003ce8:	fb                   	sti    
 1003ce9:	fa                   	cli    
 1003cea:	ab                   	stos   %eax,%es:(%rdi)
 1003ceb:	51                   	push   %rcx
 1003cec:	52                   	push   %rdx
 1003ced:	9d                   	popfq  
 1003cee:	3d 0d 6c 5e b4       	cmp    $0xb45e6c0d,%eax
 1003cf3:	e0 54                	loopne 0x1003d49
 1003cf5:	6e                   	outsb  %ds:(%rsi),(%dx)
 1003cf6:	3e 60                	ds (bad) 
 1003cf8:	bd 16 99 9c 6e       	mov    $0x6e9c9916,%ebp
 1003cfd:	bf b8 59 3a 99       	mov    $0x993a59b8,%edi
 1003d02:	5d                   	pop    %rbp
 1003d03:	6c                   	insb   (%dx),%es:(%rdi)
 1003d04:	02 a4 ed ad 63 e6 69 	add    0x69e663ad(%rbp,%rbp,8),%ah
 1003d0b:	cd 25                	int    $0x25
 1003d0d:	98                   	cwtl   
 1003d0e:	1a 14 81             	sbb    (%rcx,%rax,4),%dl
 1003d11:	41 b7 74             	mov    $0x74,%r15b
 1003d14:	5d                   	pop    %rbp
 1003d15:	9a                   	(bad)  
 1003d16:	67 10 a5 c8 96 df c0 	adc    %ah,-0x3f206938(%ebp)
 1003d1d:	ce                   	(bad)  
 1003d1e:	3b 5f 31             	cmp    0x31(%rdi),%ebx
 1003d21:	60                   	(bad)  
 1003d22:	35 b7 0e 7c ca       	xor    $0xca7c0eb7,%eax
 1003d27:	98                   	cwtl   
 1003d28:	58                   	pop    %rax
 1003d29:	de bd 5f d0 d8 de    	fidivrs -0x21272fa1(%rbp)
 1003d2f:	3a 06                	cmp    (%rsi),%al
 1003d31:	c2 b4 0b             	retq   $0xbb4
 1003d34:	bb 37 c6 b0 3a       	mov    $0x3ab0c637,%ebx
 1003d39:	89 f2                	mov    %esi,%edx
 1003d3b:	58                   	pop    %rax
 1003d3c:	25 e3 9d 02 6b       	and    $0x6b029de3,%eax
 1003d41:	c1 0d 48 8b 0a 40 04 	rorl   $0x4,0x400a8b48(%rip)        # 0x410ac890
 1003d48:	48                   	rex.W
 1003d49:	4e f6 69 c1          	rex.WRX imulb -0x3f(%rcx)
 1003d4d:	30 81 3e 94 5d 38    	xor    %al,0x385d943e(%rcx)
 1003d53:	db de                	fcmovnu %st(6),%st
 1003d55:	6d                   	insl   (%dx),%es:(%rdi)
 1003d56:	f8                   	clc    
 1003d57:	2d 0d fb d6 75       	sub    $0x75d6fb0d,%eax
 1003d5c:	f7 a4 f7 1e e1 52 e3 	mull   -0x1cad1ee2(%rdi,%rsi,8)
 1003d63:	a2 fe 2a 70 cd e8 76 	movabs %al,0xbd7076e8cd702afe
 1003d6a:	70 bd 
 1003d6c:	67 41 5a             	addr32 pop %r10
 1003d6f:	23 3f                	and    (%rdi),%edi
 1003d71:	ae                   	scas   %es:(%rdi),%al
 1003d72:	60                   	(bad)  
 1003d73:	d3 8c b6 45 fa c1 0b 	rorl   %cl,0xbc1fa45(%rsi,%rsi,4)
 1003d7a:	fd                   	std    
 1003d7b:	3a d1                	cmp    %cl,%dl
 1003d7d:	92                   	xchg   %eax,%edx
 1003d7e:	7d 66                	jge    0x1003de6
 1003d80:	de b4 08 eb c3 25 e4 	fidivs -0x1bda3c15(%rax,%rcx,1)
 1003d87:	b0 21                	mov    $0x21,%al
 1003d89:	78 da                	js     0x1003d65
 1003d8b:	0a 82 62 6c 7f db    	or     -0x2480939e(%rdx),%al
 1003d91:	2b 3f                	sub    (%rdi),%edi
 1003d93:	c5 a0 ea             	(bad)
 1003d96:	f4                   	hlt    
 1003d97:	6a 54                	pushq  $0x54
 1003d99:	70 f3                	jo     0x1003d8e
 1003d9b:	85 e7                	test   %esp,%edi
 1003d9d:	e5 7b                	in     $0x7b,%eax
 1003d9f:	5c                   	pop    %rsp
 1003da0:	20 e5                	and    %ah,%ch
 1003da2:	44 cb                	rex.R lret 
 1003da4:	7f ef                	jg     0x1003d95
 1003da6:	66 02 73 52          	data16 add 0x52(%rbx),%dh
 1003daa:	9d                   	popfq  
 1003dab:	95                   	xchg   %eax,%ebp
 1003dac:	38 fa                	cmp    %bh,%dl
 1003dae:	e8 b1 28 6b c7       	callq  0xffffffffc86b6664
 1003db3:	b7 37                	mov    $0x37,%bh
 1003db5:	6c                   	insb   (%dx),%es:(%rdi)
 1003db6:	13 6d e0             	adc    -0x20(%rbp),%ebp
 1003db9:	03 75 ed             	add    -0x13(%rbp),%esi
 1003dbc:	8b fd                	mov    %ebp,%edi
 1003dbe:	4c 6a 62             	rex.WR pushq $0x62
 1003dc1:	1f                   	(bad)  
 1003dc2:	4e 22 2f             	rex.WRX and (%rdi),%r13b
 1003dc5:	58                   	pop    %rax
 1003dc6:	92                   	xchg   %eax,%edx
 1003dc7:	ce                   	(bad)  
 1003dc8:	df 1e                	fistps (%rsi)
 1003dca:	d6                   	(bad)  
 1003dcb:	e0 c2                	loopne 0x1003d8f
 1003dcd:	e7 af                	out    %eax,$0xaf
 1003dcf:	50                   	push   %rax
 1003dd0:	ef                   	out    %eax,(%dx)
 1003dd1:	8f                   	(bad)  
 1003dd2:	53                   	push   %rbx
 1003dd3:	76 b9                	jbe    0x1003d8e
 1003dd5:	01 04 85 a1 eb 38 39 	add    %eax,0x3938eba1(,%rax,4)
 1003ddc:	87 7b 8c             	xchg   %edi,-0x74(%rbx)
 1003ddf:	3e 1d 47 1c 3a f0    	ds sbb $0xf03a1c47,%eax
 1003de5:	08 05 0a f7 bf 1a    	or     %al,0x1abff70a(%rip)        # 0x1bc034f5
 1003deb:	5f                   	pop    %rdi
 1003dec:	53                   	push   %rbx
 1003ded:	a1 90 f7 0b 88 d7 a9 	movabs 0xeda9a9d7880bf790,%eax
 1003df4:	a9 ed 
 1003df6:	e4 7d                	in     $0x7d,%al
 1003df8:	58                   	pop    %rax
 1003df9:	7d 8b                	jge    0x1003d86
 1003dfb:	40 5e                	rex pop %rsi
 1003dfd:	5f                   	pop    %rdi
 1003dfe:	50                   	push   %rax
 1003dff:	09 75 a4             	or     %esi,-0x5c(%rbp)
 1003e02:	13 ae c2 fa ed 4b    	adc    0x4bedfac2(%rsi),%ebp
 1003e08:	9b                   	fwait
 1003e09:	06                   	(bad)  
 1003e0a:	c8 34 cd 5f          	enterq $0xcd34,$0x5f
 1003e0e:	bd c5 c2 39 dd       	mov    $0xdd39c2c5,%ebp
 1003e13:	83 9b 44 79 7b 67 c7 	sbbl   $0xffffffc7,0x677b7944(%rbx)
 1003e1a:	1d 21 e9 2f 3d       	sbb    $0x3d2fe921,%eax
 1003e1f:	fc                   	cld    
 1003e20:	7d 93                	jge    0x1003db5
 1003e22:	4a 16                	rex.WX (bad) 
 1003e24:	8b 13                	mov    (%rbx),%edx
 1003e26:	36 ed                	ss in  (%dx),%eax
 1003e28:	8c 86 b9 fe 51 42    	mov    %es,0x4251feb9(%rsi)
 1003e2e:	d4                   	(bad)  
 1003e2f:	4a                   	rex.WX
 1003e30:	48 7e bc             	rex.W jle 0x1003def
 1003e33:	72 b5                	jb     0x1003dea
 1003e35:	f6 67 aa             	mulb   -0x56(%rdi)
 1003e38:	22 c0                	and    %al,%al
 1003e3a:	14 ce                	adc    $0xce,%al
 1003e3c:	e2 73                	loop   0x1003eb1
 1003e3e:	35 1a 15 ca 91       	xor    $0x91ca151a,%eax
 1003e43:	80 e5 fa             	and    $0xfa,%ch
 1003e46:	fe                   	(bad)  
 1003e47:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1003e48:	19 69 b7             	sbb    %ebp,-0x49(%rcx)
 1003e4b:	cb                   	lret   
 1003e4c:	ad                   	lods   %ds:(%rsi),%eax
 1003e4d:	89 fd                	mov    %edi,%ebp
 1003e4f:	90                   	nop
 1003e50:	ed                   	in     (%dx),%eax
 1003e51:	6b 3b 5a             	imul   $0x5a,(%rbx),%edi
 1003e54:	f2 2b 1b             	repnz sub (%rbx),%ebx
 1003e57:	13 06                	adc    (%rsi),%eax
 1003e59:	b0 8e                	mov    $0x8e,%al
 1003e5b:	b6 ce                	mov    $0xce,%dh
 1003e5d:	8b 87 95 7d 3d c1    	mov    -0x3ec2826b(%rdi),%eax
 1003e63:	c4                   	(bad)  
 1003e64:	c5 fd 91             	(bad)  
 1003e67:	7e 4c                	jle    0x1003eb5
 1003e69:	f3 e6 e0             	repz out %al,$0xe0
 1003e6c:	71 3a                	jno    0x1003ea8
 1003e6e:	12 ae 7a b2 ad 80    	adc    -0x7f524d86(%rsi),%ch
 1003e74:	79 6d                	jns    0x1003ee3
 1003e76:	9a                   	(bad)  
 1003e77:	d6                   	(bad)  
 1003e78:	62 03                	(bad)  
 1003e7a:	50                   	push   %rax
 1003e7b:	5a                   	pop    %rdx
 1003e7c:	34 4f                	xor    $0x4f,%al
 1003e7e:	7b d8                	jnp    0x1003e58
 1003e80:	ca dd 84             	lret   $0x84dd
 1003e83:	e1 eb                	loope  0x1003e70
 1003e85:	19 b3 fb 37 99 4b    	sbb    %esi,0x4b9937fb(%rbx)
 1003e8b:	25 a0 4d 5b 5d       	and    $0x5d5b4da0,%eax
 1003e90:	82                   	(bad)  
 1003e91:	cf                   	iret   
 1003e92:	19 ba 8d 06 3a b4    	sbb    %edi,-0x4bc5f973(%rdx)
 1003e98:	3d 67 26 d7 fb       	cmp    $0xfbd72667,%eax
 1003e9d:	f8                   	clc    
 1003e9e:	07                   	(bad)  
 1003e9f:	7b fc                	jnp    0x1003e9d
 1003ea1:	22 40 57             	and    0x57(%rax),%al
 1003ea4:	96                   	xchg   %eax,%esi
 1003ea5:	5d                   	pop    %rbp
 1003ea6:	21 3c b3             	and    %edi,(%rbx,%rsi,4)
 1003ea9:	c0 4b b3 b3          	rorb   $0xb3,-0x4d(%rbx)
 1003ead:	b0 95                	mov    $0x95,%al
 1003eaf:	8a c2                	mov    %dl,%al
 1003eb1:	05 c6 bd 9f a5       	add    $0xa59fbdc6,%eax
 1003eb6:	11 33                	adc    %esi,(%rbx)
 1003eb8:	4e ec                	rex.WRX in (%dx),%al
 1003eba:	de 46 36             	fiadds 0x36(%rsi)
 1003ebd:	21 7e 7a             	and    %edi,0x7a(%rsi)
 1003ec0:	13 c7                	adc    %edi,%eax
 1003ec2:	13 9f 26 51 a6 be    	adc    -0x4159aeda(%rdi),%ebx
 1003ec8:	dc b4 d2 9f 7e c2 67 	fdivl  0x67c27e9f(%rdx,%rdx,8)
 1003ecf:	4f d0 5e 7e          	rex.WRXB rcrb 0x7e(%r14)
 1003ed3:	22 9d 75 1c 7e 30    	and    0x307e1c75(%rbp),%bl
 1003ed9:	d8 8e 2c cd 95 fa    	fmuls  -0x56a32d4(%rsi)
 1003edf:	48 5e                	rex.W pop %rsi
 1003ee1:	68 8e f4 72 f8       	pushq  $0xfffffffff872f48e
 1003ee6:	2b 7b 5f             	sub    0x5f(%rbx),%edi
 1003ee9:	52                   	push   %rdx
 1003eea:	f6 1a                	negb   (%rdx)
 1003eec:	63 a6 fe ce c5 42    	movsxd 0x42c5cefe(%rsi),%esp
 1003ef2:	d4                   	(bad)  
 1003ef3:	1b 40 6b             	sbb    0x6b(%rax),%eax
 1003ef6:	de 96 a3 27 c5 70    	ficoms 0x70c527a3(%rsi)
 1003efc:	8c 7f 8c             	mov    %?,-0x74(%rdi)
 1003eff:	07                   	(bad)  
 1003f00:	d2 ef                	shr    %cl,%bh
 1003f02:	5c                   	pop    %rsp
 1003f03:	f1                   	icebp  
 1003f04:	14 6a                	adc    $0x6a,%al
 1003f06:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1003f07:	60                   	(bad)  
 1003f08:	31 b0 86 ba 3c ff    	xor    %esi,-0xc3457a(%rax)
 1003f0e:	19 4c a5 b8          	sbb    %ecx,-0x48(%rbp,%riz,4)
 1003f12:	6c                   	insb   (%dx),%es:(%rdi)
 1003f13:	3d 9e 57 c1 fa       	cmp    $0xfac1579e,%eax
 1003f18:	6a 7d                	pushq  $0x7d
 1003f1a:	77 bc                	ja     0x1003ed8
 1003f1c:	d8 97 39 63 06 f0    	fcoms  -0xff99cc7(%rdi)
 1003f22:	e6 a2                	out    %al,$0xa2
 1003f24:	d8 e2                	fsub   %st(2),%st
 1003f26:	28 09                	sub    %cl,(%rcx)
 1003f28:	7d a0                	jge    0x1003eca
 1003f2a:	2b 1d 22 93 3d 47    	sub    0x473d9322(%rip),%ebx        # 0x483dd252
 1003f30:	86 e5                	xchg   %ah,%ch
 1003f32:	b3 0e                	mov    $0xe,%bl
 1003f34:	c6                   	(bad)  
 1003f35:	98                   	cwtl   
 1003f36:	eb 58                	jmp    0x1003f90
 1003f38:	36 73 4e             	ss jae 0x1003f89
 1003f3b:	5d                   	pop    %rbp
 1003f3c:	e6 25                	out    %al,$0x25
 1003f3e:	45 b4 52             	rex.RB mov $0x52,%r12b
 1003f41:	cd a2                	int    $0xa2
 1003f43:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1003f44:	ae                   	scas   %es:(%rdi),%al
 1003f45:	7f 68                	jg     0x1003faf
 1003f47:	3b 5b df             	cmp    -0x21(%rbx),%ebx
 1003f4a:	84 da                	test   %bl,%dl
 1003f4c:	1d 02 f9 f9 f8       	sbb    $0xf8f9f902,%eax
 1003f51:	02 a3 fb e1 9f 0f    	add    0xf9fe1fb(%rbx),%ah
 1003f57:	ba e4 e0 d0 d8       	mov    $0xd8d0e0e4,%edx
 1003f5c:	72 2a                	jb     0x1003f88
 1003f5e:	63 7d e3             	movsxd -0x1d(%rbp),%edi
 1003f61:	46 23 86 28 49 2c a4 	rex.RX and -0x5bd3b6d8(%rsi),%r8d
 1003f68:	7e 9e                	jle    0x1003f08
 1003f6a:	28 19                	sub    %bl,(%rcx)
 1003f6c:	27                   	(bad)  
 1003f6d:	e5 cb                	in     $0xcb,%eax
 1003f6f:	9a                   	(bad)  
 1003f70:	cc                   	int3   
 1003f71:	b9 02 bb 9d f6       	mov    $0xf69dbb02,%ecx
 1003f76:	fb                   	sti    
 1003f77:	18 73 f4             	sbb    %dh,-0xc(%rbx)
 1003f7a:	f7 87 38 76 ce fc fb 	testl  $0x85deb8fb,-0x33189c8(%rdi)
 1003f81:	b8 de 85 
 1003f84:	85 06                	test   %eax,(%rsi)
 1003f86:	4f 2d e8 12 e5 17    	rex.WRXB sub $0x17e512e8,%rax
 1003f8c:	9b                   	fwait
 1003f8d:	9e                   	sahf   
 1003f8e:	14 c6                	adc    $0xc6,%al
 1003f90:	0b d0                	or     %eax,%edx
 1003f92:	e7 97                	out    %eax,$0x97
 1003f94:	94                   	xchg   %eax,%esp
 1003f95:	6c                   	insb   (%dx),%es:(%rdi)
 1003f96:	2e 30 51 1e          	xor    %dl,%cs:0x1e(%rcx)
 1003f9a:	27                   	(bad)  
 1003f9b:	94                   	xchg   %eax,%esp
 1003f9c:	ac                   	lods   %ds:(%rsi),%al
 1003f9d:	ee                   	out    %al,(%dx)
 1003f9e:	9d                   	popfq  
 1003f9f:	84 a8 07 4b ff a1    	test   %ch,-0x5e00b4f9(%rax)
 1003fa5:	31 93 8c 0f 4c bd    	xor    %edx,-0x42b3f074(%rbx)
 1003fab:	68 6b 4e 40 47       	pushq  $0x47404e6b
 1003fb0:	50                   	push   %rax
 1003fb1:	14 f8                	adc    $0xf8,%al
 1003fb3:	e4 c0                	in     $0xc0,%al
 1003fb5:	f5                   	cmc    
 1003fb6:	5d                   	pop    %rbp
 1003fb7:	0e                   	(bad)  
 1003fb8:	e2 af                	loop   0x1003f69
 1003fba:	f3 68 1f e5 b0 44    	repz pushq $0x44b0e51f
 1003fc0:	f5                   	cmc    
 1003fc1:	5d                   	pop    %rbp
 1003fc2:	10 aa 53 49 aa 8e    	adc    %ch,-0x7155b6ad(%rdx)
 1003fc8:	1b dc                	sbb    %esp,%ebx
 1003fca:	9e                   	sahf   
 1003fcb:	be 01 db e2 43       	mov    $0x43e2db01,%esi
 1003fd0:	f1                   	icebp  
 1003fd1:	ea                   	(bad)  
 1003fd2:	9f                   	lahf   
 1003fd3:	b3 7d                	mov    $0x7d,%bl
 1003fd5:	b4 69                	mov    $0x69,%ah
 1003fd7:	cb                   	lret   
 1003fd8:	ba d5 a1 18 4a       	mov    $0x4a18a1d5,%edx
 1003fdd:	dc 68 2f             	fsubrl 0x2f(%rax)
 1003fe0:	dc 72 25             	fdivl  0x25(%rdx)
 1003fe3:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1003fe4:	fb                   	sti    
 1003fe5:	d8 44 7a 68          	fadds  0x68(%rdx,%rdi,2)
 1003fe9:	d0 51 44             	rclb   0x44(%rcx)
 1003fec:	2f                   	(bad)  
 1003fed:	4a e0 a8             	rex.WX loopne 0x1003f98
 1003ff0:	2b c2                	sub    %edx,%eax
 1003ff2:	6f                   	outsl  %ds:(%rsi),(%dx)
 1003ff3:	21 21                	and    %esp,(%rcx)
 1003ff5:	9b                   	rex
 1003ff6:	40                   	rex
 1003ff7:	26 48 c8 fa 09 01    	es rex.W enterq $0x9fa,$0x1
 1003ffd:	83 2c d5 45 1a f2 f7 	subl   $0xffffff89,-0x80de5bb(,%rdx,8)
 1004004:	89 
 1004005:	00 56 8a             	add    %dl,-0x76(%rsi)
 1004008:	a3 d4 05 93 36 08 19 	movabs %eax,0x62fb1908369305d4
 100400f:	fb 62 
 1004011:	e5 22                	in     $0x22,%eax
 1004013:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1004014:	2e bf 94 21 40 f6    	cs mov $0xf6402194,%edi
 100401a:	2f                   	(bad)  
 100401b:	41 db 6c 7e b2       	fldt   -0x4e(%r14,%rdi,2)
 1004020:	40 ae                	scas   %es:(%rdi),%al
 1004022:	49 6a c6             	rex.WB pushq $0xffffffffffffffc6
 1004025:	f4                   	hlt    
 1004026:	b8 5d cd a5 73       	mov    $0x73a5cd5d,%eax
 100402b:	1b 80 54 2e dc 18    	sbb    0x18dc2e54(%rax),%eax
 1004031:	2d 5a 0b 4f df       	sub    $0xdf4f0b5a,%eax
 1004036:	d5                   	(bad)  
 1004037:	bc 3e 85 5a 94       	mov    $0x945a853e,%esp
 100403c:	a2 ff ee 81 50 8e aa 	movabs %al,0x7486aa8e5081eeff
 1004043:	86 74 
 1004045:	f9                   	stc    
 1004046:	98                   	cwtl   
 1004047:	f5                   	cmc    
 1004048:	36 aa                	ss stos %al,%es:(%rdi)
 100404a:	c4                   	(bad)  
 100404b:	18 47 f3             	sbb    %al,-0xd(%rdi)
 100404e:	b8 00 97 85 dd       	mov    $0xdd859700,%eax
 1004053:	6a e7                	pushq  $0xffffffffffffffe7
 1004055:	73 12                	jae    0x1004069
 1004057:	c2 20 72             	retq   $0x7220
 100405a:	0f 78 04 57          	vmread %rax,(%rdi,%rdx,2)
 100405e:	41 a6                	rex.B cmpsb %es:(%rdi),%ds:(%rsi)
 1004060:	1c ab                	sbb    $0xab,%al
 1004062:	36 f9                	ss stc 
 1004064:	27                   	(bad)  
 1004065:	d8 98 49 05 c0 62    	fcomps 0x62c00549(%rax)
 100406b:	21 8f 2a 66 21 00    	and    %ecx,0x21662a(%rdi)
 1004071:	ad                   	lods   %ds:(%rsi),%eax
 1004072:	6d                   	insl   (%dx),%es:(%rdi)
 1004073:	e6 7b                	out    %al,$0x7b
 1004075:	80 37 28             	xorb   $0x28,(%rdi)
 1004078:	de 1c 6a             	ficomps (%rdx,%rbp,2)
 100407b:	f4                   	hlt    
 100407c:	6d                   	insl   (%dx),%es:(%rdi)
 100407d:	35 dc f0 d1 e9       	xor    $0xe9d1f0dc,%eax
 1004082:	07                   	(bad)  
 1004083:	75 57                	jne    0x10040dc
 1004085:	7e 6f                	jle    0x10040f6
 1004087:	7d 9e                	jge    0x1004027
 1004089:	d3 8e c1 04 0a 4c    	rorl   %cl,0x4c0a04c1(%rsi)
 100408f:	2e 80 cb 40          	cs or  $0x40,%bl
 1004093:	3f                   	(bad)  
 1004094:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1004095:	bf 80 98 0c b9       	mov    $0xb90c9880,%edi
 100409a:	7c 2a                	jl     0x10040c6
 100409c:	5b                   	pop    %rbx
 100409d:	8f                   	(bad)  
 100409e:	d1 63 71             	shll   0x71(%rbx)
 10040a1:	4b 52                	rex.WXB push %r10
 10040a3:	45 e2 8f             	rex.RB loop 0x1004035
 10040a6:	b5 65                	mov    $0x65,%ch
 10040a8:	16                   	(bad)  
 10040a9:	06                   	(bad)  
 10040aa:	f4                   	hlt    
 10040ab:	1d c6 5f 6e 6a       	sbb    $0x6a6e5fc6,%eax
 10040b0:	f9                   	stc    
 10040b1:	81 52 ee 03 2c 75 84 	adcl   $0x84752c03,-0x12(%rdx)
 10040b8:	c5 6c 47             	(bad)
 10040bb:	91                   	xchg   %eax,%ecx
 10040bc:	5f                   	pop    %rdi
 10040bd:	80 49 c2 9e          	orb    $0x9e,-0x3e(%rcx)
 10040c1:	6c                   	insb   (%dx),%es:(%rdi)
 10040c2:	18 a2 00 32 a5 51    	sbb    %ah,0x51a53200(%rdx)
 10040c8:	95                   	xchg   %eax,%ebp
 10040c9:	78 2d                	js     0x10040f8
 10040cb:	f0 d7                	lock xlat %ds:(%rbx)
 10040cd:	bc 18 2f 55 87       	mov    $0x87552f18,%esp
 10040d2:	3f                   	(bad)  
 10040d3:	2d 30 d5 c8 1f       	sub    $0x1fc8d530,%eax
 10040d8:	d6                   	(bad)  
 10040d9:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10040da:	7a b1                	jp     0x100408d
 10040dc:	88 30                	mov    %dh,(%rax)
 10040de:	db 92 c0 99 cf 0f    	fistl  0xfcf99c0(%rdx)
 10040e4:	95                   	xchg   %eax,%ebp
 10040e5:	0a 42 d5             	or     -0x2b(%rdx),%al
 10040e8:	e6 e5                	out    %al,$0xe5
 10040ea:	46 34 86             	rex.RX xor $0x86,%al
 10040ed:	a8 a1                	test   $0xa1,%al
 10040ef:	3e 6b 01 e9          	imul   $0xffffffe9,%ds:(%rcx),%eax
 10040f3:	59                   	pop    %rcx
 10040f4:	d9 de                	(bad)  
 10040f6:	84 ba af 6b 1c d6    	test   %bh,-0x29e39451(%rdx)
 10040fc:	8a 08                	mov    (%rax),%cl
 10040fe:	33 8d 33 74 2c 65    	xor    0x652c7433(%rbp),%ecx
 1004104:	54                   	push   %rsp
 1004105:	37                   	(bad)  
 1004106:	c5 b3 14             	(bad)
 1004109:	be 90 2a 92 d7       	mov    $0xd7922a90,%esi
 100410e:	1e                   	(bad)  
 100410f:	f6 55 51             	notb   0x51(%rbp)
 1004112:	b8 dc 60 26 5b       	mov    $0x5b2660dc,%eax
 1004117:	63 e9                	movsxd %ecx,%ebp
 1004119:	00 5f 93             	add    %bl,-0x6d(%rdi)
 100411c:	ee                   	out    %al,(%dx)
 100411d:	19 90 43 1f 37 8f    	sbb    %edx,-0x70c8e0bd(%rax)
 1004123:	c6                   	(bad)  
 1004124:	a1 ca 37 5c f5 64 4f 	movabs 0x68444f64f55c37ca,%eax
 100412b:	44 68 
 100412d:	1f                   	(bad)  
 100412e:	80 9b ed 16 84 4d 88 	sbbb   $0x88,0x4d8416ed(%rbx)
 1004135:	1e                   	(bad)  
 1004136:	22 cb                	and    %bl,%cl
 1004138:	14 98                	adc    $0x98,%al
 100413a:	3a 7e dd             	cmp    -0x23(%rsi),%bh
 100413d:	d8 66 1b             	fsubs  0x1b(%rsi)
 1004140:	9b d8 b9 f4 5a 59 a9 	fdivrs -0x56a6a50c(%rcx)
 1004147:	43 cd 56             	rex.XB int $0x56
 100414a:	e3 da                	jrcxz  0x1004126
 100414c:	74 62                	je     0x10041b0
 100414e:	f2 c0 f4 0b          	repnz shl $0xb,%ah
 1004152:	27                   	(bad)  
 1004153:	f9                   	stc    
 1004154:	90                   	nop
 1004155:	5a                   	pop    %rdx
 1004156:	40 fc                	rex cld 
 1004158:	a9 8b 11 78 6f       	test   $0x6f78118b,%eax
 100415d:	95                   	xchg   %eax,%ebp
 100415e:	81 bb c4 10 ee 65 4a 	cmpl   $0x9b27a84a,0x65ee10c4(%rbx)
 1004165:	a8 27 9b 
 1004168:	07                   	(bad)  
 1004169:	0f 48 9b a0 ca 65 88 	cmovs  -0x779a3560(%rbx),%ebx
 1004170:	6f                   	outsl  %ds:(%rsi),(%dx)
 1004171:	20 e1                	and    %ah,%cl
 1004173:	1f                   	(bad)  
 1004174:	f7 4b 7c 6f 6b 73 16 	testl  $0x16736b6f,0x7c(%rbx)
 100417b:	e2 54                	loop   0x10041d1
 100417d:	72 71                	jb     0x10041f0
 100417f:	31 11                	xor    %edx,(%rcx)
 1004181:	98                   	cwtl   
 1004182:	6b e5 d0             	imul   $0xffffffd0,%ebp,%esp
 1004185:	17                   	(bad)  
 1004186:	58                   	pop    %rax
 1004187:	0c c1                	or     $0xc1,%al
 1004189:	a8 77                	test   $0x77,%al
 100418b:	92                   	xchg   %eax,%edx
 100418c:	fb                   	sti    
 100418d:	2b 81 5f 90 46 5a    	sub    0x5a46905f(%rcx),%eax
 1004193:	c7 83 3c cc f3 b5 b7 	movl   $0x4f62d7b7,-0x4a0c33c4(%rbx)
 100419a:	d7 62 4f 
 100419d:	d8 4c 58 3e          	fmuls  0x3e(%rax,%rbx,2)
 10041a1:	79 7a                	jns    0x100421d
 10041a3:	ca 11 44             	lret   $0x4411
 10041a6:	06                   	(bad)  
 10041a7:	47 eb 26             	rex.RXB jmp 0x10041d0
 10041aa:	2e 9c                	cs pushfq 
 10041ac:	7d 30                	jge    0x10041de
 10041ae:	e2 4a                	loop   0x10041fa
 10041b0:	6c                   	insb   (%dx),%es:(%rdi)
 10041b1:	b5 c8                	mov    $0xc8,%ch
 10041b3:	fa                   	cli    
 10041b4:	b4 ad                	mov    $0xad,%ah
 10041b6:	45 82                	rex.RB (bad) 
 10041b8:	d8 7f ce             	fdivrs -0x32(%rdi)
 10041bb:	ec                   	in     (%dx),%al
 10041bc:	f9                   	stc    
 10041bd:	0a e5                	or     %ch,%ah
 10041bf:	a2 b2 4d b0 dc 8c 09 	movabs %al,0x8483098cdcb04db2
 10041c6:	83 84 
 10041c8:	f0 72 6e             	lock jb 0x1004239
 10041cb:	b6 e4                	mov    $0xe4,%dh
 10041cd:	7b b0                	jnp    0x100417f
 10041cf:	9f                   	lahf   
 10041d0:	ed                   	in     (%dx),%eax
 10041d1:	1c d2                	sbb    $0xd2,%al
 10041d3:	e4 c5                	in     $0xc5,%al
 10041d5:	18 49 0c             	sbb    %cl,0xc(%rcx)
 10041d8:	11 ee                	adc    %ebp,%esi
 10041da:	4e                   	rex.WRX
 10041db:	65 ca a8 b4          	gs lret $0xb4a8
 10041df:	55                   	push   %rbp
 10041e0:	7a 3f                	jp     0x1004221
 10041e2:	19 38                	sbb    %edi,(%rax)
 10041e4:	fc                   	cld    
 10041e5:	51                   	push   %rcx
 10041e6:	48 f9                	rex.W stc 
 10041e8:	7b 34                	jnp    0x100421e
 10041ea:	38 34 f9             	cmp    %dh,(%rcx,%rdi,8)
 10041ed:	c6                   	(bad)  
 10041ee:	bd c6 ee 46 a1       	mov    $0xa146eec6,%ebp
 10041f3:	e8 44 fb 7c 9b       	callq  0xffffffff9c7d3d3c
 10041f8:	d6                   	(bad)  
 10041f9:	18 5b cc             	sbb    %bl,-0x34(%rbx)
 10041fc:	24 b7                	and    $0xb7,%al
 10041fe:	50                   	push   %rax
 10041ff:	47 a6                	rex.RXB cmpsb %es:(%rdi),%ds:(%rsi)
 1004201:	ec                   	in     (%dx),%al
 1004202:	71 31                	jno    0x1004235
 1004204:	f1                   	icebp  
 1004205:	e9 4c 6b 67 dc       	jmpq   0xffffffffdd67ad56
 100420a:	cf                   	iret   
 100420b:	bd 35 e4 99 07       	mov    $0x799e435,%ebp
 1004210:	df 28                	fildll (%rax)
 1004212:	e0 82                	loopne 0x1004196
 1004214:	e3 c5                	jrcxz  0x10041db
 1004216:	0e                   	(bad)  
 1004217:	6c                   	insb   (%dx),%es:(%rdi)
 1004218:	16                   	(bad)  
 1004219:	b5 8e                	mov    $0x8e,%ch
 100421b:	2c 14                	sub    $0x14,%al
 100421d:	d3 37                	shll   %cl,(%rdi)
 100421f:	64 c6                	fs (bad) 
 1004221:	e4 d2                	in     $0xd2,%al
 1004223:	59                   	pop    %rcx
 1004224:	01 e5                	add    %esp,%ebp
 1004226:	94                   	xchg   %eax,%esp
 1004227:	eb f2                	jmp    0x100421b
 1004229:	2a d3                	sub    %bl,%dl
 100422b:	58                   	pop    %rax
 100422c:	b7 97                	mov    $0x97,%bh
 100422e:	05 37 94 8e 11       	add    $0x118e9437,%eax
 1004233:	73 0f                	jae    0x1004244
 1004235:	00 86 98 f3 af 37    	add    %al,0x37aff398(%rsi)
 100423b:	c5 26 33             	(bad)
 100423e:	63 19                	movsxd (%rcx),%ebx
 1004240:	55                   	push   %rbp
 1004241:	88 9b 84 bc 85 96    	mov    %bl,-0x697a437c(%rbx)
 1004247:	9e                   	sahf   
 1004248:	75 b9                	jne    0x1004203
 100424a:	30 40 1a             	xor    %al,0x1a(%rax)
 100424d:	ad                   	lods   %ds:(%rsi),%eax
 100424e:	0f fd 91 8a 86 f3 90 	paddw  -0x6f0c7976(%rcx),%mm2
 1004255:	c4                   	(bad)  
 1004256:	ac                   	lods   %ds:(%rsi),%al
 1004257:	1a d0                	sbb    %al,%dl
 1004259:	51                   	push   %rcx
 100425a:	83 47 c5 2e          	addl   $0x2e,-0x3b(%rdi)
 100425e:	93                   	xchg   %eax,%ebx
 100425f:	f5                   	cmc    
 1004260:	1b f4                	sbb    %esp,%esi
 1004262:	ee                   	out    %al,(%dx)
 1004263:	45 11 9b ee 02 32 88 	adc    %r11d,-0x77cdfd12(%r11)
 100426a:	24 cd                	and    $0xcd,%al
 100426c:	ff e5                	jmpq   *%rbp
 100426e:	bd a8 74 6f b2       	mov    $0xb26f74a8,%ebp
 1004273:	aa                   	stos   %al,%es:(%rdi)
 1004274:	0d b7 76 99 20       	or     $0x209976b7,%eax
 1004279:	59                   	pop    %rcx
 100427a:	23 eb                	and    %ebx,%ebp
 100427c:	8c cf                	mov    %cs,%edi
 100427e:	66 25 e4 0b          	and    $0xbe4,%ax
 1004282:	7e 11                	jle    0x1004295
 1004284:	0b c0                	or     %eax,%eax
 1004286:	5b                   	pop    %rbx
 1004287:	20 24 70             	and    %ah,(%rax,%rsi,2)
 100428a:	97                   	xchg   %eax,%edi
 100428b:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 100428c:	ce                   	(bad)  
 100428d:	6c                   	insb   (%dx),%es:(%rdi)
 100428e:	9e                   	sahf   
 100428f:	4f 9f                	rex.WRXB lahf 
 1004291:	e9 0b 15 60 ed       	jmpq   0xffffffffee6057a1
 1004296:	e1 26                	loope  0x10042be
 1004298:	97                   	xchg   %eax,%edi
 1004299:	08 3a                	or     %bh,(%rdx)
 100429b:	bb fe b3 c7 23       	mov    $0x23c7b3fe,%ebx
 10042a0:	85 c6                	test   %eax,%esi
 10042a2:	e2 8d                	loop   0x1004231
 10042a4:	17                   	(bad)  
 10042a5:	98                   	cwtl   
 10042a6:	7b 8a                	jnp    0x1004232
 10042a8:	2d b4 59 90 70       	sub    $0x709059b4,%eax
 10042ad:	4b d7                	rex.WXB xlat %ds:(%rbx)
 10042af:	32 d6                	xor    %dh,%dl
 10042b1:	62                   	(bad)  
 10042b2:	39 03                	cmp    %eax,(%rbx)
 10042b4:	8e 67 83             	mov    -0x7d(%rdi),%fs
 10042b7:	75 84                	jne    0x100423d
 10042b9:	94                   	xchg   %eax,%esp
 10042ba:	13 c0                	adc    %eax,%eax
 10042bc:	6e                   	outsb  %ds:(%rsi),(%dx)
 10042bd:	2e 9c                	cs pushfq 
 10042bf:	20 5e c8             	and    %bl,-0x38(%rsi)
 10042c2:	8e a9 ed e2 56 3e    	mov    0x3e56e2ed(%rcx),%gs
 10042c8:	43 c6                	rex.XB (bad) 
 10042ca:	e2 52                	loop   0x100431e
 10042cc:	33 e0                	xor    %eax,%esp
 10042ce:	c0 bc dd 5b cf ba f3 	sarb   $0x3e,-0xc4530a5(%rbp,%rbx,8)
 10042d5:	3e 
 10042d6:	2b ea                	sub    %edx,%ebp
 10042d8:	36 5f                	ss pop %rdi
 10042da:	07                   	(bad)  
 10042db:	b4 f3                	mov    $0xf3,%ah
 10042dd:	72 af                	jb     0x100428e
 10042df:	da 80 18 ee da d6    	fiaddl -0x292511e8(%rax)
 10042e5:	aa                   	stos   %al,%es:(%rdi)
 10042e6:	ec                   	in     (%dx),%al
 10042e7:	f1                   	icebp  
 10042e8:	88 06                	mov    %al,(%rsi)
 10042ea:	df 79 4b             	fistpll 0x4b(%rcx)
 10042ed:	48 a1 d4 e0 70 c3 32 	movabs 0x50abb932c370e0d4,%rax
 10042f4:	b9 ab 50 
 10042f7:	02 41 e3             	add    -0x1d(%rcx),%al
 10042fa:	86 5b da             	xchg   %bl,-0x26(%rbx)
 10042fd:	6f                   	outsl  %ds:(%rsi),(%dx)
 10042fe:	02 c0                	add    %al,%al
 1004300:	32 64 3b 4c          	xor    0x4c(%rbx,%rdi,1),%ah
 1004304:	a1 09 08 cd ef 31 60 	movabs 0x6e8e6031efcd0809,%eax
 100430b:	8e 6e 
 100430d:	f0 44 04 39          	lock rex.R add $0x39,%al
 1004311:	2b b3 19 ff c1 13    	sub    0x13c1ff19(%rbx),%esi
 1004317:	1c 4a                	sbb    $0x4a,%al
 1004319:	b0 9f                	mov    $0x9f,%al
 100431b:	6f                   	outsl  %ds:(%rsi),(%dx)
 100431c:	da 48 61             	fimull 0x61(%rax)
 100431f:	fb                   	sti    
 1004320:	35 9b 82 e2 01       	xor    $0x1e2829b,%eax
 1004325:	a3 da c0 fe 60 a4 2e 	movabs %eax,0x15462ea460fec0da
 100432c:	46 15 
 100432e:	d4                   	(bad)  
 100432f:	5f                   	pop    %rdi
 1004330:	22 76 a4             	and    -0x5c(%rsi),%dh
 1004333:	93                   	xchg   %eax,%ebx
 1004334:	0d 38 7a 26 53       	or     $0x53267a38,%eax
 1004339:	ed                   	in     (%dx),%eax
 100433a:	4c                   	rex.WR
 100433b:	4f                   	rex.WRXB
 100433c:	3e 48 e5 00          	ds rex.W in $0x0,%eax
 1004340:	67 da 4c 7d 3b       	fimull 0x3b(%ebp,%edi,2)
 1004345:	9b                   	fwait
 1004346:	ce                   	(bad)  
 1004347:	31 a0 8e e5 90 d0    	xor    %esp,-0x2f6f1a72(%rax)
 100434d:	26 02 97 15 eb 21 17 	add    %es:0x1721eb15(%rdi),%dl
 1004354:	f7 84 c8 58 af 43 e1 	testl  $0x51fa05e2,-0x1ebc50a8(%rax,%rcx,8)
 100435b:	e2 05 fa 51 
 100435f:	14 05                	adc    $0x5,%al
 1004361:	b0 b8                	mov    $0xb8,%al
 1004363:	11 30                	adc    %esi,(%rax)
 1004365:	f9                   	stc    
 1004366:	0e                   	(bad)  
 1004367:	da 98 d1 b1 56 bf    	ficompl -0x40a94e2f(%rax)
 100436d:	c5 61 5f e1          	vmaxpd %xmm1,%xmm3,%xmm12
 1004371:	de 7b e9             	fidivrs -0x17(%rbx)
 1004374:	7a c3                	jp     0x1004339
 1004376:	b5 f2                	mov    $0xf2,%ch
 1004378:	2e 21 82 17 cf e0 1e 	and    %eax,%cs:0x1ee0cf17(%rdx)
 100437f:	1f                   	(bad)  
 1004380:	92                   	xchg   %eax,%edx
 1004381:	bb 52 c6 64 33       	mov    $0x3364c652,%ebx
 1004386:	04 27                	add    $0x27,%al
 1004388:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1004389:	49 ff ab a9 3a 85 4b 	rex.WB ljmp *0x4b853aa9(%r11)
 1004390:	cd b0                	int    $0xb0
 1004392:	a0 e2 d6 57 19 e4 07 	movabs 0xbaaa07e41957d6e2,%al
 1004399:	aa ba 
 100439b:	3c de                	cmp    $0xde,%al
 100439d:	55                   	push   %rbp
 100439e:	eb 6c                	jmp    0x100440c
 10043a0:	53                   	push   %rbx
 10043a1:	2d c4 67 17 95       	sub    $0x951767c4,%eax
 10043a6:	23 98 d8 bb e7 4a    	and    0x4ae7bbd8(%rax),%ebx
 10043ac:	63 9f 3f 73 bb 41    	movsxd 0x41bb733f(%rdi),%ebx
 10043b2:	bb e9 fa f1 1e       	mov    $0x1ef1fae9,%ebx
 10043b7:	73 85                	jae    0x100433e
 10043b9:	17                   	(bad)  
 10043ba:	fc                   	cld    
 10043bb:	22 ca                	and    %dl,%cl
 10043bd:	29 7b 6f             	sub    %edi,0x6f(%rbx)
 10043c0:	b3 9a                	mov    $0x9a,%bl
 10043c2:	c8 61 94 1b          	enterq $0x9461,$0x1b
 10043c6:	c8 f1 4d 19          	enterq $0x4df1,$0x19
 10043ca:	73 c4                	jae    0x1004390
 10043cc:	20 36                	and    %dh,(%rsi)
 10043ce:	f2 65 76 6d          	bnd gs jbe 0x100443f
 10043d2:	bf 49 8d 60 6e       	mov    $0x6e608d49,%edi
 10043d7:	30 42 e6             	xor    %al,-0x1a(%rdx)
 10043da:	55                   	push   %rbp
 10043db:	7d 2e                	jge    0x100440b
 10043dd:	c8 2a e7 a4          	enterq $0xe72a,$0xa4
 10043e1:	eb 55                	jmp    0x1004438
 10043e3:	cb                   	lret   
 10043e4:	5d                   	pop    %rbp
 10043e5:	61                   	(bad)  
 10043e6:	e7 be                	out    %eax,$0xbe
 10043e8:	69 f4 ed 9b 94 6d    	imul   $0x6d949bed,%esp,%esi
 10043ee:	be 31 2a 9b 51       	mov    $0x519b2a31,%esi
 10043f3:	20 b6 d9 ed 84 ce    	and    %dh,-0x317b1227(%rsi)
 10043f9:	9c                   	pushfq 
 10043fa:	9d                   	popfq  
 10043fb:	33 ad 13 e3 4f 44    	xor    0x444fe313(%rbp),%ebp
 1004401:	a3 84 40 e2 17 c2 6b 	movabs %eax,0x19166bc217e24084
 1004408:	16 19 
 100440a:	ef                   	out    %eax,(%dx)
 100440b:	38 a4 04 82 54 c4 86 	cmp    %ah,-0x793bab7e(%rsp,%rax,1)
 1004412:	b8 31 b8 f3 16       	mov    $0x16f3b831,%eax
 1004417:	2b bd 51 2a 65 0c    	sub    0xc652a51(%rbp),%edi
 100441d:	bf 43 2b 46 a7       	mov    $0xa7462b43,%edi
 1004422:	1e                   	(bad)  
 1004423:	cc                   	int3   
 1004424:	28 3c 92             	sub    %bh,(%rdx,%rdx,4)
 1004427:	29 2c 31             	sub    %ebp,(%rcx,%rsi,1)
 100442a:	2e ee                	cs out %al,(%dx)
 100442c:	10 cc                	adc    %cl,%ah
 100442e:	10 80 db c0 97 51    	adc    %al,0x5197c0db(%rax)
 1004434:	35 50 77 ca fe       	xor    $0xfeca7750,%eax
 1004439:	5a                   	pop    %rdx
 100443a:	dc 45 a8             	faddl  -0x58(%rbp)
 100443d:	c2 8a 87             	retq   $0x878a
 1004440:	05 27 0b 8f ab       	add    $0xab8f0b27,%eax
 1004445:	ba 0d 3b 75 b3       	mov    $0xb3753b0d,%edx
 100444a:	15 00 67 50 c6       	adc    $0xc6506700,%eax
 100444f:	d5                   	(bad)  
 1004450:	91                   	xchg   %eax,%ecx
 1004451:	db fb                	(bad)  
 1004453:	20 c9                	and    %cl,%cl
 1004455:	28 aa 59 1c 64 30    	sub    %ch,0x30641c59(%rdx)
 100445b:	96                   	xchg   %eax,%esi
 100445c:	5e                   	pop    %rsi
 100445d:	21 2c b1             	and    %ebp,(%rcx,%rsi,4)
 1004460:	f9                   	stc    
 1004461:	61                   	(bad)  
 1004462:	78 1d                	js     0x1004481
 1004464:	cb                   	lret   
 1004465:	68 81 f9 ce 2b       	pushq  $0x2bcef981
 100446a:	43 ff                	rex.XB (bad) 
 100446c:	fa                   	cli    
 100446d:	09 c0                	or     %eax,%eax
 100446f:	05 65 8b aa 44       	add    $0x44aa8b65,%eax
 1004474:	59                   	pop    %rcx
 1004475:	37                   	(bad)  
 1004476:	ce                   	(bad)  
 1004477:	ff 71 f3             	pushq  -0xd(%rcx)
 100447a:	4b                   	rex.WXB
 100447b:	f3 f4                	repz hlt 
 100447d:	39 96 36 ca 89 22    	cmp    %edx,0x2289ca36(%rsi)
 1004483:	e9 6d 55 1e 03       	jmpq   0x41e99f5
 1004488:	7f b7                	jg     0x1004441
 100448a:	f7 2b                	imull  (%rbx)
 100448c:	3c 8e                	cmp    $0x8e,%al
 100448e:	99                   	cltd   
 100448f:	3d d5 7d 33 fe       	cmp    $0xfe337dd5,%eax
 1004494:	cc                   	int3   
 1004495:	0b 70 cc             	or     -0x34(%rax),%esi
 1004498:	98                   	cwtl   
 1004499:	29 9b 8e 8c fa 59    	sub    %ebx,0x59fa8c8e(%rbx)
 100449f:	98                   	cwtl   
 10044a0:	3b ac 88 70 ab c3 cf 	cmp    -0x303c5490(%rax,%rcx,4),%ebp
 10044a7:	bd 99 82 92 48       	mov    $0x48928299,%ebp
 10044ac:	f4                   	hlt    
 10044ad:	72 78                	jb     0x1004527
 10044af:	6e                   	outsb  %ds:(%rsi),(%dx)
 10044b0:	4f 04 c4             	rex.WRXB add $0xc4,%al
 10044b3:	f3 a8 ce             	repz test $0xce,%al
 10044b6:	fa                   	cli    
 10044b7:	95                   	xchg   %eax,%ebp
 10044b8:	44 55                	rex.R push %rbp
 10044ba:	fe                   	(bad)  
 10044bb:	18 f5                	sbb    %dh,%ch
 10044bd:	ba 5c b2 8f eb       	mov    $0xeb8fb25c,%edx
 10044c2:	cf                   	iret   
 10044c3:	85 8d ff 91 27 4f    	test   %ecx,0x4f2791ff(%rbp)
 10044c9:	f6 9e c6 12 d4 4f    	negb   0x4fd412c6(%rsi)
 10044cf:	41 e5 ad             	rex.B in $0xad,%eax
 10044d2:	ce                   	(bad)  
 10044d3:	03 1f                	add    (%rdi),%ebx
 10044d5:	fb                   	sti    
 10044d6:	fe                   	(bad)  
 10044d7:	e2 bc                	loop   0x1004495
 10044d9:	4d 1e                	rex.WRB (bad) 
 10044db:	46 68 94 a4 9f 2e    	rex.RX pushq $0x2e9fa494
 10044e1:	26 bc 71 df 84 89    	es mov $0x8984df71,%esp
 10044e7:	d7                   	xlat   %ds:(%rbx)
 10044e8:	e0 a3                	loopne 0x100448d
 10044ea:	0a 86 87 13 a9 ea    	or     -0x1556ec79(%rsi),%al
 10044f0:	44 b4 5c             	rex.R mov $0x5c,%spl
 10044f3:	49 bb b7 16 cd 02 b9 	movabs $0xafa330b902cd16b7,%r11
 10044fa:	30 a3 af 
 10044fd:	17                   	(bad)  
 10044fe:	9d                   	popfq  
 10044ff:	f9                   	stc    
 1004500:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1004501:	a2 12 25 c1 83 25 03 	movabs %al,0xf9e032583c12512
 1004508:	9e 0f 
 100450a:	e3 f5                	jrcxz  0x1004501
 100450c:	55                   	push   %rbp
 100450d:	97                   	xchg   %eax,%edi
 100450e:	bd 38 60 80 b7       	mov    $0xb7806038,%ebp
 1004513:	6e                   	outsb  %ds:(%rsi),(%dx)
 1004514:	b7 65                	mov    $0x65,%bh
 1004516:	3e 32 61 db          	xor    %ds:-0x25(%rcx),%ah
 100451a:	52                   	push   %rdx
 100451b:	4d 55                	rex.WRB push %r13
 100451d:	ae                   	scas   %es:(%rdi),%al
 100451e:	b1 aa                	mov    $0xaa,%cl
 1004520:	38 20                	cmp    %ah,(%rax)
 1004522:	44 08 af c9 8e b8 3b 	or     %r13b,0x3bb88ec9(%rdi)
 1004529:	2e 25 7e cd 2d 59    	cs and $0x592dcd7e,%eax
 100452f:	86 05 4d ba 53 4e    	xchg   %al,0x4e53ba4d(%rip)        # 0x4f53ff82
 1004535:	d6                   	(bad)  
 1004536:	7d 52                	jge    0x100458a
 1004538:	50                   	push   %rax
 1004539:	42 06                	rex.X (bad) 
 100453b:	0e                   	(bad)  
 100453c:	2d 04 a4 8e ba       	sub    $0xba8ea404,%eax
 1004541:	0f 51 57 21          	sqrtps 0x21(%rdi),%xmm2
 1004545:	3a 4a 27             	cmp    0x27(%rdx),%cl
 1004548:	be c2 1b fa 26       	mov    $0x26fa1bc2,%esi
 100454d:	f2 66 5b             	repnz pop %bx
 1004550:	f8                   	clc    
 1004551:	10 b3 ab eb 0f 15    	adc    %dh,0x150febab(%rbx)
 1004557:	50                   	push   %rax
 1004558:	c4                   	(bad)  
 1004559:	c0 9d 75 a0 c8 cd e0 	rcrb   $0xe0,-0x32375f8b(%rbp)
 1004560:	b7 61                	mov    $0x61,%bh
 1004562:	e6 b0                	out    %al,$0xb0
 1004564:	d7                   	xlat   %ds:(%rbx)
 1004565:	3c 7f                	cmp    $0x7f,%al
 1004567:	5a                   	pop    %rdx
 1004568:	95                   	xchg   %eax,%ebp
 1004569:	b7 43                	mov    $0x43,%bh
 100456b:	37                   	(bad)  
 100456c:	40 05 6f 38 8c 54    	rex add $0x548c386f,%eax
 1004572:	d9 0f                	(bad)  (%rdi)
 1004574:	0e                   	(bad)  
 1004575:	67 27                	addr32 (bad) 
 1004577:	07                   	(bad)  
 1004578:	c5 68 6c             	(bad)
 100457b:	bc b7 72 66 a5       	mov    $0xa56672b7,%esp
 1004580:	9b                   	fwait
 1004581:	5f                   	pop    %rdi
 1004582:	42 71 ea             	rex.X jno 0x100456f
 1004585:	29 eb                	sub    %ebp,%ebx
 1004587:	11 9f 13 12 d9 6b    	adc    %ebx,0x6bd91213(%rdi)
 100458d:	b5 40                	mov    $0x40,%ch
 100458f:	e7 18                	out    %eax,$0x18
 1004591:	fa                   	cli    
 1004592:	22 e3                	and    %bl,%ah
 1004594:	8e 95 05 20 95 73    	mov    0x73952005(%rbp),%ss
 100459a:	39 2d f8 ea eb 1a    	cmp    %ebp,0x1aebeaf8(%rip)        # 0x1bec3098
 10045a0:	c1 75 ba 8e          	shll   $0x8e,-0x46(%rbp)
 10045a4:	d4                   	(bad)  
 10045a5:	cf                   	iret   
 10045a6:	e9 e0 3f b6 24       	jmpq   0x25b6858b
 10045ab:	bb cf fb 86 c3       	mov    $0xc386fbcf,%ebx
 10045b0:	70 2e                	jo     0x10045e0
 10045b2:	f3 4d 77 ac          	repz rex.WRB ja 0x1004562
 10045b6:	bf b2 de 5a 27       	mov    $0x275adeb2,%edi
 10045bb:	f5                   	cmc    
 10045bc:	e3 b6                	jrcxz  0x1004574
 10045be:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10045bf:	e9 06 24 5f 88       	jmpq   0xffffffff895f69ca
 10045c4:	5e                   	pop    %rsi
 10045c5:	8d 9f 2f ef 26 62    	lea    0x6226ef2f(%rdi),%ebx
 10045cb:	d9 6d a3             	fldcw  -0x5d(%rbp)
 10045ce:	be 5f a2 2d 7c       	mov    $0x7c2da25f,%esi
 10045d3:	26 2e 27             	es cs (bad) 
 10045d6:	dc 71 1a             	fdivl  0x1a(%rcx)
 10045d9:	f9                   	stc    
 10045da:	b9 e0 85 ff 52       	mov    $0x52ff85e0,%ecx
 10045df:	0c a1                	or     $0xa1,%al
 10045e1:	64 48 a7             	cmpsq  %es:(%rdi),%fs:(%rsi)
 10045e4:	f5                   	cmc    
 10045e5:	ad                   	lods   %ds:(%rsi),%eax
 10045e6:	33 d7                	xor    %edi,%edx
 10045e8:	d1 2e                	shrl   (%rsi)
 10045ea:	d1 f9                	sar    %ecx
 10045ec:	da 06                	fiaddl (%rsi)
 10045ee:	bf 1e 2c 99 2c       	mov    $0x2c992c1e,%edi
 10045f3:	ef                   	out    %eax,(%dx)
 10045f4:	15 58 58 11 cb       	adc    $0xcb115858,%eax
 10045f9:	45 cc                	rex.RB int3 
 10045fb:	6f                   	outsl  %ds:(%rsi),(%dx)
 10045fc:	9d                   	popfq  
 10045fd:	4b af                	rex.WXB scas %es:(%rdi),%rax
 10045ff:	bc 54 ad 30 fb       	mov    $0xfb30ad54,%esp
 1004604:	db 39                	fstpt  (%rcx)
 1004606:	5b                   	pop    %rbx
 1004607:	5f                   	pop    %rdi
 1004608:	23 e8                	and    %eax,%ebp
 100460a:	0c 6a                	or     $0x6a,%al
 100460c:	dc 33                	fdivl  (%rbx)
 100460e:	bc 2e 94 d1 2d       	mov    $0x2dd1942e,%esp
 1004613:	45 b1 98             	rex.RB mov $0x98,%r9b
 1004616:	7d b3                	jge    0x10045cb
 1004618:	85 16                	test   %edx,(%rsi)
 100461a:	f4                   	hlt    
 100461b:	54                   	push   %rsp
 100461c:	08 2b                	or     %ch,(%rbx)
 100461e:	41 7f 41             	rex.B jg 0x1004662
 1004621:	5d                   	pop    %rbp
 1004622:	f8                   	clc    
 1004623:	c4                   	(bad)  
 1004624:	4e 1f                	rex.WRX (bad) 
 1004626:	3d 4f 73 dc 1f       	cmp    $0x1fdc734f,%eax
 100462b:	de 7e c1             	fidivrs -0x3f(%rsi)
 100462e:	2b 88 d2 d7 40 5e    	sub    0x5e40d7d2(%rax),%ecx
 1004634:	73 32                	jae    0x1004668
 1004636:	d5                   	(bad)  
 1004637:	87 be c5 45 c5 0b    	xchg   %edi,0xbc545c5(%rsi)
 100463d:	df e3                	(bad)  
 100463f:	53                   	push   %rbx
 1004640:	42 e8 f6 0b 03 50    	rex.X callq 0x5103523c
 1004646:	cc                   	int3   
 1004647:	b8 09 e5 4c 66       	mov    $0x664ce509,%eax
 100464c:	98                   	cwtl   
 100464d:	12 99 08 54 0f d4    	adc    -0x2bf0abf8(%rcx),%bl
 1004653:	89 d0                	mov    %edx,%eax
 1004655:	61                   	(bad)  
 1004656:	83 7d 9b 4e          	cmpl   $0x4e,-0x65(%rbp)
 100465a:	d6                   	(bad)  
 100465b:	f8                   	clc    
 100465c:	b0 46                	mov    $0x46,%al
 100465e:	c7                   	(bad)  
 100465f:	dd 41 af             	fldl   -0x51(%rcx)
 1004662:	e4 b1                	in     $0xb1,%al
 1004664:	38 3f                	cmp    %bh,(%rdi)
 1004666:	de 10                	ficoms (%rax)
 1004668:	97                   	xchg   %eax,%edi
 1004669:	aa                   	stos   %al,%es:(%rdi)
 100466a:	52                   	push   %rdx
 100466b:	c5 ba 6e             	(bad)
 100466e:	bb b0 17 44 7c       	mov    $0x7c4417b0,%ebx
 1004673:	90                   	nop
 1004674:	c0 1a 4a             	rcrb   $0x4a,(%rdx)
 1004677:	6f                   	outsl  %ds:(%rsi),(%dx)
 1004678:	08 14 e8             	or     %dl,(%rax,%rbp,8)
 100467b:	45 a4                	rex.RB movsb %ds:(%rsi),%es:(%rdi)
 100467d:	af                   	scas   %es:(%rdi),%eax
 100467e:	d6                   	(bad)  
 100467f:	dc 93 bf 65 73 cb    	fcoml  -0x348c9a41(%rbx)
 1004685:	2b b6 4b e6 12 77    	sub    0x7712e64b(%rsi),%esi
 100468b:	84 ec                	test   %ch,%ah
 100468d:	65 d2 d3             	gs rcl %cl,%bl
 1004690:	aa                   	stos   %al,%es:(%rdi)
 1004691:	0a e8                	or     %al,%ch
 1004693:	42 32 d3             	rex.X xor %bl,%dl
 1004696:	0d 10 5b 1f 37       	or     $0x371f5b10,%eax
 100469b:	1f                   	(bad)  
 100469c:	02 28                	add    (%rax),%ch
 100469e:	9c                   	pushfq 
 100469f:	ea                   	(bad)  
 10046a0:	f5                   	cmc    
 10046a1:	6f                   	outsl  %ds:(%rsi),(%dx)
 10046a2:	79 12                	jns    0x10046b6
 10046a4:	07                   	(bad)  
 10046a5:	b8 9f f9 5b 4c       	mov    $0x4c5bf99f,%eax
 10046aa:	83 b8 d5 c7 29 5b 3f 	cmpl   $0x3f,0x5b29c7d5(%rax)
 10046b1:	a0 7e 90 53 6b 9c a7 	movabs 0x8850a79c6b53907e,%al
 10046b8:	50 88 
 10046ba:	6a 56                	pushq  $0x56
 10046bc:	cd 9b                	int    $0x9b
 10046be:	a1 38 a3 2c e4 23 ec 	movabs 0xbcefec23e42ca338,%eax
 10046c5:	ef bc 
 10046c7:	07                   	(bad)  
 10046c8:	8d                   	(bad)  
 10046c9:	d6                   	(bad)  
 10046ca:	b9 f6 db 60 c5       	mov    $0xc560dbf6,%ecx
 10046cf:	49 23 68 fe          	and    -0x2(%r8),%rbp
 10046d3:	b7 a9                	mov    $0xa9,%bh
 10046d5:	e8 f0 74 13 77       	callq  0x7813bbca
 10046da:	06                   	(bad)  
 10046db:	28 be 92 2e 56 45    	sub    %bh,0x45562e92(%rsi)
 10046e1:	8d 34 64             	lea    (%rsp,%riz,2),%esi
 10046e4:	3f                   	(bad)  
 10046e5:	bf bd bd 49 90       	mov    $0x9049bdbd,%edi
 10046ea:	75 cb                	jne    0x10046b7
 10046ec:	45                   	rex.RB
 10046ed:	45 79 1b             	rex.RB jns 0x100470b
 10046f0:	b9 fd 9c 95 64       	mov    $0x64959cfd,%ecx
 10046f5:	da 17                	ficoml (%rdi)
 10046f7:	3c 7b                	cmp    $0x7b,%al
 10046f9:	b9 0b 0d 19 11       	mov    $0x11190d0b,%ecx
 10046fe:	14 da                	adc    $0xda,%al
 1004700:	8a f7                	mov    %bh,%dh
 1004702:	37                   	(bad)  
 1004703:	8c 3d 37 1e 6a 5d    	mov    %?,0x5d6a1e37(%rip)        # 0x5e6a6540
 1004709:	c9                   	leaveq 
 100470a:	f1                   	icebp  
 100470b:	d8 be 35 7a d1 94    	fdivrs -0x6b2e85cb(%rsi)
 1004711:	33 9a 88 57 c4 c5    	xor    -0x3a3ba878(%rdx),%ebx
 1004717:	1f                   	(bad)  
 1004718:	58                   	pop    %rax
 1004719:	5d                   	pop    %rbp
 100471a:	7f 77                	jg     0x1004793
 100471c:	5c                   	pop    %rsp
 100471d:	21 d9                	and    %ebx,%ecx
 100471f:	6e                   	outsb  %ds:(%rsi),(%dx)
 1004720:	bf 71 2c e7 e6       	mov    $0xe6e72c71,%edi
 1004725:	2b 0a                	sub    (%rdx),%ecx
 1004727:	f7 97 e0 ee fb 39    	notl   0x39fbeee0(%rdi)
 100472d:	b1 b5                	mov    $0xb5,%cl
 100472f:	6a 98                	pushq  $0xffffffffffffff98
 1004731:	b0 27                	mov    $0x27,%al
 1004733:	c4                   	(bad)  
 1004734:	f0 b8 bd a3 fb a9    	lock mov $0xa9fba3bd,%eax
 100473a:	f3 bd e6 c0 69 65    	repz mov $0x6569c0e6,%ebp
 1004740:	fd                   	std    
 1004741:	92                   	xchg   %eax,%edx
 1004742:	d7                   	xlat   %ds:(%rbx)
 1004743:	4d e4 4a             	rex.WRB in $0x4a,%al
 1004746:	e9 77 de f5 d6       	jmpq   0xffffffffd7f625c2
 100474b:	07                   	(bad)  
 100474c:	d3 be 59 0c d0 03    	sarl   %cl,0x3d00c59(%rsi)
 1004752:	c7                   	(bad)  
 1004753:	7c 00                	jl     0x1004755
 1004755:	1d 24 3e e0 85       	sbb    $0x85e03e24,%eax
 100475a:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100475b:	ec                   	in     (%dx),%al
 100475c:	c2 78 a5             	retq   $0xa578
 100475f:	44                   	rex.R
 1004760:	f2 66 63 08          	repnz movsxd (%rax),%cx
 1004764:	52                   	push   %rdx
 1004765:	2c 1a                	sub    $0x1a,%al
 1004767:	21 cb                	and    %ecx,%ebx
 1004769:	77 b8                	ja     0x1004723
 100476b:	dd ff                	(bad)  
 100476d:	76 98                	jbe    0x1004707
 100476f:	5f                   	pop    %rdi
 1004770:	15 f7 b8 59 fc       	adc    $0xfc59b8f7,%eax
 1004775:	d7                   	xlat   %ds:(%rbx)
 1004776:	80 56 5d f0          	adcb   $0xf0,0x5d(%rsi)
 100477a:	bb 0a 28 9f 83       	mov    $0x839f280a,%ebx
 100477f:	c4 e2 3e 7e          	(bad)
 1004783:	09 99 40 9b b7 02    	or     %ebx,0x2b79b40(%rcx)
 1004789:	b1 95                	mov    $0x95,%cl
 100478b:	01 49 7c             	add    %ecx,0x7c(%rcx)
 100478e:	e5 ef                	in     $0xef,%eax
 1004790:	8f                   	(bad)  
 1004791:	8e 6e 82             	mov    -0x7e(%rsi),%gs
 1004794:	ae                   	scas   %es:(%rdi),%al
 1004795:	9b                   	fwait
 1004796:	62                   	(bad)  
 1004797:	2e 42 dc 5f a1       	rex.X fcompl %cs:-0x5f(%rdi)
 100479c:	d4                   	(bad)  
 100479d:	b9 43 da e0 93       	mov    $0x93e0da43,%ecx
 10047a2:	d8 04 ab             	fadds  (%rbx,%rbp,4)
 10047a5:	70 49                	jo     0x10047f0
 10047a7:	08 14 7a             	or     %dl,(%rdx,%rdi,2)
 10047aa:	1f                   	(bad)  
 10047ab:	cf                   	iret   
 10047ac:	4f b4 9d             	rex.WRXB mov $0x9d,%r12b
 10047af:	14 07                	adc    $0x7,%al
 10047b1:	a3 a3 32 7a a1 eb 3a 	movabs %eax,0xf21d3aeba17a32a3
 10047b8:	1d f2 
 10047ba:	33 ae ed 46 ff d8    	xor    -0x2700b913(%rsi),%ebp
 10047c0:	7f 4a                	jg     0x100480c
 10047c2:	28 07                	sub    %al,(%rdi)
 10047c4:	2b 2b                	sub    (%rbx),%ebp
 10047c6:	89 80 21 83 8a 29    	mov    %eax,0x298a8321(%rax)
 10047cc:	43 85 6e cd          	rex.XB test %ebp,-0x33(%r14)
 10047d0:	51                   	push   %rcx
 10047d1:	96                   	xchg   %eax,%esi
 10047d2:	f7 fe                	idiv   %esi
 10047d4:	d6                   	(bad)  
 10047d5:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10047d6:	43 e5 ea             	rex.XB in $0xea,%eax
 10047d9:	36 69 24 77 d2 37 39 	imul   $0x173937d2,%ss:(%rdi,%rsi,2),%esp
 10047e0:	17 
 10047e1:	45 ed                	rex.RB in (%dx),%eax
 10047e3:	92                   	xchg   %eax,%edx
 10047e4:	78 ff                	js     0x10047e5
 10047e6:	67 b6 e0             	addr32 mov $0xe0,%dh
 10047e9:	18 0c ce             	sbb    %cl,(%rsi,%rcx,8)
 10047ec:	12 a4 ce 28 a7 1f 05 	adc    0x51fa728(%rsi,%rcx,8),%ah
 10047f3:	1c b7                	sbb    $0xb7,%al
 10047f5:	d4                   	(bad)  
 10047f6:	dd 6b 2c             	(bad)  0x2c(%rbx)
 10047f9:	dc e8                	fsubr  %st,%st(0)
 10047fb:	1d 80 6d e5 7d       	sbb    $0x7de56d80,%eax
 1004800:	b5 b5                	mov    $0xb5,%ch
 1004802:	0e                   	(bad)  
 1004803:	b7 3b                	mov    $0x3b,%bh
 1004805:	0e                   	(bad)  
 1004806:	34 17                	xor    $0x17,%al
 1004808:	ba a3 16 a4 68       	mov    $0x68a416a3,%edx
 100480d:	fd                   	std    
 100480e:	cb                   	lret   
 100480f:	f2 80 e2 1e          	repnz and $0x1e,%dl
 1004813:	82                   	(bad)  
 1004814:	ff a7 b5 88 de f7    	jmpq   *-0x821774b(%rdi)
 100481a:	8e bc 77 69 d3 9a 09 	mov    0x99ad369(%rdi,%rsi,2),%?
 1004821:	98                   	cwtl   
 1004822:	3a 7a 98             	cmp    -0x68(%rdx),%bh
 1004825:	74 b0                	je     0x10047d7
 1004827:	cf                   	iret   
 1004828:	e6 67                	out    %al,$0x67
 100482a:	5e                   	pop    %rsi
 100482b:	cc                   	int3   
 100482c:	e8 ef 41 4d df       	callq  0xffffffffe04d8a20
 1004831:	0c 7e                	or     $0x7e,%al
 1004833:	a9 0b cb cc c1       	test   $0xc1cccb0b,%eax
 1004838:	9c                   	pushfq 
 1004839:	2b 0c d9             	sub    (%rcx,%rbx,8),%ecx
 100483c:	2d 1f 53 bc dc       	sub    $0xdcbc531f,%eax
 1004841:	aa                   	stos   %al,%es:(%rdi)
 1004842:	ee                   	out    %al,(%dx)
 1004843:	34 a5                	xor    $0xa5,%al
 1004845:	0d 55 64 35 c1       	or     $0xc1356455,%eax
 100484a:	87 69 4f             	xchg   %ebp,0x4f(%rcx)
 100484d:	79 26                	jns    0x1004875
 100484f:	0b ee                	or     %esi,%ebp
 1004851:	f0 d1 70 8c          	lock shll -0x74(%rax)
 1004855:	e0 cd                	loopne 0x1004824
 1004857:	99                   	cltd   
 1004858:	96                   	xchg   %eax,%esi
 1004859:	ee                   	out    %al,(%dx)
 100485a:	56                   	push   %rsi
 100485b:	e9 42 ae d2 d3       	jmpq   0xffffffffd4d2f6a2
 1004860:	5c                   	pop    %rsp
 1004861:	4f ac                	rex.WRXB lods %ds:(%rsi),%al
 1004863:	c8 d7 ae ef          	enterq $0xaed7,$0xef
 1004867:	f3 20 6d cb          	repz and %ch,-0x35(%rbp)
 100486b:	17                   	(bad)  
 100486c:	72 15                	jb     0x1004883
 100486e:	aa                   	stos   %al,%es:(%rdi)
 100486f:	89 72 c9             	mov    %esi,-0x37(%rdx)
 1004872:	4e 99                	rex.WRX cqto 
 1004874:	de ba 17 74 39 c2    	fidivrs -0x3dc68be9(%rdx)
 100487a:	d4                   	(bad)  
 100487b:	b5 4d                	mov    $0x4d,%ch
 100487d:	03 45 fd             	add    -0x3(%rbp),%eax
 1004880:	09 fd                	or     %edi,%ebp
 1004882:	af                   	scas   %es:(%rdi),%eax
 1004883:	02 b5 4c 4a 5d 3e    	add    0x3e5d4a4c(%rbp),%dh
 1004889:	2d d2 6d 57 f1       	sub    $0xf1576dd2,%eax
 100488e:	b7 03                	mov    $0x3,%bh
 1004890:	94                   	xchg   %eax,%esp
 1004891:	01 d9                	add    %ebx,%ecx
 1004893:	37                   	(bad)  
 1004894:	35 fe 59 42 39       	xor    $0x394259fe,%eax
 1004899:	53                   	push   %rbx
 100489a:	50                   	push   %rax
 100489b:	12 d4                	adc    %ah,%dl
 100489d:	c8 e8 7d f2          	enterq $0x7de8,$0xf2
 10048a1:	3b af ee 20 b8 b7    	cmp    -0x4847df12(%rdi),%ebp
 10048a7:	27                   	(bad)  
 10048a8:	cd 26                	int    $0x26
 10048aa:	52                   	push   %rdx
 10048ab:	70 86                	jo     0x1004833
 10048ad:	88 8f 31 14 f9 38    	mov    %cl,0x38f91431(%rdi)
 10048b3:	d9 56 ef             	fsts   -0x11(%rsi)
 10048b6:	d9 70 8a             	fnstenv -0x76(%rax)
 10048b9:	19 18                	sbb    %ebx,(%rax)
 10048bb:	3a 61 51             	cmp    0x51(%rcx),%ah
 10048be:	2c 7f                	sub    $0x7f,%al
 10048c0:	3c b4                	cmp    $0xb4,%al
 10048c2:	09 ba 1e f2 fc 32    	or     %edi,0x32fcf21e(%rdx)
 10048c8:	58                   	pop    %rax
 10048c9:	83 2d ad 48 6f 65 42 	subl   $0x42,0x656f48ad(%rip)        # 0x666f917d
 10048d0:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10048d1:	95                   	xchg   %eax,%ebp
 10048d2:	ae                   	scas   %es:(%rdi),%al
 10048d3:	2a df                	sub    %bh,%bl
 10048d5:	09 84 68 97 da dd 84 	or     %eax,-0x7b222569(%rax,%rbp,2)
 10048dc:	b3 96                	mov    $0x96,%bl
 10048de:	ff 82 29 6f 8a ec    	incl   -0x137590d7(%rdx)
 10048e4:	71 61                	jno    0x1004947
 10048e6:	af                   	scas   %es:(%rdi),%eax
 10048e7:	d0 30                	shlb   (%rax)
 10048e9:	c4                   	(bad)  
 10048ea:	fd                   	std    
 10048eb:	5b                   	pop    %rbx
 10048ec:	0f 4a a3 2f e7 ec 62 	cmovp  0x62ece72f(%rbx),%esp
 10048f3:	4d 13 5e bc          	adc    -0x44(%r14),%r11
 10048f7:	07                   	(bad)  
 10048f8:	f9                   	stc    
 10048f9:	e2 f7                	loop   0x10048f2
 10048fb:	32 3e                	xor    (%rsi),%bh
 10048fd:	60                   	(bad)  
 10048fe:	ca b5 c8             	lret   $0xc8b5
 1004901:	78 d4                	js     0x10048d7
 1004903:	1b 3f                	sbb    (%rdi),%edi
 1004905:	08 3d e8 e5 5d fe    	or     %bh,-0x1a21a18(%rip)        # 0xffffffffff5e2ef3
 100490b:	6f                   	outsl  %ds:(%rsi),(%dx)
 100490c:	cc                   	int3   
 100490d:	21 67 28             	and    %esp,0x28(%rdi)
 1004910:	d1 c7                	rol    %edi
 1004912:	59                   	pop    %rcx
 1004913:	70 0c                	jo     0x1004921
 1004915:	ba 1f dc b5 62       	mov    $0x62b5dc1f,%edx
 100491a:	f5                   	cmc    
 100491b:	bc 74 c3 ea 95       	mov    $0x95eac374,%esp
 1004920:	13 7c f6 24          	adc    0x24(%rsi,%rsi,8),%edi
 1004924:	8c e6                	mov    %fs,%esi
 1004926:	b1 89                	mov    $0x89,%cl
 1004928:	14 07                	adc    $0x7,%al
 100492a:	81 c4 3a f0 82 94    	add    $0x9482f03a,%esp
 1004930:	e8 90 9d 51 a3       	callq  0xffffffffa451e6c5
 1004935:	60                   	(bad)  
 1004936:	4d                   	rex.WRB
 1004937:	48 9d                	rex.W popfq 
 1004939:	7c dc                	jl     0x1004917
 100493b:	3e a8 ce             	ds test $0xce,%al
 100493e:	c4                   	(bad)  
 100493f:	96                   	xchg   %eax,%esi
 1004940:	07                   	(bad)  
 1004941:	1b fc                	sbb    %esp,%edi
 1004943:	e3 8b                	jrcxz  0x10048d0
 1004945:	08 0a                	or     %cl,(%rdx)
 1004947:	ef                   	out    %eax,(%dx)
 1004948:	31 1b                	xor    %ebx,(%rbx)
 100494a:	e6 51                	out    %al,$0x51
 100494c:	36 a5                	movsl  %ss:(%rsi),%es:(%rdi)
 100494e:	b3 c0                	mov    $0xc0,%bl
 1004950:	e1 9a                	loope  0x10048ec
 1004952:	19 a5 0f ef 70 33    	sbb    %esp,0x3370ef0f(%rbp)
 1004958:	f9                   	stc    
 1004959:	94                   	xchg   %eax,%esp
 100495a:	2d 05 21 00 7a       	sub    $0x7a002105,%eax
 100495f:	e9 8b a3 4a ff       	jmpq   0x4aecef
 1004964:	5a                   	pop    %rdx
 1004965:	93                   	xchg   %eax,%ebx
 1004966:	04 9f                	add    $0x9f,%al
 1004968:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1004969:	16                   	(bad)  
 100496a:	e2 d6                	loop   0x1004942
 100496c:	69 9c ca 74 0a 17 bc 	imul   $0xe65a0ab4,-0x43e8f58c(%rdx,%rcx,8),%ebx
 1004973:	b4 0a 5a e6 
 1004977:	ac                   	lods   %ds:(%rsi),%al
 1004978:	4f                   	rex.WRXB
 1004979:	4b 60                	rex.WXB (bad) 
 100497b:	e6 3c                	out    %al,$0x3c
 100497d:	d5                   	(bad)  
 100497e:	45 14 ab             	rex.RB adc $0xab,%al
 1004981:	56                   	push   %rsi
 1004982:	aa                   	stos   %al,%es:(%rdi)
 1004983:	10 fb                	adc    %bh,%bl
 1004985:	49 7b f1             	rex.WB jnp 0x1004979
 1004988:	5f                   	pop    %rdi
 1004989:	8d                   	(bad)  
 100498a:	c9                   	leaveq 
 100498b:	b6 f3                	mov    $0xf3,%dh
 100498d:	15 a6 2d ac e9       	adc    $0xe9ac2da6,%eax
 1004992:	36 e1 30             	ss loope 0x10049c5
 1004995:	e3 fa                	jrcxz  0x1004991
 1004997:	2a c9                	sub    %cl,%cl
 1004999:	01 3e                	add    %edi,(%rsi)
 100499b:	49 91                	xchg   %rax,%r9
 100499d:	be 13 a4 00 4b       	mov    $0x4b00a413,%esi
 10049a2:	b0 c7                	mov    $0xc7,%al
 10049a4:	32 4a 0d             	xor    0xd(%rdx),%cl
 10049a7:	d3 4e b9             	rorl   %cl,-0x47(%rsi)
 10049aa:	4b 00 7f 39          	rex.WXB add %dil,0x39(%r15)
 10049ae:	eb b9                	jmp    0x1004969
 10049b0:	f3 26 58             	repz es pop %rax
 10049b3:	47 e0 41             	rex.RXB loopne 0x10049f7
 10049b6:	5d                   	pop    %rbp
 10049b7:	ef                   	out    %eax,(%dx)
 10049b8:	9b                   	fwait
 10049b9:	32 50 bc             	xor    -0x44(%rax),%dl
 10049bc:	0e                   	(bad)  
 10049bd:	3b 34 22             	cmp    (%rdx,%riz,1),%esi
 10049c0:	9a                   	(bad)  
 10049c1:	c4                   	(bad)  
 10049c2:	d7                   	xlat   %ds:(%rbx)
 10049c3:	69 d2 0f c2 0c 92    	imul   $0x920cc20f,%edx,%edx
 10049c9:	93                   	xchg   %eax,%ebx
 10049ca:	ac                   	lods   %ds:(%rsi),%al
 10049cb:	e6 4d                	out    %al,$0x4d
 10049cd:	4c e3 ff             	rex.WR jrcxz 0x10049cf
 10049d0:	3d e2 78 86 6d       	cmp    $0x6d8678e2,%eax
 10049d5:	ed                   	in     (%dx),%eax
 10049d6:	66 39 48 fb          	cmp    %cx,-0x5(%rax)
 10049da:	41 6f                	rex.B outsl %ds:(%rsi),(%dx)
 10049dc:	8c 46 eb             	mov    %es,-0x15(%rsi)
 10049df:	21 3d 25 6c a4 fd    	and    %edi,-0x25b93db(%rip)        # 0xfffffffffea4b60a
 10049e5:	9d                   	popfq  
 10049e6:	35 cb 63 b5 a9       	xor    $0xa9b563cb,%eax
 10049eb:	e2 51                	loop   0x1004a3e
 10049ed:	d5                   	(bad)  
 10049ee:	95                   	xchg   %eax,%ebp
 10049ef:	88 27                	mov    %ah,(%rdi)
 10049f1:	79 1f                	jns    0x1004a12
 10049f3:	c3                   	retq   
 10049f4:	af                   	scas   %es:(%rdi),%eax
 10049f5:	7b 30                	jnp    0x1004a27
 10049f7:	4e d7                	rex.WRX xlat %ds:(%rbx)
 10049f9:	a0 da 08 4b 4e a3 a5 	movabs 0xc69da5a34e4b08da,%al
 1004a00:	9d c6 
 1004a02:	4f f5                	rex.WRXB cmc 
 1004a04:	fa                   	cli    
 1004a05:	34 c2                	xor    $0xc2,%al
 1004a07:	2d dc e3 fc 88       	sub    $0x88fce3dc,%eax
 1004a0c:	c0 3d 81 45 c2 7e 3d 	sarb   $0x3d,0x7ec24581(%rip)        # 0x7fc28f94
 1004a13:	31 dd                	xor    %ebx,%ebp
 1004a15:	29 08                	sub    %ecx,(%rax)
 1004a17:	34 55                	xor    $0x55,%al
 1004a19:	4e 00 c3             	rex.WRX add %r8b,%bl
 1004a1c:	b5 72                	mov    $0x72,%ch
 1004a1e:	6c                   	insb   (%dx),%es:(%rdi)
 1004a1f:	86 bd b5 f2 df 3a    	xchg   %bh,0x3adff2b5(%rbp)
 1004a25:	c4                   	(bad)  
 1004a26:	1d 7d 06 69 3d       	sbb    $0x3d69067d,%eax
 1004a2b:	9f                   	lahf   
 1004a2c:	f4                   	hlt    
 1004a2d:	ef                   	out    %eax,(%dx)
 1004a2e:	e7 4b                	out    %eax,$0x4b
 1004a30:	b2 aa                	mov    $0xaa,%dl
 1004a32:	bc 79 f2 49 8a       	mov    $0x8a49f279,%esp
 1004a37:	86 02                	xchg   %al,(%rdx)
 1004a39:	6b 6b a0 2c          	imul   $0x2c,-0x60(%rbx),%ebp
 1004a3d:	39 db                	cmp    %ebx,%ebx
 1004a3f:	a2 a4 ef 66 f2 db 5b 	movabs %al,0x6daf5bdbf266efa4
 1004a46:	af 6d 
 1004a48:	6a 4b                	pushq  $0x4b
 1004a4a:	a1 bb 59 12 31 0c 14 	movabs 0xe15d140c311259bb,%eax
 1004a51:	5d e1 
 1004a53:	8b 08                	mov    (%rax),%ecx
 1004a55:	50                   	push   %rax
 1004a56:	00 2e                	add    %ch,(%rsi)
 1004a58:	34 21                	xor    $0x21,%al
 1004a5a:	90                   	nop
 1004a5b:	7e 6e                	jle    0x1004acb
 1004a5d:	ca 28 a9             	lret   $0xa928
 1004a60:	30 e7                	xor    %ah,%bh
 1004a62:	c8 5f c2 c1          	enterq $0xc25f,$0xc1
 1004a66:	94                   	xchg   %eax,%esp
 1004a67:	9e                   	sahf   
 1004a68:	30 88 3a aa 66 3d    	xor    %cl,0x3d66aa3a(%rax)
 1004a6e:	58                   	pop    %rax
 1004a6f:	b1 fc                	mov    $0xfc,%cl
 1004a71:	3a a2 7f 58 7f 81    	cmp    -0x7e80a781(%rdx),%ah
 1004a77:	b1 2f                	mov    $0x2f,%cl
 1004a79:	9d                   	popfq  
 1004a7a:	60                   	(bad)  
 1004a7b:	25 ed 68 84 2f       	and    $0x2f8468ed,%eax
 1004a80:	e9 77 b9 60 06       	jmpq   0x76103fc
 1004a85:	32 96 fb 3f 6d 28    	xor    0x286d3ffb(%rsi),%dl
 1004a8b:	85 86 23 95 ea eb    	test   %eax,-0x14156add(%rsi)
 1004a91:	61                   	(bad)  
 1004a92:	0b 4f 22             	or     0x22(%rdi),%ecx
 1004a95:	13 9b 59 35 fb a7    	adc    -0x5804caa7(%rbx),%ebx
 1004a9b:	19 11                	sbb    %edx,(%rcx)
 1004a9d:	00 17                	add    %dl,(%rdi)
 1004a9f:	16                   	(bad)  
 1004aa0:	cb                   	lret   
 1004aa1:	e0 c0                	loopne 0x1004a63
 1004aa3:	fd                   	std    
 1004aa4:	d7                   	xlat   %ds:(%rbx)
 1004aa5:	73 92                	jae    0x1004a39
 1004aa7:	de d9                	fcompp 
 1004aa9:	98                   	cwtl   
 1004aaa:	f3 cd c4             	repz int $0xc4
 1004aad:	6d                   	insl   (%dx),%es:(%rdi)
 1004aae:	24 61                	and    $0x61,%al
 1004ab0:	48 63 7b a3          	movslq -0x5d(%rbx),%rdi
 1004ab4:	43 e3 33             	rex.XB jrcxz 0x1004aea
 1004ab7:	24 db                	and    $0xdb,%al
 1004ab9:	af                   	scas   %es:(%rdi),%eax
 1004aba:	92                   	xchg   %eax,%edx
 1004abb:	24 c7                	and    $0xc7,%al
 1004abd:	8c 11                	mov    %ss,(%rcx)
 1004abf:	2e 0a 0a             	or     %cs:(%rdx),%cl
 1004ac2:	06                   	(bad)  
 1004ac3:	08 df                	or     %bl,%bh
 1004ac5:	d4                   	(bad)  
 1004ac6:	87 c5                	xchg   %eax,%ebp
 1004ac8:	49                   	rex.WB
 1004ac9:	4a d8 19             	rex.WX fcomps (%rcx)
 1004acc:	70 5b                	jo     0x1004b29
 1004ace:	f5                   	cmc    
 1004acf:	8f                   	(bad)  
 1004ad0:	d0 9e 5e 14 97 92    	rcrb   -0x6d68eba2(%rsi)
 1004ad6:	59                   	pop    %rcx
 1004ad7:	9c                   	pushfq 
 1004ad8:	02 40 1a             	add    0x1a(%rax),%al
 1004adb:	f0 15 47 c4 c1 5d    	lock adc $0x5dc1c447,%eax
 1004ae1:	dd d8                	fstp   %st(0)
 1004ae3:	3b 4e 75             	cmp    0x75(%rsi),%ecx
 1004ae6:	59                   	pop    %rcx
 1004ae7:	10 e8                	adc    %ch,%al
 1004ae9:	0f 91 c5             	setno  %ch
 1004aec:	e7 0b                	out    %eax,$0xb
 1004aee:	41 e8 e0 12 91 04    	rex.B callq 0x5915dd4
 1004af4:	81 4c e0 a1 8c be 6c 	orl    $0x236cbe8c,-0x5f(%rax,%riz,8)
 1004afb:	23 
 1004afc:	96                   	xchg   %eax,%esi
 1004afd:	5d                   	pop    %rbp
 1004afe:	17                   	(bad)  
 1004aff:	6b 65 83 65          	imul   $0x65,-0x7d(%rbp),%esp
 1004b03:	7d 1d                	jge    0x1004b22
 1004b05:	05 11 59 bc 5e       	add    $0x5ebc5911,%eax
 1004b0a:	86 52 90             	xchg   %dl,-0x70(%rdx)
 1004b0d:	d4                   	(bad)  
 1004b0e:	72 d0                	jb     0x1004ae0
 1004b10:	80 d3 54             	adc    $0x54,%bl
 1004b13:	c5 2a 63             	(bad)
 1004b16:	9b                   	fwait
 1004b17:	02 28                	add    (%rax),%ch
 1004b19:	24 80                	and    $0x80,%al
 1004b1b:	b5 f8                	mov    $0xf8,%ch
 1004b1d:	36 49 61             	ss rex.WB (bad) 
 1004b20:	64 41 5a             	fs pop %r10
 1004b23:	42                   	rex.X
 1004b24:	42 7d 8c             	rex.X jge 0x1004ab3
 1004b27:	08 a3 27 1a 14 db    	or     %ah,-0x24ebe5d9(%rbx)
 1004b2d:	a2 50 18 da 1f 53 92 	movabs %al,0x5e1992531fda1850
 1004b34:	19 5e 
 1004b36:	a0 b7 66 33 f9 18 44 	movabs 0xf344418f93366b7,%al
 1004b3d:	34 0f 
 1004b3f:	1e                   	(bad)  
 1004b40:	2c a0                	sub    $0xa0,%al
 1004b42:	ba b9 63 40 6a       	mov    $0x6a4063b9,%edx
 1004b47:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1004b48:	43 b0 34             	rex.XB mov $0x34,%r8b
 1004b4b:	77 b5                	ja     0x1004b02
 1004b4d:	77 3d                	ja     0x1004b8c
 1004b4f:	b3 da                	mov    $0xda,%bl
 1004b51:	f1                   	icebp  
 1004b52:	96                   	xchg   %eax,%esi
 1004b53:	c6                   	(bad)  
 1004b54:	b4 a6                	mov    $0xa6,%ah
 1004b56:	de 49 f6             	fimuls -0xa(%rcx)
 1004b59:	cb                   	lret   
 1004b5a:	e3 b6                	jrcxz  0x1004b12
 1004b5c:	dc 87 f5 42 e8 1a    	faddl  0x1ae842f5(%rdi)
 1004b62:	11 83 e6 98 6e a6    	adc    %eax,-0x5991671a(%rbx)
 1004b68:	b2 67                	mov    $0x67,%dl
 1004b6a:	7f 20                	jg     0x1004b8c
 1004b6c:	47 a2 8b c4 09 7b 56 	rex.RXB movabs %al,0x182fee567b09c48b
 1004b73:	ee 2f 18 
 1004b76:	a3 36 4b 5e 89 e1 87 	movabs %eax,0xa25a87e1895e4b36
 1004b7d:	5a a2 
 1004b7f:	9a                   	(bad)  
 1004b80:	f1                   	icebp  
 1004b81:	2d 54 d5 cd bb       	sub    $0xbbcdd554,%eax
 1004b86:	e1 09                	loope  0x1004b91
 1004b88:	5a                   	pop    %rdx
 1004b89:	8e d0                	mov    %eax,%ss
 1004b8b:	24 6e                	and    $0x6e,%al
 1004b8d:	6c                   	insb   (%dx),%es:(%rdi)
 1004b8e:	29 5a c3             	sub    %ebx,-0x3d(%rdx)
 1004b91:	c4                   	(bad)  
 1004b92:	d1 85 7b f4 e0 60    	roll   0x60e0f47b(%rbp)
 1004b98:	4a 3f                	rex.WX (bad) 
 1004b9a:	5d                   	pop    %rbp
 1004b9b:	21 ab 24 cb 21 6a    	and    %ebp,0x6a21cb24(%rbx)
 1004ba1:	24 a1                	and    $0xa1,%al
 1004ba3:	80 e4 8f             	and    $0x8f,%ah
 1004ba6:	d0 10                	rclb   (%rax)
 1004ba8:	5b                   	pop    %rbx
 1004ba9:	46 5b                	rex.RX pop %rbx
 1004bab:	7a c9                	jp     0x1004b76
 1004bad:	cc                   	int3   
 1004bae:	c7                   	(bad)  
 1004baf:	99                   	cltd   
 1004bb0:	a2 f2 ce 1e 47 1a 85 	movabs %al,0x5853851a471ecef2
 1004bb7:	53 58 
 1004bb9:	05 3d 72 c0 a2       	add    $0xa2c0723d,%eax
 1004bbe:	d3 34 32             	shll   %cl,(%rdx,%rsi,1)
 1004bc1:	95                   	xchg   %eax,%ebp
 1004bc2:	00 a3 4b 3b 58 90    	add    %ah,-0x6fa7c4b5(%rbx)
 1004bc8:	d6                   	(bad)  
 1004bc9:	1e                   	(bad)  
 1004bca:	1f                   	(bad)  
 1004bcb:	e9 7d 17 dd 14       	jmpq   0x15dd634d
 1004bd0:	7a cb                	jp     0x1004b9d
 1004bd2:	b3 73                	mov    $0x73,%bl
 1004bd4:	19 bb 7d 4f df 76    	sbb    %edi,0x76df4f7d(%rbx)
 1004bda:	48 7a 10             	rex.W jp 0x1004bed
 1004bdd:	3a 33                	cmp    (%rbx),%dh
 1004bdf:	f2 61                	repnz (bad) 
 1004be1:	5c                   	pop    %rsp
 1004be2:	4b 57                	rex.WXB push %r15
 1004be4:	7e f3                	jle    0x1004bd9
 1004be6:	89 88 38 c7 7f 55    	mov    %ecx,0x557fc738(%rax)
 1004bec:	41 ea                	rex.B (bad) 
 1004bee:	c8 ef 04 82          	enterq $0x4ef,$0x82
 1004bf2:	5b                   	pop    %rbx
 1004bf3:	43 37                	rex.XB (bad) 
 1004bf5:	e3 60                	jrcxz  0x1004c57
 1004bf7:	0d e2 35 f4 02       	or     $0x2f435e2,%eax
 1004bfc:	48 c3                	rex.W retq 
 1004bfe:	81 a3 08 51 82 f9 bc 	andl   $0xb3552abc,-0x67daef8(%rbx)
 1004c05:	2a 55 b3 
 1004c08:	57                   	push   %rdi
 1004c09:	b9 80 93 97 0b       	mov    $0xb979380,%ecx
 1004c0e:	56                   	push   %rsi
 1004c0f:	48 93                	xchg   %rax,%rbx
 1004c11:	2e 8d 66 b2          	lea    %cs:-0x4e(%rsi),%esp
 1004c15:	37                   	(bad)  
 1004c16:	16                   	(bad)  
 1004c17:	7e 81                	jle    0x1004b9a
 1004c19:	8e 0f                	mov    (%rdi),%cs
 1004c1b:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1004c1c:	66 64 81 f6 0c 6c    	fs xor $0x6c0c,%si
 1004c22:	3d a8 3b e9 21       	cmp    $0x21e93ba8,%eax
 1004c27:	28 af 70 21 62 64    	sub    %ch,0x64622170(%rdi)
 1004c2d:	32 02                	xor    (%rdx),%al
 1004c2f:	81 24 3d 1e d8 bf 25 	andl   $0x72b07d19,0x25bfd81e(,%rdi,1)
 1004c36:	19 7d b0 72 
 1004c3a:	23 76 70             	and    0x70(%rsi),%esi
 1004c3d:	83 08 e8             	orl    $0xffffffe8,(%rax)
 1004c40:	82                   	(bad)  
 1004c41:	7f 27                	jg     0x1004c6a
 1004c43:	24 87                	and    $0x87,%al
 1004c45:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1004c46:	b1 26                	mov    $0x26,%cl
 1004c48:	c2 37 11             	retq   $0x1137
 1004c4b:	b3 68                	mov    $0x68,%bl
 1004c4d:	b1 dd                	mov    $0xdd,%cl
 1004c4f:	c9                   	leaveq 
 1004c50:	81 45 1e 95 7d a1 56 	addl   $0x56a17d95,0x1e(%rbp)
 1004c57:	94                   	xchg   %eax,%esp
 1004c58:	50                   	push   %rax
 1004c59:	fe 47 13             	incb   0x13(%rdi)
 1004c5c:	4d                   	rex.WRB
 1004c5d:	4d 9c                	rex.WRB pushfq 
 1004c5f:	65 5d                	gs pop %rbp
 1004c61:	99                   	cltd   
 1004c62:	be e6 e5 0f 18       	mov    $0x180fe5e6,%esi
 1004c67:	f4                   	hlt    
 1004c68:	4a 5c                	rex.WX pop %rsp
 1004c6a:	4f f8                	rex.WRXB clc 
 1004c6c:	c7                   	(bad)  
 1004c6d:	64 84 37             	test   %dh,%fs:(%rdi)
 1004c70:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1004c71:	47 59                	rex.RXB pop %r9
 1004c73:	4f d4                	rex.WRXB (bad) 
 1004c75:	67 23 9d 25 1f b7 bf 	and    -0x4048e0db(%ebp),%ebx
 1004c7c:	f9                   	stc    
 1004c7d:	0b 1f                	or     (%rdi),%ebx
 1004c7f:	d8 eb                	fsubr  %st(3),%st
 1004c81:	cb                   	lret   
 1004c82:	10 85 76 8c f2 b4    	adc    %al,-0x4b0d738a(%rbp)
 1004c88:	5a                   	pop    %rdx
 1004c89:	c0 12 f5             	rclb   $0xf5,(%rdx)
 1004c8c:	41 5d                	pop    %r13
 1004c8e:	d7                   	xlat   %ds:(%rbx)
 1004c8f:	96                   	xchg   %eax,%esi
 1004c90:	1b 52 49             	sbb    0x49(%rdx),%edx
 1004c93:	6b 47 3f 2e          	imul   $0x2e,0x3f(%rdi),%eax
 1004c97:	38 a6 5a 7d ff bd    	cmp    %ah,-0x420082a6(%rsi)
 1004c9d:	3c 48                	cmp    $0x48,%al
 1004c9f:	69 f9 c6 de ba 4a    	imul   $0x4abadec6,%ecx,%edi
 1004ca5:	2e 4d 21 88 59 3c 05 	and    %r9,%cs:-0x38fac3a7(%r8)
 1004cac:	c7 
 1004cad:	66 86 6b 36          	data16 xchg %ch,0x36(%rbx)
 1004cb1:	3e ba a4 fc 06 6a    	ds mov $0x6a06fca4,%edx
 1004cb7:	f4                   	hlt    
 1004cb8:	69 02 a2 e5 d1 da    	imul   $0xdad1e5a2,(%rdx),%eax
 1004cbe:	bf 29 93 89 58       	mov    $0x58899329,%edi
 1004cc3:	d2 39                	sarb   %cl,(%rcx)
 1004cc5:	d6                   	(bad)  
 1004cc6:	f6 ce 96             	test   $0x96,%dh
 1004cc9:	38 db                	cmp    %bl,%bl
 1004ccb:	5c                   	pop    %rsp
 1004ccc:	da 83 aa 02 a3 56    	fiaddl 0x56a302aa(%rbx)
 1004cd2:	b7 20                	mov    $0x20,%bh
 1004cd4:	82                   	(bad)  
 1004cd5:	0c 58                	or     $0x58,%al
 1004cd7:	e0 fb                	loopne 0x1004cd4
 1004cd9:	7e 28                	jle    0x1004d03
 1004cdb:	d9 e8                	fld1   
 1004cdd:	aa                   	stos   %al,%es:(%rdi)
 1004cde:	c7                   	(bad)  
 1004cdf:	6c                   	insb   (%dx),%es:(%rdi)
 1004ce0:	1b 03                	sbb    (%rbx),%eax
 1004ce2:	e8 01 ac 69 fb       	callq  0xfffffffffc69f8e8
 1004ce7:	ce                   	(bad)  
 1004ce8:	56                   	push   %rsi
 1004ce9:	ea                   	(bad)  
 1004cea:	fc                   	cld    
 1004ceb:	3c b9                	cmp    $0xb9,%al
 1004ced:	8c f9                	mov    %?,%ecx
 1004cef:	b2 69                	mov    $0x69,%dl
 1004cf1:	7e 75                	jle    0x1004d68
 1004cf3:	d0 6e d4             	shrb   -0x2c(%rsi)
 1004cf6:	6e                   	outsb  %ds:(%rsi),(%dx)
 1004cf7:	65 28 57 1e          	sub    %dl,%gs:0x1e(%rdi)
 1004cfb:	c2 60 11             	retq   $0x1160
 1004cfe:	45 c8 9f e1 9c       	rex.RB enterq $0xe19f,$0x9c
 1004d03:	fe                   	(bad)  
 1004d04:	3c f5                	cmp    $0xf5,%al
 1004d06:	d3 ae 16 4e de 55    	shrl   %cl,0x55de4e16(%rsi)
 1004d0c:	e8 fc 59 db 20       	callq  0x21dba70d
 1004d11:	33 0f                	xor    (%rdi),%ecx
 1004d13:	02 1c 39             	add    (%rcx,%rdi,1),%bl
 1004d16:	83 71 bc 49          	xorl   $0x49,-0x44(%rcx)
 1004d1a:	19 a6 33 6a 35 e1    	sbb    %esp,-0x1eca95cd(%rsi)
 1004d20:	99                   	cltd   
 1004d21:	4a 19 1a             	rex.WX sbb %rbx,(%rdx)
 1004d24:	69 1a 33 0e ee 97    	imul   $0x97ee0e33,(%rdx),%ebx
 1004d2a:	a3 c7 cd ac f7 59 9f 	movabs %eax,0xf9039f59f7accdc7
 1004d31:	03 f9 
 1004d33:	f0 79 14             	lock jns 0x1004d4a
 1004d36:	4a cc                	rex.WX int3 
 1004d38:	1a a8 6f 19 6e 33    	sbb    0x336e196f(%rax),%ch
 1004d3e:	d2 55 80             	rclb   %cl,-0x80(%rbp)
 1004d41:	87 0e                	xchg   %ecx,(%rsi)
 1004d43:	5e                   	pop    %rsi
 1004d44:	bf b3 d9 2b 15       	mov    $0x152bd9b3,%edi
 1004d49:	9e                   	sahf   
 1004d4a:	03 e7                	add    %edi,%esp
 1004d4c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1004d4d:	91                   	xchg   %eax,%ecx
 1004d4e:	14 8b                	adc    $0x8b,%al
 1004d50:	31 5f bf             	xor    %ebx,-0x41(%rdi)
 1004d53:	49                   	rex.WB
 1004d54:	f0 a2 4a 13 4a 55 07 	lock movabs %al,0xdb72c807554a134a
 1004d5b:	c8 72 db 
 1004d5e:	e8 90 61 0d dc       	callq  0xffffffffdd0daef3
 1004d63:	3c ed                	cmp    $0xed,%al
 1004d65:	dd 22                	frstor (%rdx)
 1004d67:	58                   	pop    %rax
 1004d68:	27                   	(bad)  
 1004d69:	c7                   	(bad)  
 1004d6a:	79 9a                	jns    0x1004d06
 1004d6c:	34 5f                	xor    $0x5f,%al
 1004d6e:	67 58                	addr32 pop %rax
 1004d70:	ce                   	(bad)  
 1004d71:	3f                   	(bad)  
 1004d72:	cf                   	iret   
 1004d73:	24 3a                	and    $0x3a,%al
 1004d75:	b5 2e                	mov    $0x2e,%ch
 1004d77:	01 4a a6             	add    %ecx,-0x5a(%rdx)
 1004d7a:	4d 69 7b fb 04 94 d2 	imul   $0xffffffffead29404,-0x5(%r11),%r15
 1004d81:	ea 
 1004d82:	c5 34 24             	(bad)
 1004d85:	3b ee                	cmp    %esi,%ebp
 1004d87:	43 17                	rex.XB (bad) 
 1004d89:	e6 9d                	out    %al,$0x9d
 1004d8b:	d8 99 81 c4 a4 02    	fcomps 0x2a4c481(%rcx)
 1004d91:	9e                   	sahf   
 1004d92:	04 ab                	add    $0xab,%al
 1004d94:	b0 21                	mov    $0x21,%al
 1004d96:	67 cc                	addr32 int3 
 1004d98:	09 d3                	or     %edx,%ebx
 1004d9a:	4e b2 92             	rex.WRX mov $0x92,%dl
 1004d9d:	58                   	pop    %rax
 1004d9e:	2b 71 aa             	sub    -0x56(%rcx),%esi
 1004da1:	1b 4a 76             	sbb    0x76(%rdx),%ecx
 1004da4:	83 dd f0             	sbb    $0xfffffff0,%ebp
 1004da7:	9a                   	(bad)  
 1004da8:	06                   	(bad)  
 1004da9:	41                   	rex.B
 1004daa:	44                   	rex.R
 1004dab:	4a 54                	rex.WX push %rsp
 1004dad:	f9                   	stc    
 1004dae:	e0 15                	loopne 0x1004dc5
 1004db0:	86 6b a8             	xchg   %ch,-0x58(%rbx)
 1004db3:	7b 68                	jnp    0x1004e1d
 1004db5:	2e 3f                	cs (bad) 
 1004db7:	6b 9f 29 6b 34 6f 62 	imul   $0x62,0x6f346b29(%rdi),%ebx
 1004dbe:	6e                   	outsb  %ds:(%rsi),(%dx)
 1004dbf:	d6                   	(bad)  
 1004dc0:	dc 16                	fcoml  (%rsi)
 1004dc2:	63 67 5a             	movsxd 0x5a(%rdi),%esp
 1004dc5:	0d 3d bf 13 c7       	or     $0xc713bf3d,%eax
 1004dca:	d8 b6 4a 24 34 72    	fdivs  0x7234244a(%rsi)
 1004dd0:	b0 30                	mov    $0x30,%al
 1004dd2:	d4                   	(bad)  
 1004dd3:	09 31                	or     %esi,(%rcx)
 1004dd5:	1a ad f7 34 18 d5    	sbb    -0x2ae7cb09(%rbp),%ch
 1004ddb:	64 c4                	fs (bad) 
 1004ddd:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1004dde:	44 37                	rex.R (bad) 
 1004de0:	ce                   	(bad)  
 1004de1:	2e cd c6             	cs int $0xc6
 1004de4:	30 be df a3 1d f1    	xor    %bh,-0xee25c21(%rsi)
 1004dea:	16                   	(bad)  
 1004deb:	de d8                	(bad)  
 1004ded:	13 c1                	adc    %ecx,%eax
 1004def:	ad                   	lods   %ds:(%rsi),%eax
 1004df0:	ae                   	scas   %es:(%rdi),%al
 1004df1:	5e                   	pop    %rsi
 1004df2:	97                   	xchg   %eax,%edi
 1004df3:	7c cf                	jl     0x1004dc4
 1004df5:	ac                   	lods   %ds:(%rsi),%al
 1004df6:	5a                   	pop    %rdx
 1004df7:	b6 db                	mov    $0xdb,%dh
 1004df9:	cd 9a                	int    $0x9a
 1004dfb:	c2 8d fe             	retq   $0xfe8d
 1004dfe:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1004dff:	41 3b fd             	cmp    %r13d,%edi
 1004e02:	bf e0 d1 33 c3       	mov    $0xc333d1e0,%edi
 1004e07:	1b 3b                	sbb    (%rbx),%edi
 1004e09:	30 35 3b aa 81 9b    	xor    %dh,-0x647e55c5(%rip)        # 0xffffffff9c81f84a
 1004e0f:	93                   	xchg   %eax,%ebx
 1004e10:	1e                   	(bad)  
 1004e11:	0e                   	(bad)  
 1004e12:	92                   	xchg   %eax,%edx
 1004e13:	3c 4f                	cmp    $0x4f,%al
 1004e15:	e5 cd                	in     $0xcd,%eax
 1004e17:	81 16 50 51 dc 12    	adcl   $0x12dc5150,(%rsi)
 1004e1d:	6b e2 a1             	imul   $0xffffffa1,%edx,%esp
 1004e20:	2c 33                	sub    $0x33,%al
 1004e22:	49                   	rex.WB
 1004e23:	f0 33 3d da 97 43 bb 	lock xor -0x44bc6826(%rip),%edi        # 0xffffffffbc43e604
 1004e2a:	a0 5a 90 86 e6 70 13 	movabs 0xcedc1370e686905a,%al
 1004e31:	dc ce 
 1004e33:	6c                   	insb   (%dx),%es:(%rdi)
 1004e34:	0f 40 a2 d6 59 58 44 	cmovo  0x445859d6(%rdx),%esp
 1004e3b:	56                   	push   %rsi
 1004e3c:	1f                   	(bad)  
 1004e3d:	46 b6 c1             	rex.RX mov $0xc1,%sil
 1004e40:	13 f7                	adc    %edi,%esi
 1004e42:	ed                   	in     (%dx),%eax
 1004e43:	39 a1 a9 f4 35 80    	cmp    %esp,-0x7fca0b57(%rcx)
 1004e49:	13 df                	adc    %edi,%ebx
 1004e4b:	9e                   	sahf   
 1004e4c:	b0 9c                	mov    $0x9c,%al
 1004e4e:	0b 08                	or     (%rax),%ecx
 1004e50:	7d b0                	jge    0x1004e02
 1004e52:	0f f8 c8             	psubb  %mm0,%mm1
 1004e55:	f8                   	clc    
 1004e56:	c7                   	(bad)  
 1004e57:	b8 96 cd 4c 2a       	mov    $0x2a4ccd96,%eax
 1004e5c:	d6                   	(bad)  
 1004e5d:	17                   	(bad)  
 1004e5e:	66 c5 c1 72          	(bad)
 1004e62:	1a b8 50 0c fb a2    	sbb    -0x5d04f3b0(%rax),%bh
 1004e68:	b0 80                	mov    $0x80,%al
 1004e6a:	df 24 9b             	fbld   (%rbx,%rbx,4)
 1004e6d:	2b 8d 1b b7 67 07    	sub    0x767b71b(%rbp),%ecx
 1004e73:	0b 0f                	or     (%rdi),%ecx
 1004e75:	62                   	(bad)  
 1004e76:	cd cd                	int    $0xcd
 1004e78:	46 bd 17 b6 1e 3f    	rex.RX mov $0x3f1eb617,%ebp
 1004e7e:	59                   	pop    %rcx
 1004e7f:	fb                   	sti    
 1004e80:	78 60                	js     0x1004ee2
 1004e82:	74 9b                	je     0x1004e1f
 1004e84:	90                   	nop
 1004e85:	6b 59 28 52          	imul   $0x52,0x28(%rcx),%ebx
 1004e89:	43                   	rex.XB
 1004e8a:	4c cc                	rex.WR int3 
 1004e8c:	db 07                	fildl  (%rdi)
 1004e8e:	7f 13                	jg     0x1004ea3
 1004e90:	8a 98 62 ec 82 50    	mov    0x5082ec62(%rax),%bl
 1004e96:	80 ac 63 a2 b6 dd 9b 	subb   $0x17,-0x6422495e(%rbx,%riz,2)
 1004e9d:	17 
 1004e9e:	44                   	rex.R
 1004e9f:	f0 81 1c 5c 85 dd da 	lock sbbl $0x8fdadd85,(%rsp,%rbx,2)
 1004ea6:	8f 
 1004ea7:	09 50 33             	or     %edx,0x33(%rax)
 1004eaa:	e7 eb                	out    %eax,$0xeb
 1004eac:	40 b1 84             	mov    $0x84,%cl
 1004eaf:	41 ba b7 3a 84 c5    	mov    $0xc5843ab7,%r10d
 1004eb5:	db c1                	fcmovnb %st(1),%st
 1004eb7:	c9                   	leaveq 
 1004eb8:	3b 7a 6a             	cmp    0x6a(%rdx),%edi
 1004ebb:	c7                   	(bad)  
 1004ebc:	aa                   	stos   %al,%es:(%rdi)
 1004ebd:	3c 63                	cmp    $0x63,%al
 1004ebf:	d6                   	(bad)  
 1004ec0:	ab                   	stos   %eax,%es:(%rdi)
 1004ec1:	e1 40                	loope  0x1004f03
 1004ec3:	b0 13                	mov    $0x13,%al
 1004ec5:	e1 e6                	loope  0x1004ead
 1004ec7:	ea                   	(bad)  
 1004ec8:	5b                   	pop    %rbx
 1004ec9:	0d c0 71 5e ff       	or     $0xff5e71c0,%eax
 1004ece:	96                   	xchg   %eax,%esi
 1004ecf:	59                   	pop    %rcx
 1004ed0:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1004ed1:	1c f5                	sbb    $0xf5,%al
 1004ed3:	4d 07                	rex.WRB (bad) 
 1004ed5:	c0 ab 1a ec d5 10 d0 	shrb   $0xd0,0x10d5ec1a(%rbx)
 1004edc:	ee                   	out    %al,(%dx)
 1004edd:	fd                   	std    
 1004ede:	9f                   	lahf   
 1004edf:	35 34 af e1 97       	xor    $0x97e1af34,%eax
 1004ee4:	2f                   	(bad)  
 1004ee5:	15 ba 1f bb 84       	adc    $0x84bb1fba,%eax
 1004eea:	c4                   	(bad)  
 1004eeb:	b2 8d                	mov    $0x8d,%dl
 1004eed:	a1 c1 05 8e 26 71 64 	movabs 0x52da6471268e05c1,%eax
 1004ef4:	da 52 
 1004ef6:	35 a7 e0 fd c4       	xor    $0xc4fde0a7,%eax
 1004efb:	ab                   	stos   %eax,%es:(%rdi)
 1004efc:	a1 8c ee 9f 4e 24 cb 	movabs 0xeb12cb244e9fee8c,%eax
 1004f03:	12 eb 
 1004f05:	e6 67                	out    %al,$0x67
 1004f07:	7a 97                	jp     0x1004ea0
 1004f09:	d5                   	(bad)  
 1004f0a:	b9 46 85 05 1f       	mov    $0x1f058546,%ecx
 1004f0f:	e6 80                	out    %al,$0x80
 1004f11:	1c 01                	sbb    $0x1,%al
 1004f13:	34 f8                	xor    $0xf8,%al
 1004f15:	3b dc                	cmp    %esp,%ebx
 1004f17:	a1 a1 44 fb bd a2 9c 	movabs 0x6fcb9ca2bdfb44a1,%eax
 1004f1e:	cb 6f 
 1004f20:	fa                   	cli    
 1004f21:	e4 d4                	in     $0xd4,%al
 1004f23:	49 8b b9 55 30 c3 54 	mov    0x54c33055(%r9),%rdi
 1004f2a:	4c d3 80 ef 68 4d 61 	rex.WR rolq %cl,0x614d68ef(%rax)
 1004f31:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1004f32:	07                   	(bad)  
 1004f33:	97                   	xchg   %eax,%edi
 1004f34:	87 ae 8d 67 91 ae    	xchg   %ebp,-0x516e9873(%rsi)
 1004f3a:	f9                   	stc    
 1004f3b:	d8 6b f1             	fsubrs -0xf(%rbx)
 1004f3e:	d6                   	(bad)  
 1004f3f:	71 44                	jno    0x1004f85
 1004f41:	ce                   	(bad)  
 1004f42:	fe                   	(bad)  
 1004f43:	d1 fd                	sar    %ebp
 1004f45:	36 b9 be 3d 96 17    	ss mov $0x17963dbe,%ecx
 1004f4b:	11 a9 73 e5 7c e8    	adc    %ebp,-0x17831a8d(%rcx)
 1004f51:	4a 37                	rex.WX (bad) 
 1004f53:	b5 77                	mov    $0x77,%ch
 1004f55:	c5 13 13             	(bad)
 1004f58:	03 c4                	add    %esp,%eax
 1004f5a:	b8 53 3b 7c 6d       	mov    $0x6d7c3b53,%eax
 1004f5f:	9d                   	popfq  
 1004f60:	b4 81                	mov    $0x81,%ah
 1004f62:	94                   	xchg   %eax,%esp
 1004f63:	94                   	xchg   %eax,%esp
 1004f64:	2e 30 5d 7b          	xor    %bl,%cs:0x7b(%rbp)
 1004f68:	ba f4 40 59 6e       	mov    $0x6e5940f4,%edx
 1004f6d:	cc                   	int3   
 1004f6e:	86 91 e2 6b fe 40    	xchg   %dl,0x40fe6be2(%rcx)
 1004f74:	96                   	xchg   %eax,%esi
 1004f75:	74 50                	je     0x1004fc7
 1004f77:	ae                   	scas   %es:(%rdi),%al
 1004f78:	72 6f                	jb     0x1004fe9
 1004f7a:	1d 78 88 9b 7f       	sbb    $0x7f9b8878,%eax
 1004f7f:	be 8a 2f 86 86       	mov    $0x86862f8a,%esi
 1004f84:	c7                   	(bad)  
 1004f85:	8a 51 97             	mov    -0x69(%rcx),%dl
 1004f88:	b6 52                	mov    $0x52,%dh
 1004f8a:	78 99                	js     0x1004f25
 1004f8c:	0d 18 1b eb e9       	or     $0xe9eb1b18,%eax
 1004f91:	eb 87                	jmp    0x1004f1a
 1004f93:	b9 19 37 c3 f9       	mov    $0xf9c33719,%ecx
 1004f98:	5a                   	pop    %rdx
 1004f99:	40 d5                	rex (bad) 
 1004f9b:	42 ef                	rex.X out %eax,(%dx)
 1004f9d:	3a 50 fb             	cmp    -0x5(%rax),%dl
 1004fa0:	53                   	push   %rbx
 1004fa1:	ee                   	out    %al,(%dx)
 1004fa2:	d9 43 3b             	flds   0x3b(%rbx)
 1004fa5:	75 63                	jne    0x100500a
 1004fa7:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1004fa8:	ad                   	lods   %ds:(%rsi),%eax
 1004fa9:	48 a0 7b d2 00 61 4e 	rex.W movabs 0xdfbaa04e6100d27b,%al
 1004fb0:	a0 ba df 
 1004fb3:	ac                   	lods   %ds:(%rsi),%al
 1004fb4:	fa                   	cli    
 1004fb5:	f0 65 ef             	lock gs out %eax,(%dx)
 1004fb8:	b7 52                	mov    $0x52,%bh
 1004fba:	2f                   	(bad)  
 1004fbb:	ea                   	(bad)  
 1004fbc:	d9 42 60             	flds   0x60(%rdx)
 1004fbf:	98                   	cwtl   
 1004fc0:	9a                   	(bad)  
 1004fc1:	8a 86 0e 47 7d 12    	mov    0x127d470e(%rsi),%al
 1004fc7:	24 3b                	and    $0x3b,%al
 1004fc9:	09 c9                	or     %ecx,%ecx
 1004fcb:	5e                   	pop    %rsi
 1004fcc:	32 9c 09 4c 12 9c 6c 	xor    0x6c9c124c(%rcx,%rcx,1),%bl
 1004fd3:	5e                   	pop    %rsi
 1004fd4:	36 a8 92             	ss test $0x92,%al
 1004fd7:	5f                   	pop    %rdi
 1004fd8:	2e dc 13             	fcoml  %cs:(%rbx)
 1004fdb:	6c                   	insb   (%dx),%es:(%rdi)
 1004fdc:	09 b7 27 d3 ef 02    	or     %esi,0x2efd327(%rdi)
 1004fe2:	8e e3                	mov    %ebx,%fs
 1004fe4:	38 ca                	cmp    %cl,%dl
 1004fe6:	d3 72 91             	shll   %cl,-0x6f(%rdx)
 1004fe9:	b4 d2                	mov    $0xd2,%ah
 1004feb:	57                   	push   %rdi
 1004fec:	3f                   	(bad)  
 1004fed:	7a dc                	jp     0x1004fcb
 1004fef:	74 6a                	je     0x100505b
 1004ff1:	c4                   	(bad)  
 1004ff2:	3e 3c bc             	ds cmp $0xbc,%al
 1004ff5:	14 6f                	adc    $0x6f,%al
 1004ff7:	03 b9 88 7c 25 b6    	add    -0x49da8378(%rcx),%edi
 1004ffd:	23 42 1b             	and    0x1b(%rdx),%eax
 1005000:	52                   	push   %rdx
 1005001:	d6                   	(bad)  
 1005002:	fc                   	cld    
 1005003:	db 12                	fistl  (%rdx)
 1005005:	77 48                	ja     0x100504f
 1005007:	b8 18 a6 97 a9       	mov    $0xa997a618,%eax
 100500c:	48 2c 06             	rex.W sub $0x6,%al
 100500f:	6f                   	outsl  %ds:(%rsi),(%dx)
 1005010:	de d1                	(bad)  
 1005012:	f2 11 3f             	repnz adc %edi,(%rdi)
 1005015:	c9                   	leaveq 
 1005016:	5b                   	pop    %rbx
 1005017:	b2 d4                	mov    $0xd4,%dl
 1005019:	b0 a9                	mov    $0xa9,%al
 100501b:	94                   	xchg   %eax,%esp
 100501c:	05 63 d2 9f bc       	add    $0xbc9fd263,%eax
 1005021:	21 98 29 88 70 2b    	and    %ebx,0x2b708829(%rax)
 1005027:	71 bc                	jno    0x1004fe5
 1005029:	d9 82 78 77 28 e4    	flds   -0x1bd78888(%rdx)
 100502f:	91                   	xchg   %eax,%ecx
 1005030:	46 39 d1             	rex.RX cmp %r10d,%ecx
 1005033:	3d 36 7a 7a 6c       	cmp    $0x6c7a7a36,%eax
 1005038:	10 b3 b2 0d b4 37    	adc    %dh,0x37b40db2(%rbx)
 100503e:	cd dd                	int    $0xdd
 1005040:	3d a1 d5 ca 03       	cmp    $0x3cad5a1,%eax
 1005045:	e3 e5                	jrcxz  0x100502c
 1005047:	c1 79 fc db          	sarl   $0xdb,-0x4(%rcx)
 100504b:	cd 4b                	int    $0x4b
 100504d:	a8 5a                	test   $0x5a,%al
 100504f:	e0 d2                	loopne 0x1005023
 1005051:	e5 51                	in     $0x51,%eax
 1005053:	35 87 45 eb 69       	xor    $0x69eb4587,%eax
 1005058:	7d 51                	jge    0x10050ab
 100505a:	07                   	(bad)  
 100505b:	f8                   	clc    
 100505c:	d4                   	(bad)  
 100505d:	ef                   	out    %eax,(%dx)
 100505e:	92                   	xchg   %eax,%edx
 100505f:	12 aa 99 2e 87 aa    	adc    -0x5578d167(%rdx),%ch
 1005065:	62                   	(bad)  
 1005066:	a9 62 68 8d 42       	test   $0x428d6862,%eax
 100506b:	4f 90                	rex.WRXB xchg %rax,%r8
 100506d:	1a 46 fc             	sbb    -0x4(%rsi),%al
 1005070:	ad                   	lods   %ds:(%rsi),%eax
 1005071:	d6                   	(bad)  
 1005072:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1005073:	df 9a 48 8b 43 96    	fistps -0x69bc74b8(%rdx)
 1005079:	a3 99 33 fe 99 d0 6a 	movabs %eax,0xdb3a6ad099fe3399
 1005080:	3a db 
 1005082:	b0 9f                	mov    $0x9f,%al
 1005084:	10 42 49             	adc    %al,0x49(%rdx)
 1005087:	e8 6a 76 cc 47       	callq  0x48ccc6f6
 100508c:	99                   	cltd   
 100508d:	2c a6                	sub    $0xa6,%al
 100508f:	da 06                	fiaddl (%rsi)
 1005091:	b0 11                	mov    $0x11,%al
 1005093:	79 c7                	jns    0x100505c
 1005095:	fe                   	(bad)  
 1005096:	b9 b1 21 e7 f8       	mov    $0xf8e721b1,%ecx
 100509b:	c5 1a 1b             	(bad)
 100509e:	fd                   	std    
 100509f:	ff c4                	inc    %esp
 10050a1:	c8 79 78 2e          	enterq $0x7879,$0x2e
 10050a5:	a8 ee                	test   $0xee,%al
 10050a7:	57                   	push   %rdi
 10050a8:	67 20 44 f4 54       	and    %al,0x54(%esp,%esi,8)
 10050ad:	31 e8                	xor    %ebp,%eax
 10050af:	93                   	xchg   %eax,%ebx
 10050b0:	4f 2b 3d ed 6c 0a e0 	rex.WRXB sub -0x1ff59313(%rip),%r15        # 0xffffffffe10abda4
 10050b7:	b7 64                	mov    $0x64,%bh
 10050b9:	50                   	push   %rax
 10050ba:	a0 ab b5 cf 08 12 93 	movabs 0xb23c931208cfb5ab,%al
 10050c1:	3c b2 
 10050c3:	c4 21 ae 18          	(bad)
 10050c7:	e0 91                	loopne 0x100505a
 10050c9:	d4                   	(bad)  
 10050ca:	29 19                	sub    %ebx,(%rcx)
 10050cc:	af                   	scas   %es:(%rdi),%eax
 10050cd:	de 22                	fisubs (%rdx)
 10050cf:	62                   	(bad)  
 10050d0:	48 01 a4 06 fd 10 ba 	add    %rsp,0x60ba10fd(%rsi,%rax,1)
 10050d7:	60 
 10050d8:	85 f6                	test   %esi,%esi
 10050da:	f4                   	hlt    
 10050db:	a0 3d bf 11 d0 9c 3e 	movabs 0x79873e9cd011bf3d,%al
 10050e2:	87 79 
 10050e4:	d9 70 ff             	fnstenv -0x1(%rax)
 10050e7:	02 20                	add    (%rax),%ah
 10050e9:	15 6a cd e5 38       	adc    $0x38e5cd6a,%eax
 10050ee:	2e 63 67 c9          	movsxd %cs:-0x37(%rdi),%esp
 10050f2:	ba 2e 7a 44 9a       	mov    $0x9a447a2e,%edx
 10050f7:	34 a7                	xor    $0xa7,%al
 10050f9:	13 d8                	adc    %eax,%ebx
 10050fb:	09 e3                	or     %esp,%ebx
 10050fd:	86 67 0f             	xchg   %ah,0xf(%rdi)
 1005100:	1e                   	(bad)  
 1005101:	7d 7d                	jge    0x1005180
 1005103:	fb                   	sti    
 1005104:	86 e7                	xchg   %ah,%bh
 1005106:	cb                   	lret   
 1005107:	96                   	xchg   %eax,%esi
 1005108:	5c                   	pop    %rsp
 1005109:	80 b7 2b 2c 50 1c d4 	xorb   $0xd4,0x1c502c2b(%rdi)
 1005110:	26 43 ba dc 47 ff 66 	es rex.XB mov $0x66ff47dc,%r10d
 1005117:	c8 9f 4c b3          	enterq $0x4c9f,$0xb3
 100511b:	1a d5                	sbb    %ch,%dl
 100511d:	9b                   	fwait
 100511e:	b3 a3                	mov    $0xa3,%bl
 1005120:	41 54                	push   %r12
 1005122:	73 86                	jae    0x10050aa
 1005124:	53                   	push   %rbx
 1005125:	39 2c 6e             	cmp    %ebp,(%rsi,%rbp,2)
 1005128:	bc 6d bd 6e ab       	mov    $0xab6ebd6d,%esp
 100512d:	35 9f 4d 92 bd       	xor    $0xbd924d9f,%eax
 1005132:	3a 92 36 ca d6 75    	cmp    0x75d6ca36(%rdx),%dl
 1005138:	c7                   	(bad)  
 1005139:	57                   	push   %rdi
 100513a:	97                   	xchg   %eax,%edi
 100513b:	1d dd f1 95 d2       	sbb    $0xd295f1dd,%eax
 1005140:	ff 5e db             	lcall  *-0x25(%rsi)
 1005143:	e8 da dc 5e 37       	callq  0x385f2e22
 1005148:	58                   	pop    %rax
 1005149:	c6                   	(bad)  
 100514a:	b9 35 a4 dd 7f       	mov    $0x7fdda435,%ecx
 100514f:	41 6a 5b             	rex.B pushq $0x5b
 1005152:	39 8b d7 24 02 0c    	cmp    %ecx,0xc0224d7(%rbx)
 1005158:	79 a8                	jns    0x1005102
 100515a:	b1 70                	mov    $0x70,%cl
 100515c:	92                   	xchg   %eax,%edx
 100515d:	aa                   	stos   %al,%es:(%rdi)
 100515e:	8d 28                	lea    (%rax),%ebp
 1005160:	f6 cf 00             	test   $0x0,%bh
 1005163:	11 d5                	adc    %edx,%ebp
 1005165:	7c f5                	jl     0x100515c
 1005167:	00 c4                	add    %al,%ah
 1005169:	d7                   	xlat   %ds:(%rbx)
 100516a:	60                   	(bad)  
 100516b:	cd 96                	int    $0x96
 100516d:	17                   	(bad)  
 100516e:	e0 ae                	loopne 0x100511e
 1005170:	4f cc                	rex.WRXB int3 
 1005172:	4a 86 91 be d9 74 85 	rex.WX xchg %dl,-0x7a8b2642(%rcx)
 1005179:	72 ba                	jb     0x1005135
 100517b:	b4 b6                	mov    $0xb6,%ah
 100517d:	50                   	push   %rax
 100517e:	dc 95 50 16 db a0    	fcoml  -0x5f24e9b0(%rbp)
 1005184:	7e 41                	jle    0x10051c7
 1005186:	f2 dc db             	repnz (bad) 
 1005189:	4e 5a                	rex.WRX pop %rdx
 100518b:	bd 00 79 dc 0f       	mov    $0xfdc7900,%ebp
 1005190:	5e                   	pop    %rsi
 1005191:	05 fc 0b 01 84       	add    $0x84010bfc,%eax
 1005196:	e9 ca 61 42 52       	jmpq   0x5342b365
 100519b:	c1 26 03             	shll   $0x3,(%rsi)
 100519e:	22 62 0c             	and    0xc(%rdx),%ah
 10051a1:	09 18                	or     %ebx,(%rax)
 10051a3:	00 cd                	add    %cl,%ch
 10051a5:	74 93                	je     0x100513a
 10051a7:	3e 0b 5d 28          	or     %ds:0x28(%rbp),%ebx
 10051ab:	97                   	xchg   %eax,%edi
 10051ac:	4d                   	rex.WRB
 10051ad:	9b                   	fwait
 10051ae:	ca 4b 33             	lret   $0x334b
 10051b1:	d2 8e 84 bc 97 57    	rorb   %cl,0x5797bc84(%rsi)
 10051b7:	03 5e 24             	add    0x24(%rsi),%ebx
 10051ba:	51                   	push   %rcx
 10051bb:	bb 20 ec a2 6e       	mov    $0x6ea2ec20,%ebx
 10051c0:	88 fe                	mov    %bh,%dh
 10051c2:	f3 9c                	repz pushfq 
 10051c4:	75 02                	jne    0x10051c8
 10051c6:	b8 f9 0a df 52       	mov    $0x52df0af9,%eax
 10051cb:	26 cb                	es lret 
 10051cd:	f6 d0                	not    %al
 10051cf:	86 f5                	xchg   %dh,%ch
 10051d1:	09 f5                	or     %esi,%ebp
 10051d3:	bf ea c0 b9 36       	mov    $0x36b9c0ea,%edi
 10051d8:	ab                   	stos   %eax,%es:(%rdi)
 10051d9:	69 e9 0e 0a 6c db    	imul   $0xdb6c0a0e,%ecx,%ebp
 10051df:	20 00                	and    %al,(%rax)
 10051e1:	21 db                	and    %ebx,%ebx
 10051e3:	ff 58 cd             	lcall  *-0x33(%rax)
 10051e6:	36 c1 c8 73          	ss ror $0x73,%eax
 10051ea:	61                   	(bad)  
 10051eb:	61                   	(bad)  
 10051ec:	ad                   	lods   %ds:(%rsi),%eax
 10051ed:	25 dc df b2 1a       	and    $0x1ab2dfdc,%eax
 10051f2:	2f                   	(bad)  
 10051f3:	e0 9b                	loopne 0x1005190
 10051f5:	d5                   	(bad)  
 10051f6:	c8 61 67 05          	enterq $0x6761,$0x5
 10051fa:	61                   	(bad)  
 10051fb:	1c 9b                	sbb    $0x9b,%al
 10051fd:	4a 6b 83 43 35 45 66 	rex.WX imul $0x15,0x66453543(%rbx),%rax
 1005204:	15 
 1005205:	13 21                	adc    (%rcx),%esp
 1005207:	57                   	push   %rdi
 1005208:	80 3c 43 78          	cmpb   $0x78,(%rbx,%rax,2)
 100520c:	94                   	xchg   %eax,%esp
 100520d:	aa                   	stos   %al,%es:(%rdi)
 100520e:	41 0e                	rex.B (bad) 
 1005210:	3e 04 47             	ds add $0x47,%al
 1005213:	3a fd                	cmp    %ch,%bh
 1005215:	8c 06                	mov    %es,(%rsi)
 1005217:	87 1f                	xchg   %ebx,(%rdi)
 1005219:	2a 56 5d             	sub    0x5d(%rsi),%dl
 100521c:	42                   	rex.X
 100521d:	2e 87 b1 3e fb a9 64 	xchg   %esi,%cs:0x64a9fb3e(%rcx)
 1005224:	dc bf 4c 7e 92 7f    	fdivrl 0x7f927e4c(%rdi)
 100522a:	e1 95                	loope  0x10051c1
 100522c:	71 86                	jno    0x10051b4
 100522e:	40 e2 70             	rex loop 0x10052a1
 1005231:	2d 6c 38 84 af       	sub    $0xaf84386c,%eax
 1005236:	c3                   	retq   
 1005237:	bc d1 20 57 26       	mov    $0x265720d1,%esp
 100523c:	4a                   	rex.WX
 100523d:	65 4f 88 43 78       	rex.WRXB mov %r8b,%gs:0x78(%r11)
 1005242:	f6 25 4e 01 3a a8    	mulb   -0x57c5feb2(%rip)        # 0xffffffffa93a5396
 1005248:	f9                   	stc    
 1005249:	09 28                	or     %ebp,(%rax)
 100524b:	69 7c 60 3a bb 9f 6a 	imul   $0xc76a9fbb,0x3a(%rax,%riz,2),%edi
 1005252:	c7 
 1005253:	c9                   	leaveq 
 1005254:	7e 73                	jle    0x10052c9
 1005256:	9d                   	popfq  
 1005257:	b7 57                	mov    $0x57,%bh
 1005259:	c2 a5 8d             	retq   $0x8da5
 100525c:	ac                   	lods   %ds:(%rsi),%al
 100525d:	21 84 b5 4d cc 28 02 	and    %eax,0x228cc4d(%rbp,%rsi,4)
 1005264:	b3 67                	mov    $0x67,%bl
 1005266:	e5 e2                	in     $0xe2,%eax
 1005268:	45 17                	rex.RB (bad) 
 100526a:	2d 54 6b b2 e5       	sub    $0xe5b26b54,%eax
 100526f:	2f                   	(bad)  
 1005270:	e0 a0                	loopne 0x1005212
 1005272:	06                   	(bad)  
 1005273:	72 05                	jb     0x100527a
 1005275:	ef                   	out    %eax,(%dx)
 1005276:	0a e1                	or     %cl,%ah
 1005278:	12 a7 5d 0c 2a 24    	adc    0x242a0c5d(%rdi),%ah
 100527e:	4f 19 55 fc          	rex.WRXB sbb %r10,-0x4(%r13)
 1005282:	38 56 4a             	cmp    %dl,0x4a(%rsi)
 1005285:	86 5e 61             	xchg   %bl,0x61(%rsi)
 1005288:	20 fd                	and    %bh,%ch
 100528a:	4b 15 0b 7e 17 5f    	rex.WXB adc $0x5f177e0b,%rax
 1005290:	20 88 11 51 2d 0f    	and    %cl,0xf2d5111(%rax)
 1005296:	8a 0a                	mov    (%rdx),%cl
 1005298:	14 9a                	adc    $0x9a,%al
 100529a:	0b 9c 11 77 22 77 50 	or     0x50772277(%rcx,%rdx,1),%ebx
 10052a1:	38 02                	cmp    %al,(%rdx)
 10052a3:	6b 34 27 3b          	imul   $0x3b,(%rdi,%riz,1),%esi
 10052a7:	83 83 b1 b7 bc d7 0b 	addl   $0xb,-0x2843484f(%rbx)
 10052ae:	14 44                	adc    $0x44,%al
 10052b0:	50                   	push   %rax
 10052b1:	2e 38 54 31 fb       	cmp    %dl,%cs:-0x5(%rcx,%rsi,1)
 10052b6:	96                   	xchg   %eax,%esi
 10052b7:	be a5 78 8b 83       	mov    $0x838b78a5,%esi
 10052bc:	89 a4 69 2c b1 2e 93 	mov    %esp,-0x6cd14ed4(%rcx,%rbp,2)
 10052c3:	17                   	(bad)  
 10052c4:	9c                   	pushfq 
 10052c5:	10 f0                	adc    %dh,%al
 10052c7:	8f                   	(bad)  
 10052c8:	7a d2                	jp     0x100529c
 10052ca:	d5                   	(bad)  
 10052cb:	dd ee                	fucomp %st(6)
 10052cd:	2f                   	(bad)  
 10052ce:	34 55                	xor    $0x55,%al
 10052d0:	83 b5 fe 6d 05 d0 02 	xorl   $0x2,-0x2ffa9202(%rbp)
 10052d7:	4b                   	rex.WXB
 10052d8:	3e 24 47             	ds and $0x47,%al
 10052db:	90                   	nop
 10052dc:	a0 70 ff c3 08 39 bc 	movabs 0x11eabc3908c3ff70,%al
 10052e3:	ea 11 
 10052e5:	c7                   	(bad)  
 10052e6:	92                   	xchg   %eax,%edx
 10052e7:	97                   	xchg   %eax,%edi
 10052e8:	da 20                	fisubl (%rax)
 10052ea:	62                   	(bad)  
 10052eb:	1d e7 37 17 77       	sbb    $0x771737e7,%eax
 10052f0:	af                   	scas   %es:(%rdi),%eax
 10052f1:	76 a4                	jbe    0x1005297
 10052f3:	8b 9d da 22 3e f2    	mov    -0xdc1dd26(%rbp),%ebx
 10052f9:	a0 36 96 fc 75 f9 34 	movabs 0x8f3a34f975fc9636,%al
 1005300:	3a 8f 
 1005302:	c4                   	(bad)  
 1005303:	ff                   	(bad)  
 1005304:	3f                   	(bad)  
 1005305:	aa                   	stos   %al,%es:(%rdi)
 1005306:	63 c0                	movsxd %eax,%eax
 1005308:	5c                   	pop    %rsp
 1005309:	42 c5 28 8d          	(bad)
 100530d:	87 76 71             	xchg   %esi,0x71(%rsi)
 1005310:	08 b9 08 7b ff 46    	or     %bh,0x46ff7b08(%rcx)
 1005316:	61                   	(bad)  
 1005317:	75 87                	jne    0x10052a0
 1005319:	25 a0 db 64 54       	and    $0x5464dba0,%eax
 100531e:	6c                   	insb   (%dx),%es:(%rdi)
 100531f:	27                   	(bad)  
 1005320:	ff                   	(bad)  
 1005321:	ea                   	(bad)  
 1005322:	57                   	push   %rdi
 1005323:	4e 2f                	rex.WRX (bad) 
 1005325:	e8 3b 85 ad 51       	callq  0x52add865
 100532a:	33 47 69             	xor    0x69(%rdi),%eax
 100532d:	03 a9 5d 3a 73 4e    	add    0x4e733a5d(%rcx),%ebp
 1005333:	f7 da                	neg    %edx
 1005335:	2c c3                	sub    $0xc3,%al
 1005337:	91                   	xchg   %eax,%ecx
 1005338:	85 2e                	test   %ebp,(%rsi)
 100533a:	7a ad                	jp     0x10052e9
 100533c:	20 aa 1a df 21 1c    	and    %ch,0x1c21df1a(%rdx)
 1005342:	4c 63 8c 28 1e 3f 2c 	movslq 0x602c3f1e(%rax,%rbp,1),%r9
 1005349:	60 
 100534a:	25 ba 89 d5 1e       	and    $0x1ed589ba,%eax
 100534f:	7d 25                	jge    0x1005376
 1005351:	06                   	(bad)  
 1005352:	5d                   	pop    %rbp
 1005353:	64 fb                	fs sti 
 1005355:	ce                   	(bad)  
 1005356:	f0 37                	lock (bad) 
 1005358:	da 12                	ficoml (%rdx)
 100535a:	86 f0                	xchg   %dh,%al
 100535c:	72 28                	jb     0x1005386
 100535e:	e2 97                	loop   0x10052f7
 1005360:	a3 f3 81 2e b9 19 8a 	movabs %eax,0xf2748a19b92e81f3
 1005367:	74 f2 
 1005369:	23 5d 26             	and    0x26(%rbp),%ebx
 100536c:	30 28                	xor    %ch,(%rax)
 100536e:	80 c4 4b             	add    $0x4b,%ah
 1005371:	4c e8 22 b0 59 fa    	rex.WR callq 0xfffffffffb5a0399
 1005377:	2f                   	(bad)  
 1005378:	ec                   	in     (%dx),%al
 1005379:	03 21                	add    (%rcx),%esp
 100537b:	5f                   	pop    %rdi
 100537c:	1f                   	(bad)  
 100537d:	98                   	cwtl   
 100537e:	5f                   	pop    %rdi
 100537f:	21 41 a0             	and    %eax,-0x60(%rcx)
 1005382:	56                   	push   %rsi
 1005383:	5b                   	pop    %rbx
 1005384:	47 19 f5             	rex.RXB sbb %r14d,%r13d
 1005387:	0a f9                	or     %cl,%bh
 1005389:	6f                   	outsl  %ds:(%rsi),(%dx)
 100538a:	54                   	push   %rsp
 100538b:	1c 67                	sbb    $0x67,%al
 100538d:	da f7                	(bad)  
 100538f:	7a e1                	jp     0x1005372
 1005391:	84 44 b0 b4          	test   %al,-0x4c(%rax,%rsi,4)
 1005395:	e3 49                	jrcxz  0x10053e0
 1005397:	d2 46 c9             	rolb   %cl,-0x37(%rsi)
 100539a:	b3 2d                	mov    $0x2d,%bl
 100539c:	3b a4 3c 64 21 04 ef 	cmp    -0x10fbde9c(%rsp,%rdi,1),%esp
 10053a3:	0b 04 84             	or     (%rsp,%rax,4),%eax
 10053a6:	6e                   	outsb  %ds:(%rsi),(%dx)
 10053a7:	bc 9e c5 20 d3       	mov    $0xd320c59e,%esp
 10053ac:	03 20                	add    (%rax),%esp
 10053ae:	be d0 e6 1f 0e       	mov    $0xe1fe6d0,%esi
 10053b3:	4c c7                	rex.WR (bad) 
 10053b5:	b8 65 d3 08 2d       	mov    $0x2d08d365,%eax
 10053ba:	ed                   	in     (%dx),%eax
 10053bb:	86 d3                	xchg   %dl,%bl
 10053bd:	19 c4                	sbb    %eax,%esp
 10053bf:	76 af                	jbe    0x1005370
 10053c1:	7e 05                	jle    0x10053c8
 10053c3:	46 1a 2c 0b          	sbb    (%rbx,%r9,1),%r13b
 10053c7:	f1                   	icebp  
 10053c8:	c2 1e 0d             	retq   $0xd1e
 10053cb:	c6                   	(bad)  
 10053cc:	a0 95 d8 93 a7 97 e1 	movabs 0x2e3de197a793d895,%al
 10053d3:	3d 2e 
 10053d5:	f9                   	stc    
 10053d6:	3d ce a2 d5 8a       	cmp    $0x8ad5a2ce,%eax
 10053db:	d6                   	(bad)  
 10053dc:	96                   	xchg   %eax,%esi
 10053dd:	87 26                	xchg   %esp,(%rsi)
 10053df:	0a 60 ea             	or     -0x16(%rax),%ah
 10053e2:	1a 7d 5f             	sbb    0x5f(%rbp),%bh
 10053e5:	33 65 0d             	xor    0xd(%rbp),%esp
 10053e8:	88 55 de             	mov    %dl,-0x22(%rbp)
 10053eb:	ea                   	(bad)  
 10053ec:	95                   	xchg   %eax,%ebp
 10053ed:	d7                   	xlat   %ds:(%rbx)
 10053ee:	24 4e                	and    $0x4e,%al
 10053f0:	47 1b 31             	rex.RXB sbb (%r9),%r14d
 10053f3:	4e e6 d4             	rex.WRX out %al,$0xd4
 10053f6:	34 62                	xor    $0x62,%al
 10053f8:	c7                   	(bad)  
 10053f9:	fc                   	cld    
 10053fa:	28 d3                	sub    %dl,%bl
 10053fc:	5a                   	pop    %rdx
 10053fd:	71 4f                	jno    0x100544e
 10053ff:	a2 43 b8 e6 01 ea ac 	movabs %al,0x1efacea01e6b843
 1005406:	ef 01 
 1005408:	6d                   	insl   (%dx),%es:(%rdi)
 1005409:	28 53 47             	sub    %dl,0x47(%rbx)
 100540c:	fa                   	cli    
 100540d:	c5 e1 13             	(bad)
 1005410:	83 d2 34             	adc    $0x34,%edx
 1005413:	e4 7c                	in     $0x7c,%al
 1005415:	ea                   	(bad)  
 1005416:	0b 1c 7e             	or     (%rsi,%rdi,2),%ebx
 1005419:	92                   	xchg   %eax,%edx
 100541a:	71 8a                	jno    0x10053a6
 100541c:	15 6c f3 a9 d5       	adc    $0xd5a9f36c,%eax
 1005421:	28 a4 18 82 37 f2 a7 	sub    %ah,-0x580dc87e(%rax,%rbx,1)
 1005428:	7a b9                	jp     0x10053e3
 100542a:	8a df                	mov    %bh,%bl
 100542c:	6c                   	insb   (%dx),%es:(%rdi)
 100542d:	15 7a 57 bc f0       	adc    $0xf0bc577a,%eax
 1005432:	f5                   	cmc    
 1005433:	c1 54 18 10 cc       	rcll   $0xcc,0x10(%rax,%rbx,1)
 1005438:	5f                   	pop    %rdi
 1005439:	b3 e0                	mov    $0xe0,%bl
 100543b:	ce                   	(bad)  
 100543c:	70 f7                	jo     0x1005435
 100543e:	ad                   	lods   %ds:(%rsi),%eax
 100543f:	de 10                	ficoms (%rax)
 1005441:	d7                   	xlat   %ds:(%rbx)
 1005442:	64 36 09 ac 58 ad fc 	fs or  %ebp,%ss:-0x74180353(%rax,%rbx,2)
 1005449:	e7 8b 
 100544b:	cf                   	iret   
 100544c:	ea                   	(bad)  
 100544d:	7e b4                	jle    0x1005403
 100544f:	98                   	cwtl   
 1005450:	10 b2 63 ee 49 e1    	adc    %dh,-0x1eb6119d(%rdx)
 1005456:	3d 64 9e 7a c1       	cmp    $0xc17a9e64,%eax
 100545b:	79 18                	jns    0x1005475
 100545d:	ae                   	scas   %es:(%rdi),%al
 100545e:	3f                   	(bad)  
 100545f:	3d f5 72 1b 1d       	cmp    $0x1d1b72f5,%eax
 1005464:	78 dd                	js     0x1005443
 1005466:	1a 0d 8b e7 d0 b2    	sbb    -0x4d2f1875(%rip),%cl        # 0xffffffffb3d13bf7
 100546c:	a9 d7 03 69 10       	test   $0x106903d7,%eax
 1005471:	b0 55                	mov    $0x55,%al
 1005473:	c5 0b 69             	(bad)
 1005476:	3b ad 7e 98 1c 2a    	cmp    0x2a1c987e(%rbp),%ebp
 100547c:	2c 47                	sub    $0x47,%al
 100547e:	5e                   	pop    %rsi
 100547f:	7f f5                	jg     0x1005476
 1005481:	71 e3                	jno    0x1005466
 1005483:	1c 45                	sbb    $0x45,%al
 1005485:	cd 4f                	int    $0x4f
 1005487:	05 41 88 02 cb       	add    $0xcb028841,%eax
 100548c:	df e4                	(bad)  
 100548e:	d2 a4 03 2b cc a6 3d 	shlb   %cl,0x3da6cc2b(%rbx,%rax,1)
 1005495:	b9 07 82 f9 38       	mov    $0x38f98207,%ecx
 100549a:	04 a8                	add    $0xa8,%al
 100549c:	f4                   	hlt    
 100549d:	cb                   	lret   
 100549e:	a1 07 10 41 27 6d ef 	movabs 0x9283ef6d27411007,%eax
 10054a5:	83 92 
 10054a7:	e1 b6                	loope  0x100545f
 10054a9:	cc                   	int3   
 10054aa:	d6                   	(bad)  
 10054ab:	e5 ce                	in     $0xce,%eax
 10054ad:	c2 94 29             	retq   $0x2994
 10054b0:	6f                   	outsl  %ds:(%rsi),(%dx)
 10054b1:	86 39                	xchg   %bh,(%rcx)
 10054b3:	5d                   	pop    %rbp
 10054b4:	ab                   	stos   %eax,%es:(%rdi)
 10054b5:	bd c1 83 4a d1       	mov    $0xd14a83c1,%ebp
 10054ba:	f7 d4                	not    %esp
 10054bc:	9a                   	(bad)  
 10054bd:	6c                   	insb   (%dx),%es:(%rdi)
 10054be:	8f                   	(bad)  
 10054bf:	67 9c                	addr32 pushfq 
 10054c1:	f3 20 08             	repz and %cl,(%rax)
 10054c4:	b6 30                	mov    $0x30,%dh
 10054c6:	e4 53                	in     $0x53,%al
 10054c8:	10 c2                	adc    %al,%dl
 10054ca:	55                   	push   %rbp
 10054cb:	a0 36 d2 6d e7 83 26 	movabs 0xb4472683e76dd236,%al
 10054d2:	47 b4 
 10054d4:	13 49 b3             	adc    -0x4d(%rcx),%ecx
 10054d7:	59                   	pop    %rcx
 10054d8:	3e 20 86 61 1d 65 ca 	and    %al,%ds:-0x359ae29f(%rsi)
 10054df:	e5 87                	in     $0x87,%eax
 10054e1:	6e                   	outsb  %ds:(%rsi),(%dx)
 10054e2:	46 ad                	rex.RX lods %ds:(%rsi),%eax
 10054e4:	02 1f                	add    (%rdi),%bl
 10054e6:	58                   	pop    %rax
 10054e7:	30 a2 f8 92 9d 5b    	xor    %ah,0x5b9d92f8(%rdx)
 10054ed:	56                   	push   %rsi
 10054ee:	5a                   	pop    %rdx
 10054ef:	75 56                	jne    0x1005547
 10054f1:	c8 8d 6c 52          	enterq $0x6c8d,$0x52
 10054f5:	94                   	xchg   %eax,%esp
 10054f6:	d5                   	(bad)  
 10054f7:	c7                   	(bad)  
 10054f8:	ad                   	lods   %ds:(%rsi),%eax
 10054f9:	52                   	push   %rdx
 10054fa:	96                   	xchg   %eax,%esi
 10054fb:	f4                   	hlt    
 10054fc:	bc a6 42 cf 4a       	mov    $0x4acf42a6,%esp
 1005501:	bf eb b0 5a 2d       	mov    $0x2d5ab0eb,%edi
 1005506:	41 d3 bd dd ee 9c 75 	sarl   %cl,0x759ceedd(%r13)
 100550d:	39 8c 9f 95 79 a3 07 	cmp    %ecx,0x7a37995(%rdi,%rbx,4)
 1005514:	a2 30 e4 4d 68 76 62 	movabs %al,0xb62e6276684de430
 100551b:	2e b6 
 100551d:	7a 3b                	jp     0x100555a
 100551f:	18 20                	sbb    %ah,(%rax)
 1005521:	63 34 57             	movsxd (%rdi,%rdx,2),%esi
 1005524:	d5                   	(bad)  
 1005525:	68 96 09 da 30       	pushq  $0x30da0996
 100552a:	20 4f 80             	and    %cl,-0x80(%rdi)
 100552d:	75 bb                	jne    0x10054ea
 100552f:	2d 0d b4 19 48       	sub    $0x4819b40d,%eax
 1005534:	86 fe                	xchg   %bh,%dh
 1005536:	8d 7b 10             	lea    0x10(%rbx),%edi
 1005539:	55                   	push   %rbp
 100553a:	50                   	push   %rax
 100553b:	b6 a3                	mov    $0xa3,%dh
 100553d:	d6                   	(bad)  
 100553e:	6e                   	outsb  %ds:(%rsi),(%dx)
 100553f:	3c 3b                	cmp    $0x3b,%al
 1005541:	2e f9                	cs stc 
 1005543:	65 69 94 7a ce f0 4c 	imul   $0xc296cf9d,%gs:-0x68b30f32(%rdx,%rdi,2),%edx
 100554a:	97 9d cf 96 c2 
 100554f:	84 f7                	test   %dh,%bh
 1005551:	32 bb 83 11 fc 8d    	xor    -0x7203ee7d(%rbx),%bh
 1005557:	2c 6f                	sub    $0x6f,%al
 1005559:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100555a:	19 78 e0             	sbb    %edi,-0x20(%rax)
 100555d:	59                   	pop    %rcx
 100555e:	5a                   	pop    %rdx
 100555f:	d4                   	(bad)  
 1005560:	7e ad                	jle    0x100550f
 1005562:	d9 ec                	fldlg2 
 1005564:	b7 3b                	mov    $0x3b,%bh
 1005566:	0b 69 69             	or     0x69(%rcx),%ebp
 1005569:	77 46                	ja     0x10055b1
 100556b:	27                   	(bad)  
 100556c:	bb dd 8e de ee       	mov    $0xeede8edd,%ebx
 1005571:	f8                   	clc    
 1005572:	51                   	push   %rcx
 1005573:	94                   	xchg   %eax,%esp
 1005574:	27                   	(bad)  
 1005575:	90                   	nop
 1005576:	5d                   	pop    %rbp
 1005577:	84 15 f7 20 ba 03    	test   %dl,0x3ba20f7(%rip)        # 0x4ba7674
 100557d:	f7 60 17             	mull   0x17(%rax)
 1005580:	7d a1                	jge    0x1005523
 1005582:	49 88 a6 a5 33 72 86 	rex.WB mov %spl,-0x798dcc5b(%r14)
 1005589:	3a aa 9d 21 ca 04    	cmp    0x4ca219d(%rdx),%ch
 100558f:	e1 39                	loope  0x10055ca
 1005591:	fc                   	cld    
 1005592:	e1 c6                	loope  0x100555a
 1005594:	f0 02 24 53          	lock add (%rbx,%rdx,2),%ah
 1005598:	0c 59                	or     $0x59,%al
 100559a:	16                   	(bad)  
 100559b:	21 44 91 ee          	and    %eax,-0x12(%rcx,%rdx,4)
 100559f:	07                   	(bad)  
 10055a0:	26 b0 3a             	es mov $0x3a,%al
 10055a3:	78 4c                	js     0x10055f1
 10055a5:	4b 1d bd de f7 1e    	rex.WXB sbb $0x1ef7debd,%rax
 10055ab:	01 38                	add    %edi,(%rax)
 10055ad:	34 b9                	xor    $0xb9,%al
 10055af:	50                   	push   %rax
 10055b0:	24 9d                	and    $0x9d,%al
 10055b2:	5c                   	pop    %rsp
 10055b3:	d5                   	(bad)  
 10055b4:	ca de 32             	lret   $0x32de
 10055b7:	9d                   	popfq  
 10055b8:	c8 05 6c 92          	enterq $0x6c05,$0x92
 10055bc:	91                   	xchg   %eax,%ecx
 10055bd:	7d ee                	jge    0x10055ad
 10055bf:	6e                   	outsb  %ds:(%rsi),(%dx)
 10055c0:	d6                   	(bad)  
 10055c1:	19 4b 31             	sbb    %ecx,0x31(%rbx)
 10055c4:	4c                   	rex.WR
 10055c5:	36 4c c7             	ss rex.WR (bad) 
 10055c8:	23 18                	and    (%rax),%ebx
 10055ca:	e3 fa                	jrcxz  0x10055c6
 10055cc:	89 72 77             	mov    %esi,0x77(%rdx)
 10055cf:	99                   	cltd   
 10055d0:	08 ad 0c c6 cd d5    	or     %ch,-0x2a3239f4(%rbp)
 10055d6:	cd 14                	int    $0x14
 10055d8:	36 d9 04 05 21 73 9d 	flds   %ss:0x729d7321(,%rax,1)
 10055df:	72 
 10055e0:	66 c8 87 3d 1a       	enterw $0x3d87,$0x1a
 10055e5:	0c ca                	or     $0xca,%al
 10055e7:	e8 60 44 4c c2       	callq  0xffffffffc34c9a4c
 10055ec:	b8 37 06 8e a5       	mov    $0xa58e0637,%eax
 10055f1:	a8 d7                	test   $0xd7,%al
 10055f3:	c4                   	(bad)  
 10055f4:	a9 b6 0d 4b 62       	test   $0x624b0db6,%eax
 10055f9:	aa                   	stos   %al,%es:(%rdi)
 10055fa:	96                   	xchg   %eax,%esi
 10055fb:	2e b5 79             	cs mov $0x79,%ch
 10055fe:	2b 2c 29             	sub    (%rcx,%rbp,1),%ebp
 1005601:	7a 57                	jp     0x100565a
 1005603:	7e 02                	jle    0x1005607
 1005605:	70 bc                	jo     0x10055c3
 1005607:	c3                   	retq   
 1005608:	83 7a 22 78          	cmpl   $0x78,0x22(%rdx)
 100560c:	a1 ab 42 fe 64 70 85 	movabs 0xa1d9857064fe42ab,%eax
 1005613:	d9 a1 
 1005615:	66 79 63             	data16 jns 0x100567b
 1005618:	d8 01                	fadds  (%rcx)
 100561a:	92                   	xchg   %eax,%edx
 100561b:	42 3a ea             	rex.X cmp %dl,%bpl
 100561e:	03 57 72             	add    0x72(%rdi),%edx
 1005621:	5c                   	pop    %rsp
 1005622:	ec                   	in     (%dx),%al
 1005623:	36 ee                	ss out %al,(%dx)
 1005625:	c9                   	leaveq 
 1005626:	e2 cc                	loop   0x10055f4
 1005628:	8f                   	(bad)  
 1005629:	5b                   	pop    %rbx
 100562a:	cd 1d                	int    $0x1d
 100562c:	30 c7                	xor    %al,%bh
 100562e:	f1                   	icebp  
 100562f:	3e e0 42             	loopne,pt 0x1005674
 1005632:	f1                   	icebp  
 1005633:	4f 2c ee             	rex.WRXB sub $0xee,%al
 1005636:	60                   	(bad)  
 1005637:	25 53 c8 fb 2d       	and    $0x2dfbc853,%eax
 100563c:	95                   	xchg   %eax,%ebp
 100563d:	2c e2                	sub    $0xe2,%al
 100563f:	c4                   	(bad)  
 1005640:	be d8 62 3a eb       	mov    $0xeb3a62d8,%esi
 1005645:	5e                   	pop    %rsi
 1005646:	85 b9 e3 e8 80 be    	test   %edi,-0x417f171d(%rcx)
 100564c:	5a                   	pop    %rdx
 100564d:	27                   	(bad)  
 100564e:	61                   	(bad)  
 100564f:	22 49 a3             	and    -0x5d(%rcx),%cl
 1005652:	e5 99                	in     $0x99,%eax
 1005654:	42 ec                	rex.X in (%dx),%al
 1005656:	ad                   	lods   %ds:(%rsi),%eax
 1005657:	8d 74 9d 53          	lea    0x53(%rbp,%rbx,4),%esi
 100565b:	55                   	push   %rbp
 100565c:	74 c5                	je     0x1005623
 100565e:	c6                   	(bad)  
 100565f:	68 94 c1 cf 35       	pushq  $0x35cfc194
 1005664:	80 26 97             	andb   $0x97,(%rsi)
 1005667:	4a 97                	rex.WX xchg %rax,%rdi
 1005669:	d6                   	(bad)  
 100566a:	be ed 78 99 1b       	mov    $0x1b9978ed,%esi
 100566f:	a8 1d                	test   $0x1d,%al
 1005671:	2c 3d                	sub    $0x3d,%al
 1005673:	23 37                	and    (%rdi),%esi
 1005675:	94                   	xchg   %eax,%esp
 1005676:	16                   	(bad)  
 1005677:	18 44 8f 70          	sbb    %al,0x70(%rdi,%rcx,4)
 100567b:	ee                   	out    %al,(%dx)
 100567c:	97                   	xchg   %eax,%edi
 100567d:	83 6b bd 71          	subl   $0x71,-0x43(%rbx)
 1005681:	64 8c 9d e4 c5 82 19 	mov    %ds,%fs:0x1982c5e4(%rbp)
 1005688:	93                   	xchg   %eax,%ebx
 1005689:	48 30 1a             	rex.W xor %bl,(%rdx)
 100568c:	d5                   	(bad)  
 100568d:	f5                   	cmc    
 100568e:	b0 00                	mov    $0x0,%al
 1005690:	c4                   	(bad)  
 1005691:	fe                   	(bad)  
 1005692:	93                   	xchg   %eax,%ebx
 1005693:	a8 df                	test   $0xdf,%al
 1005695:	4b 84 78 e5          	rex.WXB test %dil,-0x1b(%r8)
 1005699:	6b c8 0f             	imul   $0xf,%eax,%ecx
 100569c:	af                   	scas   %es:(%rdi),%eax
 100569d:	6d                   	insl   (%dx),%es:(%rdi)
 100569e:	62                   	(bad)  
 100569f:	ce                   	(bad)  
 10056a0:	df 39                	fistpll (%rcx)
 10056a2:	e3 66                	jrcxz  0x100570a
 10056a4:	0a 4d 39             	or     0x39(%rbp),%cl
 10056a7:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10056a8:	06                   	(bad)  
 10056a9:	0b 86 56 75 78 9c    	or     -0x63878aaa(%rsi),%eax
 10056af:	d9 12                	fsts   (%rdx)
 10056b1:	e8 62 61 72 47       	callq  0x4872b818
 10056b6:	50                   	push   %rax
 10056b7:	03 de                	add    %esi,%ebx
 10056b9:	09 f1                	or     %esi,%ecx
 10056bb:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10056bc:	5b                   	pop    %rbx
 10056bd:	79 ec                	jns    0x10056ab
 10056bf:	cb                   	lret   
 10056c0:	28 ff                	sub    %bh,%bh
 10056c2:	4d 3c 5d             	rex.WRB cmp $0x5d,%al
 10056c5:	5a                   	pop    %rdx
 10056c6:	cf                   	iret   
 10056c7:	61                   	(bad)  
 10056c8:	8b e9                	mov    %ecx,%ebp
 10056ca:	a1 8e 83 73 2c 66 69 	movabs 0xc0dc69662c73838e,%eax
 10056d1:	dc c0 
 10056d3:	4f 9a                	rex.WRXB (bad) 
 10056d5:	c1 ee 81             	shr    $0x81,%esi
 10056d8:	ff 1e                	lcall  *(%rsi)
 10056da:	3a e3                	cmp    %bl,%ah
 10056dc:	f5                   	cmc    
 10056dd:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 10056de:	a8 7a                	test   $0x7a,%al
 10056e0:	f2 74 e6             	bnd je 0x10056c9
 10056e3:	ef                   	out    %eax,(%dx)
 10056e4:	3c 48                	cmp    $0x48,%al
 10056e6:	c5 7f 86             	(bad)  
 10056e9:	56                   	push   %rsi
 10056ea:	30 46 0c             	xor    %al,0xc(%rsi)
 10056ed:	05 09 97 f5 1c       	add    $0x1cf59709,%eax
 10056f2:	d2 ba b5 10 73 0b    	sarb   %cl,0xb7310b5(%rdx)
 10056f8:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 10056f9:	e4 14                	in     $0x14,%al
 10056fb:	59                   	pop    %rcx
 10056fc:	cd 01                	int    $0x1
 10056fe:	c6 07 f6             	movb   $0xf6,(%rdi)
 1005701:	14 13                	adc    $0x13,%al
 1005703:	6e                   	outsb  %ds:(%rsi),(%dx)
 1005704:	56                   	push   %rsi
 1005705:	32 4a b5             	xor    -0x4b(%rdx),%cl
 1005708:	43 94                	rex.XB xchg %eax,%r12d
 100570a:	2f                   	(bad)  
 100570b:	0b d3                	or     %ebx,%edx
 100570d:	d2 e7                	shl    %cl,%bh
 100570f:	48 af                	scas   %es:(%rdi),%rax
 1005711:	ef                   	out    %eax,(%dx)
 1005712:	a2 c8 33 4e fc c9 77 	movabs %al,0x783b77c9fc4e33c8
 1005719:	3b 78 
 100571b:	61                   	(bad)  
 100571c:	d9 29                	fldcw  (%rcx)
 100571e:	ba b2 50 e2 39       	mov    $0x39e250b2,%edx
 1005723:	ea                   	(bad)  
 1005724:	27                   	(bad)  
 1005725:	83 09 c5             	orl    $0xffffffc5,(%rcx)
 1005728:	d9 5d 2d             	fstps  0x2d(%rbp)
 100572b:	23 db                	and    %ebx,%ebx
 100572d:	12 6d 46             	adc    0x46(%rbp),%ch
 1005730:	5d                   	pop    %rbp
 1005731:	08 19                	or     %bl,(%rcx)
 1005733:	31 59 e0             	xor    %ebx,-0x20(%rcx)
 1005736:	27                   	(bad)  
 1005737:	bf b0 5b 9a 42       	mov    $0x429a5bb0,%edi
 100573c:	04 73                	add    $0x73,%al
 100573e:	31 33                	xor    %esi,(%rbx)
 1005740:	44 b9 8b de 8b 7f    	rex.R mov $0x7f8bde8b,%ecx
 1005746:	01 ae bf 31 8e 6e    	add    %ebp,0x6e8e31bf(%rsi)
 100574c:	1c c9                	sbb    $0xc9,%al
 100574e:	59                   	pop    %rcx
 100574f:	ca d6 3d             	lret   $0x3dd6
 1005752:	8a 59 98             	mov    -0x68(%rcx),%bl
 1005755:	c6                   	(bad)  
 1005756:	14 a5                	adc    $0xa5,%al
 1005758:	70 8f                	jo     0x10056e9
 100575a:	03 6f 3a             	add    0x3a(%rdi),%ebp
 100575d:	cb                   	lret   
 100575e:	cc                   	int3   
 100575f:	54                   	push   %rsp
 1005760:	6b 23 28             	imul   $0x28,(%rbx),%esp
 1005763:	70 7a                	jo     0x10057df
 1005765:	f2 95                	repnz xchg %eax,%ebp
 1005767:	60                   	(bad)  
 1005768:	c0 10 3d             	rclb   $0x3d,(%rax)
 100576b:	bd 3c c9 81 8c       	mov    $0x8c81c93c,%ebp
 1005770:	ad                   	lods   %ds:(%rsi),%eax
 1005771:	6d                   	insl   (%dx),%es:(%rdi)
 1005772:	61                   	(bad)  
 1005773:	01 9f eb 8d 54 08    	add    %ebx,0x8548deb(%rdi)
 1005779:	00 35 c7 f3 9d f0    	add    %dh,-0xf620c39(%rip)        # 0xfffffffff19e4b46
 100577f:	8c fa                	mov    %?,%edx
 1005781:	5e                   	pop    %rsi
 1005782:	c6 c2 5d             	mov    $0x5d,%dl
 1005785:	6e                   	outsb  %ds:(%rsi),(%dx)
 1005786:	32 32                	xor    (%rdx),%dh
 1005788:	a0 f6 95 f8 7f cd 42 	movabs 0x2f6642cd7ff895f6,%al
 100578f:	66 2f 
 1005791:	82                   	(bad)  
 1005792:	d1 2e                	shrl   (%rsi)
 1005794:	9b                   	fwait
 1005795:	3f                   	(bad)  
 1005796:	66 54                	push   %sp
 1005798:	12 be d3 aa 2a 1d    	adc    0x1d2aaad3(%rsi),%bh
 100579e:	5c                   	pop    %rsp
 100579f:	3b 05 7b 5f 26 70    	cmp    0x70265f7b(%rip),%eax        # 0x7126b720
 10057a5:	12 88 c0 4b 68 44    	adc    0x44684bc0(%rax),%cl
 10057ab:	f5                   	cmc    
 10057ac:	8d                   	(bad)  
 10057ad:	c5 64 df             	(bad)
 10057b0:	13 d6                	adc    %esi,%edx
 10057b2:	2d 47 27 57 e5       	sub    $0xe5572747,%eax
 10057b7:	1a bd 9d c6 de eb    	sbb    -0x14213963(%rbp),%bh
 10057bd:	94                   	xchg   %eax,%esp
 10057be:	e6 a1                	out    %al,$0xa1
 10057c0:	bf ae b8 c8 c0       	mov    $0xc0c8b8ae,%edi
 10057c5:	21 b6 9b d2 a4 1b    	and    %esi,0x1ba4d29b(%rsi)
 10057cb:	f2 eb 5a             	bnd jmp 0x1005828
 10057ce:	d7                   	xlat   %ds:(%rbx)
 10057cf:	1b 11                	sbb    (%rcx),%edx
 10057d1:	01 c9                	add    %ecx,%ecx
 10057d3:	a1 c0 8d cb f3 d8 b7 	movabs 0xffdeb7d8f3cb8dc0,%eax
 10057da:	de ff 
 10057dc:	4c 3d 18 33 9e 04    	rex.WR cmp $0x49e3318,%rax
 10057e2:	f4                   	hlt    
 10057e3:	b9 58 ee 15 e8       	mov    $0xe815ee58,%ecx
 10057e8:	42 0a 95 94 a6 c4 a3 	rex.X or -0x5c3b596c(%rbp),%dl
 10057ef:	f8                   	clc    
 10057f0:	eb 68                	jmp    0x100585a
 10057f2:	99                   	cltd   
 10057f3:	f8                   	clc    
 10057f4:	9a                   	(bad)  
 10057f5:	fa                   	cli    
 10057f6:	8b 48 51             	mov    0x51(%rax),%ecx
 10057f9:	67 73 14             	addr32 jae 0x1005810
 10057fc:	54                   	push   %rsp
 10057fd:	07                   	(bad)  
 10057fe:	34 79                	xor    $0x79,%al
 1005800:	cb                   	lret   
 1005801:	45 9d                	rex.RB popfq 
 1005803:	f2 4a cd 00          	repnz rex.WX int $0x0
 1005807:	62                   	(bad)  
 1005808:	f8                   	clc    
 1005809:	9c                   	pushfq 
 100580a:	8a b2 0e f7 28 21    	mov    0x2128f70e(%rdx),%dh
 1005810:	76 a1                	jbe    0x10057b3
 1005812:	70 ec                	jo     0x1005800
 1005814:	35 86 f6 64 56       	xor    $0x5664f686,%eax
 1005819:	80 a3 b3 94 ef a2 86 	andb   $0x86,-0x5d106b4d(%rbx)
 1005820:	6e                   	outsb  %ds:(%rsi),(%dx)
 1005821:	31 42 43             	xor    %eax,0x43(%rdx)
 1005824:	19 ac d8 a6 46 6f da 	sbb    %ebp,-0x2590b95a(%rax,%rbx,8)
 100582b:	90                   	nop
 100582c:	83 90 60 cd 3a ab de 	adcl   $0xffffffde,-0x54c532a0(%rax)
 1005833:	8d 9d c0 a2 96 3e    	lea    0x3e96a2c0(%rbp),%ebx
 1005839:	61                   	(bad)  
 100583a:	54                   	push   %rsp
 100583b:	e3 c8                	jrcxz  0x1005805
 100583d:	e5 04                	in     $0x4,%eax
 100583f:	b1 11                	mov    $0x11,%cl
 1005841:	5d                   	pop    %rbp
 1005842:	04 38                	add    $0x38,%al
 1005844:	3a fc                	cmp    %ah,%bh
 1005846:	fe                   	(bad)  
 1005847:	60                   	(bad)  
 1005848:	7c 10                	jl     0x100585a
 100584a:	c6                   	(bad)  
 100584b:	de 70 4c             	fidivs 0x4c(%rax)
 100584e:	0d 12 a8 a4 25       	or     $0x25a4a812,%eax
 1005853:	74 e4                	je     0x1005839
 1005855:	14 d0                	adc    $0xd0,%al
 1005857:	c0 2a a7             	shrb   $0xa7,(%rdx)
 100585a:	72 9e                	jb     0x10057fa
 100585c:	52                   	push   %rdx
 100585d:	3f                   	(bad)  
 100585e:	a1 e7 af 70 cb 74 19 	movabs 0x16881974cb70afe7,%eax
 1005865:	88 16 
 1005867:	f2 6d                	repnz insl (%dx),%es:(%rdi)
 1005869:	9d                   	popfq  
 100586a:	dc 40 c5             	faddl  -0x3b(%rax)
 100586d:	3e 9c                	ds pushfq 
 100586f:	b0 5e                	mov    $0x5e,%al
 1005871:	0f d7                	(bad)  
 1005873:	7b ce                	jnp    0x1005843
 1005875:	2e ca 2c cf          	cs lret $0xcf2c
 1005879:	9e                   	sahf   
 100587a:	e3 62                	jrcxz  0x10058de
 100587c:	3a 53 83             	cmp    -0x7d(%rbx),%dl
 100587f:	84 b6 db 7b ae de    	test   %dh,-0x21518425(%rsi)
 1005885:	5d                   	pop    %rbp
 1005886:	72 1f                	jb     0x10058a7
 1005888:	1c d9                	sbb    $0xd9,%al
 100588a:	dc 35 0c 81 39 ac    	fdivl  -0x53c67ef4(%rip)        # 0xffffffffad39d99c
 1005890:	b8 6f 99 b7 ce       	mov    $0xceb7996f,%eax
 1005895:	8e 39                	mov    (%rcx),%?
 1005897:	4f a3 2f 31 ae 8f ee 	rex.WRXB movabs %rax,0x922755ee8fae312f
 100589e:	55 27 92 
 10058a1:	9a                   	(bad)  
 10058a2:	97                   	xchg   %eax,%edi
 10058a3:	e2 cb                	loop   0x1005870
 10058a5:	71 23                	jno    0x10058ca
 10058a7:	22 09                	and    (%rcx),%cl
 10058a9:	69 0c 49 d4 4c 36 9c 	imul   $0x9c364cd4,(%rcx,%rcx,2),%ecx
 10058b0:	fd                   	std    
 10058b1:	12 3e                	adc    (%rsi),%bh
 10058b3:	68 78 0c 20 5c       	pushq  $0x5c200c78
 10058b8:	53                   	push   %rbx
 10058b9:	ba 5c ae 68 c4       	mov    $0xc468ae5c,%edx
 10058be:	04 85                	add    $0x85,%al
 10058c0:	37                   	(bad)  
 10058c1:	1b fb                	sbb    %ebx,%edi
 10058c3:	7a 3c                	jp     0x1005901
 10058c5:	71 83                	jno    0x100584a
 10058c7:	39 d5                	cmp    %edx,%ebp
 10058c9:	0b ac 32 ff b8 98 fc 	or     -0x3674701(%rdx,%rsi,1),%ebp
 10058d0:	8d                   	(bad)  
 10058d1:	fd                   	std    
 10058d2:	f0 94                	lock xchg %eax,%esp
 10058d4:	93                   	xchg   %eax,%ebx
 10058d5:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10058d6:	4b b5 5a             	rex.WXB mov $0x5a,%r13b
 10058d9:	c8 c2 78 00          	enterq $0x78c2,$0x0
 10058dd:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10058de:	7a 4f                	jp     0x100592f
 10058e0:	5b                   	pop    %rbx
 10058e1:	3f                   	(bad)  
 10058e2:	12 46 c7             	adc    -0x39(%rsi),%al
 10058e5:	d2 69 de             	shrb   %cl,-0x22(%rcx)
 10058e8:	7c 26                	jl     0x1005910
 10058ea:	fa                   	cli    
 10058eb:	28 3d c7 5f e2 77    	sub    %bh,0x77e25fc7(%rip)        # 0x78e2b8b8
 10058f1:	94                   	xchg   %eax,%esp
 10058f2:	b6 14                	mov    $0x14,%dh
 10058f4:	e6 20                	out    %al,$0x20
 10058f6:	6a 21                	pushq  $0x21
 10058f8:	18 70 0c             	sbb    %dh,0xc(%rax)
 10058fb:	e0 af                	loopne 0x10058ac
 10058fd:	ef                   	out    %eax,(%dx)
 10058fe:	6a 69                	pushq  $0x69
 1005900:	d8 c9                	fmul   %st(1),%st
 1005902:	5a                   	pop    %rdx
 1005903:	75 34                	jne    0x1005939
 1005905:	ac                   	lods   %ds:(%rsi),%al
 1005906:	79 d0                	jns    0x10058d8
 1005908:	5f                   	pop    %rdi
 1005909:	99                   	cltd   
 100590a:	fb                   	sti    
 100590b:	b1 2f                	mov    $0x2f,%cl
 100590d:	da 2b                	fisubrl (%rbx)
 100590f:	ea                   	(bad)  
 1005910:	fe                   	(bad)  
 1005911:	9d                   	popfq  
 1005912:	43                   	rex.XB
 1005913:	4f e2 95             	rex.WRXB loop 0x10058ab
 1005916:	7c 12                	jl     0x100592a
 1005918:	f6 92 e2 2b d8 90    	notb   -0x6f27d41e(%rdx)
 100591e:	d4                   	(bad)  
 100591f:	0a 77 81             	or     -0x7f(%rdi),%dh
 1005922:	e2 17                	loop   0x100593b
 1005924:	02 f7                	add    %bh,%dh
 1005926:	21 72 3c             	and    %esi,0x3c(%rdx)
 1005929:	16                   	(bad)  
 100592a:	ad                   	lods   %ds:(%rsi),%eax
 100592b:	c6                   	(bad)  
 100592c:	35 ba 07 e5 8b       	xor    $0x8be507ba,%eax
 1005931:	6a 76                	pushq  $0x76
 1005933:	d7                   	xlat   %ds:(%rbx)
 1005934:	34 45                	xor    $0x45,%al
 1005936:	24 28                	and    $0x28,%al
 1005938:	b7 b6                	mov    $0xb6,%bh
 100593a:	4a 7b 90             	rex.WX jnp 0x10058cd
 100593d:	6a 63                	pushq  $0x63
 100593f:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1005940:	4e 5c                	rex.WRX pop %rsp
 1005942:	f6 b9 ec dd 80 44    	idivb  0x4480ddec(%rcx)
 1005948:	f7 e3                	mul    %ebx
 100594a:	7e 0f                	jle    0x100595b
 100594c:	57                   	push   %rdi
 100594d:	5b                   	pop    %rbx
 100594e:	aa                   	stos   %al,%es:(%rdi)
 100594f:	31 f1                	xor    %esi,%ecx
 1005951:	76 e9                	jbe    0x100593c
 1005953:	3b e2                	cmp    %edx,%esp
 1005955:	97                   	xchg   %eax,%edi
 1005956:	13 a3 73 a6 da 18    	adc    0x18daa673(%rbx),%esp
 100595c:	cd 20                	int    $0x20
 100595e:	32 65 7b             	xor    0x7b(%rbp),%ah
 1005961:	87 04 45 49 41 f7 30 	xchg   %eax,0x30f74149(,%rax,2)
 1005968:	d4                   	(bad)  
 1005969:	88 39                	mov    %bh,(%rcx)
 100596b:	fb                   	sti    
 100596c:	91                   	xchg   %eax,%ecx
 100596d:	25 5e 35 4c 78       	and    $0x784c355e,%eax
 1005972:	f4                   	hlt    
 1005973:	32 ae 8f 23 73 f6    	xor    -0x98cdc71(%rsi),%ch
 1005979:	f2 c8 a8 47 61       	repnz enterq $0x47a8,$0x61
 100597e:	51                   	push   %rcx
 100597f:	80 c3 3a             	add    $0x3a,%bl
 1005982:	32 ac dd 26 d3 e6 f5 	xor    -0xa192cda(%rbp,%rbx,8),%ch
 1005989:	e8 2d 06 14 f5       	callq  0xfffffffff6145fbb
 100598e:	d7                   	xlat   %ds:(%rbx)
 100598f:	ec                   	in     (%dx),%al
 1005990:	d8 76 ac             	fdivs  -0x54(%rsi)
 1005993:	bc 50 c2 18 c4       	mov    $0xc418c250,%esp
 1005998:	12 ff                	adc    %bh,%bh
 100599a:	1b 03                	sbb    (%rbx),%eax
 100599c:	b9 02 6f 19 ec       	mov    $0xec196f02,%ecx
 10059a1:	fa                   	cli    
 10059a2:	98                   	cwtl   
 10059a3:	66 bf 33 9e          	mov    $0x9e33,%di
 10059a7:	97                   	xchg   %eax,%edi
 10059a8:	8d a6 15 02 1a 0d    	lea    0xd1a0215(%rsi),%esp
 10059ae:	d9 03                	flds   (%rbx)
 10059b0:	6c                   	insb   (%dx),%es:(%rdi)
 10059b1:	ba 29 41 9d 8c       	mov    $0x8c9d4129,%edx
 10059b6:	75 e7                	jne    0x100599f
 10059b8:	cf                   	iret   
 10059b9:	19 e9                	sbb    %ebp,%ecx
 10059bb:	20 b7 9e 34 d7 ca    	and    %dh,-0x3528cb62(%rdi)
 10059c1:	e1 2a                	loope  0x10059ed
 10059c3:	3e eb 05             	ds jmp 0x10059cb
 10059c6:	19 17                	sbb    %edx,(%rdi)
 10059c8:	52                   	push   %rdx
 10059c9:	e7 41                	out    %eax,$0x41
 10059cb:	42                   	rex.X
 10059cc:	67 7c 58             	addr32 jl 0x1005a27
 10059cf:	ae                   	scas   %es:(%rdi),%al
 10059d0:	87 af 43 59 e0 e8    	xchg   %ebp,-0x171fa6bd(%rdi)
 10059d6:	ee                   	out    %al,(%dx)
 10059d7:	fb                   	sti    
 10059d8:	83 e3 cf             	and    $0xffffffcf,%ebx
 10059db:	0d fa 40 29 78       	or     $0x782940fa,%eax
 10059e0:	f6 42 f7 fa          	testb  $0xfa,-0x9(%rdx)
 10059e4:	76 25                	jbe    0x1005a0b
 10059e6:	bf b1 cc 28 d4       	mov    $0xd428ccb1,%edi
 10059eb:	42 59                	rex.X pop %rcx
 10059ed:	92                   	xchg   %eax,%edx
 10059ee:	f0 fc                	lock cld 
 10059f0:	d1 91 b8 82 ba cb    	rcll   -0x34457d48(%rcx)
 10059f6:	ea                   	(bad)  
 10059f7:	cb                   	lret   
 10059f8:	c3                   	retq   
 10059f9:	07                   	(bad)  
 10059fa:	8c be 41 71 65 4f    	mov    %?,0x4f657141(%rsi)
 1005a00:	7b b1                	jnp    0x10059b3
 1005a02:	21 79 f9             	and    %edi,-0x7(%rcx)
 1005a05:	97                   	xchg   %eax,%edi
 1005a06:	a2 9a bf 36 d5 83 90 	movabs %al,0x74919083d536bf9a
 1005a0d:	91 74 
 1005a0f:	de 53 0d             	ficoms 0xd(%rbx)
 1005a12:	b6 dc                	mov    $0xdc,%dh
 1005a14:	15 99 22 d1 3d       	adc    $0x3dd12299,%eax
 1005a19:	c6                   	(bad)  
 1005a1a:	76 54                	jbe    0x1005a70
 1005a1c:	87 73 5d             	xchg   %esi,0x5d(%rbx)
 1005a1f:	25 7f 96 18 07       	and    $0x718967f,%eax
 1005a24:	ec                   	in     (%dx),%al
 1005a25:	9b dc 4b 70          	fmull  0x70(%rbx)
 1005a29:	67 e8 3c 9d 39 48    	addr32 callq 0x4939f76b
 1005a2f:	20 3b                	and    %bh,(%rbx)
 1005a31:	8c f4                	mov    %?,%esp
 1005a33:	29 aa d6 31 95 34    	sub    %ebp,0x349531d6(%rdx)
 1005a39:	b5 a5                	mov    $0xa5,%ch
 1005a3b:	e4 f0                	in     $0xf0,%al
 1005a3d:	a1 2f 0b 23 0d 03 b1 	movabs 0x2e14b1030d230b2f,%eax
 1005a44:	14 2e 
 1005a46:	05 a1 8e 6b da       	add    $0xda6b8ea1,%eax
 1005a4b:	b8 1a 36 f5 f7       	mov    $0xf7f5361a,%eax
 1005a50:	ab                   	stos   %eax,%es:(%rdi)
 1005a51:	9f                   	lahf   
 1005a52:	e2 43                	loop   0x1005a97
 1005a54:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1005a55:	34 85                	xor    $0x85,%al
 1005a57:	08 a6 db fb 99 93    	or     %ah,-0x6c660425(%rsi)
 1005a5d:	37                   	(bad)  
 1005a5e:	4c 2a d7             	rex.WR sub %dil,%r10b
 1005a61:	fe                   	(bad)  
 1005a62:	10 c5                	adc    %al,%ch
 1005a64:	0f 4c 11             	cmovl  (%rcx),%edx
 1005a67:	8b f2                	mov    %edx,%esi
 1005a69:	9e                   	sahf   
 1005a6a:	b8 4d da aa 96       	mov    $0x96aada4d,%eax
 1005a6f:	b3 88                	mov    $0x88,%bl
 1005a71:	27                   	(bad)  
 1005a72:	f8                   	clc    
 1005a73:	42 0d a4 a5 41 52    	rex.X or $0x5241a5a4,%eax
 1005a79:	3b b3 a8 6c 5e a5    	cmp    -0x5aa19358(%rbx),%esi
 1005a7f:	16                   	(bad)  
 1005a80:	ab                   	stos   %eax,%es:(%rdi)
 1005a81:	ac                   	lods   %ds:(%rsi),%al
 1005a82:	26 11 f6             	es adc %esi,%esi
 1005a85:	4e 6b 8b fb 3b 29 26 	rex.WRX imul $0x58,0x26293bfb(%rbx),%r9
 1005a8c:	58 
 1005a8d:	cb                   	lret   
 1005a8e:	4d ed                	rex.WRB in (%dx),%eax
 1005a90:	e5 0f                	in     $0xf,%eax
 1005a92:	4c ad                	rex.WR lods %ds:(%rsi),%rax
 1005a94:	c0 54 2e 5d f3       	rclb   $0xf3,0x5d(%rsi,%rbp,1)
 1005a99:	48                   	rex.W
 1005a9a:	45 df 0e             	rex.RB fisttps (%r14)
 1005a9d:	5e                   	pop    %rsi
 1005a9e:	92                   	xchg   %eax,%edx
 1005a9f:	59                   	pop    %rcx
 1005aa0:	35 f4 e8 36 19       	xor    $0x1936e8f4,%eax
 1005aa5:	df 0b                	fisttps (%rbx)
 1005aa7:	2d 87 fe f9 62       	sub    $0x62f9fe87,%eax
 1005aac:	68 11 48 0f a6       	pushq  $0xffffffffa60f4811
 1005ab1:	be 8e 40 f4 f9       	mov    $0xf9f4408e,%esi
 1005ab6:	fb                   	sti    
 1005ab7:	e6 6a                	out    %al,$0x6a
 1005ab9:	4c 2b f3             	sub    %rbx,%r14
 1005abc:	be 84 10 81 cb       	mov    $0xcb811084,%esi
 1005ac1:	3a a9 79 d6 a0 98    	cmp    -0x675f2987(%rcx),%ch
 1005ac7:	1c 04                	sbb    $0x4,%al
 1005ac9:	e7 ef                	out    %eax,$0xef
 1005acb:	28 d4                	sub    %dl,%ah
 1005acd:	13 a1 29 bc bb 5f    	adc    0x5fbbbc29(%rcx),%esp
 1005ad3:	e9 1b f4 35 06       	jmpq   0x7364ef3
 1005ad8:	e6 cd                	out    %al,$0xcd
 1005ada:	1b a8 72 dc 33 84    	sbb    -0x7bcc238e(%rax),%ebp
 1005ae0:	89 ed                	mov    %ebp,%ebp
 1005ae2:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1005ae3:	2b b6 dc a8 0c d6    	sub    -0x29f35724(%rsi),%esi
 1005ae9:	56                   	push   %rsi
 1005aea:	74 22                	je     0x1005b0e
 1005aec:	f8                   	clc    
 1005aed:	e6 3e                	out    %al,$0x3e
 1005aef:	2a 2e                	sub    (%rsi),%ch
 1005af1:	13 6b c2             	adc    -0x3e(%rbx),%ebp
 1005af4:	5b                   	pop    %rbx
 1005af5:	f1                   	icebp  
 1005af6:	d6                   	(bad)  
 1005af7:	42 bf e2 54 82 aa    	rex.X mov $0xaa8254e2,%edi
 1005afd:	1b 8f f9 b8 69 fd    	sbb    -0x2964707(%rdi),%ecx
 1005b03:	f8                   	clc    
 1005b04:	2c b5                	sub    $0xb5,%al
 1005b06:	3e e2 42             	loop,pt 0x1005b4b
 1005b09:	4f 57                	rex.WRXB push %r15
 1005b0b:	be 1c 01 01 97       	mov    $0x9701011c,%esi
 1005b10:	ed                   	in     (%dx),%eax
 1005b11:	6a 02                	pushq  $0x2
 1005b13:	37                   	(bad)  
 1005b14:	62                   	(bad)  
 1005b15:	e4 1c                	in     $0x1c,%al
 1005b17:	83 33 bf             	xorl   $0xffffffbf,(%rbx)
 1005b1a:	4d f4                	rex.WRB hlt 
 1005b1c:	b9 64 98 b5 5a       	mov    $0x5ab59864,%ecx
 1005b21:	c8 71 19 ac          	enterq $0x1971,$0xac
 1005b25:	5c                   	pop    %rsp
 1005b26:	87 ab a2 4b a6 51    	xchg   %ebp,0x51a64ba2(%rbx)
 1005b2c:	cd 31                	int    $0x31
 1005b2e:	7a dd                	jp     0x1005b0d
 1005b30:	d3 a5 3b 61 c4 4b    	shll   %cl,0x4bc4613b(%rbp)
 1005b36:	e2 8f                	loop   0x1005ac7
 1005b38:	02 4f ea             	add    -0x16(%rdi),%cl
 1005b3b:	ed                   	in     (%dx),%eax
 1005b3c:	d3 3d 77 25 c6 fa    	sarl   %cl,-0x539da89(%rip)        # 0xfffffffffbc680b9
 1005b42:	10 a4 b0 6f 05 1f 07 	adc    %ah,0x71f056f(%rax,%rsi,4)
 1005b49:	1d 35 ba f1 24       	sbb    $0x24f1ba35,%eax
 1005b4e:	4c 01 56 ed          	add    %r10,-0x13(%rsi)
 1005b52:	7d 54                	jge    0x1005ba8
 1005b54:	2a 88 97 90 30 1d    	sub    0x1d309097(%rax),%cl
 1005b5a:	9e                   	sahf   
 1005b5b:	df 0d db 69 64 8b    	fisttps -0x749b9625(%rip)        # 0xffffffff8c64c53c
 1005b61:	bf 72 09 59 81       	mov    $0x81590972,%edi
 1005b66:	ba 58 fd 75 66       	mov    $0x6675fd58,%edx
 1005b6b:	59                   	pop    %rcx
 1005b6c:	b8 f8 0b 57 20       	mov    $0x20570bf8,%eax
 1005b71:	c8 fd 90 89          	enterq $0x90fd,$0x89
 1005b75:	bc 55 9b 4a a3       	mov    $0xa34a9b55,%esp
 1005b7a:	65 e0 30             	gs loopne 0x1005bad
 1005b7d:	83 8a 0d a1 2d f0 10 	orl    $0x10,-0xfd25ef3(%rdx)
 1005b84:	2b 2b                	sub    (%rbx),%ebp
 1005b86:	1e                   	(bad)  
 1005b87:	05 a7 07 87 2c       	add    $0x2c8707a7,%eax
 1005b8c:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1005b8d:	5f                   	pop    %rdi
 1005b8e:	e6 50                	out    %al,$0x50
 1005b90:	b6 b9                	mov    $0xb9,%dh
 1005b92:	b9 17 8d 20 fe       	mov    $0xfe208d17,%ecx
 1005b97:	68 ac fc 15 c0       	pushq  $0xffffffffc015fcac
 1005b9c:	89 94 41 6b f2 22 02 	mov    %edx,0x222f26b(%rcx,%rax,2)
 1005ba3:	7e a7                	jle    0x1005b4c
 1005ba5:	db 52 33             	fistl  0x33(%rdx)
 1005ba8:	5b                   	pop    %rbx
 1005ba9:	64 48 e5 0f          	fs rex.W in $0xf,%eax
 1005bad:	46 bf f2 b1 15 f7    	rex.RX mov $0xf715b1f2,%edi
 1005bb3:	88 41 5f             	mov    %al,0x5f(%rcx)
 1005bb6:	77 e3                	ja     0x1005b9b
 1005bb8:	03 e6                	add    %esi,%esp
 1005bba:	90                   	nop
 1005bbb:	e3 7d                	jrcxz  0x1005c3a
 1005bbd:	29 9b a1 2c f9 f7    	sub    %ebx,-0x806d35f(%rbx)
 1005bc3:	8f                   	(bad)  
 1005bc4:	18 aa c9 34 5d 74    	sbb    %ch,0x745d34c9(%rdx)
 1005bca:	9c                   	pushfq 
 1005bcb:	2e 84 8c fb 28 23 d1 	test   %cl,%cs:0x6ed12328(%rbx,%rdi,8)
 1005bd2:	6e 
 1005bd3:	88 ea                	mov    %ch,%dl
 1005bd5:	ac                   	lods   %ds:(%rsi),%al
 1005bd6:	61                   	(bad)  
 1005bd7:	28 a5 83 a2 7a 8c    	sub    %ah,-0x73855d7d(%rbp)
 1005bdd:	69 a3 80 c3 0f 6c 4c 	imul   $0x8173114c,0x6c0fc380(%rbx),%esp
 1005be4:	11 73 81 
 1005be7:	7a a0                	jp     0x1005b89
 1005be9:	e7 c4                	out    %eax,$0xc4
 1005beb:	88 84 fb 97 89 37 d7 	mov    %al,-0x28c87669(%rbx,%rdi,8)
 1005bf2:	88 b0 9e 68 31 73    	mov    %dh,0x7331689e(%rax)
 1005bf8:	d8 98 de d3 1b 17    	fcomps 0x171bd3de(%rax)
 1005bfe:	97                   	xchg   %eax,%edi
 1005bff:	04 06                	add    $0x6,%al
 1005c01:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1005c02:	1a ba 83 4e 2e f9    	sbb    -0x6d1b17d(%rdx),%bh
 1005c08:	ef                   	out    %eax,(%dx)
 1005c09:	25 82 64 2b 9f       	and    $0x9f2b6482,%eax
 1005c0e:	74 26                	je     0x1005c36
 1005c10:	97                   	xchg   %eax,%edi
 1005c11:	02 b9 32 ad eb 47    	add    0x47ebad32(%rcx),%bh
 1005c17:	c2 be 43             	retq   $0x43be
 1005c1a:	c5 28 46             	(bad)
 1005c1d:	08 05 dc 8f 64 ef    	or     %al,-0x109b7024(%rip)        # 0xfffffffff064ebff
 1005c23:	08 2b                	or     %ch,(%rbx)
 1005c25:	c4                   	(bad)  
 1005c26:	4f 03 92 02 c0 f4 13 	rex.WRXB add 0x13f4c002(%r10),%r10
 1005c2d:	78 4d                	js     0x1005c7c
 1005c2f:	f6 46 2e 55          	testb  $0x55,0x2e(%rsi)
 1005c33:	dd fa                	(bad)  
 1005c35:	17                   	(bad)  
 1005c36:	b0 78                	mov    $0x78,%al
 1005c38:	d9 c3                	fld    %st(3)
 1005c3a:	8d                   	(bad)  
 1005c3b:	f6 f6                	div    %dh
 1005c3d:	58                   	pop    %rax
 1005c3e:	77 0d                	ja     0x1005c4d
 1005c40:	cd 87                	int    $0x87
 1005c42:	91                   	xchg   %eax,%ecx
 1005c43:	ee                   	out    %al,(%dx)
 1005c44:	b4 5f                	mov    $0x5f,%ah
 1005c46:	db ff                	(bad)  
 1005c48:	b3 be                	mov    $0xbe,%bl
 1005c4a:	34 af                	xor    $0xaf,%al
 1005c4c:	63 00                	movsxd (%rax),%eax
 1005c4e:	dd 80 91 71 d3 ef    	fldl   -0x102c8e6f(%rax)
 1005c54:	5c                   	pop    %rsp
 1005c55:	7c 92                	jl     0x1005be9
 1005c57:	a0 1b 7d a3 ff 24 a0 	movabs 0x5c2ba024ffa37d1b,%al
 1005c5e:	2b 5c 
 1005c60:	0c 2a                	or     $0x2a,%al
 1005c62:	6e                   	outsb  %ds:(%rsi),(%dx)
 1005c63:	15 64 ac 25 ca       	adc    $0xca25ac64,%eax
 1005c68:	7f d7                	jg     0x1005c41
 1005c6a:	d1 ee                	shr    %esi
 1005c6c:	72 0d                	jb     0x1005c7b
 1005c6e:	84 8a f5 7c 14 f2    	test   %cl,-0xdeb830b(%rdx)
 1005c74:	29 6c c3 d1          	sub    %ebp,-0x2f(%rbx,%rax,8)
 1005c78:	31 f6                	xor    %esi,%esi
 1005c7a:	b1 71                	mov    $0x71,%cl
 1005c7c:	f8                   	clc    
 1005c7d:	89 b4 1d c8 10 32 be 	mov    %esi,-0x41cdef38(%rbp,%rbx,1)
 1005c84:	fc                   	cld    
 1005c85:	e3 dc                	jrcxz  0x1005c63
 1005c87:	82                   	(bad)  
 1005c88:	95                   	xchg   %eax,%ebp
 1005c89:	ba 69 c4 62 83       	mov    $0x8362c469,%edx
 1005c8e:	41 fa                	rex.B cli 
 1005c90:	17                   	(bad)  
 1005c91:	e8 a1 2f 19 74       	callq  0x75198c37
 1005c96:	33 fd                	xor    %ebp,%edi
 1005c98:	50                   	push   %rax
 1005c99:	42 1d 9c 7a 15 71    	rex.X sbb $0x71157a9c,%eax
 1005c9f:	1d 66 52 4f 4d       	sbb    $0x4d4f5266,%eax
 1005ca4:	31 59 51             	xor    %ebx,0x51(%rcx)
 1005ca7:	ce                   	(bad)  
 1005ca8:	dd 2f                	(bad)  (%rdi)
 1005caa:	55                   	push   %rbp
 1005cab:	7e 52                	jle    0x1005cff
 1005cad:	cb                   	lret   
 1005cae:	9b                   	fwait
 1005caf:	e7 d5                	out    %eax,$0xd5
 1005cb1:	a3 7a 54 78 50 a8 76 	movabs %eax,0xe95e76a85078547a
 1005cb8:	5e e9 
 1005cba:	0c 77                	or     $0x77,%al
 1005cbc:	10 c6                	adc    %al,%dh
 1005cbe:	de b8 3a 9f 1f c1    	fidivrs -0x3ee060c6(%rax)
 1005cc4:	43 b6 e5             	rex.XB mov $0xe5,%r14b
 1005cc7:	06                   	(bad)  
 1005cc8:	71 db                	jno    0x1005ca5
 1005cca:	a2 7a d0 25 14 03 ed 	movabs %al,0xa45eed031425d07a
 1005cd1:	5e a4 
 1005cd3:	18 9b ba 35 f5 9d    	sbb    %bl,-0x620aca46(%rbx)
 1005cd9:	33 c3                	xor    %ebx,%eax
 1005cdb:	11 c0                	adc    %eax,%eax
 1005cdd:	56                   	push   %rsi
 1005cde:	be dd 33 ab ae       	mov    $0xaeab33dd,%esi
 1005ce3:	02 0c 64             	add    (%rsp,%riz,2),%cl
 1005ce6:	68 43 ed e0 06       	pushq  $0x6e0ed43
 1005ceb:	b9 49 19 a0 4f       	mov    $0x4fa01949,%ecx
 1005cf0:	d0 60 cd             	shlb   -0x33(%rax)
 1005cf3:	70 6f                	jo     0x1005d64
 1005cf5:	ca fc 60             	lret   $0x60fc
 1005cf8:	f1                   	icebp  
 1005cf9:	e2 c7                	loop   0x1005cc2
 1005cfb:	e6 f0                	out    %al,$0xf0
 1005cfd:	fc                   	cld    
 1005cfe:	86 2d 25 19 ad f6    	xchg   %ch,-0x952e6db(%rip)        # 0xfffffffff7ad7629
 1005d04:	42 97                	rex.X xchg %eax,%edi
 1005d06:	0c 3a                	or     $0x3a,%al
 1005d08:	83 1c c0 47          	sbbl   $0x47,(%rax,%rax,8)
 1005d0c:	33 2b                	xor    (%rbx),%ebp
 1005d0e:	17                   	(bad)  
 1005d0f:	ca 28 b9             	lret   $0xb928
 1005d12:	65 46 d9 70 1e       	rex.RX fnstenv %gs:0x1e(%rax)
 1005d17:	39 cb                	cmp    %ecx,%ebx
 1005d19:	05 9b ef 4e 08       	add    $0x84eef9b,%eax
 1005d1e:	23 be 90 d3 34 e3    	and    -0x1ccb2c70(%rsi),%edi
 1005d24:	8e ce                	mov    %esi,%cs
 1005d26:	e3 c3                	jrcxz  0x1005ceb
 1005d28:	84 ab 44 f6 11 0e    	test   %ch,0xe11f644(%rbx)
 1005d2e:	41 0a b4 61 a3 81 6c 	or     0x506c81a3(%r9,%riz,2),%sil
 1005d35:	50 
 1005d36:	5b                   	pop    %rbx
 1005d37:	5a                   	pop    %rdx
 1005d38:	0e                   	(bad)  
 1005d39:	d9 3d 5b 8a a8 40    	fnstcw 0x40a88a5b(%rip)        # 0x41a8e79a
 1005d3f:	d0 34 e9             	shlb   (%rcx,%rbp,8)
 1005d42:	20 f8                	and    %bh,%al
 1005d44:	87 c3                	xchg   %eax,%ebx
 1005d46:	8d 5f 1f             	lea    0x1f(%rdi),%ebx
 1005d49:	2f                   	(bad)  
 1005d4a:	c2 7f 21             	retq   $0x217f
 1005d4d:	7f c3                	jg     0x1005d12
 1005d4f:	71 e8                	jno    0x1005d39
 1005d51:	df b5 0f 5a 62 9a    	fbstp  -0x659da5f1(%rbp)
 1005d57:	21 36                	and    %esi,(%rsi)
 1005d59:	1a 70 e7             	sbb    -0x19(%rax),%dh
 1005d5c:	91                   	xchg   %eax,%ecx
 1005d5d:	49                   	rex.WB
 1005d5e:	65 84 22             	test   %ah,%gs:(%rdx)
 1005d61:	3f                   	(bad)  
 1005d62:	d7                   	xlat   %ds:(%rbx)
 1005d63:	e4 9b                	in     $0x9b,%al
 1005d65:	0d 1b 68 ee 6d       	or     $0x6dee681b,%eax
 1005d6a:	d5                   	(bad)  
 1005d6b:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1005d6c:	a2 d1 e1 74 fa 73 9e 	movabs %al,0xe7469e73fa74e1d1
 1005d73:	46 e7 
 1005d75:	5e                   	pop    %rsi
 1005d76:	30 1d af f3 be d3    	xor    %bl,-0x2c410c51(%rip)        # 0xffffffffd4bf512b
 1005d7c:	45 02 1c fe          	add    (%r14,%rdi,8),%r11b
 1005d80:	d1 8a 92 bd ac b5    	rorl   -0x4a53426e(%rdx)
 1005d86:	1c 27                	sbb    $0x27,%al
 1005d88:	60                   	(bad)  
 1005d89:	c0 e2 9e             	shl    $0x9e,%dl
 1005d8c:	c2 6b 9d             	retq   $0x9d6b
 1005d8f:	cf                   	iret   
 1005d90:	2b 9a 7a d6 75 15    	sub    0x1575d67a(%rdx),%ebx
 1005d96:	76 14                	jbe    0x1005dac
 1005d98:	d7                   	xlat   %ds:(%rbx)
 1005d99:	d1 53 f2             	rcll   -0xe(%rbx)
 1005d9c:	73 b9                	jae    0x1005d57
 1005d9e:	dd f9                	(bad)  
 1005da0:	6b e7 40             	imul   $0x40,%edi,%esp
 1005da3:	be 37 57 47 26       	mov    $0x26475737,%esi
 1005da8:	bd c2 2f c8 be       	mov    $0xbec82fc2,%ebp
 1005dad:	d4                   	(bad)  
 1005dae:	71 d1                	jno    0x1005d81
 1005db0:	c3                   	retq   
 1005db1:	1d bf 90 c8 72       	sbb    $0x72c890bf,%eax
 1005db6:	56                   	push   %rsi
 1005db7:	a8 e0                	test   $0xe0,%al
 1005db9:	62                   	(bad)  
 1005dba:	fb                   	sti    
 1005dbb:	75 cd                	jne    0x1005d8a
 1005dbd:	13 f4                	adc    %esp,%esi
 1005dbf:	76 01                	jbe    0x1005dc2
 1005dc1:	dc 53 78             	fcoml  0x78(%rbx)
 1005dc4:	f9                   	stc    
 1005dc5:	2e 1c 69             	cs sbb $0x69,%al
 1005dc8:	e8 55 96 c6 1b       	callq  0x1cc6f422
 1005dcd:	f2 af                	repnz scas %es:(%rdi),%eax
 1005dcf:	e5 b3                	in     $0xb3,%eax
 1005dd1:	2e 54                	cs push %rsp
 1005dd3:	ff                   	(bad)  
 1005dd4:	e8 1b 31 c8 2e       	callq  0x2fc88ef4
 1005dd9:	e4 60                	in     $0x60,%al
 1005ddb:	64 b2 52             	fs mov $0x52,%dl
 1005dde:	9d                   	popfq  
 1005ddf:	5c                   	pop    %rsp
 1005de0:	7a 0e                	jp     0x1005df0
 1005de2:	21 49 cf             	and    %ecx,-0x31(%rcx)
 1005de5:	f6 d2                	not    %dl
 1005de7:	25 15 f5 c4 dc       	and    $0xdcc4f515,%eax
 1005dec:	05 30 ce 49 01       	add    $0x149ce30,%eax
 1005df1:	95                   	xchg   %eax,%ebp
 1005df2:	ca 0d c5             	lret   $0xc50d
 1005df5:	1d 76 13 f5 8f       	sbb    $0x8ff51376,%eax
 1005dfa:	aa                   	stos   %al,%es:(%rdi)
 1005dfb:	87 a9 40 ef 74 23    	xchg   %ebp,0x2374ef40(%rcx)
 1005e01:	c2 1e 0e             	retq   $0xe1e
 1005e04:	d4                   	(bad)  
 1005e05:	6b db 49             	imul   $0x49,%ebx,%ebx
 1005e08:	95                   	xchg   %eax,%ebp
 1005e09:	3d aa 50 c6 54       	cmp    $0x54c650aa,%eax
 1005e0e:	e0 15                	loopne 0x1005e25
 1005e10:	42 1b 38             	rex.X sbb (%rax),%edi
 1005e13:	ac                   	lods   %ds:(%rsi),%al
 1005e14:	22 f0                	and    %al,%dh
 1005e16:	4c da cc             	rex.WR fcmove %st(4),%st
 1005e19:	97                   	xchg   %eax,%edi
 1005e1a:	b2 95                	mov    $0x95,%dl
 1005e1c:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1005e1d:	cf                   	iret   
 1005e1e:	bc 32 cf fb 1f       	mov    $0x1ffbcf32,%esp
 1005e23:	5b                   	pop    %rbx
 1005e24:	a8 55                	test   $0x55,%al
 1005e26:	90                   	nop
 1005e27:	e0 45                	loopne 0x1005e6e
 1005e29:	bb a3 e1 80 da       	mov    $0xda80e1a3,%ebx
 1005e2e:	7b be                	jnp    0x1005dee
 1005e30:	f6 8a 2e 4d f3 b7 7e 	testb  $0x7e,-0x480cb2d2(%rdx)
 1005e37:	76 1e                	jbe    0x1005e57
 1005e39:	6d                   	insl   (%dx),%es:(%rdi)
 1005e3a:	00 0f                	add    %cl,(%rdi)
 1005e3c:	c6                   	(bad)  
 1005e3d:	f2 09 ec             	repnz or %ebp,%esp
 1005e40:	3c 71                	cmp    $0x71,%al
 1005e42:	6a 60                	pushq  $0x60
 1005e44:	a2 63 7b ca e2 a5 f8 	movabs %al,0xc708f8a5e2ca7b63
 1005e4b:	08 c7 
 1005e4d:	c9                   	leaveq 
 1005e4e:	15 e3 60 df 77       	adc    $0x77df60e3,%eax
 1005e53:	c8 24 72 3a          	enterq $0x7224,$0x3a
 1005e57:	df 65 bb             	fbld   -0x45(%rbp)
 1005e5a:	d9 79 64             	fnstcw 0x64(%rcx)
 1005e5d:	9c                   	pushfq 
 1005e5e:	d9 1a                	fstps  (%rdx)
 1005e60:	b7 a2                	mov    $0xa2,%bh
 1005e62:	bc 31 46 61 82       	mov    $0x82614631,%esp
 1005e67:	7e 0c                	jle    0x1005e75
 1005e69:	b8 57 9e e3 c3       	mov    $0xc3e39e57,%eax
 1005e6e:	83 c3 99             	add    $0xffffff99,%ebx
 1005e71:	60                   	(bad)  
 1005e72:	ae                   	scas   %es:(%rdi),%al
 1005e73:	5b                   	pop    %rbx
 1005e74:	29 6d f5             	sub    %ebp,-0xb(%rbp)
 1005e77:	49 2c 3a             	rex.WB sub $0x3a,%al
 1005e7a:	b9 0b b8 ce e1       	mov    $0xe1ceb80b,%ecx
 1005e7f:	4b 8c 7a bd          	rex.WXB mov %?,-0x43(%r10)
 1005e83:	1d cb 66 21 f8       	sbb    $0xf82166cb,%eax
 1005e88:	c2 fb 31             	retq   $0x31fb
 1005e8b:	69 a0 9e aa 75 d3 b2 	imul   $0xc3e2bb2,-0x2c8a5562(%rax),%esp
 1005e92:	2b 3e 0c 
 1005e95:	23 8c c0 f9 2a bb bc 	and    -0x4344d507(%rax,%rax,8),%ecx
 1005e9c:	4d cb                	rex.WRB lretq 
 1005e9e:	11 21                	adc    %esp,(%rcx)
 1005ea0:	2a 24 de             	sub    (%rsi,%rbx,8),%ah
 1005ea3:	d4                   	(bad)  
 1005ea4:	59                   	pop    %rcx
 1005ea5:	88 33                	mov    %dh,(%rbx)
 1005ea7:	fd                   	std    
 1005ea8:	5a                   	pop    %rdx
 1005ea9:	8a 44 5a 97          	mov    -0x69(%rdx,%rbx,2),%al
 1005ead:	18 a1 a0 3d 77 91    	sbb    %ah,-0x6e88c260(%rcx)
 1005eb3:	a3 a4 ab 2e 82 45 b5 	movabs %eax,0x813b545822eaba4
 1005eba:	13 08 
 1005ebc:	4c 96                	rex.WR xchg %rax,%rsi
 1005ebe:	af                   	scas   %es:(%rdi),%eax
 1005ebf:	21 ad e1 51 45 e8    	and    %ebp,-0x17baae1f(%rbp)
 1005ec5:	39 03                	cmp    %eax,(%rbx)
 1005ec7:	1b 7e 12             	sbb    0x12(%rsi),%edi
 1005eca:	c9                   	leaveq 
 1005ecb:	71 8e                	jno    0x1005e5b
 1005ecd:	09 d7                	or     %edx,%edi
 1005ecf:	2e 1e                	cs (bad) 
 1005ed1:	2f                   	(bad)  
 1005ed2:	b6 29                	mov    $0x29,%dh
 1005ed4:	1d c7 97 3f f9       	sbb    $0xf93f97c7,%eax
 1005ed9:	46 ec                	rex.RX in (%dx),%al
 1005edb:	85 7a 49             	test   %edi,0x49(%rdx)
 1005ede:	8d 22                	lea    (%rdx),%esp
 1005ee0:	ff 20                	jmpq   *(%rax)
 1005ee2:	25 8e b1 f0 1b       	and    $0x1bf0b18e,%eax
 1005ee7:	c1 e2 2b             	shl    $0x2b,%edx
 1005eea:	38 98 74 01 54 29    	cmp    %bl,0x29540174(%rax)
 1005ef0:	1c c1                	sbb    $0xc1,%al
 1005ef2:	f5                   	cmc    
 1005ef3:	c7 c6 dd bc 01 77    	mov    $0x7701bcdd,%esi
 1005ef9:	78 15                	js     0x1005f10
 1005efb:	34 34                	xor    $0x34,%al
 1005efd:	37                   	(bad)  
 1005efe:	bf 37 d4 99 af       	mov    $0xaf99d437,%edi
 1005f03:	89 79 f9             	mov    %edi,-0x7(%rcx)
 1005f06:	5a                   	pop    %rdx
 1005f07:	b6 39                	mov    $0x39,%dh
 1005f09:	e3 98                	jrcxz  0x1005ea3
 1005f0b:	a8 14                	test   $0x14,%al
 1005f0d:	43 9a                	rex.XB (bad) 
 1005f0f:	64 57                	fs push %rdi
 1005f11:	93                   	xchg   %eax,%ebx
 1005f12:	de 78 e4             	fidivrs -0x1c(%rax)
 1005f15:	6c                   	insb   (%dx),%es:(%rdi)
 1005f16:	88 e6                	mov    %ah,%dh
 1005f18:	16                   	(bad)  
 1005f19:	9d                   	popfq  
 1005f1a:	45 f1                	rex.RB icebp 
 1005f1c:	93                   	xchg   %eax,%ebx
 1005f1d:	8d                   	(bad)  
 1005f1e:	e2 f8                	loop   0x1005f18
 1005f20:	7b 0a                	jnp    0x1005f2c
 1005f22:	3f                   	(bad)  
 1005f23:	04 da                	add    $0xda,%al
 1005f25:	e7 3a                	out    %eax,$0x3a
 1005f27:	65 a7                	cmpsl  %es:(%rdi),%gs:(%rsi)
 1005f29:	1e                   	(bad)  
 1005f2a:	7e f6                	jle    0x1005f22
 1005f2c:	22 d2                	and    %dl,%dl
 1005f2e:	45 c6                	rex.RB (bad) 
 1005f30:	23 c9                	and    %ecx,%ecx
 1005f32:	3f                   	(bad)  
 1005f33:	72 0b                	jb     0x1005f40
 1005f35:	27                   	(bad)  
 1005f36:	68 8f d8 bf 8e       	pushq  $0xffffffff8ebfd88f
 1005f3b:	d4                   	(bad)  
 1005f3c:	52                   	push   %rdx
 1005f3d:	c6                   	(bad)  
 1005f3e:	1d 85 e2 f2 c8       	sbb    $0xc8f2e285,%eax
 1005f43:	a1 c1 34 87 f3 37 ba 	movabs 0x1f72ba37f38734c1,%eax
 1005f4a:	72 1f 
 1005f4c:	2c d9                	sub    $0xd9,%al
 1005f4e:	10 c4                	adc    %al,%ah
 1005f50:	3c 67                	cmp    $0x67,%al
 1005f52:	34 a0                	xor    $0xa0,%al
 1005f54:	64 ac                	lods   %fs:(%rsi),%al
 1005f56:	3c 80                	cmp    $0x80,%al
 1005f58:	4e 28 0b             	rex.WRX sub %r9b,(%rbx)
 1005f5b:	e0 9e                	loopne 0x1005efb
 1005f5d:	9f                   	lahf   
 1005f5e:	77 39                	ja     0x1005f99
 1005f60:	e5 8b                	in     $0x8b,%eax
 1005f62:	df 21                	fbld   (%rcx)
 1005f64:	ce                   	(bad)  
 1005f65:	09 5a 7e             	or     %ebx,0x7e(%rdx)
 1005f68:	53                   	push   %rbx
 1005f69:	35 e7 6e 48 56       	xor    $0x56486ee7,%eax
 1005f6e:	cf                   	iret   
 1005f6f:	f1                   	icebp  
 1005f70:	5c                   	pop    %rsp
 1005f71:	df 7c bb cb          	fistpll -0x35(%rbx,%rdi,4)
 1005f75:	16                   	(bad)  
 1005f76:	ff                   	(bad)  
 1005f77:	bd 94 9b ae 4e       	mov    $0x4eae9b94,%ebp
 1005f7c:	06                   	(bad)  
 1005f7d:	3d 10 b6 3e 97       	cmp    $0x973eb610,%eax
 1005f82:	c4                   	(bad)  
 1005f83:	d3 af 52 d5 18 f2    	shrl   %cl,-0xde72aae(%rdi)
 1005f89:	46 87 4b f8          	rex.RX xchg %r9d,-0x8(%rbx)
 1005f8d:	4b 8e 63 66          	rex.WXB mov 0x66(%r11),%fs
 1005f91:	0c e1                	or     $0xe1,%al
 1005f93:	25 00 9f 0d fc       	and    $0xfc0d9f00,%eax
 1005f98:	cf                   	iret   
 1005f99:	34 9f                	xor    $0x9f,%al
 1005f9b:	30 b0 8b 07 ca 54    	xor    %dh,0x54ca078b(%rax)
 1005fa1:	a2 21 9c 18 5a 95 1b 	movabs %al,0x7dee1b955a189c21
 1005fa8:	ee 7d 
 1005faa:	fb                   	sti    
 1005fab:	e3 af                	jrcxz  0x1005f5c
 1005fad:	d2 3c d1             	sarb   %cl,(%rcx,%rdx,8)
 1005fb0:	48 14 2f             	rex.W adc $0x2f,%al
 1005fb3:	e6 11                	out    %al,$0x11
 1005fb5:	72 81                	jb     0x1005f38
 1005fb7:	dd 4c 8a 4f          	fisttpll 0x4f(%rdx,%rcx,4)
 1005fbb:	db 41 3e             	fildl  0x3e(%rcx)
 1005fbe:	b8 e7 eb 59 b2       	mov    $0xb259ebe7,%eax
 1005fc3:	0a f1                	or     %cl,%dh
 1005fc5:	50                   	push   %rax
 1005fc6:	74 43                	je     0x100600b
 1005fc8:	65 fd                	gs std 
 1005fca:	71 83                	jno    0x1005f4f
 1005fcc:	ab                   	stos   %eax,%es:(%rdi)
 1005fcd:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1005fce:	3e b6 25             	ds mov $0x25,%dh
 1005fd1:	64 2e 8b 4c 8a 9f    	fs mov %cs:-0x61(%rdx,%rcx,4),%ecx
 1005fd7:	ab                   	stos   %eax,%es:(%rdi)
 1005fd8:	42 63 fd             	rex.X movsxd %ebp,%edi
 1005fdb:	f7 71 93             	divl   -0x6d(%rcx)
 1005fde:	b7 9f                	mov    $0x9f,%bh
 1005fe0:	ad                   	lods   %ds:(%rsi),%eax
 1005fe1:	58                   	pop    %rax
 1005fe2:	f6 cf ce             	test   $0xce,%bh
 1005fe5:	56                   	push   %rsi
 1005fe6:	5d                   	pop    %rbp
 1005fe7:	5f                   	pop    %rdi
 1005fe8:	94                   	xchg   %eax,%esp
 1005fe9:	e0 fa                	loopne 0x1005fe5
 1005feb:	3d bb d3 66 5a       	cmp    $0x5a66d3bb,%eax
 1005ff0:	b3 61                	mov    $0x61,%bl
 1005ff2:	b4 94                	mov    $0x94,%ah
 1005ff4:	00 ea                	add    %ch,%dl
 1005ff6:	02 8d 83 ef 43 1c    	add    0x1c43ef83(%rbp),%cl
 1005ffc:	42 52                	rex.X push %rdx
 1005ffe:	36 20 10             	and    %dl,%ss:(%rax)
 1006001:	25 37 5a b4 4b       	and    $0x4bb45a37,%eax
 1006006:	38 d8                	cmp    %bl,%al
 1006008:	73 9c                	jae    0x1005fa6
 100600a:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 100600b:	e5 b4                	in     $0xb4,%eax
 100600d:	24 c6                	and    $0xc6,%al
 100600f:	22 7b 37             	and    0x37(%rbx),%bh
 1006012:	aa                   	stos   %al,%es:(%rdi)
 1006013:	0b 85 62 43 ea ef    	or     -0x1015bc9e(%rbp),%eax
 1006019:	7d 93                	jge    0x1005fae
 100601b:	06                   	(bad)  
 100601c:	47 c2 93 6a          	rex.RXB retq $0x6a93
 1006020:	7e c3                	jle    0x1005fe5
 1006022:	d8 fd                	fdivr  %st(5),%st
 1006024:	df fd                	(bad)  
 1006026:	03 70 af             	add    -0x51(%rax),%esi
 1006029:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100602a:	d9 fa                	fsqrt  
 100602c:	74 2a                	je     0x1006058
 100602e:	1c 18                	sbb    $0x18,%al
 1006030:	d9 28                	fldcw  (%rax)
 1006032:	fb                   	sti    
 1006033:	f2 bd 72 cf 54 4d    	repnz mov $0x4d54cf72,%ebp
 1006039:	59                   	pop    %rcx
 100603a:	1b d3                	sbb    %ebx,%edx
 100603c:	68 06 b8 40 4c       	pushq  $0x4c40b806
 1006041:	49 5d                	rex.WB pop %r13
 1006043:	b9 e3 93 57 80       	mov    $0x805793e3,%ecx
 1006048:	c1 bd 39 45 c1 f8 03 	sarl   $0x3,-0x73ebac7(%rbp)
 100604f:	3a a6 3e bc 64 04    	cmp    0x464bc3e(%rsi),%ah
 1006055:	a9 77 0b 0b 1f       	test   $0x1f0b0b77,%eax
 100605a:	ce                   	(bad)  
 100605b:	21 fa                	and    %edi,%edx
 100605d:	5f                   	pop    %rdi
 100605e:	6c                   	insb   (%dx),%es:(%rdi)
 100605f:	ed                   	in     (%dx),%eax
 1006060:	78 c9                	js     0x100602b
 1006062:	2c 2b                	sub    $0x2b,%al
 1006064:	5f                   	pop    %rdi
 1006065:	65 89 9e c1 7a 3b a3 	mov    %ebx,%gs:-0x5cc4853f(%rsi)
 100606c:	75 36                	jne    0x10060a4
 100606e:	ed                   	in     (%dx),%eax
 100606f:	32 79 c5             	xor    -0x3b(%rcx),%bh
 1006072:	56                   	push   %rsi
 1006073:	d7                   	xlat   %ds:(%rbx)
 1006074:	75 52                	jne    0x10060c8
 1006076:	dc 06                	faddl  (%rsi)
 1006078:	26 da 49 15          	fimull %es:0x15(%rcx)
 100607c:	bc 21 cc 7c 71       	mov    $0x717ccc21,%esp
 1006081:	35 30 ba e1 5f       	xor    $0x5fe1ba30,%eax
 1006086:	31 6b 33             	xor    %ebp,0x33(%rbx)
 1006089:	1f                   	(bad)  
 100608a:	45 b8 e8 40 9c 4a    	rex.RB mov $0x4a9c40e8,%r8d
 1006090:	16                   	(bad)  
 1006091:	08 c1                	or     %al,%cl
 1006093:	12 62 ab             	adc    -0x55(%rdx),%ah
 1006096:	7e 58                	jle    0x10060f0
 1006098:	84 11                	test   %dl,(%rcx)
 100609a:	29 71 97             	sub    %esi,-0x69(%rcx)
 100609d:	f7 b5 e8 12 ce 11    	divl   0x11ce12e8(%rbp)
 10060a3:	f9                   	stc    
 10060a4:	57                   	push   %rdi
 10060a5:	56                   	push   %rsi
 10060a6:	61                   	(bad)  
 10060a7:	80 44 0b 12 b1       	addb   $0xb1,0x12(%rbx,%rcx,1)
 10060ac:	ff                   	(bad)  
 10060ad:	79 e2                	jns    0x1006091
 10060af:	2b 56 26             	sub    0x26(%rsi),%edx
 10060b2:	ef                   	out    %eax,(%dx)
 10060b3:	b6 93                	mov    $0x93,%dh
 10060b5:	34 82                	xor    $0x82,%al
 10060b7:	83 ee d9             	sub    $0xffffffd9,%esi
 10060ba:	27                   	(bad)  
 10060bb:	2c f9                	sub    $0xf9,%al
 10060bd:	13 c6                	adc    %esi,%eax
 10060bf:	8a 47 58             	mov    0x58(%rdi),%al
 10060c2:	7b 49                	jnp    0x100610d
 10060c4:	1d b5 67 7e fe       	sbb    $0xfe7e67b5,%eax
 10060c9:	40 a7                	rex cmpsl %es:(%rdi),%ds:(%rsi)
 10060cb:	08 91 76 32 9b dd    	or     %dl,-0x2264cd8a(%rcx)
 10060d1:	dc 45 ea             	faddl  -0x16(%rbp)
 10060d4:	50                   	push   %rax
 10060d5:	28 54 7c 9e          	sub    %dl,-0x62(%rsp,%rdi,2)
 10060d9:	f0 0e                	lock (bad) 
 10060db:	83 b1 c4 6e d3 6a 5c 	xorl   $0x5c,0x6ad36ec4(%rcx)
 10060e2:	2e 61                	cs (bad) 
 10060e4:	05 9f 4c b0 55       	add    $0x55b04c9f,%eax
 10060e9:	9f                   	lahf   
 10060ea:	43 5f                	rex.XB pop %r15
 10060ec:	33 dd                	xor    %ebp,%ebx
 10060ee:	18 9d 1b a6 a3 17    	sbb    %bl,0x17a3a61b(%rbp)
 10060f4:	4c 32 d0             	rex.WR xor %al,%r10b
 10060f7:	66 1c e1             	data16 sbb $0xe1,%al
 10060fa:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 10060fb:	6e                   	outsb  %ds:(%rsi),(%dx)
 10060fc:	01 cb                	add    %ecx,%ebx
 10060fe:	f5                   	cmc    
 10060ff:	de cb                	fmulp  %st,%st(3)
 1006101:	37                   	(bad)  
 1006102:	d9 e6                	(bad)  
 1006104:	b4 a6                	mov    $0xa6,%ah
 1006106:	6b cc 37             	imul   $0x37,%esp,%ecx
 1006109:	1f                   	(bad)  
 100610a:	98                   	cwtl   
 100610b:	26 b0 64             	es mov $0x64,%al
 100610e:	e7 cd                	out    %eax,$0xcd
 1006110:	2f                   	(bad)  
 1006111:	07                   	(bad)  
 1006112:	e2 2a                	loop   0x100613e
 1006114:	68 6b a3 99 ff       	pushq  $0xffffffffff99a36b
 1006119:	32 0a                	xor    (%rdx),%cl
 100611b:	e8 f8 20 44 73       	callq  0x74448218
 1006120:	a2 c4 b7 c5 4e ad 24 	movabs %al,0xb34924ad4ec5b7c4
 1006127:	49 b3 
 1006129:	50                   	push   %rax
 100612a:	d9 23                	fldenv (%rbx)
 100612c:	0f 55 ad c2 69 12 64 	andnps 0x641269c2(%rbp),%xmm5
 1006133:	73 3e                	jae    0x1006173
 1006135:	c4                   	(bad)  
 1006136:	35 75 e8 b8 d6       	xor    $0xd6b8e875,%eax
 100613b:	62                   	(bad)  
 100613c:	b0 67                	mov    $0x67,%al
 100613e:	2f                   	(bad)  
 100613f:	bc 88 25 d1 a2       	mov    $0xa2d12588,%esp
 1006144:	bc 81 8f db de       	mov    $0xdedb8f81,%esp
 1006149:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 100614a:	61                   	(bad)  
 100614b:	01 b7 df 23 5b 9c    	add    %esi,-0x63a4dc21(%rdi)
 1006151:	d6                   	(bad)  
 1006152:	22 83 70 e1 1f e3    	and    -0x1ce01e90(%rbx),%al
 1006158:	7e 81                	jle    0x10060db
 100615a:	32 80 42 0b 7e 86    	xor    -0x7981f4be(%rax),%al
 1006160:	6a c8                	pushq  $0xffffffffffffffc8
 1006162:	d2 40 be             	rolb   %cl,-0x42(%rax)
 1006165:	bd f5 a8 1f 10       	mov    $0x101fa8f5,%ebp
 100616a:	98                   	cwtl   
 100616b:	0e                   	(bad)  
 100616c:	dd 1d e4 f7 7c 0c    	fstpl  0xc7cf7e4(%rip)        # 0xd7d5956
 1006172:	b0 77                	mov    $0x77,%al
 1006174:	4f 75 a6             	rex.WRXB jne 0x100611d
 1006177:	5e                   	pop    %rsi
 1006178:	32 d0                	xor    %al,%dl
 100617a:	71 d8                	jno    0x1006154
 100617c:	a0 7a 3b 6f 69 4f 0d 	movabs 0x43d70d4f696f3b7a,%al
 1006183:	d7 43 
 1006185:	3f                   	(bad)  
 1006186:	e7 ca                	out    %eax,$0xca
 1006188:	7d 97                	jge    0x1006121
 100618a:	52                   	push   %rdx
 100618b:	8b 26                	mov    (%rsi),%esp
 100618d:	b0 1d                	mov    $0x1d,%al
 100618f:	dd 72 95             	fnsave -0x6b(%rdx)
 1006192:	98                   	cwtl   
 1006193:	cf                   	iret   
 1006194:	19 5b c1             	sbb    %ebx,-0x3f(%rbx)
 1006197:	6d                   	insl   (%dx),%es:(%rdi)
 1006198:	cd d9                	int    $0xd9
 100619a:	4e 3f                	rex.WRX (bad) 
 100619c:	fa                   	cli    
 100619d:	1e                   	(bad)  
 100619e:	c4                   	(bad)  
 100619f:	95                   	xchg   %eax,%ebp
 10061a0:	68 2e f4 46 54       	pushq  $0x5446f42e
 10061a5:	72 0d                	jb     0x10061b4
 10061a7:	85 c2                	test   %eax,%edx
 10061a9:	6f                   	outsl  %ds:(%rsi),(%dx)
 10061aa:	25 74 d2 33 53       	and    $0x5333d274,%eax
 10061af:	27                   	(bad)  
 10061b0:	06                   	(bad)  
 10061b1:	a3 02 20 6c b5 7a 34 	movabs %eax,0x8fb7347ab56c2002
 10061b8:	b7 8f 
 10061ba:	72 a8                	jb     0x1006164
 10061bc:	d0 5c 73 af          	rcrb   -0x51(%rbx,%rsi,2)
 10061c0:	ce                   	(bad)  
 10061c1:	20 eb                	and    %ch,%bl
 10061c3:	44 63 c3             	movsxd %ebx,%r8d
 10061c6:	e8 f5 a8 59 9f       	callq  0xffffffffa05a0ac0
 10061cb:	94                   	xchg   %eax,%esp
 10061cc:	9a                   	(bad)  
 10061cd:	1e                   	(bad)  
 10061ce:	4f 18 c6             	rex.WRXB sbb %r8b,%r14b
 10061d1:	d8 5b c0             	fcomps -0x40(%rbx)
 10061d4:	ee                   	out    %al,(%dx)
 10061d5:	18 9a 74 4f 26 08    	sbb    %bl,0x8264f74(%rdx)
 10061db:	4e c4 03 fe 84       	rex.WRX (bad) 
 10061e0:	9c                   	pushfq 
 10061e1:	bb f2 a4 4f 02       	mov    $0x24fa4f2,%ebx
 10061e6:	00 ba 3a 07 9f e5    	add    %bh,-0x1a60f8c6(%rdx)
 10061ec:	67 f7 31             	divl   (%ecx)
 10061ef:	54                   	push   %rsp
 10061f0:	26 b3 f1             	es mov $0xf1,%bl
 10061f3:	a2 d7 34 34 9a aa 16 	movabs %al,0x586716aa9a3434d7
 10061fa:	67 58 
 10061fc:	03 9d 66 04 40 3f    	add    0x3f400466(%rbp),%ebx
 1006202:	c0 85 b6 af d9 3c 85 	rolb   $0x85,0x3cd9afb6(%rbp)
 1006209:	0c 8d                	or     $0x8d,%al
 100620b:	bd 7e e5 bd cb       	mov    $0xcbbde57e,%ebp
 1006210:	84 1e                	test   %bl,(%rsi)
 1006212:	31 25 25 4b 1a 18    	xor    %esp,0x181a4b25(%rip)        # 0x191aad3d
 1006218:	08 31                	or     %dh,(%rcx)
 100621a:	3b 2f                	cmp    (%rdi),%ebp
 100621c:	87 5b cf             	xchg   %ebx,-0x31(%rbx)
 100621f:	1c f8                	sbb    $0xf8,%al
 1006221:	8d 9f 4a 29 b2 3f    	lea    0x3fb2294a(%rdi),%ebx
 1006227:	12 f9                	adc    %cl,%bh
 1006229:	56                   	push   %rsi
 100622a:	ce                   	(bad)  
 100622b:	d7                   	xlat   %ds:(%rbx)
 100622c:	3c 81                	cmp    $0x81,%al
 100622e:	72 fc                	jb     0x100622c
 1006230:	25 5c d4 bc 0e       	and    $0xebcd45c,%eax
 1006235:	cc                   	int3   
 1006236:	00 24 57             	add    %ah,(%rdi,%rdx,2)
 1006239:	35 da 03 5c d4       	xor    $0xd45c03da,%eax
 100623e:	f0 45                	lock rex.RB
 1006240:	4e 31 ca             	rex.WRX xor %r9,%rdx
 1006243:	57                   	push   %rdi
 1006244:	da 59 5a             	ficompl 0x5a(%rcx)
 1006247:	ff 5c 5b f7          	lcall  *-0x9(%rbx,%rbx,2)
 100624b:	1a ba d4 c8 18 1a    	sbb    0x1a18c8d4(%rdx),%bh
 1006251:	4b 7b ce             	rex.WXB jnp 0x1006222
 1006254:	a8 b7                	test   $0xb7,%al
 1006256:	d5                   	(bad)  
 1006257:	90                   	nop
 1006258:	a1 7a 91 dd 6e df bd 	movabs 0x845bddf6edd917a,%eax
 100625f:	45 08 
 1006261:	2b 70 f6             	sub    -0xa(%rax),%esi
 1006264:	9e                   	sahf   
 1006265:	01 30                	add    %esi,(%rax)
 1006267:	f3 c1 36 2b          	repz shll $0x2b,(%rsi)
 100626b:	e8 bb cd 09 1c       	callq  0x1d0a302b
 1006270:	8b f0                	mov    %eax,%esi
 1006272:	bd 32 83 53 ef       	mov    $0xef538332,%ebp
 1006277:	58                   	pop    %rax
 1006278:	ad                   	lods   %ds:(%rsi),%eax
 1006279:	77 84                	ja     0x10061ff
 100627b:	33 4b b8             	xor    -0x48(%rbx),%ecx
 100627e:	2c 80                	sub    $0x80,%al
 1006280:	84 ab ce 2b c7 7c    	test   %ch,0x7cc72bce(%rbx)
 1006286:	54                   	push   %rsp
 1006287:	f5                   	cmc    
 1006288:	b0 6c                	mov    $0x6c,%al
 100628a:	6b dc 65             	imul   $0x65,%esp,%ebx
 100628d:	91                   	xchg   %eax,%ecx
 100628e:	87 7d 23             	xchg   %edi,0x23(%rbp)
 1006291:	d1 d5                	rcl    %ebp
 1006293:	18 90 f3 c7 88 5e    	sbb    %dl,0x5e88c7f3(%rax)
 1006299:	c2 b6 52             	retq   $0x52b6
 100629c:	15 68 01 3d c6       	adc    $0xc63d0168,%eax
 10062a1:	9f                   	lahf   
 10062a2:	c9                   	leaveq 
 10062a3:	40 7e a7             	rex jle 0x100624d
 10062a6:	49 24 2f             	rex.WB and $0x2f,%al
 10062a9:	c0 be 64 f5 7c a5 c0 	sarb   $0xc0,-0x5a830a9c(%rsi)
 10062b0:	98                   	cwtl   
 10062b1:	5f                   	pop    %rdi
 10062b2:	f6 20                	mulb   (%rax)
 10062b4:	e0 15                	loopne 0x10062cb
 10062b6:	65 4a e2 d3          	gs rex.WX loop 0x100628d
 10062ba:	9e                   	sahf   
 10062bb:	04 95                	add    $0x95,%al
 10062bd:	ce                   	(bad)  
 10062be:	db a4 ca d7 f2 df ea 	(bad)  -0x15200d29(%rdx,%rcx,8)
 10062c5:	c0 80 3a 32 dc d6 03 	rolb   $0x3,-0x2923cdc6(%rax)
 10062cc:	fc                   	cld    
 10062cd:	ce                   	(bad)  
 10062ce:	04 28                	add    $0x28,%al
 10062d0:	02 39                	add    (%rcx),%bh
 10062d2:	4b c8 2e 45 02       	rex.WXB enterq $0x452e,$0x2
 10062d7:	c9                   	leaveq 
 10062d8:	e8 33 24 49 92       	callq  0xffffffff93498710
 10062dd:	9a                   	(bad)  
 10062de:	e5 26                	in     $0x26,%eax
 10062e0:	cb                   	lret   
 10062e1:	72 6b                	jb     0x100634e
 10062e3:	b9 95 84 65 40       	mov    $0x40658495,%ecx
 10062e8:	dc 4d 77             	fmull  0x77(%rbp)
 10062eb:	b8 fc 81 0f ab       	mov    $0xab0f81fc,%eax
 10062f0:	6a 37                	pushq  $0x37
 10062f2:	27                   	(bad)  
 10062f3:	fc                   	cld    
 10062f4:	13 c8                	adc    %eax,%ecx
 10062f6:	75 44                	jne    0x100633c
 10062f8:	9c                   	pushfq 
 10062f9:	70 dd                	jo     0x10062d8
 10062fb:	7b 18                	jnp    0x1006315
 10062fd:	bc eb 60 72 b1       	mov    $0xb17260eb,%esp
 1006302:	6f                   	outsl  %ds:(%rsi),(%dx)
 1006303:	39 3f                	cmp    %edi,(%rdi)
 1006305:	ec                   	in     (%dx),%al
 1006306:	47 07                	rex.RXB (bad) 
 1006308:	44 d5                	rex.R (bad) 
 100630a:	ec                   	in     (%dx),%al
 100630b:	c3                   	retq   
 100630c:	90                   	nop
 100630d:	67 13 b5 15 96 e4 de 	adc    -0x211b69eb(%ebp),%esi
 1006314:	58                   	pop    %rax
 1006315:	90                   	nop
 1006316:	8b fb                	mov    %ebx,%edi
 1006318:	1e                   	(bad)  
 1006319:	9d                   	popfq  
 100631a:	5b                   	pop    %rbx
 100631b:	11 3d 66 65 55 56    	adc    %edi,0x56556566(%rip)        # 0x5755c887
 1006321:	69 05 87 00 9e 02 b5 	imul   $0x2e84c2b5,0x29e0087(%rip),%eax        # 0x39e63b2
 1006328:	c2 84 2e 
 100632b:	72 2a                	jb     0x1006357
 100632d:	22 37                	and    (%rdi),%dh
 100632f:	ac                   	lods   %ds:(%rsi),%al
 1006330:	2d 47 3a 57 15       	sub    $0x15573a47,%eax
 1006335:	cf                   	iret   
 1006336:	50                   	push   %rax
 1006337:	3b 16                	cmp    (%rsi),%edx
 1006339:	b0 6b                	mov    $0x6b,%al
 100633b:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100633c:	70 77                	jo     0x10063b5
 100633e:	15 de 71 49 cc       	adc    $0xcc4971de,%eax
 1006343:	80 11 a2             	adcb   $0xa2,(%rcx)
 1006346:	2f                   	(bad)  
 1006347:	8f                   	(bad)  
 1006348:	55                   	push   %rbp
 1006349:	8e 33                	mov    (%rbx),%?
 100634b:	bb af 84 f5 72       	mov    $0x72f584af,%ebx
 1006350:	c3                   	retq   
 1006351:	35 17 ae 02 65       	xor    $0x6502ae17,%eax
 1006356:	80 9c 46 78 03 12 b1 	sbbb   $0xda,-0x4eedfc88(%rsi,%rax,2)
 100635d:	da 
 100635e:	9e                   	sahf   
 100635f:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1006360:	26 0a 00             	or     %es:(%rax),%al
 1006363:	e5 3c                	in     $0x3c,%eax
 1006365:	02 3a                	add    (%rdx),%bh
 1006367:	94                   	xchg   %eax,%esp
 1006368:	88 2e                	mov    %ch,(%rsi)
 100636a:	d6                   	(bad)  
 100636b:	df 41 93             	filds  -0x6d(%rcx)
 100636e:	6e                   	outsb  %ds:(%rsi),(%dx)
 100636f:	dd 07                	fldl   (%rdi)
 1006371:	4d eb 5f             	rex.WRB jmp 0x10063d3
 1006374:	77 65                	ja     0x10063db
 1006376:	27                   	(bad)  
 1006377:	50                   	push   %rax
 1006378:	50                   	push   %rax
 1006379:	0c c0                	or     $0xc0,%al
 100637b:	6b 84 f8 c6 dd b4 d7 	imul   $0x58,-0x284b223a(%rax,%rdi,8),%eax
 1006382:	58 
 1006383:	7a 2c                	jp     0x10063b1
 1006385:	28 d3                	sub    %dl,%bl
 1006387:	6f                   	outsl  %ds:(%rsi),(%dx)
 1006388:	1c 83                	sbb    $0x83,%al
 100638a:	56                   	push   %rsi
 100638b:	81 9d 7e f9 e0 2e aa 	sbbl   $0xc2ece8aa,0x2ee0f97e(%rbp)
 1006392:	e8 ec c2 
 1006395:	20 02                	and    %al,(%rdx)
 1006397:	5b                   	pop    %rbx
 1006398:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1006399:	fa                   	cli    
 100639a:	5c                   	pop    %rsp
 100639b:	9a                   	(bad)  
 100639c:	ce                   	(bad)  
 100639d:	45 d0 b1 84 52 0c 77 	rex.RB shlb 0x770c5284(%r9)
 10063a4:	16                   	(bad)  
 10063a5:	c1 ae bd 9a 24 b2 af 	shrl   $0xaf,-0x4ddb6543(%rsi)
 10063ac:	63 a3 98 59 55 9f    	movsxd -0x60aaa668(%rbx),%esp
 10063b2:	04 50                	add    $0x50,%al
 10063b4:	3a b9 9d 08 66 c7    	cmp    -0x3899f763(%rcx),%bh
 10063ba:	35 a7 9c 1a 70       	xor    $0x701a9ca7,%eax
 10063bf:	da a2 b4 5f 0d 6e    	fisubl 0x6e0d5fb4(%rdx)
 10063c5:	98                   	cwtl   
 10063c6:	b1 06                	mov    $0x6,%cl
 10063c8:	b2 af                	mov    $0xaf,%dl
 10063ca:	3d 06 9c 7a 71       	cmp    $0x717a9c06,%eax
 10063cf:	70 23                	jo     0x10063f4
 10063d1:	ab                   	stos   %eax,%es:(%rdi)
 10063d2:	13 49 89             	adc    -0x77(%rcx),%ecx
 10063d5:	b8 0a c0 da ba       	mov    $0xbadac00a,%eax
 10063da:	c5 1f ac             	(bad)
 10063dd:	31 c2                	xor    %eax,%edx
 10063df:	0e                   	(bad)  
 10063e0:	b3 7f                	mov    $0x7f,%bl
 10063e2:	c1 c4 85             	rol    $0x85,%esp
 10063e5:	30 e7                	xor    %ah,%bh
 10063e7:	17                   	(bad)  
 10063e8:	e5 34                	in     $0x34,%eax
 10063ea:	57                   	push   %rdi
 10063eb:	8f                   	(bad)  
 10063ec:	6d                   	insl   (%dx),%es:(%rdi)
 10063ed:	a3 55 bf d0 59 51 0b 	movabs %eax,0xbb780b5159d0bf55
 10063f4:	78 bb 
 10063f6:	ae                   	scas   %es:(%rdi),%al
 10063f7:	e0 8f                	loopne 0x1006388
 10063f9:	b8 5b 82 bb ee       	mov    $0xeebb825b,%eax
 10063fe:	50                   	push   %rax
 10063ff:	dc 49 7c             	fmull  0x7c(%rcx)
 1006402:	40 75 4d             	rex jne 0x1006452
 1006405:	11 6e 1c             	adc    %ebp,0x1c(%rsi)
 1006408:	68 a1 68 8c b9       	pushq  $0xffffffffb98c68a1
 100640d:	69 1d bf 82 c3 37 cc 	imul   $0x488de0cc,0x37c382bf(%rip),%ebx        # 0x38c3e6d6
 1006414:	e0 8d 48 
 1006417:	42 75 72             	rex.X jne 0x100648c
 100641a:	fb                   	sti    
 100641b:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 100641c:	aa                   	stos   %al,%es:(%rdi)
 100641d:	23 5d 25             	and    0x25(%rbp),%ebx
 1006420:	a8 f3                	test   $0xf3,%al
 1006422:	61                   	(bad)  
 1006423:	ce                   	(bad)  
 1006424:	64 b6 8b             	fs mov $0x8b,%dh
 1006427:	86 86 27 e0 04 bf    	xchg   %al,-0x40fb1fd9(%rsi)
 100642d:	93                   	xchg   %eax,%ebx
 100642e:	1a 89 36 47 b8 74    	sbb    0x74b84736(%rcx),%cl
 1006434:	75 53                	jne    0x1006489
 1006436:	36 af                	ss scas %es:(%rdi),%eax
 1006438:	dc 70 4f             	fdivl  0x4f(%rax)
 100643b:	f1                   	icebp  
 100643c:	8f e9 ef 84          	(bad)
 1006440:	9b                   	fwait
 1006441:	1d 1e ca 20 29       	sbb    $0x2920ca1e,%eax
 1006446:	ca 9d 7c             	lret   $0x7c9d
 1006449:	4c 73 3d             	rex.WR jae 0x1006489
 100644c:	5e                   	pop    %rsi
 100644d:	28 b1 65 95 ba 25    	sub    %dh,0x25ba9565(%rcx)
 1006453:	44 f8                	rex.R clc 
 1006455:	01 cf                	add    %ecx,%edi
 1006457:	f4                   	hlt    
 1006458:	f0 11 4e c4          	lock adc %ecx,-0x3c(%rsi)
 100645c:	92                   	xchg   %eax,%edx
 100645d:	4b df 27             	rex.WXB fbld (%r15)
 1006460:	21 12                	and    %edx,(%rdx)
 1006462:	1a 89 3b 91 6d 6c    	sbb    0x6c6d913b(%rcx),%cl
 1006468:	56                   	push   %rsi
 1006469:	ef                   	out    %eax,(%dx)
 100646a:	12 a8 af 75 b0 40    	adc    0x40b075af(%rax),%ch
 1006470:	55                   	push   %rbp
 1006471:	95                   	xchg   %eax,%ebp
 1006472:	ba fc 13 61 a6       	mov    $0xa66113fc,%edx
 1006477:	69 79 25 e8 f8 c2 0d 	imul   $0xdc2f8e8,0x25(%rcx),%edi
 100647e:	8f                   	(bad)  
 100647f:	f5                   	cmc    
 1006480:	6d                   	insl   (%dx),%es:(%rdi)
 1006481:	6d                   	insl   (%dx),%es:(%rdi)
 1006482:	7e f3                	jle    0x1006477
 1006484:	8b ed                	mov    %ebp,%ebp
 1006486:	cb                   	lret   
 1006487:	4a 38 d7             	rex.WX cmp %dl,%dil
 100648a:	ee                   	out    %al,(%dx)
 100648b:	a0 f0 99 3e 12 9a c6 	movabs 0x308ac69a123e99f0,%al
 1006492:	8a 30 
 1006494:	ba 98 ce d4 17       	mov    $0x17d4ce98,%edx
 1006499:	43 34 1f             	rex.XB xor $0x1f,%al
 100649c:	5a                   	pop    %rdx
 100649d:	40 73 31             	rex jae 0x10064d1
 10064a0:	ba da 53 b0 04       	mov    $0x4b053da,%edx
 10064a5:	4d                   	rex.WRB
 10064a6:	4a 7f ec             	rex.WX jg 0x1006495
 10064a9:	ea                   	(bad)  
 10064aa:	35 73 b2 d5 ae       	xor    $0xaed5b273,%eax
 10064af:	70 94                	jo     0x1006445
 10064b1:	2e eb 31             	cs jmp 0x10064e5
 10064b4:	01 ef                	add    %ebp,%edi
 10064b6:	e1 6a                	loope  0x1006522
 10064b8:	d2 fb                	sar    %cl,%bl
 10064ba:	3c 8d                	cmp    $0x8d,%al
 10064bc:	18 34 22             	sbb    %dh,(%rdx,%riz,1)
 10064bf:	3d d5 5b 40 3e       	cmp    $0x3e405bd5,%eax
 10064c4:	fa                   	cli    
 10064c5:	89 bd 7d ff d6 ab    	mov    %edi,-0x54290083(%rbp)
 10064cb:	62                   	(bad)  
 10064cc:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10064cd:	9b                   	fwait
 10064ce:	bb 73 1a 4a 20       	mov    $0x204a1a73,%ebx
 10064d3:	2c e9                	sub    $0xe9,%al
 10064d5:	c8 2c 26 62          	enterq $0x262c,$0x62
 10064d9:	9c                   	pushfq 
 10064da:	7e 77                	jle    0x1006553
 10064dc:	65 48                	gs rex.W
 10064de:	47 f1                	rex.RXB icebp 
 10064e0:	ad                   	lods   %ds:(%rsi),%eax
 10064e1:	55                   	push   %rbp
 10064e2:	3d 00 da b9 76       	cmp    $0x76b9da00,%eax
 10064e7:	65 1f                	gs (bad) 
 10064e9:	08 bd f6 52 12 19    	or     %bh,0x191252f6(%rbp)
 10064ef:	7f cf                	jg     0x10064c0
 10064f1:	d8 d7                	fcom   %st(7)
 10064f3:	8f                   	(bad)  
 10064f4:	d5                   	(bad)  
 10064f5:	9a                   	(bad)  
 10064f6:	1d 5d 90 a6 58       	sbb    $0x58a6905d,%eax
 10064fb:	1d 77 05 cd 73       	sbb    $0x73cd0577,%eax
 1006500:	7c 55                	jl     0x1006557
 1006502:	d7                   	xlat   %ds:(%rbx)
 1006503:	67 fc                	addr32 cld 
 1006505:	b3 23                	mov    $0x23,%bl
 1006507:	8c 38                	mov    %?,(%rax)
 1006509:	c6                   	(bad)  
 100650a:	4c 98                	rex.WR cltq 
 100650c:	57                   	push   %rdi
 100650d:	8e 17                	mov    (%rdi),%ss
 100650f:	f6 6b d5             	imulb  -0x2b(%rbx)
 1006512:	36 e0 ec             	ss loopne 0x1006501
 1006515:	43 c8 39 83 40       	rex.XB enterq $0x8339,$0x40
 100651a:	f8                   	clc    
 100651b:	52                   	push   %rdx
 100651c:	76 15                	jbe    0x1006533
 100651e:	be fe bc 3b e9       	mov    $0xe93bbcfe,%esi
 1006523:	ec                   	in     (%dx),%al
 1006524:	94                   	xchg   %eax,%esp
 1006525:	7f 46                	jg     0x100656d
 1006527:	a8 fc                	test   $0xfc,%al
 1006529:	51                   	push   %rcx
 100652a:	46 12 c8             	rex.RX adc %al,%r9b
 100652d:	3c 72                	cmp    $0x72,%al
 100652f:	06                   	(bad)  
 1006530:	3d 5d 89 fe b9       	cmp    $0xb9fe895d,%eax
 1006535:	9b                   	fwait
 1006536:	63 91 09 32 da 98    	movsxd -0x6725cdf7(%rcx),%edx
 100653c:	63 68 06             	movsxd 0x6(%rax),%ebp
 100653f:	90                   	nop
 1006540:	e1 e6                	loope  0x1006528
 1006542:	f4                   	hlt    
 1006543:	69 3f 39 b9 3d a3    	imul   $0xa33db939,(%rdi),%edi
 1006549:	d9 35 0e 58 ee 93    	fnstenv -0x6c11a7f2(%rip)        # 0xffffffff94eebd5d
 100654f:	74 da                	je     0x100652b
 1006551:	80 1e b4             	sbbb   $0xb4,(%rsi)
 1006554:	6d                   	insl   (%dx),%es:(%rdi)
 1006555:	96                   	xchg   %eax,%esi
 1006556:	e2 4e                	loop   0x10065a6
 1006558:	90                   	nop
 1006559:	c0 56 25 b0          	rclb   $0xb0,0x25(%rsi)
 100655d:	50                   	push   %rax
 100655e:	10 c9                	adc    %cl,%cl
 1006560:	fe 43 f4             	incb   -0xc(%rbx)
 1006563:	0c b9                	or     $0xb9,%al
 1006565:	62 f3 14 b7 5b       	(bad)
 100656a:	99                   	cltd   
 100656b:	73 9d                	jae    0x100650a
 100656d:	18 68 76             	sbb    %ch,0x76(%rax)
 1006570:	de 5a cf             	ficomps -0x31(%rdx)
 1006573:	87 bb 66 bb 86 1e    	xchg   %edi,0x1e86bb66(%rbx)
 1006579:	3c 1c                	cmp    $0x1c,%al
 100657b:	70 8b                	jo     0x1006508
 100657d:	16                   	(bad)  
 100657e:	4a                   	rex.WX
 100657f:	f0 b5 5b             	lock mov $0x5b,%ch
 1006582:	30 80 7b 22 0f dd    	xor    %al,-0x22f0dd85(%rax)
 1006588:	85 15 cc 71 2c a4    	test   %edx,-0x5bd38e34(%rip)        # 0xffffffffa52cd75a
 100658e:	6b 09 32             	imul   $0x32,(%rcx),%ecx
 1006591:	83 e5 32             	and    $0x32,%ebp
 1006594:	02 8e aa 30 cc 94    	add    -0x6b33cf56(%rsi),%cl
 100659a:	8d 33                	lea    (%rbx),%esi
 100659c:	cc                   	int3   
 100659d:	cf                   	iret   
 100659e:	88 aa 62 78 71 83    	mov    %ch,-0x7c8e879e(%rdx)
 10065a4:	5e                   	pop    %rsi
 10065a5:	37                   	(bad)  
 10065a6:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 10065a7:	e0 56                	loopne 0x10065ff
 10065a9:	6c                   	insb   (%dx),%es:(%rdi)
 10065aa:	4c 51                	rex.WR push %rcx
 10065ac:	e8 72 51 95 3d       	callq  0x3e95b723
 10065b1:	d0 5f c1             	rcrb   -0x3f(%rdi)
 10065b4:	43 14 07             	rex.XB adc $0x7,%al
 10065b7:	0a 73 40             	or     0x40(%rbx),%dh
 10065ba:	61                   	(bad)  
 10065bb:	44 35 f6 5e f7 24    	rex.R xor $0x24f75ef6,%eax
 10065c1:	de b3 93 da 8a 11    	fidivs 0x118ada93(%rbx)
 10065c7:	0b 64 5c 37          	or     0x37(%rsp,%rbx,2),%esp
 10065cb:	2e 54                	cs push %rsp
 10065cd:	8b 04 0b             	mov    (%rbx,%rcx,1),%eax
 10065d0:	b7 e0                	mov    $0xe0,%bh
 10065d2:	01 99 17 0a c9 88    	add    %ebx,-0x7736f5e9(%rcx)
 10065d8:	4e bf 49 ef 68 54 53 	rex.WRX movabs $0x4cbf8535468ef49,%rdi
 10065df:	f8 cb 04 
 10065e2:	c5 a5 c9             	(bad)
 10065e5:	9e                   	sahf   
 10065e6:	fa                   	cli    
 10065e7:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 10065e8:	b0 0f                	mov    $0xf,%al
 10065ea:	48 7f c0             	rex.W jg 0x10065ad
 10065ed:	9b                   	rex.WXB
 10065ee:	4b                   	rex.WXB
 10065ef:	45 8f                	rex.RB (bad) 
 10065f1:	ad                   	lods   %ds:(%rsi),%eax
 10065f2:	8f                   	(bad)  
 10065f3:	f1                   	icebp  
 10065f4:	80 ec 5c             	sub    $0x5c,%ah
 10065f7:	e0 75                	loopne 0x100666e
 10065f9:	c8 48 cf e5          	enterq $0xcf48,$0xe5
 10065fd:	9a                   	(bad)  
 10065fe:	b4 40                	mov    $0x40,%ah
 1006600:	25 34 18 bd 8b       	and    $0x8bbd1834,%eax
 1006605:	b9 3c d4 63 72       	mov    $0x7263d43c,%ecx
 100660a:	37                   	(bad)  
 100660b:	8e e7                	mov    %edi,%fs
 100660d:	ed                   	in     (%dx),%eax
 100660e:	0b e8                	or     %eax,%ebp
 1006610:	1d 50 6d cd e3       	sbb    $0xe3cd6d50,%eax
 1006615:	ee                   	out    %al,(%dx)
 1006616:	5f                   	pop    %rdi
 1006617:	ce                   	(bad)  
 1006618:	ef                   	out    %eax,(%dx)
 1006619:	d3 3f                	sarl   %cl,(%rdi)
 100661b:	44 e0 d0             	rex.R loopne 0x10065ee
 100661e:	37                   	(bad)  
 100661f:	f2 d2 2d bf fe a2 90 	repnz shrb %cl,-0x6f5d0141(%rip)        # 0xffffffff91a364e5
 1006626:	82                   	(bad)  
 1006627:	5f                   	pop    %rdi
 1006628:	f3 92                	repz xchg %eax,%edx
 100662a:	78 0c                	js     0x1006638
 100662c:	14 39                	adc    $0x39,%al
 100662e:	d4                   	(bad)  
 100662f:	07                   	(bad)  
 1006630:	62                   	(bad)  
 1006631:	b6 3c                	mov    $0x3c,%dh
 1006633:	57                   	push   %rdi
 1006634:	0c 6d                	or     $0x6d,%al
 1006636:	fb                   	sti    
 1006637:	c9                   	leaveq 
 1006638:	da 90 a4 82 38 78    	ficoml 0x783882a4(%rax)
 100663e:	d3 27                	shll   %cl,(%rdi)
 1006640:	0f 0d 67 1f          	prefetch 0x1f(%rdi)
 1006644:	ab                   	stos   %eax,%es:(%rdi)
 1006645:	5b                   	pop    %rbx
 1006646:	d7                   	xlat   %ds:(%rbx)
 1006647:	bf 9f 55 a4 17       	mov    $0x17a4559f,%edi
 100664c:	2f                   	(bad)  
 100664d:	b0 25                	mov    $0x25,%al
 100664f:	26 ec                	es in  (%dx),%al
 1006651:	b1 8b                	mov    $0x8b,%cl
 1006653:	42 18 3d cc 1a 05 bd 	rex.X sbb %dil,-0x42fae534(%rip)        # 0xffffffffbe058126
 100665a:	21 39                	and    %edi,(%rcx)
 100665c:	fa                   	cli    
 100665d:	bc 8d 82 50 fb       	mov    $0xfb50828d,%esp
 1006662:	88 9b 9d 8e c4 a6    	mov    %bl,-0x593b7163(%rbx)
 1006668:	e6 33                	out    %al,$0x33
 100666a:	7b e3                	jnp    0x100664f
 100666c:	2c 55                	sub    $0x55,%al
 100666e:	7c 3a                	jl     0x10066aa
 1006670:	72 11                	jb     0x1006683
 1006672:	67 77 6e             	addr32 ja 0x10066e3
 1006675:	f1                   	icebp  
 1006676:	58                   	pop    %rax
 1006677:	93                   	xchg   %eax,%ebx
 1006678:	90                   	nop
 1006679:	7b 1e                	jnp    0x1006699
 100667b:	91                   	xchg   %eax,%ecx
 100667c:	6d                   	insl   (%dx),%es:(%rdi)
 100667d:	b4 3d                	mov    $0x3d,%ah
 100667f:	b5 2b                	mov    $0x2b,%ch
 1006681:	df 9c 94 93 c0 c1 ea 	fistps -0x153e3f6d(%rsp,%rdx,4)
 1006688:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1006689:	f3 e8 45 f0 6e 3a    	repz callq 0x3b6f56d4
 100668f:	b9 51 b3 e3 30       	mov    $0x30e3b351,%ecx
 1006694:	2f                   	(bad)  
 1006695:	f8                   	clc    
 1006696:	4f 63 d7             	rex.WRXB movslq %r15d,%r10
 1006699:	52                   	push   %rdx
 100669a:	07                   	(bad)  
 100669b:	e2 f2                	loop   0x100668f
 100669d:	28 92 96 33 e4 24    	sub    %dl,0x24e43396(%rdx)
 10066a3:	a8 1c                	test   $0x1c,%al
 10066a5:	d7                   	xlat   %ds:(%rbx)
 10066a6:	c0 60 2b 8a          	shlb   $0x8a,0x2b(%rax)
 10066aa:	b6 18                	mov    $0x18,%dh
 10066ac:	62 e1                	(bad)  
 10066ae:	12 92 2d 3a 22 17    	adc    0x17223a2d(%rdx),%dl
 10066b4:	3f                   	(bad)  
 10066b5:	bd 8a 81 ba 27       	mov    $0x27ba818a,%ebp
 10066ba:	77 66                	ja     0x1006722
 10066bc:	ad                   	lods   %ds:(%rsi),%eax
 10066bd:	08 f3                	or     %dh,%bl
 10066bf:	83 6f 4a 49          	subl   $0x49,0x4a(%rdi)
 10066c3:	b0 f5                	mov    $0xf5,%al
 10066c5:	41 a7                	rex.B cmpsl %es:(%rdi),%ds:(%rsi)
 10066c7:	59                   	pop    %rcx
 10066c8:	35 24 20 38 62       	xor    $0x62382024,%eax
 10066cd:	2f                   	(bad)  
 10066ce:	5e                   	pop    %rsi
 10066cf:	6b a2 a4 ba 18 61 bf 	imul   $0xffffffbf,0x6118baa4(%rdx),%esp
 10066d6:	97                   	xchg   %eax,%edi
 10066d7:	fd                   	std    
 10066d8:	d2 32                	shlb   %cl,(%rdx)
 10066da:	ed                   	in     (%dx),%eax
 10066db:	60                   	(bad)  
 10066dc:	a9 68 ba e5 bd       	test   $0xbde5ba68,%eax
 10066e1:	61                   	(bad)  
 10066e2:	59                   	pop    %rcx
 10066e3:	44 85 83 db 51 46 4a 	test   %r8d,0x4a4651db(%rbx)
 10066ea:	35 a3 e8 3d 21       	xor    $0x213de8a3,%eax
 10066ef:	83 69 14 38          	subl   $0x38,0x14(%rcx)
 10066f3:	1b f1                	sbb    %ecx,%esi
 10066f5:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 10066f6:	de 77 09             	fidivs 0x9(%rdi)
 10066f9:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 10066fa:	4f 04 26             	rex.WRXB add $0x26,%al
 10066fd:	f7 c7 d9 5d 47 e2    	test   $0xe2475dd9,%edi
 1006703:	38 88 30 25 ac d7    	cmp    %cl,-0x2853dad0(%rax)
 1006709:	72 bb                	jb     0x10066c6
 100670b:	60                   	(bad)  
 100670c:	02 9a a9 8b fe bb    	add    -0x44017457(%rdx),%bl
 1006712:	8a e4                	mov    %ah,%ah
 1006714:	77 63                	ja     0x1006779
 1006716:	0e                   	(bad)  
 1006717:	7d 06                	jge    0x100671f
 1006719:	be 87 a3 59 22       	mov    $0x2259a387,%esi
 100671e:	52                   	push   %rdx
 100671f:	9e                   	sahf   
 1006720:	20 ef                	and    %ch,%bh
 1006722:	b7 63                	mov    $0x63,%bh
 1006724:	40 0f 39             	rex (bad) 
 1006727:	f2 8b a0 0f 0f 57 5a 	repnz mov 0x5a570f0f(%rax),%esp
 100672e:	6c                   	insb   (%dx),%es:(%rdi)
 100672f:	2e 58                	cs pop %rax
 1006731:	eb de                	jmp    0x1006711
 1006733:	d6                   	(bad)  
 1006734:	69 da c2 40 6f a2    	imul   $0xa26f40c2,%edx,%ebx
 100673a:	52                   	push   %rdx
 100673b:	c1 6f 39 15          	shrl   $0x15,0x39(%rdi)
 100673f:	31 9f 92 ae 66 15    	xor    %ebx,0x1566ae92(%rdi)
 1006745:	06                   	(bad)  
 1006746:	db 1e                	fistpl (%rsi)
 1006748:	44 bb d6 1d 6d 40    	rex.R mov $0x406d1dd6,%ebx
 100674e:	35 6f 7b 88 76       	xor    $0x76887b6f,%eax
 1006753:	3d d0 e3 75 3c       	cmp    $0x3c75e3d0,%eax
 1006758:	7a 8d                	jp     0x10066e7
 100675a:	9a                   	(bad)  
 100675b:	70 ae                	jo     0x100670b
 100675d:	6c                   	insb   (%dx),%es:(%rdi)
 100675e:	18 7c 44 6d          	sbb    %bh,0x6d(%rsp,%rax,2)
 1006762:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1006763:	dc ea                	fsubr  %st,%st(2)
 1006765:	35 fb 93 64 5f       	xor    $0x5f6493fb,%eax
 100676a:	20 61 a8             	and    %ah,-0x58(%rcx)
 100676d:	ac                   	lods   %ds:(%rsi),%al
 100676e:	d3 a8 44 96 11 b6    	shrl   %cl,-0x49ee69bc(%rax)
 1006774:	1e                   	(bad)  
 1006775:	e7 02                	out    %eax,$0x2
 1006777:	08 21                	or     %ah,(%rcx)
 1006779:	e0 81                	loopne 0x10066fc
 100677b:	f5                   	cmc    
 100677c:	12 26                	adc    (%rsi),%ah
 100677e:	54                   	push   %rsp
 100677f:	69 e0 68 d5 eb 90    	imul   $0x90ebd568,%eax,%esp
 1006785:	bb 5c e8 1d 1d       	mov    $0x1d1de85c,%ebx
 100678a:	32 9a 09 9d 3c 13    	xor    0x133c9d09(%rdx),%bl
 1006790:	55                   	push   %rbp
 1006791:	4b 7a 88             	rex.WXB jp 0x100671c
 1006794:	5a                   	pop    %rdx
 1006795:	31 b9 81 b7 67 ed    	xor    %edi,-0x1298487f(%rcx)
 100679b:	00 84 31 88 fc 89 88 	add    %al,-0x77760378(%rcx,%rsi,1)
 10067a2:	82                   	(bad)  
 10067a3:	55                   	push   %rbp
 10067a4:	ec                   	in     (%dx),%al
 10067a5:	88 f4                	mov    %dh,%ah
 10067a7:	91                   	xchg   %eax,%ecx
 10067a8:	9b                   	fwait
 10067a9:	ec                   	in     (%dx),%al
 10067aa:	9d                   	popfq  
 10067ab:	21 2e                	and    %ebp,(%rsi)
 10067ad:	02 6b f3             	add    -0xd(%rbx),%ch
 10067b0:	74 a2                	je     0x1006754
 10067b2:	95                   	xchg   %eax,%ebp
 10067b3:	af                   	scas   %es:(%rdi),%eax
 10067b4:	20 b0 56 1f ce b1    	and    %dh,-0x4e31e0aa(%rax)
 10067ba:	c2 81 39             	retq   $0x3981
 10067bd:	92                   	xchg   %eax,%edx
 10067be:	1f                   	(bad)  
 10067bf:	13 b0 a8 11 c4 ac    	adc    -0x533bee58(%rax),%esi
 10067c5:	59                   	pop    %rcx
 10067c6:	ee                   	out    %al,(%dx)
 10067c7:	cd f5                	int    $0xf5
 10067c9:	f8                   	clc    
 10067ca:	45 d9 d4             	rex.RB (bad) 
 10067cd:	2f                   	(bad)  
 10067ce:	8b 29                	mov    (%rcx),%ebp
 10067d0:	a3 c4 04 99 28 3b a3 	movabs %eax,0x3261a33b289904c4
 10067d7:	61 32 
 10067d9:	40 13 e9             	rex adc %ecx,%ebp
 10067dc:	1d bb 43 3b 4d       	sbb    $0x4d3b43bb,%eax
 10067e1:	11 59 35             	adc    %ebx,0x35(%rcx)
 10067e4:	84 48 b9             	test   %cl,-0x47(%rax)
 10067e7:	a2 ed b3 5e 80 10 7c 	movabs %al,0x27247c10805eb3ed
 10067ee:	24 27 
 10067f0:	8b 86 ec 7c ca 69    	mov    0x69ca7cec(%rsi),%eax
 10067f6:	7d 92                	jge    0x100678a
 10067f8:	33 4f 13             	xor    0x13(%rdi),%ecx
 10067fb:	93                   	xchg   %eax,%ebx
 10067fc:	29 4e ad             	sub    %ecx,-0x53(%rsi)
 10067ff:	52                   	push   %rdx
 1006800:	68 f7 08 66 0d       	pushq  $0xd6608f7
 1006805:	f0 a6                	lock cmpsb %es:(%rdi),%ds:(%rsi)
 1006807:	c1 d0 a1             	rcl    $0xa1,%eax
 100680a:	1e                   	(bad)  
 100680b:	c2 c1 ad             	retq   $0xadc1
 100680e:	19 2d c4 50 4d 35    	sbb    %ebp,0x354d50c4(%rip)        # 0x364db8d8
 1006814:	7b b9                	jnp    0x10067cf
 1006816:	79 7e                	jns    0x1006896
 1006818:	a9 6d 44 35 42       	test   $0x4235446d,%eax
 100681d:	e9 43 15 0e da       	jmpq   0xffffffffdb0e7d65
 1006822:	73 50                	jae    0x1006874
 1006824:	85 8e 88 5d ec b6    	test   %ecx,-0x4913a278(%rsi)
 100682a:	27                   	(bad)  
 100682b:	d0 e8                	shr    %al
 100682d:	af                   	scas   %es:(%rdi),%eax
 100682e:	90                   	nop
 100682f:	d9 df                	(bad)  
 1006831:	05 4f 7d 94 ab       	add    $0xab947d4f,%eax
 1006836:	ce                   	(bad)  
 1006837:	42 3a 07             	rex.X cmp (%rdi),%al
 100683a:	ef                   	out    %eax,(%dx)
 100683b:	c7 80 64 d7 b5 b1 59 	movl   $0xae55f859,-0x4e4a289c(%rax)
 1006842:	f8 55 ae 
 1006845:	e9 f3 c7 ce 7d       	jmpq   0x7ecf303d
 100684a:	76 99                	jbe    0x10067e5
 100684c:	04 0e                	add    $0xe,%al
 100684e:	3c d6                	cmp    $0xd6,%al
 1006850:	90                   	nop
 1006851:	d6                   	(bad)  
 1006852:	d1 3b                	sarl   (%rbx)
 1006854:	c8 67 58 43          	enterq $0x5867,$0x43
 1006858:	49 94                	xchg   %rax,%r12
 100685a:	5b                   	pop    %rbx
 100685b:	6b 38 70             	imul   $0x70,(%rax),%edi
 100685e:	6e                   	outsb  %ds:(%rsi),(%dx)
 100685f:	9c                   	pushfq 
 1006860:	89 2b                	mov    %ebp,(%rbx)
 1006862:	11 99 23 b2 5c 55    	adc    %ebx,0x555cb223(%rcx)
 1006868:	64 a6                	cmpsb  %es:(%rdi),%fs:(%rsi)
 100686a:	1e                   	(bad)  
 100686b:	fc                   	cld    
 100686c:	43 f8                	rex.XB clc 
 100686e:	15 49 86 80 2d       	adc    $0x2d808649,%eax
 1006873:	ab                   	stos   %eax,%es:(%rdi)
 1006874:	22 70 8c             	and    -0x74(%rax),%dh
 1006877:	49 a0 97 fe 5f 48 ee 	rex.WB movabs 0xab59d8ee485ffe97,%al
 100687e:	d8 59 ab 
 1006881:	ed                   	in     (%dx),%eax
 1006882:	6e                   	outsb  %ds:(%rsi),(%dx)
 1006883:	0c 42                	or     $0x42,%al
 1006885:	a3 ed 4d 07 6b 9a 5a 	movabs %eax,0xd7215a9a6b074ded
 100688c:	21 d7 
 100688e:	17                   	(bad)  
 100688f:	6f                   	outsl  %ds:(%rsi),(%dx)
 1006890:	a1 b8 b8 f5 0f 09 fb 	movabs 0xb1ffb090ff5b8b8,%eax
 1006897:	1f 0b 
 1006899:	c1 31 56             	shll   $0x56,(%rcx)
 100689c:	30 b4 09 39 d5 44 31 	xor    %dh,0x3144d539(%rcx,%rcx,1)
 10068a3:	80 35 64 d1 a7 ec b0 	xorb   $0xb0,-0x13582e9c(%rip)        # 0xffffffffeda83a0e
 10068aa:	5f                   	pop    %rdi
 10068ab:	26 4b 8c 8e d4 b4 25 	rex.WXB mov %cs,%es:0x7025b4d4(%r14)
 10068b2:	70 
 10068b3:	da 94 35 1d ba f7 63 	ficoml 0x63f7ba1d(%rbp,%rsi,1)
 10068ba:	68 85 18 02 40       	pushq  $0x40021885
 10068bf:	2c 12                	sub    $0x12,%al
 10068c1:	b7 65                	mov    $0x65,%bh
 10068c3:	26 b6 f6             	es mov $0xf6,%dh
 10068c6:	cf                   	iret   
 10068c7:	f5                   	cmc    
 10068c8:	00 2c 24             	add    %ch,(%rsp)
 10068cb:	cf                   	iret   
 10068cc:	d2 49 d8             	rorb   %cl,-0x28(%rcx)
 10068cf:	23 a4 17 62 c6 a4 9f 	and    -0x605b399e(%rdi,%rdx,1),%esp
 10068d6:	f4                   	hlt    
 10068d7:	8b 48 f6             	mov    -0xa(%rax),%ecx
 10068da:	bb a1 34 7e c1       	mov    $0xc17e34a1,%ebx
 10068df:	51                   	push   %rcx
 10068e0:	38 1c 99             	cmp    %bl,(%rcx,%rbx,4)
 10068e3:	de 4d b4             	fimuls -0x4c(%rbp)
 10068e6:	3b 13                	cmp    (%rbx),%edx
 10068e8:	08 53 83             	or     %dl,-0x7d(%rbx)
 10068eb:	b3 9f                	mov    $0x9f,%bl
 10068ed:	b1 ce                	mov    $0xce,%cl
 10068ef:	f1                   	icebp  
 10068f0:	79 01                	jns    0x10068f3
 10068f2:	57                   	push   %rdi
 10068f3:	13 82 17 8b d4 e1    	adc    -0x1e2b74e9(%rdx),%eax
 10068f9:	08 bb 42 c2 da 1d    	or     %bh,0x1ddac242(%rbx)
 10068ff:	83 0e c1             	orl    $0xffffffc1,(%rsi)
 1006902:	ee                   	out    %al,(%dx)
 1006903:	d5                   	(bad)  
 1006904:	13 8b fd 4a e0 65    	adc    0x65e04afd(%rbx),%ecx
 100690a:	8c 08                	mov    %cs,(%rax)
 100690c:	03 f9                	add    %ecx,%edi
 100690e:	72 1e                	jb     0x100692e
 1006910:	35 a5 37 79 21       	xor    $0x217937a5,%eax
 1006915:	55                   	push   %rbp
 1006916:	2a b5 cc 64 7a e9    	sub    -0x16859b34(%rbp),%dh
 100691c:	09 cc                	or     %ecx,%esp
 100691e:	f0 7f e2             	lock jg 0x1006903
 1006921:	cb                   	lret   
 1006922:	2f                   	(bad)  
 1006923:	64 fb                	fs sti 
 1006925:	de aa e2 99 f4 20    	fisubrs 0x20f499e2(%rdx)
 100692b:	3a df                	cmp    %bh,%bl
 100692d:	8b 8b 75 ca 61 27    	mov    0x2761ca75(%rbx),%ecx
 1006933:	4b 56                	rex.WXB push %r14
 1006935:	52                   	push   %rdx
 1006936:	90                   	nop
 1006937:	1e                   	(bad)  
 1006938:	51                   	push   %rcx
 1006939:	77 3b                	ja     0x1006976
 100693b:	27                   	(bad)  
 100693c:	98                   	cwtl   
 100693d:	f5                   	cmc    
 100693e:	4c 8c 06             	rex.WR mov %es,(%rsi)
 1006941:	2b a5 e3 21 d2 93    	sub    -0x6c2dde1d(%rbp),%esp
 1006947:	ed                   	in     (%dx),%eax
 1006948:	29 e3                	sub    %esp,%ebx
 100694a:	74 b8                	je     0x1006904
 100694c:	ba 51 f9 8d be       	mov    $0xbe8df951,%edx
 1006951:	19 ea                	sbb    %ebp,%edx
 1006953:	c6                   	(bad)  
 1006954:	8a cb                	mov    %bl,%cl
 1006956:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1006957:	5b                   	pop    %rbx
 1006958:	8b 25 5d e8 2b 46    	mov    0x462be85d(%rip),%esp        # 0x472c51bb
 100695e:	da 56 cb             	ficoml -0x35(%rsi)
 1006961:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1006962:	91                   	xchg   %eax,%ecx
 1006963:	c9                   	leaveq 
 1006964:	00 a3 7c f7 ea f9    	add    %ah,-0x6150884(%rbx)
 100696a:	eb e2                	jmp    0x100694e
 100696c:	05 6f c7 67 ce       	add    $0xce67c76f,%eax
 1006971:	46 bc 18 f7 73 30    	rex.RX mov $0x3073f718,%esp
 1006977:	bd 1e 45 1a 65       	mov    $0x651a451e,%ebp
 100697c:	8f                   	(bad)  
 100697d:	6f                   	outsl  %ds:(%rsi),(%dx)
 100697e:	0d b6 76 f3 88       	or     $0x88f376b6,%eax
 1006983:	2c c8                	sub    $0xc8,%al
 1006985:	c8 1f ab 02          	enterq $0xab1f,$0x2
 1006989:	9b                   	fwait
 100698a:	71 d4                	jno    0x1006960
 100698c:	37                   	(bad)  
 100698d:	66 ad                	lods   %ds:(%rsi),%ax
 100698f:	21 67 5b             	and    %esp,0x5b(%rdi)
 1006992:	e1 aa                	loope  0x100693e
 1006994:	33 00                	xor    (%rax),%eax
 1006996:	05 83 b4 29 1d       	add    $0x1d29b483,%eax
 100699b:	60                   	(bad)  
 100699c:	50                   	push   %rax
 100699d:	4e 0b 36             	rex.WRX or (%rsi),%r14
 10069a0:	8a d1                	mov    %cl,%dl
 10069a2:	e6 b3                	out    %al,$0xb3
 10069a4:	8b 35 ac 92 61 18    	mov    0x186192ac(%rip),%esi        # 0x1961fc56
 10069aa:	2c e1                	sub    $0xe1,%al
 10069ac:	f2 6d                	repnz insl (%dx),%es:(%rdi)
 10069ae:	d4                   	(bad)  
 10069af:	08 69 17             	or     %ch,0x17(%rcx)
 10069b2:	67 5b                	addr32 pop %rbx
 10069b4:	c5 ea 4e             	(bad)
 10069b7:	b8 a7 8f 7d 4d       	mov    $0x4d7d8fa7,%eax
 10069bc:	2e 9e                	cs sahf 
 10069be:	c1 24 3a 89          	shll   $0x89,(%rdx,%rdi,1)
 10069c2:	84 09                	test   %cl,(%rcx)
 10069c4:	65 db 2f             	fldt   %gs:(%rdi)
 10069c7:	57                   	push   %rdi
 10069c8:	b8 13 da b2 8f       	mov    $0x8fb2da13,%eax
 10069cd:	c7                   	(bad)  
 10069ce:	1e                   	(bad)  
 10069cf:	f7 4f bc db e8 6c 70 	testl  $0x706ce8db,-0x44(%rdi)
 10069d6:	c7                   	(bad)  
 10069d7:	4f 6b b7 60 b1 78 20 	rex.WRXB imul $0x76,0x2078b160(%r15),%r14
 10069de:	76 
 10069df:	de 48 08             	fimuls 0x8(%rax)
 10069e2:	cf                   	iret   
 10069e3:	5c                   	pop    %rsp
 10069e4:	2f                   	(bad)  
 10069e5:	64 c2 7c 80          	fs retq $0x807c
 10069e9:	55                   	push   %rbp
 10069ea:	e9 1d 3f 58 93       	jmpq   0xffffffff9458a90c
 10069ef:	6f                   	outsl  %ds:(%rsi),(%dx)
 10069f0:	c2 c2 cb             	retq   $0xcbc2
 10069f3:	5f                   	pop    %rdi
 10069f4:	64 a2 97 9c 22 b4 b8 	movabs %al,%fs:0xbbc20eb8b4229c97
 10069fb:	0e c2 bb 
 10069fe:	20 89 50 97 60 7a    	and    %cl,0x7a609750(%rcx)
 1006a04:	82                   	(bad)  
 1006a05:	40 3a 1f             	cmp    (%rdi),%bl
 1006a08:	47 c9                	rex.RXB leaveq 
 1006a0a:	91                   	xchg   %eax,%ecx
 1006a0b:	1a 5e b7             	sbb    -0x49(%rsi),%bl
 1006a0e:	38 9b ec ff da 00    	cmp    %bl,0xdaffec(%rbx)
 1006a14:	cd af                	int    $0xaf
 1006a16:	e8 c0 35 0c 52       	callq  0x530c9fdb
 1006a1b:	61                   	(bad)  
 1006a1c:	6e                   	outsb  %ds:(%rsi),(%dx)
 1006a1d:	21 22                	and    %esp,(%rdx)
 1006a1f:	f6 b5 42 0e a9 34    	divb   0x34a90e42(%rbp)
 1006a25:	ef                   	out    %eax,(%dx)
 1006a26:	d9 53 b9             	fsts   -0x47(%rbx)
 1006a29:	de 6c 00 ab          	fisubrs -0x55(%rax,%rax,1)
 1006a2d:	1a 64 9e e0          	sbb    -0x20(%rsi,%rbx,4),%ah
 1006a31:	65 e6 be             	gs out %al,$0xbe
 1006a34:	54                   	push   %rsp
 1006a35:	29 56 dd             	sub    %edx,-0x23(%rsi)
 1006a38:	5f                   	pop    %rdi
 1006a39:	18 6c e5 81          	sbb    %ch,-0x7f(%rbp,%riz,8)
 1006a3d:	95                   	xchg   %eax,%ebp
 1006a3e:	15 cc 06 28 ea       	adc    $0xea2806cc,%eax
 1006a43:	d1 ae 37 07 64 37    	shrl   0x37640737(%rsi)
 1006a49:	61                   	(bad)  
 1006a4a:	70 18                	jo     0x1006a64
 1006a4c:	56                   	push   %rsi
 1006a4d:	a0 2e d0 47 74 dd 70 	movabs 0x9df570dd7447d02e,%al
 1006a54:	f5 9d 
 1006a56:	23 24 a1             	and    (%rcx,%riz,4),%esp
 1006a59:	18 13                	sbb    %dl,(%rbx)
 1006a5b:	ab                   	stos   %eax,%es:(%rdi)
 1006a5c:	8d 1b                	lea    (%rbx),%ebx
 1006a5e:	38 88 c3 4d d7 25    	cmp    %cl,0x25d74dc3(%rax)
 1006a64:	aa                   	stos   %al,%es:(%rdi)
 1006a65:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1006a66:	46 55                	rex.RX push %rbp
 1006a68:	92                   	xchg   %eax,%edx
 1006a69:	10 ab 50 57 b1 11    	adc    %ch,0x11b15750(%rbx)
 1006a6f:	89 df                	mov    %ebx,%edi
 1006a71:	1b 88 8b b8 90 c9    	sbb    -0x366f4775(%rax),%ecx
 1006a77:	06                   	(bad)  
 1006a78:	86 7f 18             	xchg   %bh,0x18(%rdi)
 1006a7b:	8b f2                	mov    %edx,%esi
 1006a7d:	41 35 3c 73 9c 27    	rex.B xor $0x279c733c,%eax
 1006a83:	d2 31                	shlb   %cl,(%rcx)
 1006a85:	a3 b3 34 5b a3 1e 56 	movabs %eax,0xe2e8561ea35b34b3
 1006a8c:	e8 e2 
 1006a8e:	cf                   	iret   
 1006a8f:	57                   	push   %rdi
 1006a90:	97                   	xchg   %eax,%edi
 1006a91:	5a                   	pop    %rdx
 1006a92:	e1 cc                	loope  0x1006a60
 1006a94:	02 2c 24             	add    (%rsp),%ch
 1006a97:	43 69 0c f1 c4 9e 01 	imul   $0x23019ec4,(%r9,%r14,8),%ecx
 1006a9e:	23 
 1006a9f:	10 1e                	adc    %bl,(%rsi)
 1006aa1:	fe 40 72             	incb   0x72(%rax)
 1006aa4:	19 49 0e             	sbb    %ecx,0xe(%rcx)
 1006aa7:	8d                   	(bad)  
 1006aa8:	cf                   	iret   
 1006aa9:	0e                   	(bad)  
 1006aaa:	bf f5 b5 f9 99       	mov    $0x99f9b5f5,%edi
 1006aaf:	8b 1f                	mov    (%rdi),%ebx
 1006ab1:	d6                   	(bad)  
 1006ab2:	ba 30 9b e5 03       	mov    $0x3e59b30,%edx
 1006ab7:	9e                   	sahf   
 1006ab8:	9b                   	fwait
 1006ab9:	f6 f2                	div    %dl
 1006abb:	77 4f                	ja     0x1006b0c
 1006abd:	9d                   	popfq  
 1006abe:	7b 35                	jnp    0x1006af5
 1006ac0:	76 4c                	jbe    0x1006b0e
 1006ac2:	53                   	push   %rbx
 1006ac3:	3d bc b9 b6 6a       	cmp    $0x6ab6b9bc,%eax
 1006ac8:	6a 24                	pushq  $0x24
 1006aca:	d6                   	(bad)  
 1006acb:	f2 c9                	repnz leaveq 
 1006acd:	53                   	push   %rbx
 1006ace:	11 94 da 1c 9c f1 ab 	adc    %edx,-0x540e63e4(%rdx,%rbx,8)
 1006ad5:	4e 9c                	rex.WRX pushfq 
 1006ad7:	b3 41                	mov    $0x41,%bl
 1006ad9:	b6 bb                	mov    $0xbb,%dh
 1006adb:	d8 0c ef             	fmuls  (%rdi,%rbp,8)
 1006ade:	33 9e a3 32 de c7    	xor    -0x3821cd5d(%rsi),%ebx
 1006ae4:	d6                   	(bad)  
 1006ae5:	6f                   	outsl  %ds:(%rsi),(%dx)
 1006ae6:	be 26 16 11 39       	mov    $0x39111626,%esi
 1006aeb:	7b e1                	jnp    0x1006ace
 1006aed:	ca 99 3c             	lret   $0x3c99
 1006af0:	d8 48 4e             	fmuls  0x4e(%rax)
 1006af3:	f9                   	stc    
 1006af4:	5c                   	pop    %rsp
 1006af5:	f0 71 42             	lock jno 0x1006b3a
 1006af8:	81 96 4f 71 75 67 a3 	adcl   $0x42543ca3,0x6775714f(%rsi)
 1006aff:	3c 54 42 
 1006b02:	ad                   	lods   %ds:(%rsi),%eax
 1006b03:	90                   	nop
 1006b04:	91                   	xchg   %eax,%ecx
 1006b05:	ae                   	scas   %es:(%rdi),%al
 1006b06:	98                   	cwtl   
 1006b07:	f6 d5                	not    %ch
 1006b09:	88 2e                	mov    %ch,(%rsi)
 1006b0b:	8b 05 79 b2 31 a9    	mov    -0x56ce4d87(%rip),%eax        # 0xffffffffaa321d8a
 1006b11:	82                   	(bad)  
 1006b12:	c1 bd ea e0 88 41 79 	sarl   $0x79,0x4188e0ea(%rbp)
 1006b19:	ef                   	out    %eax,(%dx)
 1006b1a:	0f 28 ed             	movaps %xmm5,%xmm5
 1006b1d:	19 ef                	sbb    %ebp,%edi
 1006b1f:	ce                   	(bad)  
 1006b20:	62                   	(bad)  
 1006b21:	36 b0 49             	ss mov $0x49,%al
 1006b24:	92                   	xchg   %eax,%edx
 1006b25:	99                   	cltd   
 1006b26:	84 d5                	test   %dl,%ch
 1006b28:	60                   	(bad)  
 1006b29:	56                   	push   %rsi
 1006b2a:	64 e0 69             	fs loopne 0x1006b96
 1006b2d:	2a ab 46 1b cd 98    	sub    -0x6732e4ba(%rbx),%ch
 1006b33:	cb                   	lret   
 1006b34:	4b 77 19             	rex.WXB ja 0x1006b50
 1006b37:	1e                   	(bad)  
 1006b38:	bb 90 48 21 82       	mov    $0x82214890,%ebx
 1006b3d:	37                   	(bad)  
 1006b3e:	95                   	xchg   %eax,%ebp
 1006b3f:	31 4d 79             	xor    %ecx,0x79(%rbp)
 1006b42:	ac                   	lods   %ds:(%rsi),%al
 1006b43:	9b                   	fwait
 1006b44:	4d 16                	rex.WRB (bad) 
 1006b46:	18 fb                	sbb    %bh,%bl
 1006b48:	43 9d                	rex.XB popfq 
 1006b4a:	04 be                	add    $0xbe,%al
 1006b4c:	e3 67                	jrcxz  0x1006bb5
 1006b4e:	74 4a                	je     0x1006b9a
 1006b50:	4e a6                	rex.WRX cmpsb %es:(%rdi),%ds:(%rsi)
 1006b52:	7f 97                	jg     0x1006aeb
 1006b54:	f5                   	cmc    
 1006b55:	17                   	(bad)  
 1006b56:	bf a4 6d aa c9       	mov    $0xc9aa6da4,%edi
 1006b5b:	54                   	push   %rsp
 1006b5c:	70 00                	jo     0x1006b5e
 1006b5e:	f1                   	icebp  
 1006b5f:	f5                   	cmc    
 1006b60:	98                   	cwtl   
 1006b61:	7b 36                	jnp    0x1006b99
 1006b63:	3a 2c 0a             	cmp    (%rdx,%rcx,1),%ch
 1006b66:	15 80 cb 89 4f       	adc    $0x4f89cb80,%eax
 1006b6b:	99                   	cltd   
 1006b6c:	46 3f                	rex.RX (bad) 
 1006b6e:	f3 0e                	repz (bad) 
 1006b70:	20 86 7e 27 64 c0    	and    %al,-0x3f9bd882(%rsi)
 1006b76:	95                   	xchg   %eax,%ebp
 1006b77:	88 5b 04             	mov    %bl,0x4(%rbx)
 1006b7a:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1006b7b:	6a 38                	pushq  $0x38
 1006b7d:	93                   	xchg   %eax,%ebx
 1006b7e:	d5                   	(bad)  
 1006b7f:	e4 7a                	in     $0x7a,%al
 1006b81:	83 89 d7 7b bf 61 94 	orl    $0xffffff94,0x61bf7bd7(%rcx)
 1006b88:	da 3b                	fidivrl (%rbx)
 1006b8a:	7b 14                	jnp    0x1006ba0
 1006b8c:	26 0c 06             	es or  $0x6,%al
 1006b8f:	58                   	pop    %rax
 1006b90:	11 e7                	adc    %esp,%edi
 1006b92:	97                   	xchg   %eax,%edi
 1006b93:	fe ca                	dec    %dl
 1006b95:	11 06                	adc    %eax,(%rsi)
 1006b97:	6b 8f 31 fc 1e 6f 06 	imul   $0x6,0x6f1efc31(%rdi),%ecx
 1006b9e:	38 1f                	cmp    %bl,(%rdi)
 1006ba0:	9f                   	lahf   
 1006ba1:	9b db 80 fd 13 ed 37 	fildl  0x37ed13fd(%rax)
 1006ba8:	15 93 03 f4 ce       	adc    $0xcef40393,%eax
 1006bad:	5b                   	pop    %rbx
 1006bae:	95                   	xchg   %eax,%ebp
 1006baf:	3b 57 09             	cmp    0x9(%rdi),%edx
 1006bb2:	d8 59 3b             	fcomps 0x3b(%rcx)
 1006bb5:	41 82                	rex.B (bad) 
 1006bb7:	4c 3a 1c 5a          	rex.WR cmp (%rdx,%rbx,2),%r11b
 1006bbb:	6f                   	outsl  %ds:(%rsi),(%dx)
 1006bbc:	53                   	push   %rbx
 1006bbd:	fa                   	cli    
 1006bbe:	bc 09 ec cf 14       	mov    $0x14cfec09,%esp
 1006bc3:	e9 1b 1f 96 ba       	jmpq   0xffffffffbb968ae3
 1006bc8:	4c cc                	rex.WR int3 
 1006bca:	74 ba                	je     0x1006b86
 1006bcc:	1c cf                	sbb    $0xcf,%al
 1006bce:	b5 0d                	mov    $0xd,%ch
 1006bd0:	da d3                	fcmovbe %st(3),%st
 1006bd2:	b9 3f 3b ad 90       	mov    $0x90ad3b3f,%ecx
 1006bd7:	75 f2                	jne    0x1006bcb
 1006bd9:	aa                   	stos   %al,%es:(%rdi)
 1006bda:	e5 fd                	in     $0xfd,%eax
 1006bdc:	97                   	xchg   %eax,%edi
 1006bdd:	3a cf                	cmp    %bh,%cl
 1006bdf:	37                   	(bad)  
 1006be0:	f8                   	clc    
 1006be1:	0c 00                	or     $0x0,%al
 1006be3:	17                   	(bad)  
 1006be4:	91                   	xchg   %eax,%ecx
 1006be5:	df 92 e6 6a 3c e8    	fists  -0x17c3951a(%rdx)
 1006beb:	80 a6 5f 27 ba d5 09 	andb   $0x9,-0x2a45d8a1(%rsi)
 1006bf2:	de e3                	fsubp  %st,%st(3)
 1006bf4:	81 49 6a 3e 73 83 5a 	orl    $0x5a83733e,0x6a(%rcx)
 1006bfb:	a8 20                	test   $0x20,%al
 1006bfd:	2a 7f 29             	sub    0x29(%rdi),%bh
 1006c00:	af                   	scas   %es:(%rdi),%eax
 1006c01:	d3 aa db 84 33 b4    	shrl   %cl,-0x4bcc7b25(%rdx)
 1006c07:	9c                   	pushfq 
 1006c08:	af                   	scas   %es:(%rdi),%eax
 1006c09:	8a 5c 43 78          	mov    0x78(%rbx,%rax,2),%bl
 1006c0d:	ee                   	out    %al,(%dx)
 1006c0e:	70 69                	jo     0x1006c79
 1006c10:	aa                   	stos   %al,%es:(%rdi)
 1006c11:	38 f7                	cmp    %dh,%bh
 1006c13:	45 fd                	rex.RB std 
 1006c15:	8a 3d 80 ba f8 88    	mov    -0x77074580(%rip),%bh        # 0xffffffff89f9269b
 1006c1b:	2e 9c                	cs pushfq 
 1006c1d:	e5 63                	in     $0x63,%eax
 1006c1f:	17                   	(bad)  
 1006c20:	32 d3                	xor    %bl,%dl
 1006c22:	3e 53                	ds push %rbx
 1006c24:	c8 9f 20 a3          	enterq $0x209f,$0xa3
 1006c28:	22 30                	and    (%rax),%dh
 1006c2a:	cf                   	iret   
 1006c2b:	d5                   	(bad)  
 1006c2c:	cd 12                	int    $0x12
 1006c2e:	99                   	cltd   
 1006c2f:	dd 24 2c             	frstor (%rsp,%rbp,1)
 1006c32:	38 a0 cf 06 e8 01    	cmp    %ah,0x1e806cf(%rax)
 1006c38:	b8 04 b2 bb a5       	mov    $0xa5bbb204,%eax
 1006c3d:	8d                   	(bad)  
 1006c3e:	f2 be 9e 4e 4b 98    	repnz mov $0x984b4e9e,%esi
 1006c44:	28 48 ea             	sub    %cl,-0x16(%rax)
 1006c47:	ae                   	scas   %es:(%rdi),%al
 1006c48:	f6 ae 2b e0 74 71    	imulb  0x7174e02b(%rsi)
 1006c4e:	b5 d7                	mov    $0xd7,%ch
 1006c50:	57                   	push   %rdi
 1006c51:	8a f0                	mov    %al,%dh
 1006c53:	ec                   	in     (%dx),%al
 1006c54:	82                   	(bad)  
 1006c55:	bd 39 a5 23 cb       	mov    $0xcb23a539,%ebp
 1006c5a:	6f                   	outsl  %ds:(%rsi),(%dx)
 1006c5b:	44 b6 88             	rex.R mov $0x88,%sil
 1006c5e:	a3 7b 10 a2 fe fe 4a 	movabs %eax,0x88724afefea2107b
 1006c65:	72 88 
 1006c67:	77 e0                	ja     0x1006c49
 1006c69:	bb c2 39 e4 10       	mov    $0x10e439c2,%ebx
 1006c6e:	7b 68                	jnp    0x1006cd8
 1006c70:	97                   	xchg   %eax,%edi
 1006c71:	5d                   	pop    %rbp
 1006c72:	8f                   	(bad)  
 1006c73:	51                   	push   %rcx
 1006c74:	a3 d1 06 cc f0 19 81 	movabs %eax,0xc51d8119f0cc06d1
 1006c7b:	1d c5 
 1006c7d:	0b c1                	or     %ecx,%eax
 1006c7f:	29 67 7f             	sub    %esp,0x7f(%rdi)
 1006c82:	76 cd                	jbe    0x1006c51
 1006c84:	c7                   	(bad)  
 1006c85:	a9 89 7e 88 c6       	test   $0xc6887e89,%eax
 1006c8a:	c3                   	retq   
 1006c8b:	08 6f 14             	or     %ch,0x14(%rdi)
 1006c8e:	72 93                	jb     0x1006c23
 1006c90:	89 12                	mov    %edx,(%rdx)
 1006c92:	61                   	(bad)  
 1006c93:	fe                   	(bad)  
 1006c94:	6b 03 ca             	imul   $0xffffffca,(%rbx),%eax
 1006c97:	0a 41 19             	or     0x19(%rcx),%al
 1006c9a:	4e ab                	rex.WRX stos %rax,%es:(%rdi)
 1006c9c:	df 08                	fisttps (%rax)
 1006c9e:	ec                   	in     (%dx),%al
 1006c9f:	9b                   	fwait
 1006ca0:	cd 4b                	int    $0x4b
 1006ca2:	11 21                	adc    %esp,(%rcx)
 1006ca4:	0d 6f 2a 85 56       	or     $0x56852a6f,%eax
 1006ca9:	cc                   	int3   
 1006caa:	1b d8                	sbb    %eax,%ebx
 1006cac:	98                   	cwtl   
 1006cad:	26 91                	es xchg %eax,%ecx
 1006caf:	04 9d                	add    $0x9d,%al
 1006cb1:	e2 45                	loop   0x1006cf8
 1006cb3:	37                   	(bad)  
 1006cb4:	29 bd 0b 52 dd 7a    	sub    %edi,0x7add520b(%rbp)
 1006cba:	fb                   	sti    
 1006cbb:	28 37                	sub    %dh,(%rdi)
 1006cbd:	a2 86 07 5c f4 28 e7 	movabs %al,0xb293e728f45c0786
 1006cc4:	93 b2 
 1006cc6:	90                   	nop
 1006cc7:	07                   	(bad)  
 1006cc8:	21 2c ac             	and    %ebp,(%rsp,%rbp,4)
 1006ccb:	6e                   	outsb  %ds:(%rsi),(%dx)
 1006ccc:	71 3e                	jno    0x1006d0c
 1006cce:	d6                   	(bad)  
 1006ccf:	c8 fa 3d a8          	enterq $0x3dfa,$0xa8
 1006cd3:	2f                   	(bad)  
 1006cd4:	56                   	push   %rsi
 1006cd5:	65 ac                	lods   %gs:(%rsi),%al
 1006cd7:	bf c4 19 75 b0       	mov    $0xb07519c4,%edi
 1006cdc:	ee                   	out    %al,(%dx)
 1006cdd:	d6                   	(bad)  
 1006cde:	cd 1c                	int    $0x1c
 1006ce0:	7e b4                	jle    0x1006c96
 1006ce2:	54                   	push   %rsp
 1006ce3:	3b 01                	cmp    (%rcx),%eax
 1006ce5:	f4                   	hlt    
 1006ce6:	f4                   	hlt    
 1006ce7:	f7 5d 06             	negl   0x6(%rbp)
 1006cea:	c7                   	(bad)  
 1006ceb:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1006cec:	59                   	pop    %rcx
 1006ced:	ad                   	lods   %ds:(%rsi),%eax
 1006cee:	c6                   	(bad)  
 1006cef:	f1                   	icebp  
 1006cf0:	f1                   	icebp  
 1006cf1:	d2 a4 bb 4d cd ff 26 	shlb   %cl,0x26ffcd4d(%rbx,%rdi,4)
 1006cf8:	71 30                	jno    0x1006d2a
 1006cfa:	6a b6                	pushq  $0xffffffffffffffb6
 1006cfc:	94                   	xchg   %eax,%esp
 1006cfd:	c7 45 fd ec f3 09 7c 	movl   $0x7c09f3ec,-0x3(%rbp)
 1006d04:	6b a6 f1 67 8b 10 c1 	imul   $0xffffffc1,0x108b67f1(%rsi),%esp
 1006d0b:	78 26                	js     0x1006d33
 1006d0d:	03 a7 e2 ee a6 93    	add    -0x6c59111e(%rdi),%esp
 1006d13:	28 52 5e             	sub    %dl,0x5e(%rdx)
 1006d16:	b5 9a                	mov    $0x9a,%ch
 1006d18:	dd 90 ca 02 8c 3d    	fstl   0x3d8c02ca(%rax)
 1006d1e:	f8                   	clc    
 1006d1f:	bc eb 09 cd 9e       	mov    $0x9ecd09eb,%esp
 1006d24:	c8 96 75 1d          	enterq $0x7596,$0x1d
 1006d28:	0f 1c be 8f a8 3d 3d 	nopl   0x3d3da88f(%rsi)
 1006d2f:	8f                   	(bad)  
 1006d30:	7a 74                	jp     0x1006da6
 1006d32:	e2 6f                	loop   0x1006da3
 1006d34:	ac                   	lods   %ds:(%rsi),%al
 1006d35:	05 b0 fa cf c0       	add    $0xc0cffab0,%eax
 1006d3a:	0b 7a d6             	or     -0x2a(%rdx),%edi
 1006d3d:	17                   	(bad)  
 1006d3e:	de 99 74 e0 ca 0a    	ficomps 0xacae074(%rcx)
 1006d44:	a2 2d 5b 54 be ec 26 	movabs %al,0xb6e326ecbe545b2d
 1006d4b:	e3 b6 
 1006d4d:	f9                   	stc    
 1006d4e:	61                   	(bad)  
 1006d4f:	ed                   	in     (%dx),%eax
 1006d50:	06                   	(bad)  
 1006d51:	1c 47                	sbb    $0x47,%al
 1006d53:	bb 12 48 cd 1f       	mov    $0x1fcd4812,%ebx
 1006d58:	d2 01                	rolb   %cl,(%rcx)
 1006d5a:	ea                   	(bad)  
 1006d5b:	db 3f                	fstpt  (%rdi)
 1006d5d:	84 4a 8b             	test   %cl,-0x75(%rdx)
 1006d60:	74 c9                	je     0x1006d2b
 1006d62:	96                   	xchg   %eax,%esi
 1006d63:	70 0b                	jo     0x1006d70
 1006d65:	ef                   	out    %eax,(%dx)
 1006d66:	58                   	pop    %rax
 1006d67:	ae                   	scas   %es:(%rdi),%al
 1006d68:	34 a3                	xor    $0xa3,%al
 1006d6a:	04 1e                	add    $0x1e,%al
 1006d6c:	c7                   	(bad)  
 1006d6d:	93                   	xchg   %eax,%ebx
 1006d6e:	32 7b 93             	xor    -0x6d(%rbx),%bh
 1006d71:	df 78 e5             	fistpll -0x1b(%rax)
 1006d74:	aa                   	stos   %al,%es:(%rdi)
 1006d75:	4b db 34 4c          	rex.WXB (bad) (%r12,%r9,2)
 1006d79:	17                   	(bad)  
 1006d7a:	c5 fe c4             	(bad)  
 1006d7d:	43 33 de             	rex.XB xor %r14d,%ebx
 1006d80:	ff 69 87             	ljmp   *-0x79(%rcx)
 1006d83:	f3 c3                	repz retq 
 1006d85:	e3 ad                	jrcxz  0x1006d34
 1006d87:	4a bc bc ef 0e 3a 17 	rex.WX movabs $0xe3621c173a0eefbc,%rsp
 1006d8e:	1c 62 e3 
 1006d91:	bc cb 0b c8 bb       	mov    $0xbbc80bcb,%esp
 1006d96:	b1 0b                	mov    $0xb,%cl
 1006d98:	18 ab 9a 18 d2 18    	sbb    %ch,0x18d2189a(%rbx)
 1006d9e:	cf                   	iret   
 1006d9f:	49 fd                	rex.WB std 
 1006da1:	39 8f e0 5b 7f 89    	cmp    %ecx,-0x7680a420(%rdi)
 1006da7:	34 79                	xor    $0x79,%al
 1006da9:	44 3b 60 f7          	cmp    -0x9(%rax),%r12d
 1006dad:	db 81 dd 60 b3 9f    	fildl  -0x604c9f23(%rcx)
 1006db3:	a9 76 04 31 19       	test   $0x19310476,%eax
 1006db8:	2f                   	(bad)  
 1006db9:	ce                   	(bad)  
 1006dba:	28 8e 02 7d 54 fc    	sub    %cl,-0x3ab82fe(%rsi)
 1006dc0:	e0 71                	loopne 0x1006e33
 1006dc2:	e4 c8                	in     $0xc8,%al
 1006dc4:	7b 05                	jnp    0x1006dcb
 1006dc6:	a2 2e 90 c8 da 06 d0 	movabs %al,0x4850d006dac8902e
 1006dcd:	50 48 
 1006dcf:	cc                   	int3   
 1006dd0:	dd b6 d7 80 35 ec    	fnsave -0x13ca7f29(%rsi)
 1006dd6:	ca d0 8d             	lret   $0x8dd0
 1006dd9:	a3 12 a1 f9 88 11 ae 	movabs %eax,0x7f81ae1188f9a112
 1006de0:	81 7f 
 1006de2:	3a d1                	cmp    %cl,%dl
 1006de4:	47 2a 0c ac          	sub    (%r12,%r13,4),%r9b
 1006de8:	c3                   	retq   
 1006de9:	02 bc 12 4b ad d7 9b 	add    -0x642852b5(%rdx,%rdx,1),%bh
 1006df0:	d6                   	(bad)  
 1006df1:	e6 23                	out    %al,$0x23
 1006df3:	f7 b3 63 eb 68 2c    	divl   0x2c68eb63(%rbx)
 1006df9:	51                   	push   %rcx
 1006dfa:	dc bf 06 c3 7f 12    	fdivrl 0x127fc306(%rdi)
 1006e00:	64 a5                	movsl  %fs:(%rsi),%es:(%rdi)
 1006e02:	af                   	scas   %es:(%rdi),%eax
 1006e03:	fb                   	sti    
 1006e04:	88 28                	mov    %ch,(%rax)
 1006e06:	6e                   	outsb  %ds:(%rsi),(%dx)
 1006e07:	0f 19 ee             	nop    %esi
 1006e0a:	41 ac                	rex.B lods %ds:(%rsi),%al
 1006e0c:	00 6c 4b 65          	add    %ch,0x65(%rbx,%rcx,2)
 1006e10:	6f                   	outsl  %ds:(%rsi),(%dx)
 1006e11:	08 17                	or     %dl,(%rdi)
 1006e13:	50                   	push   %rax
 1006e14:	5a                   	pop    %rdx
 1006e15:	60                   	(bad)  
 1006e16:	02 da                	add    %dl,%bl
 1006e18:	e8 4a cc 8d b0       	callq  0xffffffffb18e3a67
 1006e1d:	7e f6                	jle    0x1006e15
 1006e1f:	22 ec                	and    %ah,%ch
 1006e21:	e7 7c                	out    %eax,$0x7c
 1006e23:	97                   	xchg   %eax,%edi
 1006e24:	98                   	cwtl   
 1006e25:	41 b2 0c             	mov    $0xc,%r10b
 1006e28:	a2 93 d5 24 b8 77 59 	movabs %al,0xbc695977b824d593
 1006e2f:	69 bc 
 1006e31:	6c                   	insb   (%dx),%es:(%rdi)
 1006e32:	3a 22                	cmp    (%rdx),%ah
 1006e34:	f0 20 de             	lock and %bl,%dh
 1006e37:	76 cf                	jbe    0x1006e08
 1006e39:	f0 63 60 ac          	lock movsxd -0x54(%rax),%esp
 1006e3d:	05 cb 17 ee a3       	add    $0xa3ee17cb,%eax
 1006e42:	45 28 1c 49          	sub    %r11b,(%r9,%rcx,2)
 1006e46:	7f 0c                	jg     0x1006e54
 1006e48:	d3 c1                	rol    %cl,%ecx
 1006e4a:	d0 16                	rclb   (%rsi)
 1006e4c:	3d 8a e0 a8 93       	cmp    $0x93a8e08a,%eax
 1006e51:	d4                   	(bad)  
 1006e52:	db e5                	frstpm(287 only) 
 1006e54:	66 a4                	data16 movsb %ds:(%rsi),%es:(%rdi)
 1006e56:	93                   	xchg   %eax,%ebx
 1006e57:	a3 0b 4e 38 56 42 ae 	movabs %eax,0xc983ae4256384e0b
 1006e5e:	83 c9 
 1006e60:	4f d5                	rex.WRXB (bad) 
 1006e62:	e8 46 fa 6f a8       	callq  0xffffffffa97068ad
 1006e67:	fc                   	cld    
 1006e68:	b1 fc                	mov    $0xfc,%cl
 1006e6a:	6a e3                	pushq  $0xffffffffffffffe3
 1006e6c:	7d a1                	jge    0x1006e0f
 1006e6e:	bc 43 3b c4 37       	mov    $0x37c43b43,%esp
 1006e73:	0a 09                	or     (%rcx),%cl
 1006e75:	06                   	(bad)  
 1006e76:	3b 5d 60             	cmp    0x60(%rbp),%ebx
 1006e79:	09 93 eb 66 a7 f5    	or     %edx,-0xa589915(%rbx)
 1006e7f:	f6 a0 8d 5d 82 c1    	mulb   -0x3e7da273(%rax)
 1006e85:	c1 22 bd             	shll   $0xbd,(%rdx)
 1006e88:	a9 b4 59 e6 26       	test   $0x26e659b4,%eax
 1006e8d:	91                   	xchg   %eax,%ecx
 1006e8e:	61                   	(bad)  
 1006e8f:	9f                   	lahf   
 1006e90:	50                   	push   %rax
 1006e91:	fb                   	sti    
 1006e92:	ec                   	in     (%dx),%al
 1006e93:	26 a3 6f f9 45 e7 db 	movabs %eax,%es:0xab4ecedbe745f96f
 1006e9a:	ce 4e ab 
 1006e9d:	75 07                	jne    0x1006ea6
 1006e9f:	df 6b c4             	fildll -0x3c(%rbx)
 1006ea2:	5c                   	pop    %rsp
 1006ea3:	b8 0e 25 a6 24       	mov    $0x24a6250e,%eax
 1006ea8:	65 64 fd             	gs fs std 
 1006eab:	76 fa                	jbe    0x1006ea7
 1006ead:	79 86                	jns    0x1006e35
 1006eaf:	59                   	pop    %rcx
 1006eb0:	74 82                	je     0x1006e34
 1006eb2:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1006eb3:	48 c1 94 32 46 51 4e 	rclq   $0xc0,-0x27b1aeba(%rdx,%rsi,1)
 1006eba:	d8 c0 
 1006ebc:	1e                   	(bad)  
 1006ebd:	43 5c                	rex.XB pop %r12
 1006ebf:	ae                   	scas   %es:(%rdi),%al
 1006ec0:	ab                   	stos   %eax,%es:(%rdi)
 1006ec1:	90                   	nop
 1006ec2:	13 54 58 4f          	adc    0x4f(%rax,%rbx,2),%edx
 1006ec6:	d3 ea                	shr    %cl,%edx
 1006ec8:	77 27                	ja     0x1006ef1
 1006eca:	32 5c 72 fd          	xor    -0x3(%rdx,%rsi,2),%bl
 1006ece:	9f                   	lahf   
 1006ecf:	78 4a                	js     0x1006f1b
 1006ed1:	87 11                	xchg   %edx,(%rcx)
 1006ed3:	c0 c8 d8             	ror    $0xd8,%al
 1006ed6:	fb                   	sti    
 1006ed7:	52                   	push   %rdx
 1006ed8:	50                   	push   %rax
 1006ed9:	da 75 5c             	fidivl 0x5c(%rbp)
 1006edc:	d9 79 30             	fnstcw 0x30(%rcx)
 1006edf:	66 e9 c7 30          	jmpw   0x9faa
 1006ee3:	08 60 4f             	or     %ah,0x4f(%rax)
 1006ee6:	6a fc                	pushq  $0xfffffffffffffffc
 1006ee8:	06                   	(bad)  
 1006ee9:	10 d3                	adc    %dl,%bl
 1006eeb:	45                   	rex.RB
 1006eec:	40 b1 d4             	mov    $0xd4,%cl
 1006eef:	bf fc 5c e4 2a       	mov    $0x2ae45cfc,%edi
 1006ef4:	c7                   	(bad)  
 1006ef5:	bc 7a 1b b6 93       	mov    $0x93b61b7a,%esp
 1006efa:	58                   	pop    %rax
 1006efb:	83 b7 09 72 0b 2b 47 	xorl   $0x47,0x2b0b7209(%rdi)
 1006f02:	5a                   	pop    %rdx
 1006f03:	bd 98 5b 5f 34       	mov    $0x345f5b98,%ebp
 1006f08:	33 73 a0             	xor    -0x60(%rbx),%esi
 1006f0b:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1006f0c:	7f 9e                	jg     0x1006eac
 1006f0e:	f3 22 f4             	repz and %ah,%dh
 1006f11:	92                   	xchg   %eax,%edx
 1006f12:	43 84 69 e8          	rex.XB test %bpl,-0x18(%r9)
 1006f16:	9c                   	pushfq 
 1006f17:	90                   	nop
 1006f18:	21 6d 93             	and    %ebp,-0x6d(%rbp)
 1006f1b:	54                   	push   %rsp
 1006f1c:	ee                   	out    %al,(%dx)
 1006f1d:	e1 f9                	loope  0x1006f18
 1006f1f:	e3 80                	jrcxz  0x1006ea1
 1006f21:	ca b8 41             	lret   $0x41b8
 1006f24:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1006f25:	cb                   	lret   
 1006f26:	92                   	xchg   %eax,%edx
 1006f27:	4b 78 bd             	rex.WXB js 0x1006ee7
 1006f2a:	65 74 74             	gs je  0x1006fa1
 1006f2d:	cc                   	int3   
 1006f2e:	11 7c 8c 2e          	adc    %edi,0x2e(%rsp,%rcx,4)
 1006f32:	ca a2 3c             	lret   $0x3ca2
 1006f35:	f4                   	hlt    
 1006f36:	68 09 59 1b df       	pushq  $0xffffffffdf1b5909
 1006f3b:	c5 32 6f             	(bad)
 1006f3e:	0a 6e 2b             	or     0x2b(%rsi),%ch
 1006f41:	49 5b                	rex.WB pop %r11
 1006f43:	58                   	pop    %rax
 1006f44:	36 de 12             	ficoms %ss:(%rdx)
 1006f47:	f6 66 94             	mulb   -0x6c(%rsi)
 1006f4a:	5b                   	pop    %rbx
 1006f4b:	6a 9f                	pushq  $0xffffffffffffff9f
 1006f4d:	98                   	cwtl   
 1006f4e:	33 b7 41 83 96 80    	xor    -0x7f697cbf(%rdi),%esi
 1006f54:	2d b9 7f 66 15       	sub    $0x15667fb9,%eax
 1006f59:	f5                   	cmc    
 1006f5a:	34 04                	xor    $0x4,%al
 1006f5c:	ba d1 00 eb c0       	mov    $0xc0eb00d1,%edx
 1006f61:	6b f9 41             	imul   $0x41,%ecx,%edi
 1006f64:	db ba d5 53 f8 98    	fstpt  -0x6707ac2b(%rdx)
 1006f6a:	82                   	(bad)  
 1006f6b:	28 e7                	sub    %ah,%bh
 1006f6d:	19 4a 87             	sbb    %ecx,-0x79(%rdx)
 1006f70:	5f                   	pop    %rdi
 1006f71:	9e                   	sahf   
 1006f72:	fd                   	std    
 1006f73:	e4 3e                	in     $0x3e,%al
 1006f75:	18 d8                	sbb    %bl,%al
 1006f77:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1006f78:	80 1b 81             	sbbb   $0x81,(%rbx)
 1006f7b:	f5                   	cmc    
 1006f7c:	aa                   	stos   %al,%es:(%rdi)
 1006f7d:	2b 46 12             	sub    0x12(%rsi),%eax
 1006f80:	07                   	(bad)  
 1006f81:	c4                   	(bad)  
 1006f82:	f0 f4                	lock hlt 
 1006f84:	0c c5                	or     $0xc5,%al
 1006f86:	71 12                	jno    0x1006f9a
 1006f88:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1006f89:	d2 7f eb             	sarb   %cl,-0x15(%rdi)
 1006f8c:	fa                   	cli    
 1006f8d:	4d                   	rex.WRB
 1006f8e:	9b                   	fwait
 1006f8f:	ad                   	lods   %ds:(%rsi),%eax
 1006f90:	30 5e d4             	xor    %bl,-0x2c(%rsi)
 1006f93:	bd 45 4b ab 47       	mov    $0x47ab4b45,%ebp
 1006f98:	61                   	(bad)  
 1006f99:	c5 6d 4b             	(bad)
 1006f9c:	6f                   	outsl  %ds:(%rsi),(%dx)
 1006f9d:	b1 17                	mov    $0x17,%cl
 1006f9f:	ed                   	in     (%dx),%eax
 1006fa0:	f9                   	stc    
 1006fa1:	38 14 b2             	cmp    %dl,(%rdx,%rsi,4)
 1006fa4:	2e 8f                	cs (bad) 
 1006fa6:	13 15 3e a3 22 bd    	adc    -0x42dd5cc2(%rip),%edx        # 0xffffffffbe2312ea
 1006fac:	b0 bc                	mov    $0xbc,%al
 1006fae:	f7 29                	imull  (%rcx)
 1006fb0:	8a 1a                	mov    (%rdx),%bl
 1006fb2:	d1 ab f0 11 6d 9c    	shrl   -0x6392ee10(%rbx)
 1006fb8:	4b                   	rex.WXB
 1006fb9:	9b                   	fwait
 1006fba:	46 85 38             	rex.RX test %r15d,(%rax)
 1006fbd:	3f                   	(bad)  
 1006fbe:	1a e5                	sbb    %ch,%ah
 1006fc0:	dc 2c e0             	fsubrl (%rax,%riz,8)
 1006fc3:	1f                   	(bad)  
 1006fc4:	85 67 76             	test   %esp,0x76(%rdi)
 1006fc7:	f7 0f 95 e3 50 5b    	testl  $0x5b50e395,(%rdi)
 1006fcd:	46 62                	(bad)  
 1006fcf:	f0 c9                	lock leaveq 
 1006fd1:	74 b9                	je     0x1006f8c
 1006fd3:	fe                   	(bad)  
 1006fd4:	6b 38 52             	imul   $0x52,(%rax),%edi
 1006fd7:	e9 e7 ee 40 e4       	jmpq   0xffffffffe5415ec3
 1006fdc:	2a 56 7b             	sub    0x7b(%rsi),%dl
 1006fdf:	74 41                	je     0x1007022
 1006fe1:	18 1a                	sbb    %bl,(%rdx)
 1006fe3:	12 2a                	adc    (%rdx),%ch
 1006fe5:	c3                   	retq   
 1006fe6:	b6 d8                	mov    $0xd8,%dh
 1006fe8:	fb                   	sti    
 1006fe9:	40                   	rex
 1006fea:	66 96                	xchg   %ax,%si
 1006fec:	84 4d af             	test   %cl,-0x51(%rbp)
 1006fef:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1006ff0:	f1                   	icebp  
 1006ff1:	90                   	nop
 1006ff2:	f7 40 2d 89 c0 67 4e 	testl  $0x4e67c089,0x2d(%rax)
 1006ff9:	87 86 40 cc 84 45    	xchg   %eax,0x4584cc40(%rsi)
 1006fff:	34 0d                	xor    $0xd,%al
 1007001:	5b                   	pop    %rbx
 1007002:	7c 98                	jl     0x1006f9c
 1007004:	7f bf                	jg     0x1006fc5
 1007006:	db 34 f3             	(bad)  (%rbx,%rsi,8)
 1007009:	ed                   	in     (%dx),%eax
 100700a:	c1 82 b4 52 61 a3 1c 	roll   $0x1c,-0x5c9ead4c(%rdx)
 1007011:	26 94                	es xchg %eax,%esp
 1007013:	59                   	pop    %rcx
 1007014:	09 04 18             	or     %eax,(%rax,%rbx,1)
 1007017:	4f 91                	rex.WRXB xchg %rax,%r9
 1007019:	ed                   	in     (%dx),%eax
 100701a:	f6 b8 35 64 94 5f    	idivb  0x5f946435(%rax)
 1007020:	ec                   	in     (%dx),%al
 1007021:	dc 7f c3             	fdivrl -0x3d(%rdi)
 1007024:	75 16                	jne    0x100703c
 1007026:	13 70 88             	adc    -0x78(%rax),%esi
 1007029:	82                   	(bad)  
 100702a:	1d 82 27 79 68       	sbb    $0x68792782,%eax
 100702f:	2f                   	(bad)  
 1007030:	5e                   	pop    %rsi
 1007031:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1007032:	c0 1a 0c             	rcrb   $0xc,(%rdx)
 1007035:	97                   	xchg   %eax,%edi
 1007036:	fa                   	cli    
 1007037:	69 b2 5f 03 dd b1 96 	imul   $0xf95f0b96,-0x4e22fca1(%rdx),%esi
 100703e:	0b 5f f9 
 1007041:	4c                   	rex.WR
 1007042:	64 ef                	fs out %eax,(%dx)
 1007044:	ee                   	out    %al,(%dx)
 1007045:	0a 87 97 96 e6 0d    	or     0xde69697(%rdi),%al
 100704b:	81 80 75 0f 7e 76 bb 	addl   $0x1b6b1abb,0x767e0f75(%rax)
 1007052:	1a 6b 1b 
 1007055:	01 a2 f7 d8 d0 86    	add    %esp,-0x792f2709(%rdx)
 100705b:	c4                   	(bad)  
 100705c:	5a                   	pop    %rdx
 100705d:	42 eb 39             	rex.X jmp 0x1007099
 1007060:	94                   	xchg   %eax,%esp
 1007061:	2f                   	(bad)  
 1007062:	11 7b 26             	adc    %edi,0x26(%rbx)
 1007065:	22 7a b9             	and    -0x47(%rdx),%bh
 1007068:	9b                   	fwait
 1007069:	1e                   	(bad)  
 100706a:	2b c0                	sub    %eax,%eax
 100706c:	62                   	(bad)  
 100706d:	99                   	cltd   
 100706e:	88 a2 7a cd 4d 37    	mov    %ah,0x374dcd7a(%rdx)
 1007074:	5c                   	pop    %rsp
 1007075:	ba b1 d4 0c 14       	mov    $0x140cd4b1,%edx
 100707a:	b1 cf                	mov    $0xcf,%cl
 100707c:	78 b8                	js     0x1007036
 100707e:	60                   	(bad)  
 100707f:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1007080:	27                   	(bad)  
 1007081:	1c f0                	sbb    $0xf0,%al
 1007083:	fd                   	std    
 1007084:	f2 27                	repnz (bad) 
 1007086:	57                   	push   %rdi
 1007087:	e3 e6                	jrcxz  0x100706f
 1007089:	56                   	push   %rsi
 100708a:	e9 c5 30 1c ab       	jmpq   0xffffffffac1ca154
 100708f:	05 29 f3 c2 6a       	add    $0x6ac2f329,%eax
 1007094:	20 14 2e             	and    %dl,(%rsi,%rbp,1)
 1007097:	4c a8 7b             	rex.WR test $0x7b,%al
 100709a:	ca ae 39             	lret   $0x39ae
 100709d:	06                   	(bad)  
 100709e:	db 03                	fildl  (%rbx)
 10070a0:	7c 02                	jl     0x10070a4
 10070a2:	66 bf 2f 1f          	mov    $0x1f2f,%di
 10070a6:	5b                   	pop    %rbx
 10070a7:	ed                   	in     (%dx),%eax
 10070a8:	3e 9c                	ds pushfq 
 10070aa:	e1 39                	loope  0x10070e5
 10070ac:	79 57                	jns    0x1007105
 10070ae:	3d de 21 ee 19       	cmp    $0x19ee21de,%eax
 10070b3:	b2 86                	mov    $0x86,%dl
 10070b5:	8b 8b 2d 3a dc ab    	mov    -0x5423c5d3(%rbx),%ecx
 10070bb:	eb 77                	jmp    0x1007134
 10070bd:	fe                   	(bad)  
 10070be:	27                   	(bad)  
 10070bf:	e4 2a                	in     $0x2a,%al
 10070c1:	b4 12                	mov    $0x12,%ah
 10070c3:	da 52 10             	ficoml 0x10(%rdx)
 10070c6:	1b b5 1a a7 e8 31    	sbb    0x31e8a71a(%rbp),%esi
 10070cc:	b3 cf                	mov    $0xcf,%bl
 10070ce:	4e 80 b3 c6 0d 98 71 	rex.WRX xorb $0xbd,0x71980dc6(%rbx)
 10070d5:	bd 
 10070d6:	96                   	xchg   %eax,%esi
 10070d7:	21 a6 2a 7b b0 ec    	and    %esp,-0x134f84d6(%rsi)
 10070dd:	bc 89 fe d4 7f       	mov    $0x7fd4fe89,%esp
 10070e2:	77 7b                	ja     0x100715f
 10070e4:	cc                   	int3   
 10070e5:	cd 55                	int    $0x55
 10070e7:	92                   	xchg   %eax,%edx
 10070e8:	b7 37                	mov    $0x37,%bh
 10070ea:	95                   	xchg   %eax,%ebp
 10070eb:	4f                   	rex.WRXB
 10070ec:	48 ae                	rex.W scas %es:(%rdi),%al
 10070ee:	87 d3                	xchg   %edx,%ebx
 10070f0:	ae                   	scas   %es:(%rdi),%al
 10070f1:	c1 e2 56             	shl    $0x56,%edx
 10070f4:	90                   	nop
 10070f5:	6b 1b 3b             	imul   $0x3b,(%rbx),%ebx
 10070f8:	d8 f5                	fdiv   %st(5),%st
 10070fa:	d1 79 e4             	sarl   -0x1c(%rcx)
 10070fd:	5b                   	pop    %rbx
 10070fe:	63 05 98 a9 7f 43    	movsxd 0x437fa998(%rip),%eax        # 0x44801a9c
 1007104:	43 f1                	rex.XB icebp 
 1007106:	65 2d ea 22 0d a2    	gs sub $0xa20d22ea,%eax
 100710c:	ab                   	stos   %eax,%es:(%rdi)
 100710d:	49 70 8d             	rex.WB jo 0x100709d
 1007110:	34 a5                	xor    $0xa5,%al
 1007112:	d6                   	(bad)  
 1007113:	22 99 35 14 bd 00    	and    0xbd1435(%rcx),%bl
 1007119:	c6 02 89             	movb   $0x89,(%rdx)
 100711c:	20 5d 07             	and    %bl,0x7(%rbp)
 100711f:	8d 11                	lea    (%rcx),%edx
 1007121:	07                   	(bad)  
 1007122:	92                   	xchg   %eax,%edx
 1007123:	1d cb 60 10 e6       	sbb    $0xe61060cb,%eax
 1007128:	dc f0                	fdiv   %st,%st(0)
 100712a:	84 eb                	test   %ch,%bl
 100712c:	74 01                	je     0x100712f
 100712e:	34 1f                	xor    $0x1f,%al
 1007130:	70 ba                	jo     0x10070ec
 1007132:	2a 8e 9f 52 c3 ad    	sub    -0x523cad61(%rsi),%cl
 1007138:	8b f7                	mov    %edi,%esi
 100713a:	8a 67 92             	mov    -0x6e(%rdi),%ah
 100713d:	26 66 4d cc          	es data16 rex.WRB int3 
 1007141:	2a 1e                	sub    (%rsi),%bl
 1007143:	5e                   	pop    %rsi
 1007144:	8d                   	(bad)  
 1007145:	d2 dc                	rcr    %cl,%ah
 1007147:	e3 3d                	jrcxz  0x1007186
 1007149:	01 1b                	add    %ebx,(%rbx)
 100714b:	d0 52 be             	rclb   -0x42(%rdx)
 100714e:	45 76 57             	rex.RB jbe 0x10071a8
 1007151:	b4 58                	mov    $0x58,%ah
 1007153:	9f                   	lahf   
 1007154:	f5                   	cmc    
 1007155:	c9                   	leaveq 
 1007156:	c2 0f 50             	retq   $0x500f
 1007159:	00 9c b5 96 aa 07 fa 	add    %bl,-0x5f8556a(%rbp,%rsi,4)
 1007160:	f6 9d 46 01 bc 1e    	negb   0x1ebc0146(%rbp)
 1007166:	e5 61                	in     $0x61,%eax
 1007168:	77 6d                	ja     0x10071d7
 100716a:	bd fa 3c 8f ca       	mov    $0xca8f3cfa,%ebp
 100716f:	05 2d 5c 16 4f       	add    $0x4f165c2d,%eax
 1007174:	e6 17                	out    %al,$0x17
 1007176:	a0 2d 36 5c a5 c8 2c 	movabs 0x49472cc8a55c362d,%al
 100717d:	47 49 
 100717f:	86 ee                	xchg   %ch,%dh
 1007181:	b9 4b 91 f1 55       	mov    $0x55f1914b,%ecx
 1007186:	12 45 5c             	adc    0x5c(%rbp),%al
 1007189:	b7 ab                	mov    $0xab,%bh
 100718b:	8a f3                	mov    %bl,%dh
 100718d:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 100718e:	4a f6 8d 66 fa 0c 07 	rex.WX testb $0x66,0x70cfa66(%rbp)
 1007195:	66 
 1007196:	2f                   	(bad)  
 1007197:	10 9d c9 8a 1e 19    	adc    %bl,0x191e8ac9(%rbp)
 100719d:	95                   	xchg   %eax,%ebp
 100719e:	90                   	nop
 100719f:	1c d4                	sbb    $0xd4,%al
 10071a1:	3e 3e 23 88 9e 6c 54 	ds and %ds:-0x7dab9362(%rax),%ecx
 10071a8:	82 
 10071a9:	c8 fe aa 16          	enterq $0xaafe,$0x16
 10071ad:	a9 0f 62 55 5d       	test   $0x5d55620f,%eax
 10071b2:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10071b3:	17                   	(bad)  
 10071b4:	ac                   	lods   %ds:(%rsi),%al
 10071b5:	0e                   	(bad)  
 10071b6:	3b cf                	cmp    %edi,%ecx
 10071b8:	5a                   	pop    %rdx
 10071b9:	5c                   	pop    %rsp
 10071ba:	40                   	rex
 10071bb:	64 0e                	fs (bad) 
 10071bd:	09 0b                	or     %ecx,(%rbx)
 10071bf:	d0 ee                	shr    %dh
 10071c1:	4a 83 dc 3e          	rex.WX sbb $0x3e,%rsp
 10071c5:	fa                   	cli    
 10071c6:	ff                   	(bad)  
 10071c7:	3a 93 32 9d b4 76    	cmp    0x76b49d32(%rbx),%dl
 10071cd:	be 05 15 da da       	mov    $0xdada1505,%esi
 10071d2:	4b 2c 95             	rex.WXB sub $0x95,%al
 10071d5:	04 d5                	add    $0xd5,%al
 10071d7:	99                   	cltd   
 10071d8:	d9 e4                	ftst   
 10071da:	8a 12                	mov    (%rdx),%dl
 10071dc:	c8 f5 94 15          	enterq $0x94f5,$0x15
 10071e0:	43 e6 db             	rex.XB out %al,$0xdb
 10071e3:	df ce                	(bad)  
 10071e5:	72 23                	jb     0x100720a
 10071e7:	38 bf 47 3f 0c ef    	cmp    %bh,-0x10f3c0b9(%rdi)
 10071ed:	4e ee                	rex.WRX out %al,(%dx)
 10071ef:	51                   	push   %rcx
 10071f0:	11 4a af             	adc    %ecx,-0x51(%rdx)
 10071f3:	e8 e5 78 a8 da       	callq  0xffffffffdba8eadd
 10071f8:	be 8f 50 11 d9       	mov    $0xd911508f,%esi
 10071fd:	46 c8 f8 46 a0       	rex.RX enterq $0x46f8,$0xa0
 1007202:	a0 76 78 a3 23 44 e3 	movabs 0x322e34423a37876,%al
 1007209:	22 03 
 100720b:	ab                   	stos   %eax,%es:(%rdi)
 100720c:	a8 83                	test   $0x83,%al
 100720e:	b4 85                	mov    $0x85,%ah
 1007210:	ca 19 fd             	lret   $0xfd19
 1007213:	0b 4c 15 44          	or     0x44(%rbp,%rdx,1),%ecx
 1007217:	ec                   	in     (%dx),%al
 1007218:	45 60                	rex.RB (bad) 
 100721a:	04 84                	add    $0x84,%al
 100721c:	bd 26 88 0a 25       	mov    $0x250a8826,%ebp
 1007221:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1007222:	54                   	push   %rsp
 1007223:	07                   	(bad)  
 1007224:	4a 30 28             	rex.WX xor %bpl,(%rax)
 1007227:	bd b1 62 37 99       	mov    $0x993762b1,%ebp
 100722c:	6e                   	outsb  %ds:(%rsi),(%dx)
 100722d:	e6 1a                	out    %al,$0x1a
 100722f:	2b 10                	sub    (%rax),%edx
 1007231:	bb 62 f6 59 ce       	mov    $0xce59f662,%ebx
 1007236:	db d0                	fcmovnbe %st(0),%st
 1007238:	2a d6                	sub    %dh,%dl
 100723a:	22 b8 cb 07 fb ab    	and    -0x5404f835(%rax),%bh
 1007240:	a9 03 7d 1f 5a       	test   $0x5a1f7d03,%eax
 1007245:	b8 ac f8 8d 3b       	mov    $0x3b8df8ac,%eax
 100724a:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 100724b:	00 f8                	add    %bh,%al
 100724d:	ac                   	lods   %ds:(%rsi),%al
 100724e:	3b 9d 04 d9 d0 5c    	cmp    0x5cd0d904(%rbp),%ebx
 1007254:	68 80 7a 3b c4       	pushq  $0xffffffffc43b7a80
 1007259:	de 5d 8b             	ficomps -0x75(%rbp)
 100725c:	31 79 30             	xor    %edi,0x30(%rcx)
 100725f:	a1 cc e5 2c 1a 15 43 	movabs 0x31ee43151a2ce5cc,%eax
 1007266:	ee 31 
 1007268:	e8 e7 66 4d 65       	callq  0x664dd954
 100726d:	94                   	xchg   %eax,%esp
 100726e:	86 f0                	xchg   %dh,%al
 1007270:	9e                   	sahf   
 1007271:	eb 06                	jmp    0x1007279
 1007273:	0b 2d 38 b2 4d cd    	or     -0x32b24dc8(%rip),%ebp        # 0xffffffffce4e24b1
 1007279:	09 c9                	or     %ecx,%ecx
 100727b:	45 d4                	rex.RB (bad) 
 100727d:	b5 86                	mov    $0x86,%ch
 100727f:	cd 22                	int    $0x22
 1007281:	84 dc                	test   %bl,%ah
 1007283:	7d 8d                	jge    0x1007212
 1007285:	46 cd 15             	rex.RX int $0x15
 1007288:	2e 5a                	cs pop %rdx
 100728a:	c7                   	(bad)  
 100728b:	2f                   	(bad)  
 100728c:	09 68 9f             	or     %ebp,-0x61(%rax)
 100728f:	8c ab 55 e8 6b d1    	mov    %gs,-0x2e9417ab(%rbx)
 1007295:	e2 7f                	loop   0x1007316
 1007297:	03 3d f0 3d 7d 38    	add    0x387d3df0(%rip),%edi        # 0x397db08d
 100729d:	ab                   	stos   %eax,%es:(%rdi)
 100729e:	64 b1 5a             	fs mov $0x5a,%cl
 10072a1:	43 02 35 49 6d 20 0c 	rex.XB add 0xc206d49(%rip),%sil        # 0xd20dff1
 10072a8:	3d 5f 6a 3c af       	cmp    $0xaf3c6a5f,%eax
 10072ad:	05 76 3e 4f e6       	add    $0xe64f3e76,%eax
 10072b2:	b4 98                	mov    $0x98,%ah
 10072b4:	49 86 04 2d 38 37 c2 	rex.WB xchg %al,0x3dc23738(,%rbp,1)
 10072bb:	3d 
 10072bc:	dd 5b e6             	fstpl  -0x1a(%rbx)
 10072bf:	91                   	xchg   %eax,%ecx
 10072c0:	6b 27 93             	imul   $0xffffff93,(%rdi),%esp
 10072c3:	86 c1                	xchg   %al,%cl
 10072c5:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 10072c6:	e6 26                	out    %al,$0x26
 10072c8:	2a 81 b4 6d cd 17    	sub    0x17cd6db4(%rcx),%al
 10072ce:	70 43                	jo     0x1007313
 10072d0:	58                   	pop    %rax
 10072d1:	d5                   	(bad)  
 10072d2:	d1 21                	shll   (%rcx)
 10072d4:	58                   	pop    %rax
 10072d5:	e8 11 63 fd 1c       	callq  0x1dfdd5eb
 10072da:	ef                   	out    %eax,(%dx)
 10072db:	6e                   	outsb  %ds:(%rsi),(%dx)
 10072dc:	e4 44                	in     $0x44,%al
 10072de:	4c 07                	rex.WR (bad) 
 10072e0:	95                   	xchg   %eax,%ebp
 10072e1:	63 0a                	movsxd (%rdx),%ecx
 10072e3:	4e 9f                	rex.WRX lahf 
 10072e5:	70 b1                	jo     0x1007298
 10072e7:	33 3c 0d a4 44 66 78 	xor    0x786644a4(,%rcx,1),%edi
 10072ee:	86 cb                	xchg   %cl,%bl
 10072f0:	54                   	push   %rsp
 10072f1:	77 03                	ja     0x10072f6
 10072f3:	54                   	push   %rsp
 10072f4:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 10072f5:	b0 0f                	mov    $0xf,%al
 10072f7:	03 00                	add    (%rax),%eax
 10072f9:	30 35 ca 58 fd 18    	xor    %dh,0x18fd58ca(%rip)        # 0x19fdcbc9
 10072ff:	fc                   	cld    
 1007300:	bf 1f 55 4b 53       	mov    $0x534b551f,%edi
 1007305:	96                   	xchg   %eax,%esi
 1007306:	11 68 16             	adc    %ebp,0x16(%rax)
 1007309:	24 d0                	and    $0xd0,%al
 100730b:	09 33                	or     %esi,(%rbx)
 100730d:	80 be ab 10 e3 d9 c2 	cmpb   $0xc2,-0x261cef55(%rsi)
 1007314:	9d                   	popfq  
 1007315:	3f                   	(bad)  
 1007316:	26 e2 02             	es loop 0x100731b
 1007319:	d0 f3                	shl    %bl
 100731b:	7b be                	jnp    0x10072db
 100731d:	5f                   	pop    %rdi
 100731e:	18 e1                	sbb    %ah,%cl
 1007320:	ca e4 38             	lret   $0x38e4
 1007323:	0b 2d 84 cf d9 43    	or     0x43d9cf84(%rip),%ebp        # 0x44da42ad
 1007329:	ba 5d 70 59 70       	mov    $0x7059705d,%edx
 100732e:	ee                   	out    %al,(%dx)
 100732f:	6b 22 8f             	imul   $0xffffff8f,(%rdx),%esp
 1007332:	d4                   	(bad)  
 1007333:	f1                   	icebp  
 1007334:	4e 5e                	rex.WRX pop %rsi
 1007336:	2e 56                	cs push %rsi
 1007338:	1b 6a 56             	sbb    0x56(%rdx),%ebp
 100733b:	f9                   	stc    
 100733c:	92                   	xchg   %eax,%edx
 100733d:	7d 55                	jge    0x1007394
 100733f:	83 4f 80 03          	orl    $0x3,-0x80(%rdi)
 1007343:	97                   	xchg   %eax,%edi
 1007344:	c4 c3 0e e0          	(bad)
 1007348:	19 1f                	sbb    %ebx,(%rdi)
 100734a:	ef                   	out    %eax,(%dx)
 100734b:	65 37                	gs (bad) 
 100734d:	10 2f                	adc    %ch,(%rdi)
 100734f:	0a 29                	or     (%rcx),%ch
 1007351:	53                   	push   %rbx
 1007352:	57                   	push   %rdi
 1007353:	ed                   	in     (%dx),%eax
 1007354:	01 52 ef             	add    %edx,-0x11(%rdx)
 1007357:	7e b5                	jle    0x100730e
 1007359:	76 4c                	jbe    0x10073a7
 100735b:	db 88 6d 3f 4f ec    	fisttpl -0x13b0c093(%rax)
 1007361:	59                   	pop    %rcx
 1007362:	3d dc 5c 76 d0       	cmp    $0xd0765cdc,%eax
 1007367:	56                   	push   %rsi
 1007368:	1a 0e                	sbb    (%rsi),%cl
 100736a:	0d 34 02 a3 84       	or     $0x84a30234,%eax
 100736f:	49 39 98 66 5a ec 23 	cmp    %rbx,0x23ec5a66(%r8)
 1007376:	ee                   	out    %al,(%dx)
 1007377:	be 38 d8 d9 1e       	mov    $0x1ed9d838,%esi
 100737c:	06                   	(bad)  
 100737d:	ef                   	out    %eax,(%dx)
 100737e:	d0 19                	rcrb   (%rcx)
 1007380:	e4 9e                	in     $0x9e,%al
 1007382:	5c                   	pop    %rsp
 1007383:	4a 88 8f 6d ad fd 7f 	rex.WX mov %cl,0x7ffdad6d(%rdi)
 100738a:	2a 3a                	sub    (%rdx),%bh
 100738c:	f4                   	hlt    
 100738d:	cd 5b                	int    $0x5b
 100738f:	3d 70 12 9c 27       	cmp    $0x279c1270,%eax
 1007394:	6e                   	outsb  %ds:(%rsi),(%dx)
 1007395:	12 a9 d8 ff c6 88    	adc    -0x77390028(%rcx),%ch
 100739b:	2a 54 b1 73          	sub    0x73(%rcx,%rsi,4),%dl
 100739f:	aa                   	stos   %al,%es:(%rdi)
 10073a0:	03 16                	add    (%rsi),%edx
 10073a2:	37                   	(bad)  
 10073a3:	19 71 7a             	sbb    %esi,0x7a(%rcx)
 10073a6:	0c fe                	or     $0xfe,%al
 10073a8:	f3 62                	repz (bad) 
 10073aa:	ef                   	out    %eax,(%dx)
 10073ab:	c5 f6 c2 db 61       	vcmpss $0x61,%xmm3,%xmm1,%xmm3
 10073b0:	08 ee                	or     %ch,%dh
 10073b2:	3e ed                	ds in  (%dx),%eax
 10073b4:	34 47                	xor    $0x47,%al
 10073b6:	8a 07                	mov    (%rdi),%al
 10073b8:	b7 6c                	mov    $0x6c,%bh
 10073ba:	77 30                	ja     0x10073ec
 10073bc:	09 62 d0             	or     %esp,-0x30(%rdx)
 10073bf:	73 f8                	jae    0x10073b9
 10073c1:	db 5d e8             	fistpl -0x18(%rbp)
 10073c4:	99                   	cltd   
 10073c5:	48 68 c2 2b b7 bc    	rex.W pushq $0xffffffffbcb72bc2
 10073cb:	e2 31                	loop   0x10073fe
 10073cd:	0b 36                	or     (%rsi),%esi
 10073cf:	65 b7 c6             	gs mov $0xc6,%bh
 10073d2:	db 96 8c d8 b3 6c    	fistl  0x6cb3d88c(%rsi)
 10073d8:	17                   	(bad)  
 10073d9:	7c 3e                	jl     0x1007419
 10073db:	7e c4                	jle    0x10073a1
 10073dd:	f3 0d 03 ab c1 cb    	repz or $0xcbc1ab03,%eax
 10073e3:	31 a3 7e 6a d0 e2    	xor    %esp,-0x1d2f9582(%rbx)
 10073e9:	4f d8 54 ac 31       	rex.WRXB fcoms 0x31(%r12,%r13,4)
 10073ee:	d8 20                	fsubs  (%rax)
 10073f0:	90                   	nop
 10073f1:	ad                   	lods   %ds:(%rsi),%eax
 10073f2:	d1 9e cd 7f 6e 15    	rcrl   0x156e7fcd(%rsi)
 10073f8:	02 24 7d 99 5c 4e 17 	add    0x174e5c99(,%rdi,2),%ah
 10073ff:	0b 77 60             	or     0x60(%rdi),%esi
 1007402:	20 b8 41 b6 07 57    	and    %bh,0x5707b641(%rax)
 1007408:	3d 65 77 14 72       	cmp    $0x72147765,%eax
 100740d:	71 8f                	jno    0x100739e
 100740f:	fe                   	(bad)  
 1007410:	95                   	xchg   %eax,%ebp
 1007411:	7d 8b                	jge    0x100739e
 1007413:	b7 e5                	mov    $0xe5,%bh
 1007415:	4a 2a bb d1 d3 77 42 	rex.WX sub 0x4277d3d1(%rbx),%dil
 100741c:	ca e4 e5             	lret   $0xe5e4
 100741f:	1d dd 6b 41 54       	sbb    $0x54416bdd,%eax
 1007424:	47                   	rex.RXB
 1007425:	64 79 59             	fs jns 0x1007481
 1007428:	7e 53                	jle    0x100747d
 100742a:	5a                   	pop    %rdx
 100742b:	62                   	(bad)  
 100742c:	ad                   	lods   %ds:(%rsi),%eax
 100742d:	bc 2c f8 81 4e       	mov    $0x4e81f82c,%esp
 1007432:	ab                   	stos   %eax,%es:(%rdi)
 1007433:	20 e9                	and    %ch,%cl
 1007435:	87 4b e5             	xchg   %ecx,-0x1b(%rbx)
 1007438:	c8 5a 79 bc          	enterq $0x795a,$0xbc
 100743c:	71 d0                	jno    0x100740e
 100743e:	38 c5                	cmp    %al,%ch
 1007440:	5f                   	pop    %rdi
 1007441:	5e                   	pop    %rsi
 1007442:	fa                   	cli    
 1007443:	d9 8d 78 23 0f 01    	(bad)  0x10f2378(%rbp)
 1007449:	01 e2                	add    %esp,%edx
 100744b:	5a                   	pop    %rdx
 100744c:	20 f9                	and    %bh,%cl
 100744e:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 100744f:	8d 8c 6a 0d e4 c0 37 	lea    0x37c0e40d(%rdx,%rbp,2),%ecx
 1007456:	47 ac                	rex.RXB lods %ds:(%rsi),%al
 1007458:	d5                   	(bad)  
 1007459:	b4 67                	mov    $0x67,%ah
 100745b:	5a                   	pop    %rdx
 100745c:	c9                   	leaveq 
 100745d:	4e 35 ea 93 44 ef    	rex.WRX xor $0xffffffffef4493ea,%rax
 1007463:	66 8b 44 31 f6       	mov    -0xa(%rcx,%rsi,1),%ax
 1007468:	ed                   	in     (%dx),%eax
 1007469:	84 79 53             	test   %bh,0x53(%rcx)
 100746c:	7c ee                	jl     0x100745c
 100746e:	1a 93 3e 34 79 52    	sbb    0x5279343e(%rbx),%dl
 1007474:	7b 87                	jnp    0x10073fd
 1007476:	51                   	push   %rcx
 1007477:	91                   	xchg   %eax,%ecx
 1007478:	6b 4a a8 cc          	imul   $0xffffffcc,-0x58(%rdx),%ecx
 100747c:	cd 78                	int    $0x78
 100747e:	96                   	xchg   %eax,%esi
 100747f:	dd 1c 80             	fstpl  (%rax,%rax,4)
 1007482:	e6 bb                	out    %al,$0xbb
 1007484:	d6                   	(bad)  
 1007485:	ba 3d ac 2b 3f       	mov    $0x3f2bac3d,%edx
 100748a:	49 35 cf a0 05 5b    	rex.WB xor $0x5b05a0cf,%rax
 1007490:	eb d3                	jmp    0x1007465
 1007492:	d7                   	xlat   %ds:(%rbx)
 1007493:	37                   	(bad)  
 1007494:	79 aa                	jns    0x1007440
 1007496:	e8 22 51 88 93       	callq  0xffffffff9488c5bd
 100749b:	61                   	(bad)  
 100749c:	62 a1 4d 59 6d       	(bad)
 10074a1:	b8 84 f2 f6 6a       	mov    $0x6af6f284,%eax
 10074a6:	4e 97                	rex.WRX xchg %rax,%rdi
 10074a8:	9d                   	popfq  
 10074a9:	f2 e7 21             	repnz out %eax,$0x21
 10074ac:	a1 d1 4d 6f a8 34 a1 	movabs 0x31d0a134a86f4dd1,%eax
 10074b3:	d0 31 
 10074b5:	30 29                	xor    %ch,(%rcx)
 10074b7:	fa                   	cli    
 10074b8:	c0 bc 2c 99 56 c8 cc 	sarb   $0x1b,-0x3337a967(%rsp,%rbp,1)
 10074bf:	1b 
 10074c0:	c4                   	(bad)  
 10074c1:	e0 a6                	loopne 0x1007469
 10074c3:	d1 31                	shll   (%rcx)
 10074c5:	d8 56 14             	fcoms  0x14(%rsi)
 10074c8:	da 24 59             	fisubl (%rcx,%rbx,2)
 10074cb:	7a b3                	jp     0x1007480
 10074cd:	ef                   	out    %eax,(%dx)
 10074ce:	aa                   	stos   %al,%es:(%rdi)
 10074cf:	7b c6                	jnp    0x1007497
 10074d1:	f0 ed                	lock in (%dx),%eax
 10074d3:	92                   	xchg   %eax,%edx
 10074d4:	0c dc                	or     $0xdc,%al
 10074d6:	c4                   	(bad)  
 10074d7:	c9                   	leaveq 
 10074d8:	1d 2d 73 8b f8       	sbb    $0xf88b732d,%eax
 10074dd:	33 34 03             	xor    (%rbx,%rax,1),%esi
 10074e0:	5f                   	pop    %rdi
 10074e1:	4d                   	rex.WRB
 10074e2:	44 bb 33 5f ae 2f    	rex.R mov $0x2fae5f33,%ebx
 10074e8:	eb b0                	jmp    0x100749a
 10074ea:	dd 5d 33             	fstpl  0x33(%rbp)
 10074ed:	eb ed                	jmp    0x10074dc
 10074ef:	02 d0                	add    %al,%dl
 10074f1:	19 82 e3 30 be 4a    	sbb    %eax,0x4abe30e3(%rdx)
 10074f7:	85 a6 96 80 25 e7    	test   %esp,-0x18da7f6a(%rsi)
 10074fd:	76 aa                	jbe    0x10074a9
 10074ff:	0e                   	(bad)  
 1007500:	fe                   	(bad)  
 1007501:	2e 74 2e             	je,pn  0x1007532
 1007504:	34 80                	xor    $0x80,%al
 1007506:	fd                   	std    
 1007507:	5f                   	pop    %rdi
 1007508:	5f                   	pop    %rdi
 1007509:	40 7d 8d             	rex jge 0x1007499
 100750c:	1b 88 85 f8 1d 85    	sbb    -0x7ae2077b(%rax),%ecx
 1007512:	e8 cf ca cf c9       	callq  0xffffffffcad03fe6
 1007517:	a9 cc 52 15 2a       	test   $0x2a1552cc,%eax
 100751c:	22 e2                	and    %dl,%ah
 100751e:	73 ae                	jae    0x10074ce
 1007520:	46                   	rex.RX
 1007521:	40 88 5c 8c 71       	mov    %bl,0x71(%rsp,%rcx,4)
 1007526:	2f                   	(bad)  
 1007527:	69 ce de 7f ef 30    	imul   $0x30ef7fde,%esi,%ecx
 100752d:	7a 07                	jp     0x1007536
 100752f:	df d0                	(bad)  
 1007531:	9f                   	lahf   
 1007532:	97                   	xchg   %eax,%edi
 1007533:	46 a9 cf 2b 48 ab    	rex.RX test $0xab482bcf,%eax
 1007539:	bd 94 7b 57 af       	mov    $0xaf577b94,%ebp
 100753e:	b3 1a                	mov    $0x1a,%bl
 1007540:	fc                   	cld    
 1007541:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1007542:	47 71 50             	rex.RXB jno 0x1007595
 1007545:	2e 41 f6 7d 44       	idivb  %cs:0x44(%r13)
 100754a:	47 ea                	rex.RXB (bad) 
 100754c:	4c 91                	rex.WR xchg %rax,%rcx
 100754e:	fb                   	sti    
 100754f:	7a eb                	jp     0x100753c
 1007551:	09 04 93             	or     %eax,(%rbx,%rdx,4)
 1007554:	05 ab 1f 29 fb       	add    $0xfb291fab,%eax
 1007559:	d6                   	(bad)  
 100755a:	cd 23                	int    $0x23
 100755c:	37                   	(bad)  
 100755d:	e4 57                	in     $0x57,%al
 100755f:	af                   	scas   %es:(%rdi),%eax
 1007560:	a3 97 cf 5c 95 6a 70 	movabs %eax,0x64b4706a955ccf97
 1007567:	b4 64 
 1007569:	ee                   	out    %al,(%dx)
 100756a:	1d d1 86 04 49       	sbb    $0x490486d1,%eax
 100756f:	b7 5a                	mov    $0x5a,%bh
 1007571:	bd fa d6 b3 21       	mov    $0x21b3d6fa,%ebp
 1007576:	d0 c9                	ror    %cl
 1007578:	67 6c                	insb   (%dx),%es:(%edi)
 100757a:	fc                   	cld    
 100757b:	3d 57 56 44 77       	cmp    $0x77445657,%eax
 1007580:	26 df f3             	es fcomip %st(3),%st
 1007583:	2b be 9a 79 c9 a5    	sub    -0x5a368666(%rsi),%edi
 1007589:	19 89 87 7a ea 85    	sbb    %ecx,-0x7a158579(%rcx)
 100758f:	09 f6                	or     %esi,%esi
 1007591:	dc 2b                	fsubrl (%rbx)
 1007593:	66 f8                	data16 clc 
 1007595:	79 a6                	jns    0x100753d
 1007597:	fa                   	cli    
 1007598:	dc c4                	fadd   %st,%st(4)
 100759a:	52                   	push   %rdx
 100759b:	c6                   	(bad)  
 100759c:	e3 ae                	jrcxz  0x100754c
 100759e:	e0 12                	loopne 0x10075b2
 10075a0:	61                   	(bad)  
 10075a1:	55                   	push   %rbp
 10075a2:	6b 2e cb             	imul   $0xffffffcb,(%rsi),%ebp
 10075a5:	8a 6b 74             	mov    0x74(%rbx),%ch
 10075a8:	fa                   	cli    
 10075a9:	4d 7d b3             	rex.WRB jge 0x100755f
 10075ac:	4c bd a0 89 70 ce 16 	rex.WR movabs $0xc2df2b16ce7089a0,%rbp
 10075b3:	2b df c2 
 10075b6:	4b ce                	rex.WXB (bad) 
 10075b8:	b9 a0 8d 61 27       	mov    $0x27618da0,%ecx
 10075bd:	95                   	xchg   %eax,%ebp
 10075be:	c6                   	(bad)  
 10075bf:	9f                   	lahf   
 10075c0:	1a ac 94 e2 a9 a0 60 	sbb    0x60a0a9e2(%rsp,%rdx,4),%ch
 10075c7:	f4                   	hlt    
 10075c8:	f7 dd                	neg    %ebp
 10075ca:	07                   	(bad)  
 10075cb:	32 53 a1             	xor    -0x5f(%rbx),%dl
 10075ce:	99                   	cltd   
 10075cf:	3a fd                	cmp    %ch,%bh
 10075d1:	dd d2                	fst    %st(2)
 10075d3:	02 85 c4 c2 e1 be    	add    -0x411e3d3c(%rbp),%al
 10075d9:	69 2e 57 f8 7b 82    	imul   $0x827bf857,(%rsi),%ebp
 10075df:	99                   	cltd   
 10075e0:	01 e0                	add    %esp,%eax
 10075e2:	9c                   	pushfq 
 10075e3:	f1                   	icebp  
 10075e4:	ad                   	lods   %ds:(%rsi),%eax
 10075e5:	26 f6 d8             	es neg %al
 10075e8:	44 f7 a3 6a a4 6e 11 	rex.R mull 0x116ea46a(%rbx)
 10075ef:	57                   	push   %rdi
 10075f0:	56                   	push   %rsi
 10075f1:	02 48 a3             	add    -0x5d(%rax),%cl
 10075f4:	9f                   	lahf   
 10075f5:	18 41 7c             	sbb    %al,0x7c(%rcx)
 10075f8:	64 82                	fs (bad) 
 10075fa:	8a a5 bc 8b 7d 30    	mov    0x307d8bbc(%rbp),%ah
 1007600:	28 51 06             	sub    %dl,0x6(%rcx)
 1007603:	45 3c b3             	rex.RB cmp $0xb3,%al
 1007606:	10 38                	adc    %bh,(%rax)
 1007608:	4e cb                	rex.WRX lretq 
 100760a:	61                   	(bad)  
 100760b:	ef                   	out    %eax,(%dx)
 100760c:	d0 c3                	rol    %bl
 100760e:	34 2e                	xor    $0x2e,%al
 1007610:	98                   	cwtl   
 1007611:	bb a7 98 5a da       	mov    $0xda5a98a7,%ebx
 1007616:	de 8d 54 03 3e f7    	fimuls -0x8c1fcac(%rbp)
 100761c:	9e                   	sahf   
 100761d:	50                   	push   %rax
 100761e:	4b 5f                	rex.WXB pop %r15
 1007620:	85 1e                	test   %ebx,(%rsi)
 1007622:	64 f0 32 af 4e 4e 93 	lock xor %fs:0x54934e4e(%rdi),%ch
 1007629:	54 
 100762a:	83 86 40 ac b3 93 1e 	addl   $0x1e,-0x6c4c53c0(%rsi)
 1007631:	8a a0 5b f4 f3 32    	mov    0x32f3f45b(%rax),%ah
 1007637:	b5 e5                	mov    $0xe5,%ch
 1007639:	9e                   	sahf   
 100763a:	57                   	push   %rdi
 100763b:	31 f8                	xor    %edi,%eax
 100763d:	4e 5a                	rex.WRX pop %rdx
 100763f:	ff a3 ab 51 44 44    	jmpq   *0x444451ab(%rbx)
 1007645:	ed                   	in     (%dx),%eax
 1007646:	00 1a                	add    %bl,(%rdx)
 1007648:	97                   	xchg   %eax,%edi
 1007649:	3f                   	(bad)  
 100764a:	d1 ec                	shr    %esp
 100764c:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 100764d:	60                   	(bad)  
 100764e:	92                   	xchg   %eax,%edx
 100764f:	bf 09 da ee 56       	mov    $0x56eeda09,%edi
 1007654:	b7 09                	mov    $0x9,%bh
 1007656:	e9 90 bd 0b 3f       	jmpq   0x400c33eb
 100765b:	ff c0                	inc    %eax
 100765d:	24 0e                	and    $0xe,%al
 100765f:	7c c8                	jl     0x1007629
 1007661:	da 7f a3             	fidivrl -0x5d(%rdi)
 1007664:	f2 a5                	repnz movsl %ds:(%rsi),%es:(%rdi)
 1007666:	4b f4                	rex.WXB hlt 
 1007668:	48 f8                	rex.W clc 
 100766a:	52                   	push   %rdx
 100766b:	6e                   	outsb  %ds:(%rsi),(%dx)
 100766c:	c4                   	(bad)  
 100766d:	85 22                	test   %esp,(%rdx)
 100766f:	fe                   	(bad)  
 1007670:	7e 6d                	jle    0x10076df
 1007672:	d7                   	xlat   %ds:(%rbx)
 1007673:	8d 40 0c             	lea    0xc(%rax),%eax
 1007676:	ff a1 66 5a 58 69    	jmpq   *0x69585a66(%rcx)
 100767c:	ea                   	(bad)  
 100767d:	70 3c                	jo     0x10076bb
 100767f:	71 e7                	jno    0x1007668
 1007681:	b9 51 5b 03 5e       	mov    $0x5e035b51,%ecx
 1007686:	22 d6                	and    %dh,%dl
 1007688:	6b 9a 85 e5 a6 60 e8 	imul   $0xffffffe8,0x60a6e585(%rdx),%ebx
 100768f:	56                   	push   %rsi
 1007690:	88 b1 eb 92 b3 9f    	mov    %dh,-0x604c6d15(%rcx)
 1007696:	02 13                	add    (%rbx),%dl
 1007698:	31 ed                	xor    %ebp,%ebp
 100769a:	7a 93                	jp     0x100762f
 100769c:	c7                   	(bad)  
 100769d:	69 bc dc 0e a7 f2 2c 	imul   $0x6d6f8b91,0x2cf2a70e(%rsp,%rbx,8),%edi
 10076a4:	91 8b 6f 6d 
 10076a8:	2c 48                	sub    $0x48,%al
 10076aa:	02 cc                	add    %ah,%cl
 10076ac:	75 7b                	jne    0x1007729
 10076ae:	88 e1                	mov    %ah,%cl
 10076b0:	7b 53                	jnp    0x1007705
 10076b2:	a8 b0                	test   $0xb0,%al
 10076b4:	62 52                	(bad)  
 10076b6:	18 dd                	sbb    %bl,%ch
 10076b8:	47 70 f4             	rex.RXB jo 0x10076af
 10076bb:	e1 0a                	loope  0x10076c7
 10076bd:	26 1a 54 63 62       	sbb    %es:0x62(%rbx,%riz,2),%dl
 10076c2:	ae                   	scas   %es:(%rdi),%al
 10076c3:	5b                   	pop    %rbx
 10076c4:	b4 50                	mov    $0x50,%ah
 10076c6:	31 e6                	xor    %esp,%esi
 10076c8:	68 0c 5c dc f2       	pushq  $0xfffffffff2dc5c0c
 10076cd:	9c                   	pushfq 
 10076ce:	c3                   	retq   
 10076cf:	4c                   	rex.WR
 10076d0:	4c 32 01             	rex.WR xor (%rcx),%r8b
 10076d3:	3b 72 78             	cmp    0x78(%rdx),%esi
 10076d6:	b6 66                	mov    $0x66,%dh
 10076d8:	2e b4 3d             	cs mov $0x3d,%ah
 10076db:	ed                   	in     (%dx),%eax
 10076dc:	c5 bc e3             	(bad)
 10076df:	67 3d 6d 0b 11 e4    	addr32 cmp $0xe4110b6d,%eax
 10076e5:	ee                   	out    %al,(%dx)
 10076e6:	cc                   	int3   
 10076e7:	7c b5                	jl     0x100769e
 10076e9:	c0 46 2d 23          	rolb   $0x23,0x2d(%rsi)
 10076ed:	23 32                	and    (%rdx),%esi
 10076ef:	d3 62 64             	shll   %cl,0x64(%rdx)
 10076f2:	c8 0b 36 2f          	enterq $0x360b,$0x2f
 10076f6:	15 e3 85 65 d1       	adc    $0xd16585e3,%eax
 10076fb:	b7 9e                	mov    $0x9e,%bh
 10076fd:	09 01                	or     %eax,(%rcx)
 10076ff:	16                   	(bad)  
 1007700:	b8 32 49 b6 4a       	mov    $0x4ab64932,%eax
 1007705:	90                   	nop
 1007706:	f8                   	clc    
 1007707:	1b 48 01             	sbb    0x1(%rax),%ecx
 100770a:	5a                   	pop    %rdx
 100770b:	5e                   	pop    %rsi
 100770c:	79 c7                	jns    0x10076d5
 100770e:	3c b3                	cmp    $0xb3,%al
 1007710:	28 25 f3 11 17 94    	sub    %ah,-0x6be8ee0d(%rip)        # 0xffffffff95178909
 1007716:	f9                   	stc    
 1007717:	14 89                	adc    $0x89,%al
 1007719:	f0 7a b0             	lock jp 0x10076cc
 100771c:	94                   	xchg   %eax,%esp
 100771d:	52                   	push   %rdx
 100771e:	f3 ef                	repz out %eax,(%dx)
 1007720:	3d e6 73 2a 55       	cmp    $0x552a73e6,%eax
 1007725:	63 d2                	movsxd %edx,%edx
 1007727:	84 a8 4c 22 dd 0f    	test   %ch,0xfdd224c(%rax)
 100772d:	9c                   	pushfq 
 100772e:	22 7f 5e             	and    0x5e(%rdi),%bh
 1007731:	de 2b                	fisubrs (%rbx)
 1007733:	07                   	(bad)  
 1007734:	7b 26                	jnp    0x100775c
 1007736:	e3 d5                	jrcxz  0x100770d
 1007738:	85 7b 1b             	test   %edi,0x1b(%rbx)
 100773b:	f4                   	hlt    
 100773c:	b5 fc                	mov    $0xfc,%ch
 100773e:	de 07                	fiadds (%rdi)
 1007740:	ec                   	in     (%dx),%al
 1007741:	3e 65 07             	ds gs (bad) 
 1007744:	b0 7b                	mov    $0x7b,%al
 1007746:	68 be 7f a3 3a       	pushq  $0x3aa37fbe
 100774b:	ef                   	out    %eax,(%dx)
 100774c:	14 45                	adc    $0x45,%al
 100774e:	a3 a9 c8 c1 83 c9 68 	movabs %eax,0x733c68c983c1c8a9
 1007755:	3c 73 
 1007757:	c3                   	retq   
 1007758:	2a 95 9b db ff 0a    	sub    0xaffdb9b(%rbp),%dl
 100775e:	8a a1 38 49 53 95    	mov    -0x6aacb6c8(%rcx),%ah
 1007764:	80 0b 6b             	orb    $0x6b,(%rbx)
 1007767:	4f 93                	rex.WRXB xchg %rax,%r11
 1007769:	3b 80 24 31 b0 37    	cmp    0x37b03124(%rax),%eax
 100776f:	3d 23 2a ef e7       	cmp    $0xe7ef2a23,%eax
 1007774:	7b 47                	jnp    0x10077bd
 1007776:	3a e4                	cmp    %ah,%ah
 1007778:	13 95 42 0d fb 9a    	adc    -0x6504f2be(%rbp),%edx
 100777e:	cf                   	iret   
 100777f:	04 de                	add    $0xde,%al
 1007781:	ff 82 84 51 df 85    	incl   -0x7a20ae7c(%rdx)
 1007787:	8c 04 4d 30 3c 73 8b 	mov    %es,-0x748cc3d0(,%rcx,2)
 100778e:	f6 f7                	div    %bh
 1007790:	7b 73                	jnp    0x1007805
 1007792:	29 7f 6d             	sub    %edi,0x6d(%rdi)
 1007795:	80 4a 2b 69          	orb    $0x69,0x2b(%rdx)
 1007799:	ec                   	in     (%dx),%al
 100779a:	d1 3c ae             	sarl   (%rsi,%rbp,4)
 100779d:	22 2c ea             	and    (%rdx,%rbp,8),%ch
 10077a0:	a1 86 4e ca 91 3d 74 	movabs 0x4feb743d91ca4e86,%eax
 10077a7:	eb 4f 
 10077a9:	ca 10 8d             	lret   $0x8d10
 10077ac:	41 24 9a             	rex.B and $0x9a,%al
 10077af:	23 fc                	and    %esp,%edi
 10077b1:	1e                   	(bad)  
 10077b2:	7b 60                	jnp    0x1007814
 10077b4:	74 2a                	je     0x10077e0
 10077b6:	22 b1 9f 0c cc 72    	and    0x72cc0c9f(%rcx),%dh
 10077bc:	e6 56                	out    %al,$0x56
 10077be:	05 7b 8f da a9       	add    $0xa9da8f7b,%eax
 10077c3:	fc                   	cld    
 10077c4:	d0 79 11             	sarb   0x11(%rcx)
 10077c7:	1d b9 53 b9 72       	sbb    $0x72b953b9,%eax
 10077cc:	96                   	xchg   %eax,%esi
 10077cd:	aa                   	stos   %al,%es:(%rdi)
 10077ce:	4a 7e 99             	rex.WX jle 0x100776a
 10077d1:	b7 15                	mov    $0x15,%bh
 10077d3:	1a fa                	sbb    %dl,%bh
 10077d5:	4a                   	rex.WX
 10077d6:	4e 92                	rex.WRX xchg %rax,%rdx
 10077d8:	43 d9 b2 fb 1f df 1f 	rex.XB fnstenv 0x1fdf1ffb(%r10)
 10077df:	77 0d                	ja     0x10077ee
 10077e1:	47 93                	rex.RXB xchg %eax,%r11d
 10077e3:	80 0c be 63          	orb    $0x63,(%rsi,%rdi,4)
 10077e7:	71 07                	jno    0x10077f0
 10077e9:	3c c8                	cmp    $0xc8,%al
 10077eb:	22 19                	and    (%rcx),%bl
 10077ed:	c9                   	leaveq 
 10077ee:	84 e5                	test   %ah,%ch
 10077f0:	4b fa                	rex.WXB cli 
 10077f2:	11 cd                	adc    %ecx,%ebp
 10077f4:	e7 b2                	out    %eax,$0xb2
 10077f6:	46 2c 25             	rex.RX sub $0x25,%al
 10077f9:	7e 4f                	jle    0x100784a
 10077fb:	9b                   	fwait
 10077fc:	ea                   	(bad)  
 10077fd:	2f                   	(bad)  
 10077fe:	19 c0                	sbb    %eax,%eax
 1007800:	e8 eb 85 ab d1       	callq  0xffffffffd2abfdf0
 1007805:	f9                   	stc    
 1007806:	9e                   	sahf   
 1007807:	cf                   	iret   
 1007808:	21 3e                	and    %edi,(%rsi)
 100780a:	57                   	push   %rdi
 100780b:	11 e6                	adc    %esp,%esi
 100780d:	ca cd ab             	lret   $0xabcd
 1007810:	8c 6e c4             	mov    %gs,-0x3c(%rsi)
 1007813:	fa                   	cli    
 1007814:	12 13                	adc    (%rbx),%dl
 1007816:	2e 4f 82             	cs rex.WRXB (bad) 
 1007819:	5f                   	pop    %rdi
 100781a:	c8 fa fc 46          	enterq $0xfcfa,$0x46
 100781e:	d0 dd                	rcr    %ch
 1007820:	39 59 b5             	cmp    %ebx,-0x4b(%rcx)
 1007823:	16                   	(bad)  
 1007824:	e4 02                	in     $0x2,%al
 1007826:	71 a1                	jno    0x10077c9
 1007828:	79 db                	jns    0x1007805
 100782a:	4c 80 96 fd 08 d3 03 	rex.WR adcb $0x20,0x3d308fd(%rsi)
 1007831:	20 
 1007832:	e9 e2 04 93 54       	jmpq   0x55937d19
 1007837:	54                   	push   %rsp
 1007838:	0d 44 96 c3 fa       	or     $0xfac39644,%eax
 100783d:	57                   	push   %rdi
 100783e:	74 dd                	je     0x100781d
 1007840:	21 22                	and    %esp,(%rdx)
 1007842:	f2 57                	repnz push %rdi
 1007844:	1a e0                	sbb    %al,%ah
 1007846:	85 3c ce             	test   %edi,(%rsi,%rcx,8)
 1007849:	55                   	push   %rbp
 100784a:	7c 78                	jl     0x10078c4
 100784c:	64 16                	fs (bad) 
 100784e:	05 32 ad 56 44       	add    $0x4456ad32,%eax
 1007853:	4e 3b 3b             	rex.WRX cmp (%rbx),%r15
 1007856:	61                   	(bad)  
 1007857:	ee                   	out    %al,(%dx)
 1007858:	70 60                	jo     0x10078ba
 100785a:	64 35 2f 18 c6 ae    	fs xor $0xaec6182f,%eax
 1007860:	e9 fa 23 88 7e       	jmpq   0x7f889c5f
 1007865:	85 40 c4             	test   %eax,-0x3c(%rax)
 1007868:	7e 2c                	jle    0x1007896
 100786a:	75 b5                	jne    0x1007821
 100786c:	6a 56                	pushq  $0x56
 100786e:	dc 64 da a1          	fsubl  -0x5f(%rdx,%rbx,8)
 1007872:	ae                   	scas   %es:(%rdi),%al
 1007873:	7c 2f                	jl     0x10078a4
 1007875:	8f                   	(bad)  
 1007876:	1e                   	(bad)  
 1007877:	23 46 2a             	and    0x2a(%rsi),%eax
 100787a:	c5 eb fb             	(bad)
 100787d:	b0 d3                	mov    $0xd3,%al
 100787f:	44 6d                	rex.R insl (%dx),%es:(%rdi)
 1007881:	cb                   	lret   
 1007882:	fd                   	std    
 1007883:	26 a6                	cmpsb  %es:(%rdi),%es:(%rsi)
 1007885:	6d                   	insl   (%dx),%es:(%rdi)
 1007886:	58                   	pop    %rax
 1007887:	3f                   	(bad)  
 1007888:	e5 64                	in     $0x64,%eax
 100788a:	2d 16 13 a8 75       	sub    $0x75a81316,%eax
 100788f:	23 dc                	and    %esp,%ebx
 1007891:	e7 4c                	out    %eax,$0x4c
 1007893:	e2 e8                	loop   0x100787d
 1007895:	22 52 5d             	and    0x5d(%rdx),%dl
 1007898:	82                   	(bad)  
 1007899:	98                   	cwtl   
 100789a:	04 62                	add    $0x62,%al
 100789c:	f4                   	hlt    
 100789d:	29 8c 17 36 24 6b 41 	sub    %ecx,0x416b2436(%rdi,%rdx,1)
 10078a4:	19 ba 30 1c dc 4f    	sbb    %edi,0x4fdc1c30(%rdx)
 10078aa:	bb b8 6d 4e c2       	mov    $0xc24e6db8,%ebx
 10078af:	99                   	cltd   
 10078b0:	37                   	(bad)  
 10078b1:	c0 10 0e             	rclb   $0xe,(%rax)
 10078b4:	81 6e 22 1a c0 b1 ec 	subl   $0xecb1c01a,0x22(%rsi)
 10078bb:	94                   	xchg   %eax,%esp
 10078bc:	89 27                	mov    %esp,(%rdi)
 10078be:	a1 a9 cf a7 58 60 5c 	movabs 0xaa575c6058a7cfa9,%eax
 10078c5:	57 aa 
 10078c7:	6e                   	outsb  %ds:(%rsi),(%dx)
 10078c8:	db 40 4b             	fildl  0x4b(%rax)
 10078cb:	fb                   	sti    
 10078cc:	e7 32                	out    %eax,$0x32
 10078ce:	4a 98                	rex.WX cltq 
 10078d0:	5b                   	pop    %rbx
 10078d1:	82                   	(bad)  
 10078d2:	b7 1e                	mov    $0x1e,%bh
 10078d4:	85 9c 5f 64 31 d5 4f 	test   %ebx,0x4fd53164(%rdi,%rbx,2)
 10078db:	a2 f6 2e 9d 26 8b 93 	movabs %al,0xf0ed938b269d2ef6
 10078e2:	ed f0 
 10078e4:	c8 53 df ee          	enterq $0xdf53,$0xee
 10078e8:	33 07                	xor    (%rdi),%eax
 10078ea:	60                   	(bad)  
 10078eb:	de 73 7f             	fidivs 0x7f(%rbx)
 10078ee:	40 0d 26 2a 5d d3    	rex or $0xd35d2a26,%eax
 10078f4:	69 d8 c4 74 34 d9    	imul   $0xd93474c4,%eax,%ebx
 10078fa:	fc                   	cld    
 10078fb:	53                   	push   %rbx
 10078fc:	cc                   	int3   
 10078fd:	a1 df e2 59 83 0e 0e 	movabs 0xec560e0e8359e2df,%eax
 1007904:	56 ec 
 1007906:	b8 27 d9 3b 77       	mov    $0x773bd927,%eax
 100790b:	fe                   	(bad)  
 100790c:	9f                   	lahf   
 100790d:	69 e4 aa 37 f6 6a    	imul   $0x6af637aa,%esp,%esp
 1007913:	0a 8b c7 5f bb b8    	or     -0x4744a039(%rbx),%cl
 1007919:	75 37                	jne    0x1007952
 100791b:	de be 41 ad 03 34    	fidivrs 0x3403ad41(%rsi)
 1007921:	a3 3b 54 e1 f5 25 8f 	movabs %eax,0x70d8f25f5e1543b
 1007928:	0d 07 
 100792a:	4a 24 6c             	rex.WX and $0x6c,%al
 100792d:	70 1d                	jo     0x100794c
 100792f:	8b f5                	mov    %ebp,%esi
 1007931:	f3 7f a0             	repz jg 0x10078d4
 1007934:	ac                   	lods   %ds:(%rsi),%al
 1007935:	ac                   	lods   %ds:(%rsi),%al
 1007936:	1e                   	(bad)  
 1007937:	ed                   	in     (%dx),%eax
 1007938:	2b bd 8d c5 32 cb    	sub    -0x34cd3a73(%rbp),%edi
 100793e:	10 4e 35             	adc    %cl,0x35(%rsi)
 1007941:	0b 87 11 80 a6 51    	or     0x51a68011(%rdi),%eax
 1007947:	9e                   	sahf   
 1007948:	a0 f2 25 6e e2 fd 6a 	movabs 0xad576afde26e25f2,%al
 100794f:	57 ad 
 1007951:	76 44                	jbe    0x1007997
 1007953:	2a 45 d5             	sub    -0x2b(%rbp),%al
 1007956:	f6 f5                	div    %ch
 1007958:	f1                   	icebp  
 1007959:	d7                   	xlat   %ds:(%rbx)
 100795a:	95                   	xchg   %eax,%ebp
 100795b:	f1                   	icebp  
 100795c:	07                   	(bad)  
 100795d:	58                   	pop    %rax
 100795e:	84 95 e5 71 31 f0    	test   %dl,-0xfce8e1b(%rbp)
 1007964:	1d 5d e5 16 a3       	sbb    $0xa316e55d,%eax
 1007969:	6e                   	outsb  %ds:(%rsi),(%dx)
 100796a:	44 02 af 0c b5 53 4c 	add    0x4c53b50c(%rdi),%r13b
 1007971:	74 40                	je     0x10079b3
 1007973:	55                   	push   %rbp
 1007974:	08 1b                	or     %bl,(%rbx)
 1007976:	c7                   	(bad)  
 1007977:	4b 93                	rex.WXB xchg %rax,%r11
 1007979:	e8 ae 70 7a 92       	callq  0xffffffff937aea2c
 100797e:	22 ff                	and    %bh,%bh
 1007980:	a9 4c d4 1b a3       	test   $0xa31bd44c,%eax
 1007985:	40 0c ce             	or     $0xce,%al
 1007988:	7c 2b                	jl     0x10079b5
 100798a:	f4                   	hlt    
 100798b:	07                   	(bad)  
 100798c:	04 24                	add    $0x24,%al
 100798e:	43 dc 3e             	rex.XB fdivrl (%r14)
 1007991:	c4 41 3b e2          	(bad)
 1007995:	76 a4                	jbe    0x100793b
 1007997:	d8 da                	fcomp  %st(2)
 1007999:	fc                   	cld    
 100799a:	7b 90                	jnp    0x100792c
 100799c:	bd 03 52 9e a8       	mov    $0xa89e5203,%ebp
 10079a1:	9a                   	(bad)  
 10079a2:	2d 7a a7 8c 07       	sub    $0x78ca77a,%eax
 10079a7:	8f                   	(bad)  
 10079a8:	9c                   	pushfq 
 10079a9:	28 b1 f8 d0 5f 99    	sub    %dh,-0x66a02f08(%rcx)
 10079af:	05 41 8e fa 48       	add    $0x48fa8e41,%eax
 10079b4:	d8 6d ab             	fsubrs -0x55(%rbp)
 10079b7:	41 72 e9             	rex.B jb 0x10079a3
 10079ba:	28 68 b4             	sub    %ch,-0x4c(%rax)
 10079bd:	95                   	xchg   %eax,%ebp
 10079be:	48 a6                	rex.W cmpsb %es:(%rdi),%ds:(%rsi)
 10079c0:	78 df                	js     0x10079a1
 10079c2:	3c 30                	cmp    $0x30,%al
 10079c4:	fd                   	std    
 10079c5:	27                   	(bad)  
 10079c6:	eb 3a                	jmp    0x1007a02
 10079c8:	48 ad                	lods   %ds:(%rsi),%rax
 10079ca:	65 5a                	gs pop %rdx
 10079cc:	d8 d9                	fcomp  %st(1)
 10079ce:	eb 58                	jmp    0x1007a28
 10079d0:	6c                   	insb   (%dx),%es:(%rdi)
 10079d1:	05 6c df 7b dd       	add    $0xdd7bdf6c,%eax
 10079d6:	aa                   	stos   %al,%es:(%rdi)
 10079d7:	4a cb                	rex.WX lretq 
 10079d9:	31 24 e4             	xor    %esp,(%rsp,%riz,8)
 10079dc:	5b                   	pop    %rbx
 10079dd:	02 21                	add    (%rcx),%ah
 10079df:	ff                   	(bad)  
 10079e0:	38 5c 9c b0          	cmp    %bl,-0x50(%rsp,%rbx,4)
 10079e4:	4d 07                	rex.WRB (bad) 
 10079e6:	8e 19                	mov    (%rcx),%ds
 10079e8:	ee                   	out    %al,(%dx)
 10079e9:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 10079ea:	21 95 d9 43 44 d9    	and    %edx,-0x26bbbc27(%rbp)
 10079f0:	b1 bd                	mov    $0xbd,%cl
 10079f2:	4d                   	rex.WRB
 10079f3:	36 df 65 1a          	fbld   %ss:0x1a(%rbp)
 10079f7:	7f 48                	jg     0x1007a41
 10079f9:	91                   	xchg   %eax,%ecx
 10079fa:	43 ba 59 31 f7 28    	rex.XB mov $0x28f73159,%r10d
 1007a00:	cd 9b                	int    $0x9b
 1007a02:	6b d9 72             	imul   $0x72,%ecx,%ebx
 1007a05:	d6                   	(bad)  
 1007a06:	8a ea                	mov    %dl,%ch
 1007a08:	4b 70 64             	rex.WXB jo 0x1007a6f
 1007a0b:	28 c3                	sub    %al,%bl
 1007a0d:	7c 25                	jl     0x1007a34
 1007a0f:	5f                   	pop    %rdi
 1007a10:	41 56                	push   %r14
 1007a12:	be 79 3f 49 79       	mov    $0x79493f79,%esi
 1007a17:	48 bb 0a 14 6e 37 f4 	movabs $0x667fb0f4376e140a,%rbx
 1007a1e:	b0 7f 66 
 1007a21:	23 7a 5d             	and    0x5d(%rdx),%edi
 1007a24:	b4 69                	mov    $0x69,%ah
 1007a26:	12 77 3e             	adc    0x3e(%rdi),%dh
 1007a29:	aa                   	stos   %al,%es:(%rdi)
 1007a2a:	97                   	xchg   %eax,%edi
 1007a2b:	36 7f d2             	ss jg  0x1007a00
 1007a2e:	00 69 3a             	add    %ch,0x3a(%rcx)
 1007a31:	4f 9c                	rex.WRXB pushfq 
 1007a33:	26 36 20 d9          	es ss and %bl,%cl
 1007a37:	d4                   	(bad)  
 1007a38:	42 25 d3 01 99 c9    	rex.X and $0xc99901d3,%eax
 1007a3e:	4e 2b 29             	rex.WRX sub (%rcx),%r13
 1007a41:	08 47 67             	or     %al,0x67(%rdi)
 1007a44:	fe ca                	dec    %dl
 1007a46:	ea                   	(bad)  
 1007a47:	1b ad d2 28 dc 23    	sbb    0x23dc28d2(%rbp),%ebp
 1007a4d:	af                   	scas   %es:(%rdi),%eax
 1007a4e:	ac                   	lods   %ds:(%rsi),%al
 1007a4f:	1c 02                	sbb    $0x2,%al
 1007a51:	03 15 1b 09 3c 1f    	add    0x1f3c091b(%rip),%edx        # 0x203c8372
 1007a57:	d2 ae 3b ff de c5    	shrb   %cl,-0x3a2100c5(%rsi)
 1007a5d:	3b dd                	cmp    %ebp,%ebx
 1007a5f:	8b e7                	mov    %edi,%esp
 1007a61:	d9 1b                	fstps  (%rbx)
 1007a63:	7e ff                	jle    0x1007a64
 1007a65:	38 2c 5e             	cmp    %ch,(%rsi,%rbx,2)
 1007a68:	44 51                	rex.R push %rcx
 1007a6a:	5a                   	pop    %rdx
 1007a6b:	b6 8a                	mov    $0x8a,%dh
 1007a6d:	db c2                	fcmovnb %st(2),%st
 1007a6f:	11 3b                	adc    %edi,(%rbx)
 1007a71:	b3 6e                	mov    $0x6e,%bl
 1007a73:	6e                   	outsb  %ds:(%rsi),(%dx)
 1007a74:	5c                   	pop    %rsp
 1007a75:	75 72                	jne    0x1007ae9
 1007a77:	83 60 22 5a          	andl   $0x5a,0x22(%rax)
 1007a7b:	6f                   	outsl  %ds:(%rsi),(%dx)
 1007a7c:	21 e1                	and    %esp,%ecx
 1007a7e:	41 8e a5 65 43 6c 50 	mov    0x506c4365(%r13),%fs
 1007a85:	40                   	rex
 1007a86:	f3 cd 3e             	repz int $0x3e
 1007a89:	4e 54                	rex.WRX push %rsp
 1007a8b:	de 94 45 54 b1 95 10 	ficoms 0x1095b154(%rbp,%rax,2)
 1007a92:	cb                   	lret   
 1007a93:	61                   	(bad)  
 1007a94:	c0 16 3e             	rclb   $0x3e,(%rsi)
 1007a97:	f8                   	clc    
 1007a98:	f8                   	clc    
 1007a99:	24 89                	and    $0x89,%al
 1007a9b:	0f 5c dc             	subps  %xmm4,%xmm3
 1007a9e:	bc 49 46 4c 81       	mov    $0x814c4649,%esp
 1007aa3:	0d 5d 18 19 73       	or     $0x7319185d,%eax
 1007aa8:	5f                   	pop    %rdi
 1007aa9:	d8 95 dc a9 8e b8    	fcoms  -0x47715624(%rbp)
 1007aaf:	13 6c 87 8b          	adc    -0x75(%rdi,%rax,4),%ebp
 1007ab3:	15 e5 84 fd 34       	adc    $0x34fd84e5,%eax
 1007ab8:	85 dc                	test   %ebx,%esp
 1007aba:	24 3d                	and    $0x3d,%al
 1007abc:	19 51 f4             	sbb    %edx,-0xc(%rcx)
 1007abf:	bf bd f3 14 41       	mov    $0x4114f3bd,%edi
 1007ac4:	67 68 f5 e6 89 ba    	addr32 pushq $0xffffffffba89e6f5
 1007aca:	14 b0                	adc    $0xb0,%al
 1007acc:	89 29                	mov    %ebp,(%rcx)
 1007ace:	76 2b                	jbe    0x1007afb
 1007ad0:	74 bf                	je     0x1007a91
 1007ad2:	2a 41 0d             	sub    0xd(%rcx),%al
 1007ad5:	27                   	(bad)  
 1007ad6:	79 31                	jns    0x1007b09
 1007ad8:	62                   	(bad)  
 1007ad9:	80 39 3f             	cmpb   $0x3f,(%rcx)
 1007adc:	93                   	xchg   %eax,%ebx
 1007add:	ae                   	scas   %es:(%rdi),%al
 1007ade:	90                   	nop
 1007adf:	9c                   	pushfq 
 1007ae0:	a8 a9                	test   $0xa9,%al
 1007ae2:	70 e4                	jo     0x1007ac8
 1007ae4:	7a f5                	jp     0x1007adb
 1007ae6:	04 6f                	add    $0x6f,%al
 1007ae8:	68 00 f9 94 5a       	pushq  $0x5a94f900
 1007aed:	c7                   	(bad)  
 1007aee:	f5                   	cmc    
 1007aef:	37                   	(bad)  
 1007af0:	e4 c5                	in     $0xc5,%al
 1007af2:	e7 3e                	out    %eax,$0x3e
 1007af4:	67 53                	addr32 push %rbx
 1007af6:	26 00 2d ee 05 fc bc 	add    %ch,%es:-0x4303fa12(%rip)        # 0xffffffffbdfc80eb
 1007afd:	27                   	(bad)  
 1007afe:	20 98 39 72 87 9c    	and    %bl,-0x63788dc7(%rax)
 1007b04:	f7 33                	divl   (%rbx)
 1007b06:	66 17                	data16 (bad) 
 1007b08:	07                   	(bad)  
 1007b09:	b3 26                	mov    $0x26,%bl
 1007b0b:	71 c1                	jno    0x1007ace
 1007b0d:	85 8f 13 a5 33 72    	test   %ecx,0x7233a513(%rdi)
 1007b13:	88 f1                	mov    %dh,%cl
 1007b15:	a9 3b ef 29 9c       	test   $0x9c29ef3b,%eax
 1007b1a:	18 64 e4 fc          	sbb    %ah,-0x4(%rsp,%riz,8)
 1007b1e:	37                   	(bad)  
 1007b1f:	b7 78                	mov    $0x78,%bh
 1007b21:	32 ec                	xor    %ah,%ch
 1007b23:	98                   	cwtl   
 1007b24:	39 05 e4 9d 11 7a    	cmp    %eax,0x7a119de4(%rip)        # 0x7b12190e
 1007b2a:	0f fa 3f             	psubd  (%rdi),%mm7
 1007b2d:	84 33                	test   %dh,(%rbx)
 1007b2f:	d7                   	xlat   %ds:(%rbx)
 1007b30:	4c a3 8d 68 8c 7b 56 	rex.WR movabs %rax,0x4c63d8567b8c688d
 1007b37:	d8 63 4c 
 1007b3a:	cd fe                	int    $0xfe
 1007b3c:	c0 55 3d ec          	rclb   $0xec,0x3d(%rbp)
 1007b40:	de 82 cb cf 3f 36    	fiadds 0x363fcfcb(%rdx)
 1007b46:	53                   	push   %rbx
 1007b47:	b2 68                	mov    $0x68,%dl
 1007b49:	5b                   	pop    %rbx
 1007b4a:	30 bc ec 9d 59 c3 e1 	xor    %bh,-0x1e3ca663(%rsp,%rbp,8)
 1007b51:	cb                   	lret   
 1007b52:	b5 b8                	mov    $0xb8,%ch
 1007b54:	9e                   	sahf   
 1007b55:	5c                   	pop    %rsp
 1007b56:	51                   	push   %rcx
 1007b57:	c9                   	leaveq 
 1007b58:	87 ed                	xchg   %ebp,%ebp
 1007b5a:	03 1a                	add    (%rdx),%ebx
 1007b5c:	d6                   	(bad)  
 1007b5d:	f7 96 d6 60 29 04    	notl   0x42960d6(%rsi)
 1007b63:	49                   	rex.WB
 1007b64:	47 54                	rex.RXB push %r12
 1007b66:	f4                   	hlt    
 1007b67:	67 99                	addr32 cltd 
 1007b69:	cb                   	lret   
 1007b6a:	7a 35                	jp     0x1007ba1
 1007b6c:	03 c6                	add    %esi,%eax
 1007b6e:	f5                   	cmc    
 1007b6f:	78 aa                	js     0x1007b1b
 1007b71:	2c 11                	sub    $0x11,%al
 1007b73:	5d                   	pop    %rbp
 1007b74:	bf 9e bf f8 9d       	mov    $0x9df8bf9e,%edi
 1007b79:	ec                   	in     (%dx),%al
 1007b7a:	40 b3 87             	mov    $0x87,%bl
 1007b7d:	a2 ea 5e c9 e7 e6 a5 	movabs %al,0xbe6ea5e6e7c95eea
 1007b84:	6e be 
 1007b86:	c6                   	(bad)  
 1007b87:	14 ef                	adc    $0xef,%al
 1007b89:	c0 7c 60 3b b8       	sarb   $0xb8,0x3b(%rax,%riz,2)
 1007b8e:	44 38 60 8d          	cmp    %r12b,-0x73(%rax)
 1007b92:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1007b93:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1007b94:	f8                   	clc    
 1007b95:	22 e7                	and    %bh,%ah
 1007b97:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1007b98:	e5 0d                	in     $0xd,%eax
 1007b9a:	31 df                	xor    %ebx,%edi
 1007b9c:	cb                   	lret   
 1007b9d:	93                   	xchg   %eax,%ebx
 1007b9e:	46                   	rex.RX
 1007b9f:	64 5f                	fs pop %rdi
 1007ba1:	3e b6 13             	ds mov $0x13,%dh
 1007ba4:	58                   	pop    %rax
 1007ba5:	37                   	(bad)  
 1007ba6:	8e 5b ea             	mov    -0x16(%rbx),%ds
 1007ba9:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1007baa:	53                   	push   %rbx
 1007bab:	88 1c bf             	mov    %bl,(%rdi,%rdi,4)
 1007bae:	ae                   	scas   %es:(%rdi),%al
 1007baf:	78 19                	js     0x1007bca
 1007bb1:	d6                   	(bad)  
 1007bb2:	4b 02 d9             	rex.WXB add %r9b,%bl
 1007bb5:	51                   	push   %rcx
 1007bb6:	2e 92                	cs xchg %eax,%edx
 1007bb8:	73 c4                	jae    0x1007b7e
 1007bba:	11 c7                	adc    %eax,%edi
 1007bbc:	01 53 bb             	add    %edx,-0x45(%rbx)
 1007bbf:	13 c6                	adc    %esi,%eax
 1007bc1:	3e b7 4e             	ds mov $0x4e,%bh
 1007bc4:	64 0e                	fs (bad) 
 1007bc6:	ec                   	in     (%dx),%al
 1007bc7:	0d f9 48 b0 a7       	or     $0xa7b048f9,%eax
 1007bcc:	0c 2d                	or     $0x2d,%al
 1007bce:	ce                   	(bad)  
 1007bcf:	80 8e de 93 ca 9a 4e 	orb    $0x4e,-0x65356c22(%rsi)
 1007bd6:	3c e2                	cmp    $0xe2,%al
 1007bd8:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1007bd9:	c9                   	leaveq 
 1007bda:	e2 da                	loop   0x1007bb6
 1007bdc:	08 1e                	or     %bl,(%rsi)
 1007bde:	fe                   	(bad)  
 1007bdf:	52                   	push   %rdx
 1007be0:	99                   	cltd   
 1007be1:	e3 d6                	jrcxz  0x1007bb9
 1007be3:	02 ee                	add    %dh,%ch
 1007be5:	78 e1                	js     0x1007bc8
 1007be7:	4d 3b 83 08 d3 28 f9 	cmp    -0x6d72cf8(%r11),%r8
 1007bee:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1007bef:	82                   	(bad)  
 1007bf0:	46 82                	rex.RX (bad) 
 1007bf2:	96                   	xchg   %eax,%esi
 1007bf3:	ec                   	in     (%dx),%al
 1007bf4:	e5 ae                	in     $0xae,%eax
 1007bf6:	fe 02                	incb   (%rdx)
 1007bf8:	b0 2e                	mov    $0x2e,%al
 1007bfa:	7c 73                	jl     0x1007c6f
 1007bfc:	da 8c e3 4a 13 d0 86 	fimull -0x792fecb6(%rbx,%riz,8)
 1007c03:	9e                   	sahf   
 1007c04:	08 3f                	or     %bh,(%rdi)
 1007c06:	11 b2 4a 04 3f e5    	adc    %esi,-0x1ac0fbb6(%rdx)
 1007c0c:	ee                   	out    %al,(%dx)
 1007c0d:	81 4e a9 ba 2e 53 de 	orl    $0xde532eba,-0x57(%rsi)
 1007c14:	84 4e 51             	test   %cl,0x51(%rsi)
 1007c17:	70 c5                	jo     0x1007bde
 1007c19:	3d 08 6b c0 18       	cmp    $0x18c06b08,%eax
 1007c1e:	b0 e4                	mov    $0xe4,%al
 1007c20:	b1 55                	mov    $0x55,%cl
 1007c22:	b7 9d                	mov    $0x9d,%bh
 1007c24:	57                   	push   %rdi
 1007c25:	4f c8 af bf 93       	rex.WRXB enterq $0xbfaf,$0x93
 1007c2a:	ad                   	lods   %ds:(%rsi),%eax
 1007c2b:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1007c2c:	2d b0 64 c7 96       	sub    $0x96c764b0,%eax
 1007c31:	be eb 6e 2f 27       	mov    $0x272f6eeb,%esi
 1007c36:	25 5a 45 cc a5       	and    $0xa5cc455a,%eax
 1007c3b:	59                   	pop    %rcx
 1007c3c:	9d                   	popfq  
 1007c3d:	96                   	xchg   %eax,%esi
 1007c3e:	15 5f 13 3f ba       	adc    $0xba3f135f,%eax
 1007c43:	d1 07                	roll   (%rdi)
 1007c45:	c7                   	(bad)  
 1007c46:	4b f7 5b 4a          	rex.WXB negq 0x4a(%r11)
 1007c4a:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 1007c4b:	3d 7f ad 06 dd       	cmp    $0xdd06ad7f,%eax
 1007c50:	b2 74                	mov    $0x74,%dl
 1007c52:	8b 1c 4f             	mov    (%rdi,%rcx,2),%ebx
 1007c55:	3f                   	(bad)  
 1007c56:	2e d3 07             	roll   %cl,%cs:(%rdi)
 1007c59:	ab                   	stos   %eax,%es:(%rdi)
 1007c5a:	c7                   	(bad)  
 1007c5b:	e9 ad ec 6c e8       	jmpq   0xffffffffe96d690d
 1007c60:	98                   	cwtl   
 1007c61:	da 1b                	ficompl (%rbx)
 1007c63:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1007c64:	9a                   	(bad)  
 1007c65:	a2 56 06 02 df ac e1 	movabs %al,0x9af4e1acdf020656
 1007c6c:	f4 9a 
 1007c6e:	dc e1                	fsub   %st,%st(1)
 1007c70:	6f                   	outsl  %ds:(%rsi),(%dx)
 1007c71:	97                   	xchg   %eax,%edi
 1007c72:	c9                   	leaveq 
 1007c73:	78 31                	js     0x1007ca6
 1007c75:	26 b0 34             	es mov $0x34,%al
 1007c78:	4a bf da 83 f0 e9 ef 	rex.WX movabs $0xf0fe42efe9f083da,%rdi
 1007c7f:	42 fe f0 
 1007c82:	e4 61                	in     $0x61,%al
 1007c84:	ed                   	in     (%dx),%eax
 1007c85:	2f                   	(bad)  
 1007c86:	d6                   	(bad)  
 1007c87:	e5 5e                	in     $0x5e,%eax
 1007c89:	27                   	(bad)  
 1007c8a:	63 62 7c             	movsxd 0x7c(%rdx),%esp
 1007c8d:	97                   	xchg   %eax,%edi
 1007c8e:	f2 81 b7 b8 00 52 49 	repnz xorl $0x1bd3fcd4,0x495200b8(%rdi)
 1007c95:	d4 fc d3 1b 
 1007c99:	f7 7d 68             	idivl  0x68(%rbp)
 1007c9c:	b3 c0                	mov    $0xc0,%bl
 1007c9e:	55                   	push   %rbp
 1007c9f:	59                   	pop    %rcx
 1007ca0:	fa                   	cli    
 1007ca1:	a0 31 e1 bf 29 a7 0e 	movabs 0x66690ea729bfe131,%al
 1007ca8:	69 66 
 1007caa:	c5 ee 66             	(bad)
 1007cad:	71 6e                	jno    0x1007d1d
 1007caf:	da 51 24             	ficoml 0x24(%rcx)
 1007cb2:	ee                   	out    %al,(%dx)
 1007cb3:	47 16                	rex.RXB (bad) 
 1007cb5:	51                   	push   %rcx
 1007cb6:	75 29                	jne    0x1007ce1
 1007cb8:	1d f3 ea 93 7f       	sbb    $0x7f93eaf3,%eax
 1007cbd:	da b8 eb fc 76 3f    	fidivrl 0x3f76fceb(%rax)
 1007cc3:	0a a3 fb 26 43 ab    	or     -0x54bcd905(%rbx),%ah
 1007cc9:	9b                   	fwait
 1007cca:	8c b3 cf dd 4c 13    	mov    %?,0x134cddcf(%rbx)
 1007cd0:	c5 27 3d             	(bad)
 1007cd3:	7f f2                	jg     0x1007cc7
 1007cd5:	10 d4                	adc    %dl,%ah
 1007cd7:	f7 68 7a             	imull  0x7a(%rax)
 1007cda:	a8 fe                	test   $0xfe,%al
 1007cdc:	8b 1d 81 49 23 02    	mov    0x2234981(%rip),%ebx        # 0x323c663
 1007ce2:	87 12                	xchg   %edx,(%rdx)
 1007ce4:	5f                   	pop    %rdi
 1007ce5:	5f                   	pop    %rdi
 1007ce6:	b0 15                	mov    $0x15,%al
 1007ce8:	f6 49 f4 be          	testb  $0xbe,-0xc(%rcx)
 1007cec:	0e                   	(bad)  
 1007ced:	40 8e e9             	rex mov %ecx,%gs
 1007cf0:	4f a3 98 68 83 6b 9f 	rex.WRXB movabs %rax,0x585a3a9f6b836898
 1007cf7:	3a 5a 58 
 1007cfa:	96                   	xchg   %eax,%esi
 1007cfb:	13 ff                	adc    %edi,%edi
 1007cfd:	5b                   	pop    %rbx
 1007cfe:	05 e3 02 18 75       	add    $0x751802e3,%eax
 1007d03:	8f 82 a8 0c 10 40    	popq   0x40100ca8(%rdx)
 1007d09:	68 7f bf b3 04       	pushq  $0x4b3bf7f
 1007d0e:	df 88 a5 e4 97 00    	fisttps 0x97e4a5(%rax)
 1007d14:	38 93 ae 0f c7 48    	cmp    %dl,0x48c70fae(%rbx)
 1007d1a:	67 fe                	addr32 (bad) 
 1007d1c:	63 fd                	movsxd %ebp,%edi
 1007d1e:	fe                   	(bad)  
 1007d1f:	f4                   	hlt    
 1007d20:	fe 45 62             	incb   0x62(%rbp)
 1007d23:	77 5d                	ja     0x1007d82
 1007d25:	f2 6e                	repnz outsb %ds:(%rsi),(%dx)
 1007d27:	70 91                	jo     0x1007cba
 1007d29:	70 de                	jo     0x1007d09
 1007d2b:	8f                   	(bad)  
 1007d2c:	8b dd                	mov    %ebp,%ebx
 1007d2e:	d9 1d 91 82 83 0f    	fstps  0xf838291(%rip)        # 0x1083ffc5
 1007d34:	f9                   	stc    
 1007d35:	e8 b4 8c e5 c8       	callq  0xffffffffc9e609ee
 1007d3a:	93                   	xchg   %eax,%ebx
 1007d3b:	52                   	push   %rdx
 1007d3c:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1007d3d:	6c                   	insb   (%dx),%es:(%rdi)
 1007d3e:	d2 e2                	shl    %cl,%dl
 1007d40:	0a 2e                	or     (%rsi),%ch
 1007d42:	ce                   	(bad)  
 1007d43:	3a 81 6d 1d cf ac    	cmp    -0x5330e293(%rcx),%al
 1007d49:	52                   	push   %rdx
 1007d4a:	dc e5                	fsub   %st,%st(5)
 1007d4c:	ad                   	lods   %ds:(%rsi),%eax
 1007d4d:	cf                   	iret   
 1007d4e:	9d                   	popfq  
 1007d4f:	03 0e                	add    (%rsi),%ecx
 1007d51:	25 d1 ec 71 fe       	and    $0xfe71ecd1,%eax
 1007d56:	75 8a                	jne    0x1007ce2
 1007d58:	f8                   	clc    
 1007d59:	ca a4 68             	lret   $0x68a4
 1007d5c:	af                   	scas   %es:(%rdi),%eax
 1007d5d:	b9 8e 14 74 d5       	mov    $0xd574148e,%ecx
 1007d62:	c5 b0 b5             	(bad)
 1007d65:	71 71                	jno    0x1007dd8
 1007d67:	a0 a5 63 4c 53 27 c7 	movabs 0xa085c727534c63a5,%al
 1007d6e:	85 a0 
 1007d70:	37                   	(bad)  
 1007d71:	70 ed                	jo     0x1007d60
 1007d73:	e0 68                	loopne 0x1007ddd
 1007d75:	2f                   	(bad)  
 1007d76:	22 7b bf             	and    -0x41(%rbx),%bh
 1007d79:	f1                   	icebp  
 1007d7a:	39 cd                	cmp    %ecx,%ebp
 1007d7c:	05 6f 47 d5 96       	add    $0x96d5476f,%eax
 1007d81:	69 cc 95 dc a5 ac    	imul   $0xaca5dc95,%esp,%ecx
 1007d87:	f1                   	icebp  
 1007d88:	91                   	xchg   %eax,%ecx
 1007d89:	a0 78 c8 66 76 bf 1f 	movabs 0xd0ef1fbf7666c878,%al
 1007d90:	ef d0 
 1007d92:	76 21                	jbe    0x1007db5
 1007d94:	6f                   	outsl  %ds:(%rsi),(%dx)
 1007d95:	0d e5 72 cd 19       	or     $0x19cd72e5,%eax
 1007d9a:	af                   	scas   %es:(%rdi),%eax
 1007d9b:	ab                   	stos   %eax,%es:(%rdi)
 1007d9c:	e5 6a                	in     $0x6a,%eax
 1007d9e:	cd c8                	int    $0xc8
 1007da0:	0f 79 5b 0b          	vmwrite 0xb(%rbx),%rbx
 1007da4:	0a 22                	or     (%rdx),%ah
 1007da6:	7a aa                	jp     0x1007d52
 1007da8:	0b fe                	or     %esi,%edi
 1007daa:	f7 06 27 1f 72 05    	testl  $0x5721f27,(%rsi)
 1007db0:	c3                   	retq   
 1007db1:	42                   	rex.X
 1007db2:	48 30 69 fd          	rex.W xor %bpl,-0x3(%rcx)
 1007db6:	c4                   	(bad)  
 1007db7:	59                   	pop    %rcx
 1007db8:	86 c4                	xchg   %al,%ah
 1007dba:	12 f8                	adc    %al,%bh
 1007dbc:	ed                   	in     (%dx),%eax
 1007dbd:	68 83 63 ff 1e       	pushq  $0x1eff6383
 1007dc2:	55                   	push   %rbp
 1007dc3:	6b 50 ee 7d          	imul   $0x7d,-0x12(%rax),%edx
 1007dc7:	5a                   	pop    %rdx
 1007dc8:	7c 1d                	jl     0x1007de7
 1007dca:	d6                   	(bad)  
 1007dcb:	37                   	(bad)  
 1007dcc:	44 ae                	rex.R scas %es:(%rdi),%al
 1007dce:	9d                   	popfq  
 1007dcf:	22 ad ba 82 b9 97    	and    -0x68467d46(%rbp),%ch
 1007dd5:	84 c9                	test   %cl,%cl
 1007dd7:	94                   	xchg   %eax,%esp
 1007dd8:	df 8e ce ec 9e 84    	fisttps -0x7b611332(%rsi)
 1007dde:	c7                   	(bad)  
 1007ddf:	0d a8 56 de 0e       	or     $0xede56a8,%eax
 1007de4:	1b d4                	sbb    %esp,%edx
 1007de6:	2f                   	(bad)  
 1007de7:	fd                   	std    
 1007de8:	2c 01                	sub    $0x1,%al
 1007dea:	9e                   	sahf   
 1007deb:	74 97                	je     0x1007d84
 1007ded:	d5                   	(bad)  
 1007dee:	4d d1 2f             	rex.WRB shrq (%r15)
 1007df1:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1007df2:	aa                   	stos   %al,%es:(%rdi)
 1007df3:	45 19 6c 19 9b       	sbb    %r13d,-0x65(%r9,%rbx,1)
 1007df8:	2e d9 38             	fnstcw %cs:(%rax)
 1007dfb:	9e                   	sahf   
 1007dfc:	ad                   	lods   %ds:(%rsi),%eax
 1007dfd:	81 78 af a2 2b 36 a4 	cmpl   $0xa4362ba2,-0x51(%rax)
 1007e04:	ef                   	out    %eax,(%dx)
 1007e05:	9c                   	pushfq 
 1007e06:	ac                   	lods   %ds:(%rsi),%al
 1007e07:	2a 44 77 72          	sub    0x72(%rdi,%rsi,2),%al
 1007e0b:	f5                   	cmc    
 1007e0c:	55                   	push   %rbp
 1007e0d:	97                   	xchg   %eax,%edi
 1007e0e:	ce                   	(bad)  
 1007e0f:	53                   	push   %rbx
 1007e10:	58                   	pop    %rax
 1007e11:	32 b7 36 dc 99 d9    	xor    -0x266623ca(%rdi),%dh
 1007e17:	7d dd                	jge    0x1007df6
 1007e19:	93                   	xchg   %eax,%ebx
 1007e1a:	b0 d0                	mov    $0xd0,%al
 1007e1c:	0a a2 57 2e 66 07    	or     0x7662e57(%rdx),%ah
 1007e22:	9b                   	fwait
 1007e23:	4b 7f 9f             	rex.WXB jg 0x1007dc5
 1007e26:	e2 e5                	loop   0x1007e0d
 1007e28:	bc ae b2 0d bd       	mov    $0xbd0db2ae,%esp
 1007e2d:	3f                   	(bad)  
 1007e2e:	2f                   	(bad)  
 1007e2f:	4d 84 cd             	rex.WRB test %r9b,%r13b
 1007e32:	f9                   	stc    
 1007e33:	87 c7                	xchg   %eax,%edi
 1007e35:	f2 1d 13 00 d3 a6    	repnz sbb $0xa6d30013,%eax
 1007e3b:	d4                   	(bad)  
 1007e3c:	0b 69 ee             	or     -0x12(%rcx),%ebp
 1007e3f:	f2 fc                	repnz cld 
 1007e41:	26 8b b1 25 6e 36 b6 	mov    %es:-0x49c991db(%rcx),%esi
 1007e48:	69 2f b7 84 c4 a1    	imul   $0xa1c484b7,(%rdi),%ebp
 1007e4e:	68 32 f1 ba cb       	pushq  $0xffffffffcbbaf132
 1007e53:	44 a5                	rex.R movsl %ds:(%rsi),%es:(%rdi)
 1007e55:	c4 61 6b cf          	(bad)
 1007e59:	5b                   	pop    %rbx
 1007e5a:	1a 6e d6             	sbb    -0x2a(%rsi),%ch
 1007e5d:	05 de 98 7a 6a       	add    $0x6a7a98de,%eax
 1007e62:	59                   	pop    %rcx
 1007e63:	26 32 ab 74 1b 18 6e 	xor    %es:0x6e181b74(%rbx),%ch
 1007e6a:	61                   	(bad)  
 1007e6b:	af                   	scas   %es:(%rdi),%eax
 1007e6c:	62                   	(bad)  
 1007e6d:	36 10 1d c7 d0 24 2e 	adc    %bl,%ss:0x2e24d0c7(%rip)        # 0x2f254f3b
 1007e74:	34 ea                	xor    $0xea,%al
 1007e76:	f1                   	icebp  
 1007e77:	76 ff                	jbe    0x1007e78
 1007e79:	e2 30                	loop   0x1007eab
 1007e7b:	3e 7d 73             	jge,pt 0x1007ef1
 1007e7e:	b6 8c                	mov    $0x8c,%dh
 1007e80:	eb 57                	jmp    0x1007ed9
 1007e82:	fc                   	cld    
 1007e83:	ba d5 05 c1 6f       	mov    $0x6fc105d5,%edx
 1007e88:	37                   	(bad)  
 1007e89:	e7 bc                	out    %eax,$0xbc
 1007e8b:	b2 1b                	mov    $0x1b,%dl
 1007e8d:	2f                   	(bad)  
 1007e8e:	8e e8                	mov    %eax,%gs
 1007e90:	ea                   	(bad)  
 1007e91:	f5                   	cmc    
 1007e92:	61                   	(bad)  
 1007e93:	ab                   	stos   %eax,%es:(%rdi)
 1007e94:	20 a0 b1 49 8e 6c    	and    %ah,0x6c8e49b1(%rax)
 1007e9a:	cc                   	int3   
 1007e9b:	29 0f                	sub    %ecx,(%rdi)
 1007e9d:	26 06                	es (bad) 
 1007e9f:	dc 38                	fdivrl (%rax)
 1007ea1:	ff c8                	dec    %eax
 1007ea3:	d9 41 9d             	flds   -0x63(%rcx)
 1007ea6:	f2 e7 1f             	repnz out %eax,$0x1f
 1007ea9:	fe                   	(bad)  
 1007eaa:	12 39                	adc    (%rcx),%bh
 1007eac:	33 f7                	xor    %edi,%esi
 1007eae:	5c                   	pop    %rsp
 1007eaf:	73 d4                	jae    0x1007e85
 1007eb1:	69 fa 73 bf db b0    	imul   $0xb0dbbf73,%edx,%edi
 1007eb7:	08 62 36             	or     %ah,0x36(%rdx)
 1007eba:	07                   	(bad)  
 1007ebb:	36 ee                	ss out %al,(%dx)
 1007ebd:	0e                   	(bad)  
 1007ebe:	74 32                	je     0x1007ef2
 1007ec0:	a9 64 bd 9d 28       	test   $0x289dbd64,%eax
 1007ec5:	cf                   	iret   
 1007ec6:	48 7c 4c             	rex.W jl 0x1007f15
 1007ec9:	0e                   	(bad)  
 1007eca:	72 36                	jb     0x1007f02
 1007ecc:	ba a2 08 42 8f       	mov    $0x8f4208a2,%edx
 1007ed1:	e2 db                	loop   0x1007eae
 1007ed3:	b0 be                	mov    $0xbe,%al
 1007ed5:	e1 6a                	loope  0x1007f41
 1007ed7:	1e                   	(bad)  
 1007ed8:	90                   	nop
 1007ed9:	9c                   	pushfq 
 1007eda:	41                   	rex.B
 1007edb:	40 56                	rex push %rsi
 1007edd:	56                   	push   %rsi
 1007ede:	13 79 0a             	adc    0xa(%rcx),%edi
 1007ee1:	bf 54 31 d3 b3       	mov    $0xb3d33154,%edi
 1007ee6:	04 b1                	add    $0xb1,%al
 1007ee8:	76 3a                	jbe    0x1007f24
 1007eea:	ba fb 36 fb f2       	mov    $0xf2fb36fb,%edx
 1007eef:	fc                   	cld    
 1007ef0:	3b ee                	cmp    %esi,%ebp
 1007ef2:	af                   	scas   %es:(%rdi),%eax
 1007ef3:	11 54 af 9e          	adc    %edx,-0x62(%rdi,%rbp,4)
 1007ef7:	c7                   	(bad)  
 1007ef8:	8f                   	(bad)  
 1007ef9:	5e                   	pop    %rsi
 1007efa:	b3 01                	mov    $0x1,%bl
 1007efc:	e6 5a                	out    %al,$0x5a
 1007efe:	35 ff 50 88 05       	xor    $0x58850ff,%eax
 1007f03:	1c 83                	sbb    $0x83,%al
 1007f05:	c1 9d 32 96 c7 7a 20 	rcrl   $0x20,0x7ac79632(%rbp)
 1007f0c:	8b 35 19 7e da 05    	mov    0x5da7e19(%rip),%esi        # 0x6dafd2b
 1007f12:	ce                   	(bad)  
 1007f13:	ae                   	scas   %es:(%rdi),%al
 1007f14:	5e                   	pop    %rsi
 1007f15:	ac                   	lods   %ds:(%rsi),%al
 1007f16:	ce                   	(bad)  
 1007f17:	48 f5                	rex.W cmc 
 1007f19:	64 1d 3a 39 a2 cf    	fs sbb $0xcfa2393a,%eax
 1007f1f:	83 5a 4f 51          	sbbl   $0x51,0x4f(%rdx)
 1007f23:	85 13                	test   %edx,(%rbx)
 1007f25:	5e                   	pop    %rsi
 1007f26:	14 da                	adc    $0xda,%al
 1007f28:	0e                   	(bad)  
 1007f29:	1a ed                	sbb    %ch,%ch
 1007f2b:	e4 de                	in     $0xde,%al
 1007f2d:	eb 8d                	jmp    0x1007ebc
 1007f2f:	a9 04 6f 69 5b       	test   $0x5b696f04,%eax
 1007f34:	20 d1                	and    %dl,%cl
 1007f36:	41 6c                	rex.B insb (%dx),%es:(%rdi)
 1007f38:	55                   	push   %rbp
 1007f39:	91                   	xchg   %eax,%ecx
 1007f3a:	c7                   	(bad)  
 1007f3b:	49 5b                	rex.WB pop %r11
 1007f3d:	bd 86 82 ac 21       	mov    $0x21ac8286,%ebp
 1007f42:	28 79 cf             	sub    %bh,-0x31(%rcx)
 1007f45:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1007f46:	af                   	scas   %es:(%rdi),%eax
 1007f47:	8d                   	(bad)  
 1007f48:	ee                   	out    %al,(%dx)
 1007f49:	70 58                	jo     0x1007fa3
 1007f4b:	cd b5                	int    $0xb5
 1007f4d:	f3 b0 8d             	repz mov $0x8d,%al
 1007f50:	13 84 99 ae 1e 6b 0c 	adc    0xc6b1eae(%rcx,%rbx,4),%eax
 1007f57:	2b 76 ed             	sub    -0x13(%rsi),%esi
 1007f5a:	56                   	push   %rsi
 1007f5b:	51                   	push   %rcx
 1007f5c:	40 c2 33 39          	rex retq $0x3933
 1007f60:	eb df                	jmp    0x1007f41
 1007f62:	53                   	push   %rbx
 1007f63:	e1 1b                	loope  0x1007f80
 1007f65:	8a 22                	mov    (%rdx),%ah
 1007f67:	78 ce                	js     0x1007f37
 1007f69:	12 62 ab             	adc    -0x55(%rdx),%ah
 1007f6c:	56                   	push   %rsi
 1007f6d:	29 86 6f 46 13 b3    	sub    %eax,-0x4cecb991(%rsi)
 1007f73:	20 d5                	and    %dl,%ch
 1007f75:	66 be 8c 1c          	mov    $0x1c8c,%si
 1007f79:	ad                   	lods   %ds:(%rsi),%eax
 1007f7a:	5b                   	pop    %rbx
 1007f7b:	b5 d9                	mov    $0xd9,%ch
 1007f7d:	b3 17                	mov    $0x17,%bl
 1007f7f:	96                   	xchg   %eax,%esi
 1007f80:	a0 37 4a 92 13 54 8b 	movabs 0x3cbb8b5413924a37,%al
 1007f87:	bb 3c 
 1007f89:	8b 6b c8             	mov    -0x38(%rbx),%ebp
 1007f8c:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1007f8d:	f1                   	icebp  
 1007f8e:	0c ad                	or     $0xad,%al
 1007f90:	4c 72 1c             	rex.WR jb 0x1007faf
 1007f93:	40 ff 77 35          	rex pushq 0x35(%rdi)
 1007f97:	5a                   	pop    %rdx
 1007f98:	aa                   	stos   %al,%es:(%rdi)
 1007f99:	5c                   	pop    %rsp
 1007f9a:	a8 93                	test   $0x93,%al
 1007f9c:	10 35 0e 1b 0a 19    	adc    %dh,0x190a1b0e(%rip)        # 0x1a0a9ab0
 1007fa2:	35 45 99 e1 33       	xor    $0x33e19945,%eax
 1007fa7:	ee                   	out    %al,(%dx)
 1007fa8:	1f                   	(bad)  
 1007fa9:	58                   	pop    %rax
 1007faa:	84 e1                	test   %ah,%cl
 1007fac:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 1007fad:	17                   	(bad)  
 1007fae:	22 bf 62 30 f4 32    	and    0x32f43062(%rdi),%bh
 1007fb4:	4b c9                	rex.WXB leaveq 
 1007fb6:	d2 e7                	shl    %cl,%bh
 1007fb8:	64 37                	fs (bad) 
 1007fba:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 1007fbb:	81 96 29 52 0e f4 2d 	adcl   $0x323cc12d,-0xbf1add7(%rsi)
 1007fc2:	c1 3c 32 
 1007fc5:	9b d8 ee             	fsubr  %st(6),%st
 1007fc8:	e8 22 46 8f 8b       	callq  0xffffffff8c8fc5ef
 1007fcd:	83 9c 7c b2 5c e6 c7 	sbbl   $0xffffffc6,-0x3819a34e(%rsp,%rdi,2)
 1007fd4:	c6 
 1007fd5:	74 db                	je     0x1007fb2
 1007fd7:	6c                   	insb   (%dx),%es:(%rdi)
 1007fd8:	02 25 cf 42 35 0b    	add    0xb3542cf(%rip),%ah        # 0xc35c2ad
 1007fde:	de 76 a2             	fidivs -0x5e(%rsi)
 1007fe1:	41 00 4f 86          	add    %cl,-0x7a(%r15)
 1007fe5:	da 66 0c             	fisubl 0xc(%rsi)
 1007fe8:	b7 2f                	mov    $0x2f,%bh
 1007fea:	2f                   	(bad)  
 1007feb:	74 09                	je     0x1007ff6
 1007fed:	50                   	push   %rax
 1007fee:	b7 26                	mov    $0x26,%bh
 1007ff0:	74 91                	je     0x1007f83
 1007ff2:	e4 f5                	in     $0xf5,%al
 1007ff4:	4c 57                	rex.WR push %rdi
 1007ff6:	29 1e                	sub    %ebx,(%rsi)
 1007ff8:	95                   	xchg   %eax,%ebp
 1007ff9:	9a                   	(bad)  
 1007ffa:	61                   	(bad)  
 1007ffb:	37                   	(bad)  
 1007ffc:	f6                   	.byte 0xf6
 1007ffd:	bf                   	.byte 0xbf
 1007ffe:	44                   	rex.R
 1007fff:	da                   	.byte 0xda
