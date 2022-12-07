
vmlinuz:     file format pei-x86-64


Disassembly of section .setup:

0000000000000200 <.setup>:
     200:	eb 6a                	jmp    0x26c
     202:	48                   	rex.W
     203:	64 72 53             	fs jb  0x259
     206:	0f 02 00             	lar    (%rax),%eax
     209:	00 00                	add    %al,(%rax)
     20b:	00 00                	add    %al,(%rax)
     20d:	10 40 32             	adc    %al,0x32(%rax)
     210:	00 01                	add    %al,(%rcx)
     212:	00 80 00 00 10 00    	add    %al,0x100000(%rax)
	...
     224:	00 4b 00             	add    %cl,0x0(%rbx)
     227:	00 00                	add    %al,(%rax)
     229:	00 00                	add    %al,(%rax)
     22b:	00 ff                	add    %bh,%bh
     22d:	ff                   	(bad)  
     22e:	ff                   	(bad)  
     22f:	7f 00                	jg     0x231
     231:	00 00                	add    %al,(%rax)
     233:	01 01                	add    %eax,(%rcx)
     235:	15 3f 00 ff 07       	adc    $0x7ff003f,%eax
	...
     246:	00 00                	add    %al,(%rax)
     248:	ac                   	lods   %ds:(%rsi),%al
     249:	03 00                	add    (%rax),%eax
     24b:	00 54 7a 2f          	add    %dl,0x2f(%rdx,%rdi,2)
	...
     25b:	01 00                	add    %eax,(%rax)
     25d:	00 00                	add    %al,(%rax)
     25f:	00 00                	add    %al,(%rax)
     261:	70 6a                	jo     0x2cd
     263:	01 90 01 00 00 80    	add    %edx,-0x7fffffff(%rax)
     269:	0e                   	(bad)  
     26a:	30 00                	xor    %al,(%rax)
     26c:	8c d8                	mov    %ds,%eax
     26e:	8e c0                	mov    %eax,%es
     270:	fc                   	cld    
     271:	8c d2                	mov    %ss,%edx
     273:	39 c2                	cmp    %eax,%edx
     275:	89 e2                	mov    %esp,%edx
     277:	74 16                	je     0x28f
     279:	ba 00 49 f6 06       	mov    $0x6f64900,%edx
     27e:	11 02                	adc    %eax,(%rdx)
     280:	80 74 04 8b 16       	xorb   $0x16,-0x75(%rsp,%rax,1)
     285:	24 02                	and    $0x2,%al
     287:	81 c2 00 04 73 02    	add    $0x2730400,%edx
     28d:	31 d2                	xor    %edx,%edx
     28f:	83 e2 fc             	and    $0xfffffffc,%edx
     292:	75 03                	jne    0x297
     294:	ba fc ff 8e d0       	mov    $0xd08efffc,%edx
     299:	66 0f b7 e2          	movzww %dx,%sp
     29d:	fb                   	sti    
     29e:	1e                   	(bad)  
     29f:	68 a3 02 cb 66       	pushq  $0x66cb02a3
     2a4:	81 3e b8 35 55 aa    	cmpl   $0xaa5535b8,(%rsi)
     2aa:	5a                   	pop    %rdx
     2ab:	5a                   	pop    %rdx
     2ac:	75 17                	jne    0x2c5
     2ae:	bf c0 35 b9 03       	mov    $0x3b935c0,%edi
     2b3:	49                   	rex.WB
     2b4:	66 31 c0             	xor    %ax,%ax
     2b7:	29 f9                	sub    %edi,%ecx
     2b9:	c1 e9 02             	shr    $0x2,%ecx
     2bc:	f3 66 ab             	rep stos %ax,%es:(%rdi)
     2bf:	66 e8 4f 2b          	callw  0x2e12
     2c3:	00 00                	add    %al,(%rax)
     2c5:	66 b8 dd 03          	mov    $0x3dd,%ax
     2c9:	00 00                	add    %al,(%rax)
     2cb:	66 e8 f0 00          	callw  0x3bf
     2cf:	00 00                	add    %al,(%rax)
     2d1:	f4                   	hlt    
     2d2:	eb fd                	jmp    0x2d1
     2d4:	38 06                	cmp    %al,(%rsi)
     2d6:	ff 02                	incl   (%rdx)
     2d8:	74 05                	je     0x2df
     2da:	a2 ff 02 eb 00 66 9c 	movabs %al,0xa00f9c6600eb02ff
     2e1:	0f a0 
     2e3:	0f a8                	pushq  %gs
     2e5:	66 60                	data16 (bad) 
     2e7:	83 ec 2c             	sub    $0x2c,%esp
     2ea:	89 d6                	mov    %edx,%esi
     2ec:	89 e7                	mov    %esp,%edi
     2ee:	b9 0b 00 f3 66       	mov    $0x66f3000b,%ecx
     2f3:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
     2f4:	66 61                	data16 (bad) 
     2f6:	0f a9                	popq   %gs
     2f8:	0f a1                	popq   %fs
     2fa:	07                   	(bad)  
     2fb:	1f                   	(bad)  
     2fc:	66 9d                	popfw  
     2fe:	cd 00                	int    $0x0
     300:	66 9c                	pushfw 
     302:	1e                   	(bad)  
     303:	06                   	(bad)  
     304:	0f a0                	pushq  %fs
     306:	0f a8                	pushq  %gs
     308:	66 60                	data16 (bad) 
     30a:	fc                   	cld    
     30b:	66 0f b7 e4          	movzww %sp,%sp
     30f:	8c c8                	mov    %cs,%eax
     311:	8e d8                	mov    %eax,%ds
     313:	8e c0                	mov    %eax,%es
     315:	67 8b 7c 24 44       	mov    0x44(%esp),%edi
     31a:	21 ff                	and    %edi,%edi
     31c:	74 08                	je     0x326
     31e:	89 e6                	mov    %esp,%esi
     320:	b9 0b 00 f3 66       	mov    $0x66f3000b,%ecx
     325:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
     326:	83 c4 2c             	add    $0x2c,%esp
     329:	66 61                	data16 (bad) 
     32b:	0f a9                	popq   %gs
     32d:	0f a1                	popq   %fs
     32f:	66 9d                	popfw  
     331:	66 c3                	retw   
     333:	66 56                	push   %si
     335:	66 53                	push   %bx
     337:	66 83 ec 2c          	sub    $0x2c,%sp
     33b:	66 89 c3             	mov    %ax,%bx
     33e:	66 83 f8 0a          	cmp    $0xa,%ax
     342:	75 0c                	jne    0x350
     344:	66 b8 0d 00          	mov    $0xd,%ax
     348:	00 00                	add    %al,(%rax)
     34a:	66 e8 e3 ff          	callw  0x331
     34e:	ff                   	(bad)  
     34f:	ff 66 89             	jmpq   *-0x77(%rsi)
     352:	e0 66                	loopne 0x3ba
     354:	e8 8b 15 00 00       	callq  0x18e4
     359:	67 c7 44 24 10 07 00 	movl   $0xc7670007,0x10(%esp)
     360:	67 c7 
     362:	44 24 18             	rex.R and $0x18,%al
     365:	01 00                	add    %eax,(%rax)
     367:	67 c6 44 24 1d 0e    	movb   $0xe,0x1d(%esp)
     36d:	66 89 de             	mov    %bx,%si
     370:	67 88 5c 24 1c       	mov    %bl,0x1c(%esp)
     375:	66 31 c9             	xor    %cx,%cx
     378:	66 89 e2             	mov    %sp,%dx
     37b:	66 b8 10 00          	mov    $0x10,%ax
     37f:	00 00                	add    %al,(%rax)
     381:	66 e8 4d ff          	callw  0x2d2
     385:	ff                   	(bad)  
     386:	ff 66 83             	jmpq   *-0x7d(%rsi)
     389:	3e cc                	ds int3 
     38b:	46 00 74 28 66       	add    %r14b,0x66(%rax,%r13,1)
     390:	b9 ff ff 00 00       	mov    $0xffff,%ecx
     395:	66 8b 16             	mov    (%rsi),%dx
     398:	cc                   	int3   
     399:	46                   	rex.RX
     39a:	66 89 d3             	mov    %dx,%bx
     39d:	66 83 c2 05          	add    $0x5,%dx
     3a1:	ec                   	in     (%dx),%al
     3a2:	a8 20                	test   $0x20,%al
     3a4:	74 09                	je     0x3af
     3a6:	66 89 f0             	mov    %si,%ax
     3a9:	66 89 da             	mov    %bx,%dx
     3ac:	ee                   	out    %al,(%dx)
     3ad:	eb 08                	jmp    0x3b7
     3af:	66 49 74 f3          	data16 rex.WB je 0x3a6
     3b3:	f3 90                	pause  
     3b5:	eb de                	jmp    0x395
     3b7:	66 83 c4 2c          	add    $0x2c,%sp
     3bb:	66 5b                	pop    %bx
     3bd:	66 5e                	pop    %si
     3bf:	66 c3                	retw   
     3c1:	66 53                	push   %bx
     3c3:	66 89 c3             	mov    %ax,%bx
     3c6:	67 66 0f be 03       	movsbw (%ebx),%ax
     3cb:	84 c0                	test   %al,%al
     3cd:	74 0a                	je     0x3d9
     3cf:	66 43                	data16 rex.XB
     3d1:	66 e8 5c ff          	callw  0x331
     3d5:	ff                   	(bad)  
     3d6:	ff                   	(bad)  
     3d7:	eb ed                	jmp    0x3c6
     3d9:	66 5b                	pop    %bx
     3db:	66 c3                	retw   
     3dd:	07                   	(bad)  
     3de:	4e 6f                	rex.WRX outsl %ds:(%rsi),(%dx)
     3e0:	20 73 65             	and    %dh,0x65(%rbx)
     3e3:	74 75                	je     0x45a
     3e5:	70 20                	jo     0x407
     3e7:	73 69                	jae    0x452
     3e9:	67 6e                	outsb  %ds:(%esi),(%dx)
     3eb:	61                   	(bad)  
     3ec:	74 75                	je     0x463
     3ee:	72 65                	jb     0x455
     3f0:	20 66 6f             	and    %ah,0x6f(%rsi)
     3f3:	75 6e                	jne    0x463
     3f5:	64 2e 2e 2e 0a 00    	fs cs cs or %cs:(%rax),%al
     3fb:	66 ba a1 86          	mov    $0x86a1,%dx
     3ff:	01 00                	add    %eax,(%rax)
     401:	66 b9 20 00          	mov    $0x20,%cx
     405:	00 00                	add    %al,(%rax)
     407:	66 4a 74 21          	data16 rex.WX je 0x42c
     40b:	e6 80                	out    %al,$0x80
     40d:	e4 64                	in     $0x64,%al
     40f:	3c ff                	cmp    $0xff,%al
     411:	75 06                	jne    0x419
     413:	66 49 75 06          	data16 rex.WB jne 0x41d
     417:	eb 13                	jmp    0x42c
     419:	a8 01                	test   $0x1,%al
     41b:	74 06                	je     0x423
     41d:	e6 80                	out    %al,$0x80
     41f:	e4 60                	in     $0x60,%al
     421:	eb e4                	jmp    0x407
     423:	a8 02                	test   $0x2,%al
     425:	75 e0                	jne    0x407
     427:	66 31 c0             	xor    %ax,%ax
     42a:	66 c3                	retw   
     42c:	66 83 c8 ff          	or     $0xffff,%ax
     430:	66 c3                	retw   
     432:	66 53                	push   %bx
     434:	66 31 d2             	xor    %dx,%dx
     437:	8e e2                	mov    %edx,%fs
     439:	66 83 ca ff          	or     $0xffff,%dx
     43d:	8e ea                	mov    %edx,%gs
     43f:	64 66 8b 1e          	mov    %fs:(%rsi),%bx
     443:	00 02                	add    %al,(%rdx)
     445:	66 89 da             	mov    %bx,%dx
     448:	67 66 8d 0c 18       	lea    (%eax,%ebx,1),%cx
     44d:	66 39 ca             	cmp    %cx,%dx
     450:	74 19                	je     0x46b
     452:	66 42                	data16 rex.X
     454:	64 66 89 16          	mov    %dx,%fs:(%rsi)
     458:	00 02                	add    %al,(%rdx)
     45a:	e6 80                	out    %al,$0x80
     45c:	65 66 a1 10 02 66 39 	movabs %gs:0x66e774d039660210,%ax
     463:	d0 74 e7 66 
     467:	31 d0                	xor    %edx,%eax
     469:	eb 03                	jmp    0x46e
     46b:	66 31 c0             	xor    %ax,%ax
     46e:	64 66 89 1e          	mov    %bx,%fs:(%rsi)
     472:	00 02                	add    %al,(%rdx)
     474:	66 5b                	pop    %bx
     476:	66 c3                	retw   
     478:	66 56                	push   %si
     47a:	66 53                	push   %bx
     47c:	66 83 ec 2c          	sub    $0x2c,%sp
     480:	66 bb 00 01          	mov    $0x100,%bx
     484:	00 00                	add    %al,(%rax)
     486:	66 4b 0f 84 c2 00 66 	data16 rex.WXB je 0xffffffffb8660550
     48d:	b8 
     48e:	20 00                	and    %al,(%rax)
     490:	00 00                	add    %al,(%rax)
     492:	66 e8 9a ff          	callw  0x430
     496:	ff                   	(bad)  
     497:	ff 66 85             	jmpq   *-0x7b(%rsi)
     49a:	c0 74 06 66 31       	shlb   $0x31,0x66(%rsi,%rax,1)
     49f:	c0 e9 af             	shr    $0xaf,%cl
     4a2:	00 66 89             	add    %ah,-0x77(%rsi)
     4a5:	e0 66                	loopne 0x50d
     4a7:	e8 38 14 00 00       	callq  0x18e4
     4ac:	67 c7 44 24 1c 01 24 	movl   $0x31662401,0x1c(%esp)
     4b3:	66 31 
     4b5:	c9                   	leaveq 
     4b6:	66 89 e2             	mov    %sp,%dx
     4b9:	66 b8 15 00          	mov    $0x15,%ax
     4bd:	00 00                	add    %al,(%rax)
     4bf:	66 e8 0f fe          	callw  0x2d2
     4c3:	ff                   	(bad)  
     4c4:	ff 66 b8             	jmpq   *-0x48(%rsi)
     4c7:	20 00                	and    %al,(%rax)
     4c9:	00 00                	add    %al,(%rax)
     4cb:	66 e8 61 ff          	callw  0x430
     4cf:	ff                   	(bad)  
     4d0:	ff 66 85             	jmpq   *-0x7b(%rsi)
     4d3:	c0 75 c7 66          	shlb   $0x66,-0x39(%rbp)
     4d7:	e8 1f ff ff ff       	callq  0x3fb
     4dc:	66 89 c6             	mov    %ax,%si
     4df:	66 b8 20 00          	mov    $0x20,%ax
     4e3:	00 00                	add    %al,(%rax)
     4e5:	66 e8 47 ff          	callw  0x430
     4e9:	ff                   	(bad)  
     4ea:	ff 66 85             	jmpq   *-0x7b(%rsi)
     4ed:	c0 75 ad 66          	shlb   $0x66,-0x53(%rbp)
     4f1:	85 f6                	test   %esi,%esi
     4f3:	74 21                	je     0x516
     4f5:	e4 92                	in     $0x92,%al
     4f7:	66 83 e0 fe          	and    $0xfffe,%ax
     4fb:	66 83 c8 02          	or     $0x2,%ax
     4ff:	e6 92                	out    %al,$0x92
     501:	66 b8 00 00          	mov    $0x0,%ax
     505:	20 00                	and    %al,(%rax)
     507:	66 e8 25 ff          	callw  0x430
     50b:	ff                   	(bad)  
     50c:	ff 66 85             	jmpq   *-0x7b(%rsi)
     50f:	c0 0f 84             	rorb   $0x84,(%rdi)
     512:	72 ff                	jb     0x513
     514:	eb 87                	jmp    0x49d
     516:	66 e8 df fe          	callw  0x3f9
     51a:	ff                   	(bad)  
     51b:	ff b0 d1 e6 64 66    	pushq  0x6664e6d1(%rax)
     521:	e8 d5 fe ff ff       	callq  0x3fb
     526:	b0 df                	mov    $0xdf,%al
     528:	e6 60                	out    %al,$0x60
     52a:	66 e8 cb fe          	callw  0x3f9
     52e:	ff                   	(bad)  
     52f:	ff b0 ff e6 64 66    	pushq  0x6664e6ff(%rax)
     535:	e8 c1 fe ff ff       	callq  0x3fb
     53a:	66 b8 00 00          	mov    $0x0,%ax
     53e:	20 00                	and    %al,(%rax)
     540:	66 e8 ec fe          	callw  0x430
     544:	ff                   	(bad)  
     545:	ff 66 85             	jmpq   *-0x7b(%rsi)
     548:	c0 74 aa e9 4f       	shlb   $0x4f,-0x17(%rdx,%rbp,4)
     54d:	ff 66 83             	jmpq   *-0x7d(%rsi)
     550:	c8 ff 66 83          	enterq $0x66ff,$0x83
     554:	c4                   	(bad)  
     555:	2c 66                	sub    $0x66,%al
     557:	5b                   	pop    %rbx
     558:	66 5e                	pop    %si
     55a:	66 c3                	retw   
     55c:	66 55                	push   %bp
     55e:	66 57                	push   %di
     560:	66 56                	push   %si
     562:	66 53                	push   %bx
     564:	66 83 ec 08          	sub    $0x8,%sp
     568:	67 66 89 14 24       	mov    %dx,(%esp)
     56d:	66 85 c0             	test   %ax,%ax
     570:	0f 84 dc 00 66 89    	je     0xffffffff89660652
     576:	cd 66                	int    $0x66
     578:	89 c7                	mov    %eax,%edi
     57a:	66 83 e7 0f          	and    $0xf,%di
     57e:	66 c1 e8 04          	shr    $0x4,%ax
     582:	8e e0                	mov    %eax,%fs
     584:	66 89 cb             	mov    %cx,%bx
     587:	66 31 c0             	xor    %ax,%ax
     58a:	66 31 f6             	xor    %si,%si
     58d:	66 83 c9 ff          	or     $0xffff,%cx
     591:	67 66 8b 54 24 1c    	mov    0x1c(%esp),%dx
     597:	66 4a                	data16 rex.WX
     599:	67 66 89 54 24 04    	mov    %dx,0x4(%esp)
     59f:	64 67 8a 17          	mov    %fs:(%edi),%dl
     5a3:	84 d2                	test   %dl,%dl
     5a5:	0f 84 98 00 66 83    	je     0xffffffff83660643
     5ab:	f8                   	clc    
     5ac:	02 74 50 66          	add    0x66(%rax,%rdx,2),%dh
     5b0:	83 f8 03             	cmp    $0x3,%eax
     5b3:	74 58                	je     0x60d
     5b5:	66 48 74 0a          	data16 rex.W je 0x5c3
     5b9:	66 31 c0             	xor    %ax,%ax
     5bc:	80 fa 20             	cmp    $0x20,%dl
     5bf:	76 73                	jbe    0x634
     5c1:	eb 07                	jmp    0x5ca
     5c3:	80 fa 3d             	cmp    $0x3d,%dl
     5c6:	75 19                	jne    0x5e1
     5c8:	eb 0f                	jmp    0x5d9
     5ca:	67 66 8b 04 24       	mov    (%esp),%ax
     5cf:	80 fa 3d             	cmp    $0x3d,%dl
     5d2:	75 18                	jne    0x5ec
     5d4:	67 66 8b 34 24       	mov    (%esp),%si
     5d9:	67 80 3e 00          	cmpb   $0x0,(%esi)
     5dd:	74 44                	je     0x623
     5df:	eb 08                	jmp    0x5e9
     5e1:	66 31 c0             	xor    %ax,%ax
     5e4:	80 fa 20             	cmp    $0x20,%dl
     5e7:	76 4b                	jbe    0x634
     5e9:	66 89 f0             	mov    %si,%ax
     5ec:	67 66 8d 70 01       	lea    0x1(%eax),%si
     5f1:	67 38 10             	cmp    %dl,(%eax)
     5f4:	0f 95 c0             	setne  %al
     5f7:	66 0f b6 c0          	movzbw %al,%ax
     5fb:	66 40 eb 35          	data16 rex jmp 0x634
     5ff:	66 31 c0             	xor    %ax,%ax
     602:	80 fa 20             	cmp    $0x20,%dl
     605:	0f 97 c0             	seta   %al
     608:	66 01 c0             	add    %ax,%ax
     60b:	eb 27                	jmp    0x634
     60d:	80 fa 20             	cmp    $0x20,%dl
     610:	76 1f                	jbe    0x631
     612:	67 66 39 4c 24 04    	cmp    %cx,0x4(%esp)
     618:	7e 05                	jle    0x61f
     61a:	67 88 13             	mov    %dl,(%ebx)
     61d:	66 43                	data16 rex.XB
     61f:	66 41 eb 11          	data16 rex.B jmp 0x634
     623:	66 89 eb             	mov    %bp,%bx
     626:	66 b8 03 00          	mov    $0x3,%ax
     62a:	00 00                	add    %al,(%rax)
     62c:	66 31 c9             	xor    %cx,%cx
     62f:	eb 03                	jmp    0x634
     631:	66 31 c0             	xor    %ax,%ax
     634:	66 47                	data16 rex.RXB
     636:	66 81 ff 00 00       	cmp    $0x0,%di
     63b:	01 00                	add    %eax,(%rax)
     63d:	0f 85 5e ff 67 66    	jne    0x666805a1
     643:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%rsp)
     648:	74 0a                	je     0x654
     64a:	67 c6 03 00          	movb   $0x0,(%ebx)
     64e:	eb 04                	jmp    0x654
     650:	66 83 c9 ff          	or     $0xffff,%cx
     654:	66 89 c8             	mov    %cx,%ax
     657:	66 83 c4 08          	add    $0x8,%sp
     65b:	66 5b                	pop    %bx
     65d:	66 5e                	pop    %si
     65f:	66 5f                	pop    %di
     661:	66 5d                	pop    %bp
     663:	66 c3                	retw   
     665:	66 85 c0             	test   %ax,%ax
     668:	0f 84 9b 00 66 55    	je     0x55660709
     66e:	66 57                	push   %di
     670:	66 56                	push   %si
     672:	66 53                	push   %bx
     674:	66 51                	push   %cx
     676:	66 89 d7             	mov    %dx,%di
     679:	66 89 c5             	mov    %ax,%bp
     67c:	66 83 e5 0f          	and    $0xf,%bp
     680:	66 c1 e8 04          	shr    $0x4,%ax
     684:	8e e0                	mov    %eax,%fs
     686:	66 b8 00 00          	mov    $0x0,%ax
     68a:	01 00                	add    %eax,(%rax)
     68c:	66 29 e8             	sub    %bp,%ax
     68f:	67 66 89 04 24       	mov    %ax,(%esp)
     694:	66 31 db             	xor    %bx,%bx
     697:	66 31 f6             	xor    %si,%si
     69a:	66 31 c0             	xor    %ax,%ax
     69d:	66 31 c9             	xor    %cx,%cx
     6a0:	64 67 8a 14 29       	mov    %fs:(%ecx,%ebp,1),%dl
     6a5:	66 41                	data16 rex.B
     6a7:	66 83 fb 01          	cmp    $0x1,%bx
     6ab:	74 15                	je     0x6c2
     6ad:	66 83 fb 02          	cmp    $0x2,%bx
     6b1:	74 36                	je     0x6e9
     6b3:	84 d2                	test   %dl,%dl
     6b5:	74 56                	je     0x70d
     6b7:	80 fa 20             	cmp    $0x20,%dl
     6ba:	76 3f                	jbe    0x6fb
     6bc:	66 89 fe             	mov    %di,%si
     6bf:	66 89 c8             	mov    %cx,%ax
     6c2:	67 8a 1e             	mov    (%esi),%bl
     6c5:	84 db                	test   %bl,%bl
     6c7:	75 0d                	jne    0x6d6
     6c9:	80 fa 20             	cmp    $0x20,%dl
     6cc:	76 42                	jbe    0x710
     6ce:	66 bb 02 00          	mov    $0x2,%bx
     6d2:	00 00                	add    %al,(%rax)
     6d4:	eb 28                	jmp    0x6fe
     6d6:	84 d2                	test   %dl,%dl
     6d8:	74 33                	je     0x70d
     6da:	66 46 38 d3          	data16 rex.RX cmp %r10b,%bl
     6de:	0f 95 c3             	setne  %bl
     6e1:	66 0f b6 db          	movzbw %bl,%bx
     6e5:	66 43 eb 15          	data16 rex.XB jmp 0x6fe
     6e9:	84 d2                	test   %dl,%dl
     6eb:	74 20                	je     0x70d
     6ed:	66 31 db             	xor    %bx,%bx
     6f0:	80 fa 20             	cmp    $0x20,%dl
     6f3:	0f 97 c3             	seta   %bl
     6f6:	66 01 db             	add    %bx,%bx
     6f9:	eb 03                	jmp    0x6fe
     6fb:	66 31 db             	xor    %bx,%bx
     6fe:	67 66 39 0c 24       	cmp    %cx,(%esp)
     703:	75 9b                	jne    0x6a0
     705:	eb 06                	jmp    0x70d
     707:	66 83 c8 ff          	or     $0xffff,%ax
     70b:	66 c3                	retw   
     70d:	66 31 c0             	xor    %ax,%ax
     710:	66 5a                	pop    %dx
     712:	66 5b                	pop    %bx
     714:	66 5e                	pop    %si
     716:	66 5f                	pop    %di
     718:	66 5d                	pop    %bp
     71a:	66 c3                	retw   
     71c:	56                   	push   %rsi
     71d:	57                   	push   %rdi
     71e:	89 c7                	mov    %eax,%edi
     720:	89 d6                	mov    %edx,%esi
     722:	51                   	push   %rcx
     723:	c1 e9 02             	shr    $0x2,%ecx
     726:	f3 66 a5             	rep movsw %ds:(%rsi),%es:(%rdi)
     729:	59                   	pop    %rcx
     72a:	83 e1 03             	and    $0x3,%ecx
     72d:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
     72f:	5f                   	pop    %rdi
     730:	5e                   	pop    %rsi
     731:	66 c3                	retw   
     733:	57                   	push   %rdi
     734:	89 c7                	mov    %eax,%edi
     736:	66 0f b6 c2          	movzbw %dl,%ax
     73a:	66 69 c0 01 01       	imul   $0x101,%ax,%ax
     73f:	01 01                	add    %eax,(%rcx)
     741:	51                   	push   %rcx
     742:	c1 e9 02             	shr    $0x2,%ecx
     745:	f3 66 ab             	rep stos %ax,%es:(%rdi)
     748:	59                   	pop    %rcx
     749:	83 e1 03             	and    $0x3,%ecx
     74c:	f3 aa                	rep stos %al,%es:(%rdi)
     74e:	5f                   	pop    %rdi
     74f:	66 c3                	retw   
     751:	1e                   	(bad)  
     752:	0f a0                	pushq  %fs
     754:	1f                   	(bad)  
     755:	66 e8 c1 ff          	callw  0x71a
     759:	ff                   	(bad)  
     75a:	ff 1f                	lcall  *(%rdi)
     75c:	66 c3                	retw   
     75e:	06                   	(bad)  
     75f:	0f a0                	pushq  %fs
     761:	07                   	(bad)  
     762:	66 e8 b4 ff          	callw  0x71a
     766:	ff                   	(bad)  
     767:	ff 07                	incl   (%rdi)
     769:	66 c3                	retw   
     76b:	66 55                	push   %bp
     76d:	66 57                	push   %di
     76f:	66 56                	push   %si
     771:	66 53                	push   %bx
     773:	66 83 ec 10          	sub    $0x10,%sp
     777:	67 66 8d 4c 24 04    	lea    0x4(%esp),%cx
     77d:	67 66 8d 54 24 0c    	lea    0xc(%esp),%dx
     783:	67 66 8d 44 24 08    	lea    0x8(%esp),%ax
     789:	66 e8 40 03          	callw  0xacd
     78d:	00 00                	add    %al,(%rax)
     78f:	67 66 8b 44 24 0c    	mov    0xc(%esp),%ax
     795:	67 66 39 44 24 08    	cmp    %ax,0x8(%esp)
     79b:	0f 8d 99 00 66 ba    	jge    0xffffffffba66083a
     7a1:	00 30                	add    %dh,(%rax)
     7a3:	00 00                	add    %al,(%rax)
     7a5:	66 83 f8 40          	cmp    $0x40,%ax
     7a9:	74 2a                	je     0x7d5
     7ab:	66 83 f8 0f          	cmp    $0xf,%ax
     7af:	75 06                	jne    0x7b7
     7b1:	66 b8 06 00          	mov    $0x6,%ax
     7b5:	00 00                	add    %al,(%rax)
     7b7:	66 50                	push   %ax
     7b9:	66 68 07 30          	pushw  $0x3007
     7bd:	00 00                	add    %al,(%rax)
     7bf:	66 68 c0 35          	pushw  $0x35c0
     7c3:	00 00                	add    %al,(%rax)
     7c5:	66 e8 c1 10          	callw  0x188a
     7c9:	00 00                	add    %al,(%rax)
     7cb:	66 83 c4 0c          	add    $0xc,%sp
     7cf:	66 ba c0 35          	mov    $0x35c0,%dx
     7d3:	00 00                	add    %al,(%rax)
     7d5:	66 52                	push   %dx
     7d7:	66 68 0d 30          	pushw  $0x300d
     7db:	00 00                	add    %al,(%rax)
     7dd:	66 e8 c3 10          	callw  0x18a4
     7e1:	00 00                	add    %al,(%rax)
     7e3:	67 66 8b 44 24 10    	mov    0x10(%esp),%ax
     7e9:	66 5e                	pop    %si
     7eb:	66 5f                	pop    %di
     7ed:	66 ba 00 30          	mov    $0x3000,%dx
     7f1:	00 00                	add    %al,(%rax)
     7f3:	66 83 f8 40          	cmp    $0x40,%ax
     7f7:	74 2a                	je     0x823
     7f9:	66 83 f8 0f          	cmp    $0xf,%ax
     7fd:	75 06                	jne    0x805
     7ff:	66 b8 06 00          	mov    $0x6,%ax
     803:	00 00                	add    %al,(%rax)
     805:	66 50                	push   %ax
     807:	66 68 07 30          	pushw  $0x3007
     80b:	00 00                	add    %al,(%rax)
     80d:	66 68 c0 35          	pushw  $0x35c0
     811:	00 00                	add    %al,(%rax)
     813:	66 e8 73 10          	callw  0x188a
     817:	00 00                	add    %al,(%rax)
     819:	66 83 c4 0c          	add    $0xc,%sp
     81d:	66 ba c0 35          	mov    $0x35c0,%dx
     821:	00 00                	add    %al,(%rax)
     823:	66 52                	push   %dx
     825:	66 68 2e 30          	pushw  $0x302e
     829:	00 00                	add    %al,(%rax)
     82b:	66 e8 75 10          	callw  0x18a4
     82f:	00 00                	add    %al,(%rax)
     831:	66 59                	pop    %cx
     833:	66 5b                	pop    %bx
     835:	e9 d1 00 67 66       	jmpq   0x6667090b
     83a:	83 7c 24 04 00       	cmpl   $0x0,0x4(%rsp)
     83f:	0f 84 cc 00 66 b8    	je     0xffffffffb8660911
     845:	4c 30 00             	rex.WR xor %r8b,(%rax)
     848:	00 66 e8             	add    %ah,-0x18(%rsi)
     84b:	72 fb                	jb     0x848
     84d:	ff                   	(bad)  
     84e:	ff 67 66             	jmpq   *0x66(%rdi)
     851:	8b 44 24 04          	mov    0x4(%rsp),%eax
     855:	67 66 89 04 24       	mov    %ax,(%esp)
     85a:	66 bb a0 30          	mov    $0x30a0,%bx
     85e:	00 00                	add    %al,(%rax)
     860:	66 31 f6             	xor    %si,%si
     863:	67 66 8b 04 24       	mov    (%esp),%ax
     868:	67 66 8b 3c b0       	mov    (%eax,%esi,4),%di
     86d:	66 31 ed             	xor    %bp,%bp
     870:	67 66 0f b6 03       	movzbw (%ebx),%ax
     875:	66 39 f0             	cmp    %si,%ax
     878:	7c 0d                	jl     0x887
     87a:	75 18                	jne    0x894
     87c:	67 66 0f b6 43 01    	movzbw 0x1(%ebx),%ax
     882:	66 39 e8             	cmp    %bp,%ax
     885:	7d 0d                	jge    0x894
     887:	66 83 c3 02          	add    $0x2,%bx
     88b:	66 43                	data16 rex.XB
     88d:	67 80 7b ff 00       	cmpb   $0x0,-0x1(%ebx)
     892:	75 f7                	jne    0x88b
     894:	66 f7 c7 01 00       	test   $0x1,%di
     899:	00 00                	add    %al,(%rax)
     89b:	74 49                	je     0x8e6
     89d:	67 66 0f b6 03       	movzbw (%ebx),%ax
     8a2:	66 39 f0             	cmp    %si,%ax
     8a5:	75 2b                	jne    0x8d2
     8a7:	67 66 0f b6 43 01    	movzbw 0x1(%ebx),%ax
     8ad:	66 39 e8             	cmp    %bp,%ax
     8b0:	75 20                	jne    0x8d2
     8b2:	67 80 7b 02 00       	cmpb   $0x0,0x2(%ebx)
     8b7:	74 19                	je     0x8d2
     8b9:	67 66 8d 43 02       	lea    0x2(%ebx),%ax
     8be:	66 50                	push   %ax
     8c0:	66 68 91 30          	pushw  $0x3091
     8c4:	00 00                	add    %al,(%rax)
     8c6:	66 e8 da 0f          	callw  0x18a4
     8ca:	00 00                	add    %al,(%rax)
     8cc:	66 58                	pop    %ax
     8ce:	66 5a                	pop    %dx
     8d0:	eb 14                	jmp    0x8e6
     8d2:	66 55                	push   %bp
     8d4:	66 56                	push   %si
     8d6:	66 68 95 30          	pushw  $0x3095
     8da:	00 00                	add    %al,(%rax)
     8dc:	66 e8 c4 0f          	callw  0x18a4
     8e0:	00 00                	add    %al,(%rax)
     8e2:	66 83 c4 0c          	add    $0xc,%sp
     8e6:	66 d1 ef             	shr    %di
     8e9:	66 45                	data16 rex.RB
     8eb:	66 83 fd 20          	cmp    $0x20,%bp
     8ef:	0f 85 7d ff 66 46    	jne    0x46670872
     8f5:	66 83 fe 13          	cmp    $0x13,%si
     8f9:	0f 85 66 ff 66 b8    	jne    0xffffffffb8670865
     8ff:	0a 00                	or     (%rax),%al
     901:	00 00                	add    %al,(%rax)
     903:	66 e8 2a fa          	callw  0x331
     907:	ff                   	(bad)  
     908:	ff 66 83             	jmpq   *-0x7d(%rsi)
     90b:	c8 ff eb 0c          	enterq $0xebff,$0xc
     90f:	66 e8 fe 03          	callw  0xd11
     913:	00 00                	add    %al,(%rax)
     915:	66 f7 d8             	neg    %ax
     918:	66 19 c0             	sbb    %ax,%ax
     91b:	66 83 c4 10          	add    $0x10,%sp
     91f:	66 5b                	pop    %bx
     921:	66 5e                	pop    %si
     923:	66 5f                	pop    %di
     925:	66 5d                	pop    %bp
     927:	66 c3                	retw   
     929:	66 9c                	pushfw 
     92b:	66 9c                	pushfw 
     92d:	66 5a                	pop    %dx
     92f:	66 89 d1             	mov    %dx,%cx
     932:	66 31 c1             	xor    %ax,%cx
     935:	66 51                	push   %cx
     937:	66 9d                	popfw  
     939:	66 9c                	pushfw 
     93b:	66 59                	pop    %cx
     93d:	66 9d                	popfw  
     93f:	66 31 ca             	xor    %cx,%dx
     942:	66 85 c2             	test   %ax,%dx
     945:	0f 95 c0             	setne  %al
     948:	66 0f b6 c0          	movzbw %al,%ax
     94c:	66 c3                	retw   
     94e:	80 3e 58             	cmpb   $0x58,(%rsi)
     951:	36 00 0f             	add    %cl,%ss:(%rdi)
     954:	85 30                	test   %esi,(%rax)
     956:	01 66 57             	add    %esp,0x57(%rsi)
     959:	66 56                	push   %si
     95b:	66 53                	push   %bx
     95d:	66 52                	push   %dx
     95f:	c6 06 58             	movb   $0x58,(%rsi)
     962:	36 01 67 c7          	add    %esp,%ss:-0x39(%rdi)
     966:	04 24                	add    $0x24,%al
     968:	ff                   	(bad)  
     969:	ff 67 c7             	jmpq   *-0x39(%rdi)
     96c:	44 24 02             	rex.R and $0x2,%al
     96f:	ff                   	(bad)  
     970:	ff 0f                	decl   (%rdi)
     972:	20 c0                	and    %al,%al
     974:	a8 0c                	test   $0xc,%al
     976:	74 07                	je     0x97f
     978:	66 83 e0 f3          	and    $0xfff3,%ax
     97c:	0f 22 c0             	mov    %rax,%cr0
     97f:	db e3                	fninit 
     981:	67 dd 7c 24 02       	fnstsw 0x2(%esp)
     986:	67 d9 3c 24          	fnstcw (%esp)
     98a:	67 83 7c 24 02 00    	cmpl   $0x0,0x2(%esp)
     990:	75 14                	jne    0x9a6
     992:	67 66 8b 04 24       	mov    (%esp),%ax
     997:	25 3f 10 83 f8       	and    $0xf883103f,%eax
     99c:	3f                   	(bad)  
     99d:	75 07                	jne    0x9a6
     99f:	66 0f ba 2e 0c       	btsw   $0xc,(%rsi)
     9a4:	36 00 66 b8          	add    %ah,%ss:-0x48(%rsi)
     9a8:	00 00                	add    %al,(%rax)
     9aa:	20 00                	and    %al,(%rax)
     9ac:	66 e8 77 ff          	callw  0x927
     9b0:	ff                   	(bad)  
     9b1:	ff 66 85             	jmpq   *-0x7b(%rsi)
     9b4:	c0 0f 84             	rorb   $0x84,(%rdi)
     9b7:	c4                   	(bad)  
     9b8:	00 66 31             	add    %ah,0x31(%rsi)
     9bb:	f6 66 89             	mulb   -0x77(%rsi)
     9be:	f0 66 89 f1          	lock mov %si,%cx
     9c2:	0f a2                	cpuid  
     9c4:	66 89 c7             	mov    %ax,%di
     9c7:	66 89 0e             	mov    %cx,(%rsi)
     9ca:	e8 35 66 89 16       	callq  0x16897004
     9cf:	e4 35                	in     $0x35,%al
     9d1:	66 89 1e             	mov    %bx,(%rsi)
     9d4:	e0 35                	loopne 0xa0b
     9d6:	67 66 8d 40 ff       	lea    -0x1(%eax),%ax
     9db:	66 3d fe ff          	cmp    $0xfffe,%ax
     9df:	00 00                	add    %al,(%rax)
     9e1:	77 53                	ja     0xa36
     9e3:	66 b8 01 00          	mov    $0x1,%ax
     9e7:	00 00                	add    %al,(%rax)
     9e9:	66 89 f1             	mov    %si,%cx
     9ec:	0f a2                	cpuid  
     9ee:	66 89 0e             	mov    %cx,(%rsi)
     9f1:	1c 36                	sbb    $0x36,%al
     9f3:	66 89 16             	mov    %dx,(%rsi)
     9f6:	0c 36                	or     $0x36,%al
     9f8:	66 89 c2             	mov    %ax,%dx
     9fb:	66 c1 ea 08          	shr    $0x8,%dx
     9ff:	66 83 e2 0f          	and    $0xf,%dx
     a03:	66 89 16             	mov    %dx,(%rsi)
     a06:	00 36                	add    %dh,(%rsi)
     a08:	66 89 16             	mov    %dx,(%rsi)
     a0b:	04 36                	add    $0x36,%al
     a0d:	66 89 c1             	mov    %ax,%cx
     a10:	66 c1 e9 04          	shr    $0x4,%cx
     a14:	66 83 e1 0f          	and    $0xf,%cx
     a18:	66 83 fa 05          	cmp    $0x5,%dx
     a1c:	7f 07                	jg     0xa25
     a1e:	66 89 0e             	mov    %cx,(%rsi)
     a21:	08 36                	or     %dh,(%rsi)
     a23:	eb 11                	jmp    0xa36
     a25:	66 c1 e8 0c          	shr    $0xc,%ax
     a29:	66 25 f0 00          	and    $0xf0,%ax
     a2d:	00 00                	add    %al,(%rax)
     a2f:	66 01 c8             	add    %cx,%ax
     a32:	66 a3 08 36 66 83 ff 	movabs %ax,0x107606ff83663608
     a39:	06 76 10 
     a3c:	66 b8 07 00          	mov    $0x7,%ax
     a40:	00 00                	add    %al,(%rax)
     a42:	66 31 c9             	xor    %cx,%cx
     a45:	0f a2                	cpuid  
     a47:	66 89 0e             	mov    %cx,(%rsi)
     a4a:	4c                   	rex.WR
     a4b:	36 66 31 f6          	ss xor %si,%si
     a4f:	66 b8 00 00          	mov    $0x0,%ax
     a53:	00 80 66 89 f1 0f    	add    %al,0xff18966(%rax)
     a59:	a2 66 05 ff ff ff 7f 	movabs %al,0x3d667fffffff0566
     a60:	66 3d 
     a62:	fe                   	(bad)  
     a63:	ff 00                	incl   (%rax)
     a65:	00 77 15             	add    %dh,0x15(%rdi)
     a68:	66 b8 01 00          	mov    $0x1,%ax
     a6c:	00 80 66 89 f1 0f    	add    %al,0xff18966(%rax)
     a72:	a2 66 89 0e 24 36 66 	movabs %al,0x16896636240e8966
     a79:	89 16 
     a7b:	10 36                	adc    %dh,(%rsi)
     a7d:	66 58                	pop    %ax
     a7f:	66 5b                	pop    %bx
     a81:	66 5e                	pop    %si
     a83:	66 5f                	pop    %di
     a85:	66 c3                	retw   
     a87:	66 c3                	retw   
     a89:	66 53                	push   %bx
     a8b:	66 31 c9             	xor    %cx,%cx
     a8e:	66 31 d2             	xor    %dx,%dx
     a91:	66 bb 01 00          	mov    $0x1,%bx
     a95:	00 00                	add    %al,(%rax)
     a97:	67 66 8b 04 8d 0c 36 	mov    0x360c(,%ecx,4),%ax
     a9e:	00 00 
     aa0:	66 f7 d0             	not    %ax
     aa3:	67 66 23 04 8d 60 31 	and    0x3160(,%ecx,4),%ax
     aaa:	00 00 
     aac:	67 66 89 04 8d 60 36 	mov    %ax,0x3660(,%ecx,4)
     ab3:	00 00 
     ab5:	74 09                	je     0xac0
     ab7:	66 89 d8             	mov    %bx,%ax
     aba:	66 d3 e0             	shl    %cl,%ax
     abd:	66 09 c2             	or     %ax,%dx
     ac0:	66 41                	data16 rex.B
     ac2:	66 83 f9 13          	cmp    $0x13,%cx
     ac6:	75 cf                	jne    0xa97
     ac8:	66 89 d0             	mov    %dx,%ax
     acb:	66 5b                	pop    %bx
     acd:	66 c3                	retw   
     acf:	66 55                	push   %bp
     ad1:	66 57                	push   %di
     ad3:	66 56                	push   %si
     ad5:	66 53                	push   %bx
     ad7:	66 83 ec 0c          	sub    $0xc,%sp
     adb:	67 66 89 04 24       	mov    %ax,(%esp)
     ae0:	66 89 d5             	mov    %dx,%bp
     ae3:	66 89 ce             	mov    %cx,%si
     ae6:	66 ba 0c 36          	mov    $0x360c,%dx
     aea:	00 00                	add    %al,(%rax)
     aec:	66 b9 13 00          	mov    $0x13,%cx
     af0:	00 00                	add    %al,(%rax)
     af2:	66 31 c0             	xor    %ax,%ax
     af5:	66 89 d7             	mov    %dx,%di
     af8:	66 f3 ab             	rep stos %ax,%es:(%rdi)
     afb:	66 c7 06 00 36       	movw   $0x3600,(%rsi)
     b00:	03 00                	add    (%rax),%eax
     b02:	00 00                	add    %al,(%rax)
     b04:	66 b8 00 00          	mov    $0x0,%ax
     b08:	04 00                	add    $0x0,%al
     b0a:	66 e8 19 fe          	callw  0x927
     b0e:	ff                   	(bad)  
     b0f:	ff 66 85             	jmpq   *-0x7b(%rsi)
     b12:	c0 74 09 66 c7       	shlb   $0xc7,0x66(%rcx,%rcx,1)
     b17:	06                   	(bad)  
     b18:	00 36                	add    %dh,(%rsi)
     b1a:	04 00                	add    $0x0,%al
     b1c:	00 00                	add    %al,(%rax)
     b1e:	66 e8 2a fe          	callw  0x94c
     b22:	ff                   	(bad)  
     b23:	ff 66 e8             	jmpq   *-0x18(%rsi)
     b26:	5f                   	pop    %rdi
     b27:	ff                   	(bad)  
     b28:	ff                   	(bad)  
     b29:	ff 66 89             	jmpq   *-0x77(%rsi)
     b2c:	c7                   	(bad)  
     b2d:	f6 06 13             	testb  $0x13,(%rsi)
     b30:	36 20 74 09 66       	and    %dh,%ss:0x66(%rcx,%rcx,1)
     b35:	c7 06 00 36 40 00    	movl   $0x403600,(%rsi)
     b3b:	00 00                	add    %al,(%rax)
     b3d:	66 83 ff 01          	cmp    $0x1,%di
     b41:	0f 85 6d 01 66 8b    	jne    0xffffffff8b660cb4
     b47:	16                   	(bad)  
     b48:	60                   	(bad)  
     b49:	36 66 a1 e0 35 66 f7 	movabs %ss:0xffffffc2f76635e0,%ax
     b50:	c2 ff ff ff 
     b54:	f9                   	stc    
     b55:	75 34                	jne    0xb8b
     b57:	66 3d 41 75          	cmp    $0x7541,%ax
     b5b:	74 68                	je     0xbc5
     b5d:	75 2c                	jne    0xb8b
     b5f:	66 81 3e e4 35       	cmpw   $0x35e4,(%rsi)
     b64:	65 6e                	outsb  %gs:(%rsi),(%dx)
     b66:	74 69                	je     0xbd1
     b68:	75 21                	jne    0xb8b
     b6a:	66 81 3e e8 35       	cmpw   $0x35e8,(%rsi)
     b6f:	63 41 4d             	movsxd 0x4d(%rcx),%eax
     b72:	44 75 16             	rex.R jne 0xb8b
     b75:	66 b9 15 00          	mov    $0x15,%cx
     b79:	01 c0                	add    %eax,%eax
     b7b:	0f 32                	rdmsr  
     b7d:	80 e4 7f             	and    $0x7f,%ah
     b80:	0f 30                	wrmsr  
     b82:	66 e8 c6 fd          	callw  0x94c
     b86:	ff                   	(bad)  
     b87:	ff                   	(bad)  
     b88:	e9 fd 00 66 f7       	jmpq   0xfffffffff7660c8a
     b8d:	c2 ff fe             	retq   $0xfeff
     b90:	ff                   	(bad)  
     b91:	ff 75 3e             	pushq  0x3e(%rbp)
     b94:	66 3d 43 65          	cmp    $0x6543,%ax
     b98:	6e                   	outsb  %ds:(%rsi),(%dx)
     b99:	74 75                	je     0xc10
     b9b:	36 66 81 3e e4 35    	cmpw   $0x35e4,%ss:(%rsi)
     ba1:	61                   	(bad)  
     ba2:	75 72                	jne    0xc16
     ba4:	48 0f 85 84 00 66 81 	jne    0xffffffff81660c2f
     bab:	3e e8 35 61 75 6c    	ds callq 0x6c756ce6
     bb1:	73 75                	jae    0xc28
     bb3:	79 66                	jns    0xc1b
     bb5:	83 3e 08             	cmpl   $0x8,(%rsi)
     bb8:	36 05 7e 71 66 b9    	ss add $0xb966717e,%eax
     bbe:	07                   	(bad)  
     bbf:	11 00                	adc    %eax,(%rax)
     bc1:	00 0f                	add    %cl,(%rdi)
     bc3:	32 0c 82             	xor    (%rdx,%rax,4),%cl
     bc6:	0f 30                	wrmsr  
     bc8:	66 0f ba 2e 0c       	btsw   $0xc,(%rsi)
     bcd:	36 08 e9             	ss or  %ch,%cl
     bd0:	b6 00                	mov    $0x0,%dh
     bd2:	66 3d 47 65          	cmp    $0x6547,%ax
     bd6:	6e                   	outsb  %ds:(%rsi),(%dx)
     bd7:	75 75                	jne    0xc4e
     bd9:	53                   	push   %rbx
     bda:	66 81 3e e4 35       	cmpw   $0x35e4,(%rsi)
     bdf:	69 6e 65 54 75 48 66 	imul   $0x66487554,0x65(%rsi),%ebp
     be6:	81 3e e8 35 4d 78    	cmpl   $0x784d35e8,(%rsi)
     bec:	38 36                	cmp    %dh,(%rsi)
     bee:	75 3d                	jne    0xc2d
     bf0:	66 bf 04 00          	mov    $0x4,%di
     bf4:	86 80 66 89 f9 0f    	xchg   %al,0xff98966(%rax)
     bfa:	32 67 66             	xor    0x66(%rdi),%ah
     bfd:	89 54 24 04          	mov    %edx,0x4(%rsp)
     c01:	67 66 89 44 24 08    	mov    %ax,0x8(%esp)
     c07:	66 83 c8 ff          	or     $0xffff,%ax
     c0b:	0f 30                	wrmsr  
     c0d:	66 b8 01 00          	mov    $0x1,%ax
     c11:	00 00                	add    %al,(%rax)
     c13:	0f a2                	cpuid  
     c15:	66 89 16             	mov    %dx,(%rsi)
     c18:	0c 36                	or     $0x36,%al
     c1a:	67 66 8b 44 24 08    	mov    0x8(%esp),%ax
     c20:	67 66 8b 54 24 04    	mov    0x4(%esp),%dx
     c26:	66 89 f9             	mov    %di,%cx
     c29:	0f 30                	wrmsr  
     c2b:	eb 5b                	jmp    0xc88
     c2d:	66 83 e2 bf          	and    $0xffbf,%dx
     c31:	0f 85 85 00 66 3d    	jne    0x3d660cbc
     c37:	47                   	rex.RXB
     c38:	65 6e                	outsb  %gs:(%rsi),(%dx)
     c3a:	75 75                	jne    0xcb1
     c3c:	7d 66                	jge    0xca4
     c3e:	81 3e e4 35 69 6e    	cmpl   $0x6e6935e4,(%rsi)
     c44:	65 49 75 72          	gs rex.WB jne 0xcba
     c48:	66 81 3e e8 35       	cmpw   $0x35e8,(%rsi)
     c4d:	6e                   	outsb  %ds:(%rsi),(%dx)
     c4e:	74 65                	je     0xcb5
     c50:	6c                   	insb   (%dx),%es:(%rdi)
     c51:	75 67                	jne    0xcba
     c53:	66 83 3e 00          	cmpw   $0x0,(%rsi)
     c57:	36 06                	ss (bad) 
     c59:	75 5f                	jne    0xcba
     c5b:	66 a1 08 36 66 83 e0 	movabs 0x8366fbe083663608,%ax
     c62:	fb 66 83 
     c65:	f8                   	clc    
     c66:	09 75 51             	or     %esi,0x51(%rbp)
     c69:	66 a1 d8 38 66 3d ff 	movabs 0xfffff3d6638d8,%ax
     c70:	ff 0f 00 
     c73:	76 1e                	jbe    0xc93
     c75:	66 b8 e2 30          	mov    $0x30e2,%ax
     c79:	00 00                	add    %al,(%rax)
     c7b:	66 e8 40 f7          	callw  0x3bf
     c7f:	ff                   	(bad)  
     c80:	ff 66 0f             	jmpq   *0xf(%rsi)
     c83:	ba 2e 0c 36 06       	mov    $0x6360c2e,%edx
     c88:	66 e8 fb fd          	callw  0xa87
     c8c:	ff                   	(bad)  
     c8d:	ff 66 89             	jmpq   *-0x77(%rsi)
     c90:	c7                   	(bad)  
     c91:	eb 1f                	jmp    0xcb2
     c93:	66 ba 05 31          	mov    $0x3105,%dx
     c97:	00 00                	add    %al,(%rax)
     c99:	66 e8 c6 f9          	callw  0x663
     c9d:	ff                   	(bad)  
     c9e:	ff 66 85             	jmpq   *-0x7b(%rsi)
     ca1:	c0 75 d1 66          	shlb   $0x66,-0x2f(%rbp)
     ca5:	b8 0e 31 00 00       	mov    $0x310e,%eax
     caa:	66 e8 11 f7          	callw  0x3bf
     cae:	ff                   	(bad)  
     caf:	ff                   	(bad)  
     cb0:	eb 08                	jmp    0xcba
     cb2:	66 31 c0             	xor    %ax,%ax
     cb5:	66 85 ff             	test   %di,%di
     cb8:	74 06                	je     0xcc0
     cba:	66 b8 60 36          	mov    $0x3660,%ax
     cbe:	00 00                	add    %al,(%rax)
     cc0:	66 85 f6             	test   %si,%si
     cc3:	74 04                	je     0xcc9
     cc5:	67 66 89 06          	mov    %ax,(%esi)
     cc9:	67 66 83 3c 24 00    	cmpw   $0x0,(%esp)
     ccf:	74 0d                	je     0xcde
     cd1:	66 a1 00 36 67 66 8b 	movabs 0x67241c8b66673600,%ax
     cd8:	1c 24 67 
     cdb:	66 89 03             	mov    %ax,(%rbx)
     cde:	66 85 ed             	test   %bp,%bp
     ce1:	74 09                	je     0xcec
     ce3:	67 66 c7 45 00 40 00 	movw   $0x40,0x0(%ebp)
     cea:	00 00                	add    %al,(%rax)
     cec:	66 83 3e 00          	cmpw   $0x0,(%rsi)
     cf0:	36 3f                	ss (bad) 
     cf2:	0f 9e c0             	setle  %al
     cf5:	66 85 ff             	test   %di,%di
     cf8:	0f 95 c2             	setne  %dl
     cfb:	66 09 d0             	or     %dx,%ax
     cfe:	66 0f b6 c0          	movzbw %al,%ax
     d02:	66 f7 d8             	neg    %ax
     d05:	66 83 c4 0c          	add    $0xc,%sp
     d09:	66 5b                	pop    %bx
     d0b:	66 5e                	pop    %si
     d0d:	66 5f                	pop    %di
     d0f:	66 5d                	pop    %bp
     d11:	66 c3                	retw   
     d13:	66 31 c0             	xor    %ax,%ax
     d16:	66 c3                	retw   
     d18:	66 55                	push   %bp
     d1a:	66 57                	push   %di
     d1c:	66 56                	push   %si
     d1e:	66 53                	push   %bx
     d20:	66 89 c1             	mov    %ax,%cx
     d23:	66 89 d6             	mov    %dx,%si
     d26:	67 66 8d 78 03       	lea    0x3(%eax),%di
     d2b:	b3 03                	mov    $0x3,%bl
     d2d:	88 d8                	mov    %bl,%al
     d2f:	66 89 fa             	mov    %di,%dx
     d32:	ee                   	out    %al,(%dx)
     d33:	67 66 8d 69 01       	lea    0x1(%ecx),%bp
     d38:	66 31 c0             	xor    %ax,%ax
     d3b:	66 89 ea             	mov    %bp,%dx
     d3e:	ee                   	out    %al,(%dx)
     d3f:	67 66 8d 51 02       	lea    0x2(%ecx),%dx
     d44:	ee                   	out    %al,(%dx)
     d45:	67 66 8d 51 04       	lea    0x4(%ecx),%dx
     d4a:	88 d8                	mov    %bl,%al
     d4c:	ee                   	out    %al,(%dx)
     d4d:	66 b8 00 c2          	mov    $0xc200,%ax
     d51:	01 00                	add    %eax,(%rax)
     d53:	66 99                	cwtd   
     d55:	66 f7 fe             	idiv   %si
     d58:	66 89 c3             	mov    %ax,%bx
     d5b:	66 89 fa             	mov    %di,%dx
     d5e:	ec                   	in     (%dx),%al
     d5f:	66 89 c6             	mov    %ax,%si
     d62:	66 83 c8 80          	or     $0xff80,%ax
     d66:	ee                   	out    %al,(%dx)
     d67:	88 d8                	mov    %bl,%al
     d69:	66 89 ca             	mov    %cx,%dx
     d6c:	ee                   	out    %al,(%dx)
     d6d:	66 89 d8             	mov    %bx,%ax
     d70:	66 c1 e8 08          	shr    $0x8,%ax
     d74:	66 89 ea             	mov    %bp,%dx
     d77:	ee                   	out    %al,(%dx)
     d78:	66 89 f0             	mov    %si,%ax
     d7b:	66 83 e0 7f          	and    $0x7f,%ax
     d7f:	66 89 fa             	mov    %di,%dx
     d82:	ee                   	out    %al,(%dx)
     d83:	66 89 0e             	mov    %cx,(%rsi)
     d86:	cc                   	int3   
     d87:	46                   	rex.RX
     d88:	66 5b                	pop    %bx
     d8a:	66 5e                	pop    %si
     d8c:	66 5f                	pop    %di
     d8e:	66 5d                	pop    %bp
     d90:	66 c3                	retw   
     d92:	66 55                	push   %bp
     d94:	66 57                	push   %di
     d96:	66 56                	push   %si
     d98:	66 53                	push   %bx
     d9a:	66 83 ec 48          	sub    $0x48,%sp
     d9e:	66 a1 d8 38 66 3d ff 	movabs 0xfffff3d6638d8,%ax
     da5:	ff 0f 00 
     da8:	0f 87 35 01 67 66    	ja     0x66670ee3
     dae:	8d 7c 24 08          	lea    0x8(%rsp),%edi
     db2:	66 6a 20             	pushw  $0x20
     db5:	66 89 f9             	mov    %di,%cx
     db8:	66 ba ac 31          	mov    $0x31ac,%dx
     dbc:	00 00                	add    %al,(%rax)
     dbe:	66 e8 98 f7          	callw  0x55a
     dc2:	ff                   	(bad)  
     dc3:	ff 66 59             	jmpq   *0x59(%rsi)
     dc6:	66 85 c0             	test   %ax,%ax
     dc9:	0f 8e 14 01 66 b9    	jle    0xffffffffb9660ee3
     dcf:	06                   	(bad)  
     dd0:	00 00                	add    %al,(%rax)
     dd2:	00 66 ba             	add    %ah,-0x46(%rsi)
     dd5:	b8 31 00 00 66       	mov    $0x66000031,%eax
     dda:	89 f8                	mov    %edi,%eax
     ddc:	66 e8 c8 0b          	callw  0x19a8
     de0:	00 00                	add    %al,(%rax)
     de2:	66 83 f8 01          	cmp    $0x1,%ax
     de6:	66 19 f6             	sbb    %si,%si
     de9:	66 81 e6 f8 03       	and    $0x3f8,%si
     dee:	00 00                	add    %al,(%rax)
     df0:	66 83 f8 01          	cmp    $0x1,%ax
     df4:	66 19 db             	sbb    %bx,%bx
     df7:	66 83 e3 06          	and    $0x6,%bx
     dfb:	67 80 7c 1c 08 2c    	cmpb   $0x2c,0x8(%esp,%ebx,1)
     e01:	75 58                	jne    0xe5b
     e03:	66 43                	data16 rex.XB
     e05:	66 83 fb 07          	cmp    $0x7,%bx
     e09:	75 50                	jne    0xe5b
     e0b:	67 66 8d 6c 24 0f    	lea    0xf(%esp),%bp
     e11:	66 b9 02 00          	mov    $0x2,%cx
     e15:	00 00                	add    %al,(%rax)
     e17:	66 ba bf 31          	mov    $0x31bf,%dx
     e1b:	00 00                	add    %al,(%rax)
     e1d:	66 89 e8             	mov    %bp,%ax
     e20:	66 e8 84 0b          	callw  0x19a8
     e24:	00 00                	add    %al,(%rax)
     e26:	66 85 c0             	test   %ax,%ax
     e29:	75 30                	jne    0xe5b
     e2b:	66 b9 10 00          	mov    $0x10,%cx
     e2f:	00 00                	add    %al,(%rax)
     e31:	67 66 8d 54 24 04    	lea    0x4(%esp),%dx
     e37:	66 89 e8             	mov    %bp,%ax
     e3a:	66 e8 ee 0b          	callw  0x1a2c
     e3e:	00 00                	add    %al,(%rax)
     e40:	66 89 c6             	mov    %ax,%si
     e43:	66 85 c0             	test   %ax,%ax
     e46:	74 50                	je     0xe98
     e48:	67 66 8b 44 24 04    	mov    0x4(%esp),%ax
     e4e:	66 39 e8             	cmp    %bp,%ax
     e51:	74 45                	je     0xe98
     e53:	66 29 f8             	sub    %di,%ax
     e56:	66 89 c3             	mov    %ax,%bx
     e59:	eb 43                	jmp    0xe9e
     e5b:	67 66 8d 04 1f       	lea    (%edi,%ebx,1),%ax
     e60:	66 b9 04 00          	mov    $0x4,%cx
     e64:	00 00                	add    %al,(%rax)
     e66:	66 ba c2 31          	mov    $0x31c2,%dx
     e6a:	00 00                	add    %al,(%rax)
     e6c:	66 e8 38 0b          	callw  0x19a8
     e70:	00 00                	add    %al,(%rax)
     e72:	66 85 c0             	test   %ax,%ax
     e75:	75 27                	jne    0xe9e
     e77:	67 66 8d 43 04       	lea    0x4(%ebx),%ax
     e7c:	66 83 c3 05          	add    $0x5,%bx
     e80:	67 80 7c 04 08 31    	cmpb   $0x31,0x8(%esp,%eax,1)
     e86:	0f 94 c0             	sete   %al
     e89:	66 0f b6 c0          	movzbw %al,%ax
     e8d:	67 66 8b 34 85 e8 31 	mov    0x31e8(,%eax,4),%si
     e94:	00 00 
     e96:	eb 06                	jmp    0xe9e
     e98:	66 be f8 03          	mov    $0x3f8,%si
     e9c:	00 00                	add    %al,(%rax)
     e9e:	67 80 7c 1c 08 2c    	cmpb   $0x2c,0x8(%esp,%ebx,1)
     ea4:	75 02                	jne    0xea8
     ea6:	66 43                	data16 rex.XB
     ea8:	66 01 df             	add    %bx,%di
     eab:	66 31 c9             	xor    %cx,%cx
     eae:	67 66 8d 54 24 04    	lea    0x4(%esp),%dx
     eb4:	66 89 f8             	mov    %di,%ax
     eb7:	66 e8 71 0b          	callw  0x1a2c
     ebb:	00 00                	add    %al,(%rax)
     ebd:	66 89 c2             	mov    %ax,%dx
     ec0:	66 85 c0             	test   %ax,%ax
     ec3:	74 08                	je     0xecd
     ec5:	67 66 3b 7c 24 04    	cmp    0x4(%esp),%di
     ecb:	75 06                	jne    0xed3
     ecd:	66 ba 80 25          	mov    $0x2580,%dx
     ed1:	00 00                	add    %al,(%rax)
     ed3:	66 85 f6             	test   %si,%si
     ed6:	74 09                	je     0xee1
     ed8:	66 89 f0             	mov    %si,%ax
     edb:	66 e8 37 fe          	callw  0xd16
     edf:	ff                   	(bad)  
     ee0:	ff 66 83             	jmpq   *-0x7d(%rsi)
     ee3:	3e cc                	ds int3 
     ee5:	46 00 0f             	rex.RX add %r9b,(%rdi)
     ee8:	85 0a                	test   %ecx,(%rdx)
     eea:	01 66 a1             	add    %esp,-0x5f(%rsi)
     eed:	d8 38                	fdivrs (%rax)
     eef:	66 3d ff ff          	cmp    $0xffff,%ax
     ef3:	0f 00 0f             	str    (%rdi)
     ef6:	87 fc                	xchg   %edi,%esp
     ef8:	00 67 66             	add    %ah,0x66(%rdi)
     efb:	8d 5c 24 08          	lea    0x8(%rsp),%ebx
     eff:	66 6a 40             	pushw  $0x40
     f02:	66 89 d9             	mov    %bx,%cx
     f05:	66 ba c7 31          	mov    $0x31c7,%dx
     f09:	00 00                	add    %al,(%rax)
     f0b:	66 e8 4b f6          	callw  0x55a
     f0f:	ff                   	(bad)  
     f10:	ff 66 5a             	jmpq   *0x5a(%rsi)
     f13:	66 85 c0             	test   %ax,%ax
     f16:	0f 8e db 00 67 66    	jle    0x66670ff7
     f1c:	89 5c 24 04          	mov    %ebx,0x4(%rsp)
     f20:	66 b9 0c 00          	mov    $0xc,%cx
     f24:	00 00                	add    %al,(%rax)
     f26:	66 ba cf 31          	mov    $0x31cf,%dx
     f2a:	00 00                	add    %al,(%rax)
     f2c:	66 89 d8             	mov    %bx,%ax
     f2f:	66 e8 75 0a          	callw  0x19a8
     f33:	00 00                	add    %al,(%rax)
     f35:	66 85 c0             	test   %ax,%ax
     f38:	67 66 8b 44 24 04    	mov    0x4(%esp),%ax
     f3e:	75 06                	jne    0xf46
     f40:	66 83 c0 0c          	add    $0xc,%ax
     f44:	eb 23                	jmp    0xf69
     f46:	66 b9 08 00          	mov    $0x8,%cx
     f4a:	00 00                	add    %al,(%rax)
     f4c:	66 ba dc 31          	mov    $0x31dc,%dx
     f50:	00 00                	add    %al,(%rax)
     f52:	66 e8 52 0a          	callw  0x19a8
     f56:	00 00                	add    %al,(%rax)
     f58:	66 85 c0             	test   %ax,%ax
     f5b:	0f 85 96 00 67 66    	jne    0x66670ff7
     f61:	8b 44 24 04          	mov    0x4(%rsp),%eax
     f65:	66 83 c0 08          	add    $0x8,%ax
     f69:	66 31 c9             	xor    %cx,%cx
     f6c:	67 66 8d 54 24 04    	lea    0x4(%esp),%dx
     f72:	66 e8 b6 0a          	callw  0x1a2c
     f76:	00 00                	add    %al,(%rax)
     f78:	66 89 c3             	mov    %ax,%bx
     f7b:	67 66 8b 44 24 04    	mov    0x4(%esp),%ax
     f81:	66 85 c0             	test   %ax,%ax
     f84:	74 19                	je     0xf9f
     f86:	67 80 38 2c          	cmpb   $0x2c,(%eax)
     f8a:	75 13                	jne    0xf9f
     f8c:	66 40                	data16 rex
     f8e:	66 31 c9             	xor    %cx,%cx
     f91:	67 66 8d 54 24 04    	lea    0x4(%esp),%dx
     f97:	66 e8 91 0a          	callw  0x1a2c
     f9b:	00 00                	add    %al,(%rax)
     f9d:	eb 45                	jmp    0xfe4
     f9f:	67 66 8d 73 03       	lea    0x3(%ebx),%si
     fa4:	66 89 f2             	mov    %si,%dx
     fa7:	ec                   	in     (%dx),%al
     fa8:	66 89 c7             	mov    %ax,%di
     fab:	66 83 c8 80          	or     $0xff80,%ax
     faf:	ee                   	out    %al,(%dx)
     fb0:	66 89 da             	mov    %bx,%dx
     fb3:	ec                   	in     (%dx),%al
     fb4:	67 88 44 24 03       	mov    %al,0x3(%esp)
     fb9:	67 66 8d 53 01       	lea    0x1(%ebx),%dx
     fbe:	ec                   	in     (%dx),%al
     fbf:	66 0f b6 c8          	movzbw %al,%cx
     fc3:	66 89 f8             	mov    %di,%ax
     fc6:	66 89 f2             	mov    %si,%dx
     fc9:	ee                   	out    %al,(%dx)
     fca:	66 c1 e1 08          	shl    $0x8,%cx
     fce:	67 66 0f b6 44 24 03 	movzbw 0x3(%esp),%ax
     fd5:	66 09 c1             	or     %ax,%cx
     fd8:	66 b8 00 c2          	mov    $0xc200,%ax
     fdc:	01 00                	add    %eax,(%rax)
     fde:	66 31 d2             	xor    %dx,%dx
     fe1:	66 f7 f1             	div    %cx
     fe4:	66 85 db             	test   %bx,%bx
     fe7:	74 0c                	je     0xff5
     fe9:	66 89 c2             	mov    %ax,%dx
     fec:	66 89 d8             	mov    %bx,%ax
     fef:	66 e8 23 fd          	callw  0xd16
     ff3:	ff                   	(bad)  
     ff4:	ff 66 83             	jmpq   *-0x7d(%rsi)
     ff7:	c4                   	(bad)  
     ff8:	48                   	rex.W
     ff9:	66 5b                	pop    %bx
     ffb:	66 5e                	pop    %si
     ffd:	66 5f                	pop    %di
     fff:	66 5d                	pop    %bp
    1001:	66 c3                	retw   
    1003:	66 57                	push   %di
    1005:	66 56                	push   %si
    1007:	66 53                	push   %bx
    1009:	66 83 ec 58          	sub    $0x58,%sp
    100d:	66 89 e0             	mov    %sp,%ax
    1010:	66 e8 ce 08          	callw  0x18e2
    1014:	00 00                	add    %al,(%rax)
    1016:	67 c7 44 24 1c 20 e8 	movl   $0xc767e820,0x1c(%esp)
    101d:	67 c7 
    101f:	44 24 18             	rex.R and $0x18,%al
    1022:	14 00                	adc    $0x0,%al
    1024:	67 66 c7 44 24 14 50 	movw   $0x4150,0x14(%esp)
    102b:	41 
    102c:	4d 53                	rex.WRB push %r11
    102e:	66 b8 b0 46          	mov    $0x46b0,%ax
    1032:	00 00                	add    %al,(%rax)
    1034:	67 89 04 24          	mov    %eax,(%esp)
    1038:	66 31 db             	xor    %bx,%bx
    103b:	67 66 8d 4c 24 2c    	lea    0x2c(%esp),%cx
    1041:	66 89 e2             	mov    %sp,%dx
    1044:	66 b8 15 00          	mov    $0x15,%ax
    1048:	00 00                	add    %al,(%rax)
    104a:	66 e8 84 f2          	callw  0x2d2
    104e:	ff                   	(bad)  
    104f:	ff 67 66             	jmpq   *0x66(%rdi)
    1052:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
    1056:	67 66 89 44 24 10    	mov    %ax,0x10(%esp)
    105c:	67 f6 44 24 54 01    	testb  $0x1,0x54(%esp)
    1062:	75 3b                	jne    0x109f
    1064:	67 66 81 7c 24 48 50 	cmpw   $0x4150,0x48(%esp)
    106b:	41 
    106c:	4d 53                	rex.WRB push %r11
    106e:	75 2c                	jne    0x109c
    1070:	66 6b fb 14          	imul   $0x14,%bx,%di
    1074:	66 81 c7 80 39       	add    $0x3980,%di
    1079:	00 00                	add    %al,(%rax)
    107b:	66 be b0 46          	mov    $0x46b0,%si
    107f:	00 00                	add    %al,(%rax)
    1081:	66 b9 05 00          	mov    $0x5,%cx
    1085:	00 00                	add    %al,(%rax)
    1087:	66 f3 a5             	rep movsw %ds:(%rsi),%es:(%rdi)
    108a:	66 43                	data16 rex.XB
    108c:	66 85 c0             	test   %ax,%ax
    108f:	74 0e                	je     0x109f
    1091:	66 81 fb 80 00       	cmp    $0x80,%bx
    1096:	00 00                	add    %al,(%rax)
    1098:	75 a1                	jne    0x103b
    109a:	eb 03                	jmp    0x109f
    109c:	66 31 db             	xor    %bx,%bx
    109f:	88 1e                	mov    %bl,(%rsi)
    10a1:	98                   	cwtl   
    10a2:	38 66 89             	cmp    %ah,-0x77(%rsi)
    10a5:	e0 66                	loopne 0x110d
    10a7:	e8 38 08 00 00       	callq  0x18e4
    10ac:	67 c7 44 24 1c 01 e8 	movl   $0x6667e801,0x1c(%esp)
    10b3:	67 66 
    10b5:	8d 4c 24 2c          	lea    0x2c(%rsp),%ecx
    10b9:	66 89 e2             	mov    %sp,%dx
    10bc:	66 b8 15 00          	mov    $0x15,%ax
    10c0:	00 00                	add    %al,(%rax)
    10c2:	66 e8 0c f2          	callw  0x2d2
    10c6:	ff                   	(bad)  
    10c7:	ff 67 f6             	jmpq   *-0xa(%rdi)
    10ca:	44 24 54             	rex.R and $0x54,%al
    10cd:	01 75 40             	add    %esi,0x40(%rbp)
    10d0:	67 66 8b 54 24 44    	mov    0x44(%esp),%dx
    10d6:	67 66 8b 44 24 40    	mov    0x40(%esp),%ax
    10dc:	66 89 d6             	mov    %dx,%si
    10df:	09 c6                	or     %eax,%esi
    10e1:	74 0a                	je     0x10ed
    10e3:	67 89 54 24 48       	mov    %edx,0x48(%esp)
    10e8:	67 89 44 24 3c       	mov    %eax,0x3c(%esp)
    10ed:	67 66 0f b7 44 24 48 	movzww 0x48(%esp),%ax
    10f4:	3d 00 3c 77 17       	cmp    $0x17773c00,%eax
    10f9:	75 11                	jne    0x110c
    10fb:	67 66 0f b7 44 24 3c 	movzww 0x3c(%esp),%ax
    1102:	66 c1 e0 06          	shl    $0x6,%ax
    1106:	66 05 00 3c          	add    $0x3c00,%ax
    110a:	00 00                	add    %al,(%rax)
    110c:	66 a3 90 38 66 89 e0 	movabs %ax,0xcbe866e089663890
    1113:	66 e8 cb 
    1116:	07                   	(bad)  
    1117:	00 00                	add    %al,(%rax)
    1119:	67 c6 44 24 1d 88    	movb   $0x88,0x1d(%esp)
    111f:	67 66 8d 4c 24 2c    	lea    0x2c(%esp),%cx
    1125:	66 89 e2             	mov    %sp,%dx
    1128:	66 b8 15 00          	mov    $0x15,%ax
    112c:	00 00                	add    %al,(%rax)
    112e:	66 e8 a0 f1          	callw  0x2d2
    1132:	ff                   	(bad)  
    1133:	ff 67 66             	jmpq   *0x66(%rdi)
    1136:	8b 44 24 48          	mov    0x48(%rsp),%eax
    113a:	a3 b2 36 66 83 c4 58 	movabs %eax,0x5b6658c4836636b2
    1141:	66 5b 
    1143:	66 5e                	pop    %si
    1145:	66 5f                	pop    %di
    1147:	66 c3                	retw   
    1149:	66 53                	push   %bx
    114b:	66 83 3e b8          	cmpw   $0xffb8,(%rsi)
    114f:	38 00                	cmp    %al,(%rax)
    1151:	74 06                	je     0x1159
    1153:	ff 1e                	lcall  *(%rsi)
    1155:	b8 38 eb 07 fa       	mov    $0xfa07eb38,%eax
    115a:	b0 80                	mov    $0x80,%al
    115c:	e6 70                	out    %al,$0x70
    115e:	e6 80                	out    %al,$0x80
    1160:	66 e8 12 f3          	callw  0x476
    1164:	ff                   	(bad)  
    1165:	ff 66 85             	jmpq   *-0x7b(%rsi)
    1168:	c0 74 12 66 b8       	shlb   $0xb8,0x66(%rdx,%rdx,1)
    116d:	94                   	xchg   %eax,%esp
    116e:	32 00                	xor    (%rax),%al
    1170:	00 66 e8             	add    %ah,-0x18(%rsi)
    1173:	4a                   	rex.WX
    1174:	f2 ff                	repnz (bad) 
    1176:	ff 66 e8             	jmpq   *-0x18(%rsi)
    1179:	54                   	push   %rsp
    117a:	f1                   	icebp  
    117b:	ff                   	(bad)  
    117c:	ff 66 31             	jmpq   *0x31(%rsi)
    117f:	c0 e6 f0             	shl    $0xf0,%dh
    1182:	e6 80                	out    %al,$0x80
    1184:	e6 f1                	out    %al,$0xf1
    1186:	e6 80                	out    %al,$0x80
    1188:	b0 ff                	mov    $0xff,%al
    118a:	e6 a1                	out    %al,$0xa1
    118c:	e6 80                	out    %al,$0x80
    118e:	b0 fb                	mov    $0xfb,%al
    1190:	e6 21                	out    %al,$0x21
    1192:	e6 80                	out    %al,$0x80
    1194:	66 0f 01 1e          	data16 lidt (%rsi)
    1198:	e8 32 c7 06 c4       	callq  0xffffffffc406d8cf
    119d:	46 27                	rex.RX (bad) 
    119f:	00 8c da 66 0f b7 d2 	add    %cl,-0x2d48f09a(%rdx,%rbx,8)
    11a6:	66 c1 e2 04          	shl    $0x4,%dx
    11aa:	67 66 8d 82 c0 32 00 	lea    0x32c0(%edx),%ax
    11b1:	00 
    11b2:	66 a3 c6 46 66 0f 01 	movabs %ax,0x46c416010f6646c6
    11b9:	16 c4 46 
    11bc:	66 81 c2 b0 36       	add    $0x36b0,%dx
    11c1:	00 00                	add    %al,(%rax)
    11c3:	66 a1 c4 38 66 e8 00 	movabs 0xe86638c4,%ax
    11ca:	00 00 00 
    11cd:	66 89 d6             	mov    %dx,%si
    11d0:	66 31 db             	xor    %bx,%bx
    11d3:	8c cb                	mov    %cs,%ebx
    11d5:	66 c1 e3 04          	shl    $0x4,%bx
    11d9:	66 01 1e             	add    %bx,(%rsi)
    11dc:	f1                   	icebp  
    11dd:	11 eb                	adc    %ebp,%ebx
    11df:	00 b9 18 00 bf 20    	add    %bh,0x20bf0018(%rcx)
    11e5:	00 0f                	add    %cl,(%rdi)
    11e7:	20 c2                	and    %al,%dl
    11e9:	80 ca 01             	or     $0x1,%dl
    11ec:	0f 22 c2             	mov    %rdx,%cr0
    11ef:	66 ea                	data16 (bad) 
    11f1:	d3 2f                	shrl   %cl,(%rdi)
    11f3:	00 00                	add    %al,(%rax)
    11f5:	10 00                	adc    %al,(%rax)
    11f7:	66 55                	push   %bp
    11f9:	66 57                	push   %di
    11fb:	66 56                	push   %si
    11fd:	66 53                	push   %bx
    11ff:	66 83 ec 5c          	sub    $0x5c,%sp
    1203:	66 89 c3             	mov    %ax,%bx
    1206:	67 66 89 54 24 04    	mov    %dx,0x4(%esp)
    120c:	67 66 89 4c 24 08    	mov    %cx,0x8(%esp)
    1212:	67 66 8b 6c 24 70    	mov    0x70(%esp),%bp
    1218:	67 8a 4c 24 78       	mov    0x78(%esp),%cl
    121d:	66 83 e1 20          	and    $0x20,%cx
    1221:	67 88 4c 24 0f       	mov    %cl,0xf(%esp)
    1226:	67 66 8b 44 24 78    	mov    0x78(%esp),%ax
    122c:	66 83 e0 10          	and    $0x10,%ax
    1230:	67 66 89 44 24 10    	mov    %ax,0x10(%esp)
    1236:	74 09                	je     0x1241
    1238:	67 66 83 64 24 78 fe 	andw   $0xfffe,0x78(%esp)
    123f:	eb 0a                	jmp    0x124b
    1241:	b1 30                	mov    $0x30,%cl
    1243:	67 f6 44 24 78 01    	testb  $0x1,0x78(%esp)
    1249:	75 02                	jne    0x124d
    124b:	b1 20                	mov    $0x20,%cl
    124d:	66 31 f6             	xor    %si,%si
    1250:	67 f6 44 24 78 02    	testb  $0x2,0x78(%esp)
    1256:	74 3b                	je     0x1293
    1258:	67 66 83 7c 24 04 00 	cmpw   $0x0,0x4(%esp)
    125f:	79 10                	jns    0x1271
    1261:	67 66 f7 5c 24 04    	negw   0x4(%esp)
    1267:	66 4d                	data16 rex.WRB
    1269:	66 be 2d 00          	mov    $0x2d,%si
    126d:	00 00                	add    %al,(%rax)
    126f:	eb 22                	jmp    0x1293
    1271:	67 f6 44 24 78 04    	testb  $0x4,0x78(%esp)
    1277:	74 0a                	je     0x1283
    1279:	66 4d                	data16 rex.WRB
    127b:	66 be 2b 00          	mov    $0x2b,%si
    127f:	00 00                	add    %al,(%rax)
    1281:	eb 10                	jmp    0x1293
    1283:	67 f6 44 24 78 08    	testb  $0x8,0x78(%esp)
    1289:	74 08                	je     0x1293
    128b:	66 4d                	data16 rex.WRB
    128d:	66 be 20 00          	mov    $0x20,%si
    1291:	00 00                	add    %al,(%rax)
    1293:	67 66 8b 44 24 78    	mov    0x78(%esp),%ax
    1299:	66 83 e0 40          	and    $0x40,%ax
    129d:	67 66 89 44 24 14    	mov    %ax,0x14(%esp)
    12a3:	74 1a                	je     0x12bf
    12a5:	67 66 83 7c 24 08 10 	cmpw   $0x10,0x8(%esp)
    12ac:	75 06                	jne    0x12b4
    12ae:	66 83 ed 02          	sub    $0x2,%bp
    12b2:	eb 0b                	jmp    0x12bf
    12b4:	67 66 83 7c 24 08 08 	cmpw   $0x8,0x8(%esp)
    12bb:	75 02                	jne    0x12bf
    12bd:	66 4d                	data16 rex.WRB
    12bf:	67 66 83 7c 24 04 00 	cmpw   $0x0,0x4(%esp)
    12c6:	75 11                	jne    0x12d9
    12c8:	67 c6 44 24 1a 30    	movb   $0x30,0x1a(%esp)
    12ce:	67 66 c7 04 24 01 00 	movw   $0x1,(%esp)
    12d5:	00 00                	add    %al,(%rax)
    12d7:	eb 46                	jmp    0x131f
    12d9:	67 66 c7 04 24 00 00 	movw   $0x0,(%esp)
    12e0:	00 00                	add    %al,(%rax)
    12e2:	67 66 8b 7c 24 04    	mov    0x4(%esp),%di
    12e8:	66 89 f8             	mov    %di,%ax
    12eb:	66 31 d2             	xor    %dx,%dx
    12ee:	67 66 f7 74 24 08    	divw   0x8(%esp)
    12f4:	67 66 89 44 24 04    	mov    %ax,0x4(%esp)
    12fa:	67 66 ff 04 24       	incw   (%esp)
    12ff:	67 8a 44 24 0f       	mov    0xf(%esp),%al
    1304:	67 0a 82 48 33 00 00 	or     0x3348(%edx),%al
    130b:	88 c2                	mov    %al,%dl
    130d:	67 66 8b 04 24       	mov    (%esp),%ax
    1312:	67 88 54 04 19       	mov    %dl,0x19(%esp,%eax,1)
    1317:	67 66 39 7c 24 08    	cmp    %di,0x8(%esp)
    131d:	76 c3                	jbe    0x12e2
    131f:	67 66 8b 3c 24       	mov    (%esp),%di
    1324:	67 66 3b 7c 24 74    	cmp    0x74(%esp),%di
    132a:	7d 06                	jge    0x1332
    132c:	67 66 8b 7c 24 74    	mov    0x74(%esp),%di
    1332:	66 89 ea             	mov    %bp,%dx
    1335:	66 29 fa             	sub    %di,%dx
    1338:	67 f6 44 24 78 11    	testb  $0x11,0x78(%esp)
    133e:	75 2a                	jne    0x136a
    1340:	66 31 c0             	xor    %ax,%ax
    1343:	66 89 d5             	mov    %dx,%bp
    1346:	66 29 c5             	sub    %ax,%bp
    1349:	66 85 ed             	test   %bp,%bp
    134c:	7e 09                	jle    0x1357
    134e:	67 c6 04 03 20       	movb   $0x20,(%ebx,%eax,1)
    1353:	66 40 eb ec          	data16 rex jmp 0x1343
    1357:	66 89 d0             	mov    %dx,%ax
    135a:	66 85 d2             	test   %dx,%dx
    135d:	79 03                	jns    0x1362
    135f:	66 31 c0             	xor    %ax,%ax
    1362:	66 01 c3             	add    %ax,%bx
    1365:	66 4a                	data16 rex.WX
    1367:	66 29 c2             	sub    %ax,%dx
    136a:	66 89 f0             	mov    %si,%ax
    136d:	84 c0                	test   %al,%al
    136f:	74 05                	je     0x1376
    1371:	67 88 03             	mov    %al,(%ebx)
    1374:	66 43                	data16 rex.XB
    1376:	67 66 83 7c 24 14 00 	cmpw   $0x0,0x14(%esp)
    137d:	74 2f                	je     0x13ae
    137f:	67 66 83 7c 24 08 08 	cmpw   $0x8,0x8(%esp)
    1386:	75 08                	jne    0x1390
    1388:	67 c6 03 30          	movb   $0x30,(%ebx)
    138c:	66 43 eb 1e          	data16 rex.XB jmp 0x13ae
    1390:	67 66 83 7c 24 08 10 	cmpw   $0x10,0x8(%esp)
    1397:	75 15                	jne    0x13ae
    1399:	67 c6 03 30          	movb   $0x30,(%ebx)
    139d:	67 8a 44 24 0f       	mov    0xf(%esp),%al
    13a2:	66 83 c8 58          	or     $0x58,%ax
    13a6:	67 88 43 01          	mov    %al,0x1(%ebx)
    13aa:	66 83 c3 02          	add    $0x2,%bx
    13ae:	67 66 83 7c 24 10 00 	cmpw   $0x0,0x10(%esp)
    13b5:	75 2e                	jne    0x13e5
    13b7:	66 89 d8             	mov    %bx,%ax
    13ba:	67 66 8d 2c 13       	lea    (%ebx,%edx,1),%bp
    13bf:	66 89 ee             	mov    %bp,%si
    13c2:	66 29 c6             	sub    %ax,%si
    13c5:	66 85 f6             	test   %si,%si
    13c8:	7e 08                	jle    0x13d2
    13ca:	66 40                	data16 rex
    13cc:	67 88 48 ff          	mov    %cl,-0x1(%eax)
    13d0:	eb ed                	jmp    0x13bf
    13d2:	66 89 d0             	mov    %dx,%ax
    13d5:	66 85 d2             	test   %dx,%dx
    13d8:	79 03                	jns    0x13dd
    13da:	66 31 c0             	xor    %ax,%ax
    13dd:	66 01 c3             	add    %ax,%bx
    13e0:	66 4a                	data16 rex.WX
    13e2:	66 29 c2             	sub    %ax,%dx
    13e5:	66 89 de             	mov    %bx,%si
    13e8:	67 66 8d 04 3b       	lea    (%ebx,%edi,1),%ax
    13ed:	66 89 c5             	mov    %ax,%bp
    13f0:	66 29 f5             	sub    %si,%bp
    13f3:	67 66 39 2c 24       	cmp    %bp,(%esp)
    13f8:	7d 09                	jge    0x1403
    13fa:	66 46                	data16 rex.RX
    13fc:	67 c6 46 ff 30       	movb   $0x30,-0x1(%esi)
    1401:	eb ea                	jmp    0x13ed
    1403:	67 66 2b 3c 24       	sub    (%esp),%di
    1408:	66 01 fb             	add    %di,%bx
    140b:	67 66 ff 0c 24       	decw   (%esp)
    1410:	67 66 83 3c 24 ff    	cmpw   $0xffff,(%esp)
    1416:	74 12                	je     0x142a
    1418:	66 43                	data16 rex.XB
    141a:	67 66 8b 3c 24       	mov    (%esp),%di
    141f:	67 8a 4c 3c 1a       	mov    0x1a(%esp,%edi,1),%cl
    1424:	67 88 4b ff          	mov    %cl,-0x1(%ebx)
    1428:	eb e1                	jmp    0x140b
    142a:	66 31 c9             	xor    %cx,%cx
    142d:	66 89 d3             	mov    %dx,%bx
    1430:	66 29 cb             	sub    %cx,%bx
    1433:	66 85 db             	test   %bx,%bx
    1436:	7e 09                	jle    0x1441
    1438:	67 c6 04 08 20       	movb   $0x20,(%eax,%ecx,1)
    143d:	66 41 eb ec          	data16 rex.B jmp 0x142d
    1441:	66 85 d2             	test   %dx,%dx
    1444:	79 03                	jns    0x1449
    1446:	66 31 d2             	xor    %dx,%dx
    1449:	66 01 d0             	add    %dx,%ax
    144c:	66 83 c4 5c          	add    $0x5c,%sp
    1450:	66 5b                	pop    %bx
    1452:	66 5e                	pop    %si
    1454:	66 5f                	pop    %di
    1456:	66 5d                	pop    %bp
    1458:	66 c3                	retw   
    145a:	66 55                	push   %bp
    145c:	66 57                	push   %di
    145e:	66 56                	push   %si
    1460:	66 53                	push   %bx
    1462:	66 83 ec 14          	sub    $0x14,%sp
    1466:	67 66 89 44 24 08    	mov    %ax,0x8(%esp)
    146c:	66 89 d7             	mov    %dx,%di
    146f:	66 89 c8             	mov    %cx,%ax
    1472:	67 66 8b 5c 24 08    	mov    0x8(%esp),%bx
    1478:	67 8a 17             	mov    (%edi),%dl
    147b:	84 d2                	test   %dl,%dl
    147d:	0f 84 f0 03 80 fa    	je     0xfffffffffa801873
    1483:	25 74 09 67 88       	and    $0x88670974,%eax
    1488:	13 66 89             	adc    -0x77(%rsi),%esp
    148b:	fd                   	std    
    148c:	e9 37 03 67 66       	jmpq   0x666717c8
    1491:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
    1498:	67 66 8d 6f 01       	lea    0x1(%edi),%bp
    149d:	67 8a 57 01          	mov    0x1(%edi),%dl
    14a1:	80 fa 2b             	cmp    $0x2b,%dl
    14a4:	74 31                	je     0x14d7
    14a6:	7f 15                	jg     0x14bd
    14a8:	80 fa 20             	cmp    $0x20,%dl
    14ab:	74 32                	je     0x14df
    14ad:	80 fa 23             	cmp    $0x23,%dl
    14b0:	75 35                	jne    0x14e7
    14b2:	67 66 83 0c 24 40    	orw    $0x40,(%esp)
    14b8:	66 89 ef             	mov    %bp,%di
    14bb:	eb db                	jmp    0x1498
    14bd:	80 fa 2d             	cmp    $0x2d,%dl
    14c0:	74 0d                	je     0x14cf
    14c2:	80 fa 30             	cmp    $0x30,%dl
    14c5:	75 20                	jne    0x14e7
    14c7:	67 66 83 0c 24 01    	orw    $0x1,(%esp)
    14cd:	eb e9                	jmp    0x14b8
    14cf:	67 66 83 0c 24 10    	orw    $0x10,(%esp)
    14d5:	eb e1                	jmp    0x14b8
    14d7:	67 66 83 0c 24 04    	orw    $0x4,(%esp)
    14dd:	eb d9                	jmp    0x14b8
    14df:	67 66 83 0c 24 08    	orw    $0x8,(%esp)
    14e5:	eb d1                	jmp    0x14b8
    14e7:	66 0f be ca          	movsbw %dl,%cx
    14eb:	66 83 e9 30          	sub    $0x30,%cx
    14ef:	66 83 f9 09          	cmp    $0x9,%cx
    14f3:	77 22                	ja     0x1517
    14f5:	66 31 f6             	xor    %si,%si
    14f8:	67 66 0f be 55 00    	movsbw 0x0(%ebp),%dx
    14fe:	67 66 8d 4a d0       	lea    -0x30(%edx),%cx
    1503:	66 83 f9 09          	cmp    $0x9,%cx
    1507:	77 32                	ja     0x153b
    1509:	66 45                	data16 rex.RB
    150b:	66 6b f6 0a          	imul   $0xa,%si,%si
    150f:	67 66 8d 74 16 d0    	lea    -0x30(%esi,%edx,1),%si
    1515:	eb e1                	jmp    0x14f8
    1517:	66 83 ce ff          	or     $0xffff,%si
    151b:	80 fa 2a             	cmp    $0x2a,%dl
    151e:	75 1b                	jne    0x153b
    1520:	67 66 8d 6f 02       	lea    0x2(%edi),%bp
    1525:	67 66 8b 30          	mov    (%eax),%si
    1529:	66 83 c0 04          	add    $0x4,%ax
    152d:	66 85 f6             	test   %si,%si
    1530:	79 09                	jns    0x153b
    1532:	66 f7 de             	neg    %si
    1535:	67 66 83 0c 24 10    	orw    $0x10,(%esp)
    153b:	66 83 cf ff          	or     $0xffff,%di
    153f:	67 80 7d 00 2e       	cmpb   $0x2e,0x0(%ebp)
    1544:	75 61                	jne    0x15a7
    1546:	67 66 8d 4d 01       	lea    0x1(%ebp),%cx
    154b:	67 66 0f be 7d 01    	movsbw 0x1(%ebp),%di
    1551:	66 89 fa             	mov    %di,%dx
    1554:	66 83 ef 30          	sub    $0x30,%di
    1558:	66 83 ff 09          	cmp    $0x9,%di
    155c:	77 21                	ja     0x157f
    155e:	66 31 d2             	xor    %dx,%dx
    1561:	67 66 0f be 39       	movsbw (%ecx),%di
    1566:	67 66 8d 6f d0       	lea    -0x30(%edi),%bp
    156b:	66 83 fd 09          	cmp    $0x9,%bp
    156f:	77 20                	ja     0x1591
    1571:	66 41                	data16 rex.B
    1573:	66 6b d2 0a          	imul   $0xa,%dx,%dx
    1577:	67 66 8d 54 3a d0    	lea    -0x30(%edx,%edi,1),%dx
    157d:	eb e2                	jmp    0x1561
    157f:	80 fa 2a             	cmp    $0x2a,%dl
    1582:	75 1d                	jne    0x15a1
    1584:	67 66 8d 4d 02       	lea    0x2(%ebp),%cx
    1589:	67 66 8b 10          	mov    (%eax),%dx
    158d:	66 83 c0 04          	add    $0x4,%ax
    1591:	66 89 d7             	mov    %dx,%di
    1594:	66 85 d2             	test   %dx,%dx
    1597:	79 03                	jns    0x159c
    1599:	66 31 ff             	xor    %di,%di
    159c:	66 89 cd             	mov    %cx,%bp
    159f:	eb 06                	jmp    0x15a7
    15a1:	66 89 cd             	mov    %cx,%bp
    15a4:	66 31 ff             	xor    %di,%di
    15a7:	67 8a 55 00          	mov    0x0(%ebp),%dl
    15ab:	88 d1                	mov    %dl,%cl
    15ad:	66 83 e1 df          	and    $0xffdf,%cx
    15b1:	80 f9 4c             	cmp    $0x4c,%cl
    15b4:	74 0f                	je     0x15c5
    15b6:	67 66 c7 44 24 04 ff 	movw   $0xffff,0x4(%esp)
    15bd:	ff 
    15be:	ff                   	(bad)  
    15bf:	ff 80 fa 68 75 0c    	incl   0xc7568fa(%rax)
    15c5:	66 0f be ca          	movsbw %dl,%cx
    15c9:	67 66 89 4c 24 04    	mov    %cx,0x4(%esp)
    15cf:	66 45                	data16 rex.RB
    15d1:	67 8a 55 00          	mov    0x0(%ebp),%dl
    15d5:	80 fa 78             	cmp    $0x78,%dl
    15d8:	0f 8f 05 02 80 fa    	jg     0xfffffffffa8017e3
    15de:	62                   	(bad)  
    15df:	7f 17                	jg     0x15f8
    15e1:	80 fa 25             	cmp    $0x25,%dl
    15e4:	0f 84 da 01 66 b9    	je     0xffffffffb96617c4
    15ea:	10 00                	adc    %al,(%rax)
    15ec:	00 00                	add    %al,(%rax)
    15ee:	80 fa 58             	cmp    $0x58,%dl
    15f1:	0f 84 0e 02 e9 e9    	je     0xffffffffe9e91805
    15f7:	01 66 83             	add    %esp,-0x7d(%rsi)
    15fa:	ea                   	(bad)  
    15fb:	63 80 fa 15 0f 87    	movsxd -0x78f0ea06(%rax),%eax
    1601:	de 01                	fiadds (%rcx)
    1603:	66 0f b6 d2          	movzbw %dl,%dx
    1607:	67 ff 24 95 f0 32 00 	jmpq   *0x32f0(,%edx,4)
    160e:	00 
    160f:	66 b9 08 00          	mov    $0x8,%cx
    1613:	00 00                	add    %al,(%rax)
    1615:	e9 eb 01 67 f6       	jmpq   0xfffffffff6671805
    161a:	04 24                	add    $0x24,%al
    161c:	10 75 3e             	adc    %dh,0x3e(%rbp)
    161f:	66 31 d2             	xor    %dx,%dx
    1622:	66 42                	data16 rex.X
    1624:	66 89 f1             	mov    %si,%cx
    1627:	66 29 d1             	sub    %dx,%cx
    162a:	66 85 c9             	test   %cx,%cx
    162d:	7e 08                	jle    0x1637
    162f:	67 c6 44 13 ff 20    	movb   $0x20,-0x1(%ebx,%edx,1)
    1635:	eb eb                	jmp    0x1622
    1637:	67 66 8d 56 ff       	lea    -0x1(%esi),%dx
    163c:	66 31 c9             	xor    %cx,%cx
    163f:	66 85 f6             	test   %si,%si
    1642:	7e 03                	jle    0x1647
    1644:	66 89 d1             	mov    %dx,%cx
    1647:	66 01 cb             	add    %cx,%bx
    164a:	66 85 f6             	test   %si,%si
    164d:	7f 06                	jg     0x1655
    164f:	66 be 01 00          	mov    $0x1,%si
    1653:	00 00                	add    %al,(%rax)
    1655:	66 29 f2             	sub    %si,%dx
    1658:	67 66 8d 72 01       	lea    0x1(%edx),%si
    165d:	67 66 8d 50 04       	lea    0x4(%eax),%dx
    1662:	67 66 8b 00          	mov    (%eax),%ax
    1666:	67 88 03             	mov    %al,(%ebx)
    1669:	66 31 c0             	xor    %ax,%ax
    166c:	66 40                	data16 rex
    166e:	66 89 f1             	mov    %si,%cx
    1671:	66 29 c1             	sub    %ax,%cx
    1674:	66 85 c9             	test   %cx,%cx
    1677:	7e 07                	jle    0x1680
    1679:	67 c6 04 03 20       	movb   $0x20,(%ebx,%eax,1)
    167e:	eb ec                	jmp    0x166c
    1680:	66 31 c0             	xor    %ax,%ax
    1683:	66 85 f6             	test   %si,%si
    1686:	7e 05                	jle    0x168d
    1688:	67 66 8d 46 ff       	lea    -0x1(%esi),%ax
    168d:	67 66 8d 5c 03 01    	lea    0x1(%ebx,%eax,1),%bx
    1693:	66 89 d0             	mov    %dx,%ax
    1696:	e9 d0 01 67 66       	jmpq   0x6667186b
    169b:	8d 48 04             	lea    0x4(%rax),%ecx
    169e:	67 66 89 4c 24 0c    	mov    %cx,0xc(%esp)
    16a4:	67 66 8b 00          	mov    (%eax),%ax
    16a8:	67 66 89 44 24 04    	mov    %ax,0x4(%esp)
    16ae:	66 89 fa             	mov    %di,%dx
    16b1:	66 e8 29 03          	callw  0x19de
    16b5:	00 00                	add    %al,(%rax)
    16b7:	66 89 c2             	mov    %ax,%dx
    16ba:	67 f6 04 24 10       	testb  $0x10,(%esp)
    16bf:	75 48                	jne    0x1709
    16c1:	66 89 d8             	mov    %bx,%ax
    16c4:	67 66 8d 3c 33       	lea    (%ebx,%esi,1),%di
    16c9:	66 89 f9             	mov    %di,%cx
    16cc:	66 29 c1             	sub    %ax,%cx
    16cf:	66 39 ca             	cmp    %cx,%dx
    16d2:	7d 09                	jge    0x16dd
    16d4:	66 40                	data16 rex
    16d6:	67 c6 40 ff 20       	movb   $0x20,-0x1(%eax)
    16db:	eb ec                	jmp    0x16c9
    16dd:	66 89 f1             	mov    %si,%cx
    16e0:	66 29 d1             	sub    %dx,%cx
    16e3:	66 31 c0             	xor    %ax,%ax
    16e6:	66 39 d6             	cmp    %dx,%si
    16e9:	7c 03                	jl     0x16ee
    16eb:	66 89 c8             	mov    %cx,%ax
    16ee:	66 01 c3             	add    %ax,%bx
    16f1:	67 66 8d 7e ff       	lea    -0x1(%esi),%di
    16f6:	66 31 c0             	xor    %ax,%ax
    16f9:	66 39 d6             	cmp    %dx,%si
    16fc:	7c 06                	jl     0x1704
    16fe:	66 89 c8             	mov    %cx,%ax
    1701:	66 f7 d8             	neg    %ax
    1704:	67 66 8d 34 07       	lea    (%edi,%eax,1),%si
    1709:	66 31 c0             	xor    %ax,%ax
    170c:	66 39 d0             	cmp    %dx,%ax
    170f:	7d 12                	jge    0x1723
    1711:	67 66 8b 7c 24 04    	mov    0x4(%esp),%di
    1717:	67 8a 0c 07          	mov    (%edi,%eax,1),%cl
    171b:	67 88 0c 03          	mov    %cl,(%ebx,%eax,1)
    171f:	66 40 eb e9          	data16 rex jmp 0x170c
    1723:	66 89 d1             	mov    %dx,%cx
    1726:	66 85 d2             	test   %dx,%dx
    1729:	79 03                	jns    0x172e
    172b:	66 31 c9             	xor    %cx,%cx
    172e:	66 01 d9             	add    %bx,%cx
    1731:	66 89 c8             	mov    %cx,%ax
    1734:	67 66 8d 3c 31       	lea    (%ecx,%esi,1),%di
    1739:	66 89 fb             	mov    %di,%bx
    173c:	66 29 c3             	sub    %ax,%bx
    173f:	66 39 da             	cmp    %bx,%dx
    1742:	7d 09                	jge    0x174d
    1744:	66 40                	data16 rex
    1746:	67 c6 40 ff 20       	movb   $0x20,-0x1(%eax)
    174b:	eb ec                	jmp    0x1739
    174d:	66 31 db             	xor    %bx,%bx
    1750:	66 39 d6             	cmp    %dx,%si
    1753:	7c 06                	jl     0x175b
    1755:	66 89 f3             	mov    %si,%bx
    1758:	66 29 d3             	sub    %dx,%bx
    175b:	66 01 cb             	add    %cx,%bx
    175e:	e9 02 01 66 83       	jmpq   0xffffffff83661865
    1763:	fe                   	(bad)  
    1764:	ff 75 0c             	pushq  0xc(%rbp)
    1767:	67 66 83 0c 24 01    	orw    $0x1,(%esp)
    176d:	66 be 08 00          	mov    $0x8,%si
    1771:	00 00                	add    %al,(%rax)
    1773:	67 66 8d 48 04       	lea    0x4(%eax),%cx
    1778:	67 66 89 4c 24 04    	mov    %cx,0x4(%esp)
    177e:	67 66 ff 34 24       	pushw  (%esp)
    1783:	66 57                	push   %di
    1785:	66 56                	push   %si
    1787:	66 b9 10 00          	mov    $0x10,%cx
    178b:	00 00                	add    %al,(%rax)
    178d:	67 66 8b 10          	mov    (%eax),%dx
    1791:	66 89 d8             	mov    %bx,%ax
    1794:	66 e8 5d fa          	callw  0x11f5
    1798:	ff                   	(bad)  
    1799:	ff 66 89             	jmpq   *-0x77(%rsi)
    179c:	c3                   	retq   
    179d:	66 83 c4 0c          	add    $0xc,%sp
    17a1:	67 66 8b 44 24 04    	mov    0x4(%esp),%ax
    17a7:	e9 bf 00 66 89       	jmpq   0xffffffff8966186b
    17ac:	d9 67 66             	fldenv 0x66(%rdi)
    17af:	2b 4c 24 08          	sub    0x8(%rsp),%ecx
    17b3:	67 66 8b 10          	mov    (%eax),%dx
    17b7:	66 83 c0 04          	add    $0x4,%ax
    17bb:	67 66 89 0a          	mov    %cx,(%edx)
    17bf:	e9 a7 00 67 c6       	jmpq   0xffffffffc667186b
    17c4:	03 25 66 43 e9 9e    	add    -0x6116bc9a(%rip),%esp        # 0xffffffff9ee95b30
    17ca:	00 67 66             	add    %ah,0x66(%rdi)
    17cd:	83 0c 24 20          	orl    $0x20,(%rsp)
    17d1:	66 b9 10 00          	mov    $0x10,%cx
    17d5:	00 00                	add    %al,(%rax)
    17d7:	eb 2a                	jmp    0x1803
    17d9:	67 66 83 0c 24 02    	orw    $0x2,(%esp)
    17df:	eb 1c                	jmp    0x17fd
    17e1:	67 c6 03 25          	movb   $0x25,(%ebx)
    17e5:	67 8a 55 00          	mov    0x0(%ebp),%dl
    17e9:	84 d2                	test   %dl,%dl
    17eb:	74 0a                	je     0x17f7
    17ed:	67 88 53 01          	mov    %dl,0x1(%ebx)
    17f1:	66 83 c3 02          	add    $0x2,%bx
    17f5:	eb 72                	jmp    0x1869
    17f7:	66 43                	data16 rex.XB
    17f9:	66 4d eb 6c          	data16 rex.WRB jmp 0x1869
    17fd:	66 b9 0a 00          	mov    $0xa,%cx
    1801:	00 00                	add    %al,(%rax)
    1803:	67 66 8d 50 04       	lea    0x4(%eax),%dx
    1808:	67 66 89 54 24 0c    	mov    %dx,0xc(%esp)
    180e:	67 66 83 7c 24 04 6c 	cmpw   $0x6c,0x4(%esp)
    1815:	74 2f                	je     0x1846
    1817:	67 66 8b 14 24       	mov    (%esp),%dx
    181c:	66 83 e2 02          	and    $0x2,%dx
    1820:	67 66 89 54 24 10    	mov    %dx,0x10(%esp)
    1826:	67 66 83 7c 24 04 68 	cmpw   $0x68,0x4(%esp)
    182d:	75 17                	jne    0x1846
    182f:	67 66 8b 00          	mov    (%eax),%ax
    1833:	66 0f bf d0          	movsww %ax,%dx
    1837:	67 66 83 7c 24 10 00 	cmpw   $0x0,0x10(%esp)
    183e:	75 0a                	jne    0x184a
    1840:	66 0f b7 d0          	movzww %ax,%dx
    1844:	eb 04                	jmp    0x184a
    1846:	67 66 8b 10          	mov    (%eax),%dx
    184a:	67 66 ff 34 24       	pushw  (%esp)
    184f:	66 57                	push   %di
    1851:	66 56                	push   %si
    1853:	66 89 d8             	mov    %bx,%ax
    1856:	66 e8 9b f9          	callw  0x11f5
    185a:	ff                   	(bad)  
    185b:	ff 66 89             	jmpq   *-0x77(%rsi)
    185e:	c3                   	retq   
    185f:	66 83 c4 0c          	add    $0xc,%sp
    1863:	67 66 8b 44 24 0c    	mov    0xc(%esp),%ax
    1869:	67 66 8d 7d 01       	lea    0x1(%ebp),%di
    186e:	e9 07 fc 67 c6       	jmpq   0xffffffffc668147a
    1873:	03 00                	add    (%rax),%eax
    1875:	66 89 d8             	mov    %bx,%ax
    1878:	67 66 2b 44 24 08    	sub    0x8(%esp),%ax
    187e:	66 83 c4 14          	add    $0x14,%sp
    1882:	66 5b                	pop    %bx
    1884:	66 5e                	pop    %si
    1886:	66 5f                	pop    %di
    1888:	66 5d                	pop    %bp
    188a:	66 c3                	retw   
    188c:	67 66 8d 4c 24 0c    	lea    0xc(%esp),%cx
    1892:	67 66 8b 54 24 08    	mov    0x8(%esp),%dx
    1898:	67 66 8b 44 24 04    	mov    0x4(%esp),%ax
    189e:	66 e8 b6 fb          	callw  0x1458
    18a2:	ff                   	(bad)  
    18a3:	ff 66 c3             	jmpq   *-0x3d(%rsi)
    18a6:	66 53                	push   %bx
    18a8:	66 81 ec 00 04       	sub    $0x400,%sp
    18ad:	00 00                	add    %al,(%rax)
    18af:	67 66 8d 8c 24 0c 04 	lea    0x40c(%esp),%cx
    18b6:	00 00 
    18b8:	67 66 8b 94 24 08 04 	mov    0x408(%esp),%dx
    18bf:	00 00 
    18c1:	66 89 e0             	mov    %sp,%ax
    18c4:	66 e8 90 fb          	callw  0x1458
    18c8:	ff                   	(bad)  
    18c9:	ff 66 89             	jmpq   *-0x77(%rsi)
    18cc:	c3                   	retq   
    18cd:	66 89 e0             	mov    %sp,%ax
    18d0:	66 e8 eb ea          	callw  0x3bf
    18d4:	ff                   	(bad)  
    18d5:	ff 66 89             	jmpq   *-0x77(%rsi)
    18d8:	d8 66 81             	fsubs  -0x7f(%rsi)
    18db:	c4                   	(bad)  
    18dc:	00 04 00             	add    %al,(%rax,%rax,1)
    18df:	00 66 5b             	add    %ah,0x5b(%rsi)
    18e2:	66 c3                	retw   
    18e4:	66 57                	push   %di
    18e6:	66 89 c2             	mov    %ax,%dx
    18e9:	66 b9 0b 00          	mov    $0xb,%cx
    18ed:	00 00                	add    %al,(%rax)
    18ef:	66 31 c0             	xor    %ax,%ax
    18f2:	66 89 d7             	mov    %dx,%di
    18f5:	66 f3 ab             	rep stos %ax,%es:(%rdi)
    18f8:	67 66 c7 42 28 01 00 	movw   $0x1,0x28(%edx)
    18ff:	00 00                	add    %al,(%rax)
    1901:	8c d8                	mov    %ds,%eax
    1903:	67 89 42 26          	mov    %eax,0x26(%edx)
    1907:	67 89 42 24          	mov    %eax,0x24(%edx)
    190b:	8c e0                	mov    %fs,%eax
    190d:	67 89 42 22          	mov    %eax,0x22(%edx)
    1911:	8c e8                	mov    %gs,%eax
    1913:	67 89 42 20          	mov    %eax,0x20(%edx)
    1917:	66 5f                	pop    %di
    1919:	66 c3                	retw   
    191b:	67 66 8d 50 d0       	lea    -0x30(%eax),%dx
    1920:	66 83 fa 09          	cmp    $0x9,%dx
    1924:	76 15                	jbe    0x193b
    1926:	66 83 e0 df          	and    $0xffdf,%ax
    192a:	66 83 e8 41          	sub    $0x41,%ax
    192e:	66 83 f8 05          	cmp    $0x5,%ax
    1932:	0f 96 c0             	setbe  %al
    1935:	66 0f b6 c0          	movzbw %al,%ax
    1939:	66 c3                	retw   
    193b:	66 b8 01 00          	mov    $0x1,%ax
    193f:	00 00                	add    %al,(%rax)
    1941:	66 c3                	retw   
    1943:	66 57                	push   %di
    1945:	66 56                	push   %si
    1947:	66 89 c7             	mov    %ax,%di
    194a:	66 89 d6             	mov    %dx,%si
    194d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    194f:	0f 95 c0             	setne  %al
    1952:	66 0f b6 c0          	movzbw %al,%ax
    1956:	66 5e                	pop    %si
    1958:	66 5f                	pop    %di
    195a:	66 c3                	retw   
    195c:	66 57                	push   %di
    195e:	66 56                	push   %si
    1960:	66 89 c7             	mov    %ax,%di
    1963:	66 89 d6             	mov    %dx,%si
    1966:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    1968:	0f 95 c0             	setne  %al
    196b:	66 0f b6 c0          	movzbw %al,%ax
    196f:	66 5e                	pop    %si
    1971:	66 5f                	pop    %di
    1973:	66 c3                	retw   
    1975:	66 57                	push   %di
    1977:	66 56                	push   %si
    1979:	66 53                	push   %bx
    197b:	66 89 c7             	mov    %ax,%di
    197e:	66 89 d6             	mov    %dx,%si
    1981:	66 31 c9             	xor    %cx,%cx
    1984:	67 66 0f b6 04 0f    	movzbw (%edi,%ecx,1),%ax
    198a:	67 66 0f b6 14 0e    	movzbw (%esi,%ecx,1),%dx
    1990:	88 c3                	mov    %al,%bl
    1992:	08 d3                	or     %dl,%bl
    1994:	74 09                	je     0x199f
    1996:	66 41                	data16 rex.B
    1998:	66 29 d0             	sub    %dx,%ax
    199b:	74 e7                	je     0x1984
    199d:	eb 03                	jmp    0x19a2
    199f:	66 31 c0             	xor    %ax,%ax
    19a2:	66 5b                	pop    %bx
    19a4:	66 5e                	pop    %si
    19a6:	66 5f                	pop    %di
    19a8:	66 c3                	retw   
    19aa:	66 01 d1             	add    %dx,%cx
    19ad:	66 39 ca             	cmp    %cx,%dx
    19b0:	75 05                	jne    0x19b7
    19b2:	66 31 c0             	xor    %ax,%ax
    19b5:	66 c3                	retw   
    19b7:	66 53                	push   %bx
    19b9:	66 40                	data16 rex
    19bb:	67 8a 58 ff          	mov    -0x1(%eax),%bl
    19bf:	66 42                	data16 rex.X
    19c1:	67 3a 5a ff          	cmp    -0x1(%edx),%bl
    19c5:	74 09                	je     0x19d0
    19c7:	66 19 c0             	sbb    %ax,%ax
    19ca:	66 83 c8 01          	or     $0x1,%ax
    19ce:	eb 0c                	jmp    0x19dc
    19d0:	84 db                	test   %bl,%bl
    19d2:	74 05                	je     0x19d9
    19d4:	66 39 ca             	cmp    %cx,%dx
    19d7:	75 e0                	jne    0x19b9
    19d9:	66 31 c0             	xor    %ax,%ax
    19dc:	66 5b                	pop    %bx
    19de:	66 c3                	retw   
    19e0:	66 53                	push   %bx
    19e2:	66 89 c3             	mov    %ax,%bx
    19e5:	66 89 c1             	mov    %ax,%cx
    19e8:	66 01 c2             	add    %ax,%dx
    19eb:	66 39 d1             	cmp    %dx,%cx
    19ee:	74 0a                	je     0x19fa
    19f0:	67 80 39 00          	cmpb   $0x0,(%ecx)
    19f4:	74 04                	je     0x19fa
    19f6:	66 41 eb f1          	data16 rex.B jmp 0x19eb
    19fa:	66 89 c8             	mov    %cx,%ax
    19fd:	66 29 d8             	sub    %bx,%ax
    1a00:	66 5b                	pop    %bx
    1a02:	66 c3                	retw   
    1a04:	66 53                	push   %bx
    1a06:	66 89 c1             	mov    %ax,%cx
    1a09:	66 31 c0             	xor    %ax,%ax
    1a0c:	67 66 0f be 19       	movsbw (%ecx),%bx
    1a11:	67 66 8d 53 d0       	lea    -0x30(%ebx),%dx
    1a16:	66 83 fa 09          	cmp    $0x9,%dx
    1a1a:	77 0e                	ja     0x1a2a
    1a1c:	66 41                	data16 rex.B
    1a1e:	66 6b d0 0a          	imul   $0xa,%ax,%dx
    1a22:	67 66 8d 44 13 d0    	lea    -0x30(%ebx,%edx,1),%ax
    1a28:	eb e2                	jmp    0x1a0c
    1a2a:	66 5b                	pop    %bx
    1a2c:	66 c3                	retw   
    1a2e:	66 55                	push   %bp
    1a30:	66 89 e5             	mov    %sp,%bp
    1a33:	66 57                	push   %di
    1a35:	66 56                	push   %si
    1a37:	66 53                	push   %bx
    1a39:	66 83 e4 f8          	and    $0xfff8,%sp
    1a3d:	66 83 ec 10          	sub    $0x10,%sp
    1a41:	66 89 c6             	mov    %ax,%si
    1a44:	67 66 89 54 24 04    	mov    %dx,0x4(%esp)
    1a4a:	67 8a 00             	mov    (%eax),%al
    1a4d:	66 85 c9             	test   %cx,%cx
    1a50:	75 2f                	jne    0x1a81
    1a52:	66 bf 0a 00          	mov    $0xa,%di
    1a56:	00 00                	add    %al,(%rax)
    1a58:	3c 30                	cmp    $0x30,%al
    1a5a:	75 48                	jne    0x1aa4
    1a5c:	67 8a 46 01          	mov    0x1(%esi),%al
    1a60:	66 83 c8 20          	or     $0x20,%ax
    1a64:	66 bf 08 00          	mov    $0x8,%di
    1a68:	00 00                	add    %al,(%rax)
    1a6a:	3c 78                	cmp    $0x78,%al
    1a6c:	75 36                	jne    0x1aa4
    1a6e:	67 66 0f be 46 02    	movsbw 0x2(%esi),%ax
    1a74:	66 e8 a1 fe          	callw  0x1919
    1a78:	ff                   	(bad)  
    1a79:	ff 66 85             	jmpq   *-0x7b(%rsi)
    1a7c:	c0 75 1b eb          	shlb   $0xeb,0x1b(%rbp)
    1a80:	23 66 89             	and    -0x77(%rsi),%esp
    1a83:	cf                   	iret   
    1a84:	66 83 f9 10          	cmp    $0x10,%cx
    1a88:	75 1a                	jne    0x1aa4
    1a8a:	3c 30                	cmp    $0x30,%al
    1a8c:	75 16                	jne    0x1aa4
    1a8e:	67 8a 46 01          	mov    0x1(%esi),%al
    1a92:	66 83 c8 20          	or     $0x20,%ax
    1a96:	3c 78                	cmp    $0x78,%al
    1a98:	75 0a                	jne    0x1aa4
    1a9a:	66 83 c6 02          	add    $0x2,%si
    1a9e:	66 bf 10 00          	mov    $0x10,%di
    1aa2:	00 00                	add    %al,(%rax)
    1aa4:	67 66 c7 44 24 08 00 	movw   $0x0,0x8(%esp)
    1aab:	00 
    1aac:	00 00                	add    %al,(%rax)
    1aae:	67 66 c7 44 24 0c 00 	movw   $0x0,0xc(%esp)
    1ab5:	00 
    1ab6:	00 00                	add    %al,(%rax)
    1ab8:	67 66 0f be 0e       	movsbw (%esi),%cx
    1abd:	66 89 cb             	mov    %cx,%bx
    1ac0:	66 89 c8             	mov    %cx,%ax
    1ac3:	66 e8 52 fe          	callw  0x1919
    1ac7:	ff                   	(bad)  
    1ac8:	ff 66 85             	jmpq   *-0x7b(%rsi)
    1acb:	c0 74 4b 66 83       	shlb   $0x83,0x66(%rbx,%rcx,2)
    1ad0:	e9 30 66 83 f9       	jmpq   0xfffffffff9838105
    1ad5:	09 76 0d             	or     %esi,0xd(%rsi)
    1ad8:	66 83 cb 20          	or     $0x20,%bx
    1adc:	66 0f be db          	movsbw %bl,%bx
    1ae0:	67 66 8d 4b a9       	lea    -0x57(%ebx),%cx
    1ae5:	66 39 f9             	cmp    %di,%cx
    1ae8:	73 2f                	jae    0x1b19
    1aea:	67 66 8b 5c 24 0c    	mov    0xc(%esp),%bx
    1af0:	66 0f af df          	imul   %di,%bx
    1af4:	67 66 8b 44 24 08    	mov    0x8(%esp),%ax
    1afa:	66 f7 e7             	mul    %di
    1afd:	66 01 da             	add    %bx,%dx
    1b00:	66 31 db             	xor    %bx,%bx
    1b03:	66 01 c1             	add    %ax,%cx
    1b06:	66 11 d3             	adc    %dx,%bx
    1b09:	67 66 89 4c 24 08    	mov    %cx,0x8(%esp)
    1b0f:	67 66 89 5c 24 0c    	mov    %bx,0xc(%esp)
    1b15:	66 46 eb 9f          	data16 rex.RX jmp 0x1ab8
    1b19:	67 66 83 7c 24 04 00 	cmpw   $0x0,0x4(%esp)
    1b20:	74 0a                	je     0x1b2c
    1b22:	67 66 8b 44 24 04    	mov    0x4(%esp),%ax
    1b28:	67 66 89 30          	mov    %si,(%eax)
    1b2c:	67 66 8b 44 24 08    	mov    0x8(%esp),%ax
    1b32:	67 66 8b 54 24 0c    	mov    0xc(%esp),%dx
    1b38:	67 66 8d 65 f4       	lea    -0xc(%ebp),%sp
    1b3d:	66 5b                	pop    %bx
    1b3f:	66 5e                	pop    %si
    1b41:	66 5f                	pop    %di
    1b43:	66 5d                	pop    %bp
    1b45:	66 c3                	retw   
    1b47:	67 80 38 2d          	cmpb   $0x2d,(%eax)
    1b4b:	75 0d                	jne    0x1b5a
    1b4d:	66 40                	data16 rex
    1b4f:	66 e8 d9 fe          	callw  0x1a2c
    1b53:	ff                   	(bad)  
    1b54:	ff 66 f7             	jmpq   *-0x9(%rsi)
    1b57:	d8 66 c3             	fsubs  -0x3d(%rsi)
    1b5a:	66 e8 ce fe          	callw  0x1a2c
    1b5e:	ff                   	(bad)  
    1b5f:	ff 66 c3             	jmpq   *-0x3d(%rsi)
    1b62:	66 89 c1             	mov    %ax,%cx
    1b65:	66 89 c2             	mov    %ax,%dx
    1b68:	67 80 3a 00          	cmpb   $0x0,(%edx)
    1b6c:	74 04                	je     0x1b72
    1b6e:	66 42 eb f6          	data16 rex.X jmp 0x1b68
    1b72:	66 89 d0             	mov    %dx,%ax
    1b75:	66 29 c8             	sub    %cx,%ax
    1b78:	66 c3                	retw   
    1b7a:	66 55                	push   %bp
    1b7c:	66 57                	push   %di
    1b7e:	66 56                	push   %si
    1b80:	66 53                	push   %bx
    1b82:	66 51                	push   %cx
    1b84:	66 89 c6             	mov    %ax,%si
    1b87:	66 89 d5             	mov    %dx,%bp
    1b8a:	66 89 d0             	mov    %dx,%ax
    1b8d:	66 e8 cf ff          	callw  0x1b60
    1b91:	ff                   	(bad)  
    1b92:	ff 66 85             	jmpq   *-0x7b(%rsi)
    1b95:	c0 74 3c 66 89       	shlb   $0x89,0x66(%rsp,%rdi,1)
    1b9a:	c3                   	retq   
    1b9b:	66 89 f0             	mov    %si,%ax
    1b9e:	66 e8 be ff          	callw  0x1b60
    1ba2:	ff                   	(bad)  
    1ba3:	ff 66 89             	jmpq   *-0x77(%rsi)
    1ba6:	c2 67 66             	retq   $0x6667
    1ba9:	8d 04 06             	lea    (%rsi,%rax,1),%eax
    1bac:	67 66 89 04 24       	mov    %ax,(%esp)
    1bb1:	67 66 8b 04 24       	mov    (%esp),%ax
    1bb6:	66 29 d0             	sub    %dx,%ax
    1bb9:	66 39 da             	cmp    %bx,%dx
    1bbc:	72 11                	jb     0x1bcf
    1bbe:	66 4a                	data16 rex.WX
    1bc0:	66 89 c7             	mov    %ax,%di
    1bc3:	66 89 ee             	mov    %bp,%si
    1bc6:	66 89 d9             	mov    %bx,%cx
    1bc9:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    1bcb:	75 e4                	jne    0x1bb1
    1bcd:	eb 08                	jmp    0x1bd7
    1bcf:	66 31 c0             	xor    %ax,%ax
    1bd2:	eb 03                	jmp    0x1bd7
    1bd4:	66 89 f0             	mov    %si,%ax
    1bd7:	66 5a                	pop    %dx
    1bd9:	66 5b                	pop    %bx
    1bdb:	66 5e                	pop    %si
    1bdd:	66 5f                	pop    %di
    1bdf:	66 5d                	pop    %bp
    1be1:	66 c3                	retw   
    1be3:	67 8a 08             	mov    (%eax),%cl
    1be6:	38 d1                	cmp    %dl,%cl
    1be8:	74 0b                	je     0x1bf5
    1bea:	66 40 84 c9          	data16 test %cl,%cl
    1bee:	75 f3                	jne    0x1be3
    1bf0:	66 31 c0             	xor    %ax,%ax
    1bf3:	66 c3                	retw   
    1bf5:	66 c3                	retw   
    1bf7:	66 55                	push   %bp
    1bf9:	66 57                	push   %di
    1bfb:	66 56                	push   %si
    1bfd:	66 53                	push   %bx
    1bff:	66 83 ec 10          	sub    $0x10,%sp
    1c03:	66 89 c3             	mov    %ax,%bx
    1c06:	66 89 d5             	mov    %dx,%bp
    1c09:	67 66 89 4c 24 0c    	mov    %cx,0xc(%esp)
    1c0f:	67 80 38 2b          	cmpb   $0x2b,(%eax)
    1c13:	75 02                	jne    0x1c17
    1c15:	66 43                	data16 rex.XB
    1c17:	67 8a 03             	mov    (%ebx),%al
    1c1a:	66 85 ed             	test   %bp,%bp
    1c1d:	75 2f                	jne    0x1c4e
    1c1f:	66 bd 0a 00          	mov    $0xa,%bp
    1c23:	00 00                	add    %al,(%rax)
    1c25:	3c 30                	cmp    $0x30,%al
    1c27:	75 45                	jne    0x1c6e
    1c29:	67 8a 43 01          	mov    0x1(%ebx),%al
    1c2d:	66 83 c8 20          	or     $0x20,%ax
    1c31:	66 bd 08 00          	mov    $0x8,%bp
    1c35:	00 00                	add    %al,(%rax)
    1c37:	3c 78                	cmp    $0x78,%al
    1c39:	75 33                	jne    0x1c6e
    1c3b:	67 66 0f be 43 02    	movsbw 0x2(%ebx),%ax
    1c41:	66 e8 d4 fc          	callw  0x1919
    1c45:	ff                   	(bad)  
    1c46:	ff 66 85             	jmpq   *-0x7b(%rsi)
    1c49:	c0 75 18 eb          	shlb   $0xeb,0x18(%rbp)
    1c4d:	20 66 83             	and    %ah,-0x7d(%rsi)
    1c50:	fd                   	std    
    1c51:	10 75 1a             	adc    %dh,0x1a(%rbp)
    1c54:	3c 30                	cmp    $0x30,%al
    1c56:	75 16                	jne    0x1c6e
    1c58:	67 8a 43 01          	mov    0x1(%ebx),%al
    1c5c:	66 83 c8 20          	or     $0x20,%ax
    1c60:	3c 78                	cmp    $0x78,%al
    1c62:	75 0a                	jne    0x1c6e
    1c64:	66 83 c3 02          	add    $0x2,%bx
    1c68:	66 bd 10 00          	mov    $0x10,%bp
    1c6c:	00 00                	add    %al,(%rax)
    1c6e:	67 66 89 5c 24 08    	mov    %bx,0x8(%esp)
    1c74:	67 66 c7 44 24 04 00 	movw   $0x0,0x4(%esp)
    1c7b:	00 
    1c7c:	00 00                	add    %al,(%rax)
    1c7e:	66 31 f6             	xor    %si,%si
    1c81:	66 31 ff             	xor    %di,%di
    1c84:	67 66 8b 44 24 08    	mov    0x8(%esp),%ax
    1c8a:	67 66 0f be 10       	movsbw (%eax),%dx
    1c8f:	66 89 d0             	mov    %dx,%ax
    1c92:	67 66 8d 4a d0       	lea    -0x30(%edx),%cx
    1c97:	67 66 89 0c 24       	mov    %cx,(%esp)
    1c9c:	66 83 f9 09          	cmp    $0x9,%cx
    1ca0:	76 1c                	jbe    0x1cbe
    1ca2:	66 83 c8 20          	or     $0x20,%ax
    1ca6:	66 0f be c0          	movsbw %al,%ax
    1caa:	67 66 8d 50 9f       	lea    -0x61(%eax),%dx
    1caf:	66 83 fa 05          	cmp    $0x5,%dx
    1cb3:	77 70                	ja     0x1d25
    1cb5:	66 83 e8 57          	sub    $0x57,%ax
    1cb9:	67 66 89 04 24       	mov    %ax,(%esp)
    1cbe:	67 66 39 2c 24       	cmp    %bp,(%esp)
    1cc3:	73 60                	jae    0x1d25
    1cc5:	66 f7 c7 00 00       	test   $0x0,%di
    1cca:	00 f0                	add    %dh,%al
    1ccc:	74 2a                	je     0x1cf8
    1cce:	66 83 c8 ff          	or     $0xffff,%ax
    1cd2:	66 31 d2             	xor    %dx,%dx
    1cd5:	66 f7 f5             	div    %bp
    1cd8:	66 89 c1             	mov    %ax,%cx
    1cdb:	67 66 8b 04 24       	mov    (%esp),%ax
    1ce0:	66 f7 d0             	not    %ax
    1ce3:	66 f7 f5             	div    %bp
    1ce6:	66 39 f0             	cmp    %si,%ax
    1ce9:	66 19 f9             	sbb    %di,%cx
    1cec:	73 0a                	jae    0x1cf8
    1cee:	67 66 81 4c 24 04 00 	orw    $0x0,0x4(%esp)
    1cf5:	00 
    1cf6:	00 80 66 89 f9 66    	add    %al,0x66f98966(%rax)
    1cfc:	0f af cd             	imul   %ebp,%ecx
    1cff:	66 89 f0             	mov    %si,%ax
    1d02:	66 f7 e5             	mul    %bp
    1d05:	66 01 ca             	add    %cx,%dx
    1d08:	67 66 8b 34 24       	mov    (%esp),%si
    1d0d:	66 31 ff             	xor    %di,%di
    1d10:	66 01 c6             	add    %ax,%si
    1d13:	66 11 d7             	adc    %dx,%di
    1d16:	67 66 ff 44 24 04    	incw   0x4(%esp)
    1d1c:	67 66 ff 44 24 08    	incw   0x8(%esp)
    1d22:	e9 5f ff 66 b8       	jmpq   0xffffffffb8671c86
    1d27:	de ff                	fdivrp %st,%st(7)
    1d29:	ff                   	(bad)  
    1d2a:	ff 67 66             	jmpq   *0x66(%rdi)
    1d2d:	83 7c 24 04 00       	cmpl   $0x0,0x4(%rsp)
    1d32:	78 34                	js     0x1d68
    1d34:	66 b8 ea ff          	mov    $0xffea,%ax
    1d38:	ff                   	(bad)  
    1d39:	ff 74 2c 67          	pushq  0x67(%rsp,%rbp,1)
    1d3d:	66 03 5c 24 04       	add    0x4(%rsp),%bx
    1d42:	67 80 3b 0a          	cmpb   $0xa,(%ebx)
    1d46:	75 02                	jne    0x1d4a
    1d48:	66 43                	data16 rex.XB
    1d4a:	66 b8 ea ff          	mov    $0xffea,%ax
    1d4e:	ff                   	(bad)  
    1d4f:	ff 67 80             	jmpq   *-0x80(%rdi)
    1d52:	3b 00                	cmp    (%rax),%eax
    1d54:	75 12                	jne    0x1d68
    1d56:	67 66 8b 44 24 0c    	mov    0xc(%esp),%ax
    1d5c:	67 66 89 30          	mov    %si,(%eax)
    1d60:	67 66 89 78 04       	mov    %di,0x4(%eax)
    1d65:	66 31 c0             	xor    %ax,%ax
    1d68:	66 83 c4 10          	add    $0x10,%sp
    1d6c:	66 5b                	pop    %bx
    1d6e:	66 5e                	pop    %si
    1d70:	66 5f                	pop    %di
    1d72:	66 5d                	pop    %bp
    1d74:	66 c3                	retw   
    1d76:	66 83 ec 58          	sub    $0x58,%sp
    1d7a:	66 89 e0             	mov    %sp,%ax
    1d7d:	66 e8 61 fb          	callw  0x18e2
    1d81:	ff                   	(bad)  
    1d82:	ff 67 c6             	jmpq   *-0x3a(%rdi)
    1d85:	44 24 1d             	rex.R and $0x1d,%al
    1d88:	01 67 66             	add    %esp,0x66(%rdi)
    1d8b:	8d 4c 24 2c          	lea    0x2c(%rsp),%ecx
    1d8f:	66 89 e2             	mov    %sp,%dx
    1d92:	66 b8 16 00          	mov    $0x16,%ax
    1d96:	00 00                	add    %al,(%rax)
    1d98:	66 e8 36 e5          	callw  0x2d2
    1d9c:	ff                   	(bad)  
    1d9d:	ff 67 66             	jmpq   *0x66(%rdi)
    1da0:	8b 44 24 54          	mov    0x54(%rsp),%eax
    1da4:	66 c1 e8 06          	shr    $0x6,%ax
    1da8:	66 83 f0 01          	xor    $0x1,%ax
    1dac:	66 83 e0 01          	and    $0x1,%ax
    1db0:	66 83 c4 58          	add    $0x58,%sp
    1db4:	66 c3                	retw   
    1db6:	66 83 ec 58          	sub    $0x58,%sp
    1dba:	66 89 e0             	mov    %sp,%ax
    1dbd:	66 e8 21 fb          	callw  0x18e2
    1dc1:	ff                   	(bad)  
    1dc2:	ff 67 c6             	jmpq   *-0x3a(%rdi)
    1dc5:	44 24 1d             	rex.R and $0x1d,%al
    1dc8:	02 67 66             	add    0x66(%rdi),%ah
    1dcb:	8d 4c 24 2c          	lea    0x2c(%rsp),%ecx
    1dcf:	66 89 e2             	mov    %sp,%dx
    1dd2:	66 b8 1a 00          	mov    $0x1a,%ax
    1dd6:	00 00                	add    %al,(%rax)
    1dd8:	66 e8 f6 e4          	callw  0x2d2
    1ddc:	ff                   	(bad)  
    1ddd:	ff 67 8a             	jmpq   *-0x76(%rdi)
    1de0:	44 24 41             	rex.R and $0x41,%al
    1de3:	66 83 c4 58          	add    $0x58,%sp
    1de7:	66 c3                	retw   
    1de9:	66 83 ec 58          	sub    $0x58,%sp
    1ded:	66 89 e0             	mov    %sp,%ax
    1df0:	66 e8 ee fa          	callw  0x18e2
    1df4:	ff                   	(bad)  
    1df5:	ff 67 66             	jmpq   *0x66(%rdi)
    1df8:	8d 4c 24 2c          	lea    0x2c(%rsp),%ecx
    1dfc:	66 89 e2             	mov    %sp,%dx
    1dff:	66 b8 16 00          	mov    $0x16,%ax
    1e03:	00 00                	add    %al,(%rax)
    1e05:	66 e8 c9 e4          	callw  0x2d2
    1e09:	ff                   	(bad)  
    1e0a:	ff 67 66             	jmpq   *0x66(%rdi)
    1e0d:	0f b6 44 24 48       	movzbl 0x48(%rsp),%eax
    1e12:	66 83 c4 58          	add    $0x58,%sp
    1e16:	66 c3                	retw   
    1e18:	66 e8 58 ff          	callw  0x1d74
    1e1c:	ff                   	(bad)  
    1e1d:	ff 66 85             	jmpq   *-0x7b(%rsi)
    1e20:	c0 74 08 66 e8       	shlb   $0xe8,0x66(%rax,%rcx,1)
    1e25:	c0 ff ff             	sar    $0xff,%bh
    1e28:	ff                   	(bad)  
    1e29:	eb ed                	jmp    0x1e18
    1e2b:	66 c3                	retw   
    1e2d:	66 56                	push   %si
    1e2f:	66 53                	push   %bx
    1e31:	66 e8 7f ff          	callw  0x1db4
    1e35:	ff                   	(bad)  
    1e36:	ff 66 0f             	jmpq   *0xf(%rsi)
    1e39:	b6 d8                	mov    $0xd8,%dh
    1e3b:	66 be 1e 00          	mov    $0x1e,%si
    1e3f:	00 00                	add    %al,(%rax)
    1e41:	66 e8 2f ff          	callw  0x1d74
    1e45:	ff                   	(bad)  
    1e46:	ff 66 85             	jmpq   *-0x7b(%rsi)
    1e49:	c0 74 06 66 5b       	shlb   $0x5b,0x66(%rsi,%rax,1)
    1e4e:	66 5e                	pop    %si
    1e50:	eb 97                	jmp    0x1de9
    1e52:	66 e8 5e ff          	callw  0x1db4
    1e56:	ff                   	(bad)  
    1e57:	ff 66 0f             	jmpq   *0xf(%rsi)
    1e5a:	b6 c0                	mov    $0xc0,%dh
    1e5c:	66 39 d8             	cmp    %bx,%ax
    1e5f:	74 02                	je     0x1e63
    1e61:	66 4e                	data16 rex.WRX
    1e63:	66 85 f6             	test   %si,%si
    1e66:	74 05                	je     0x1e6d
    1e68:	66 89 c3             	mov    %ax,%bx
    1e6b:	eb d4                	jmp    0x1e41
    1e6d:	66 31 c0             	xor    %ax,%ax
    1e70:	66 5b                	pop    %bx
    1e72:	66 5e                	pop    %si
    1e74:	66 c3                	retw   
    1e76:	66 83 ec 58          	sub    $0x58,%sp
    1e7a:	66 89 e0             	mov    %sp,%ax
    1e7d:	66 e8 61 fa          	callw  0x18e2
    1e81:	ff                   	(bad)  
    1e82:	ff 67 c6             	jmpq   *-0x3a(%rdi)
    1e85:	44 24 1d             	rex.R and $0x1d,%al
    1e88:	03 67 66             	add    0x66(%rdi),%esp
    1e8b:	8d 4c 24 2c          	lea    0x2c(%rsp),%ecx
    1e8f:	66 89 e2             	mov    %sp,%dx
    1e92:	66 b8 10 00          	mov    $0x10,%ax
    1e96:	00 00                	add    %al,(%rax)
    1e98:	66 e8 36 e4          	callw  0x2d2
    1e9c:	ff                   	(bad)  
    1e9d:	ff 67 66             	jmpq   *0x66(%rdi)
    1ea0:	8b 44 24 40          	mov    0x40(%rsp),%eax
    1ea4:	a3 b0 36 67 8a 44 24 	movabs %eax,0xa84524448a6736b0
    1eab:	45 a8 
    1ead:	20 74 05 80          	and    %dh,-0x80(%rbp,%rax,1)
    1eb1:	0e                   	(bad)  
    1eb2:	b8 36 01 66 83       	mov    $0x83660136,%eax
    1eb7:	e0 1f                	loopne 0x1ed8
    1eb9:	67 8a 54 24 44       	mov    0x44(%esp),%dl
    1ebe:	66 83 e2 1f          	and    $0x1f,%dx
    1ec2:	38 d0                	cmp    %dl,%al
    1ec4:	76 05                	jbe    0x1ecb
    1ec6:	80 0e b8             	orb    $0xb8,(%rsi)
    1ec9:	36 01 66 83          	add    %esp,%ss:-0x7d(%rsi)
    1ecd:	c4                   	(bad)  
    1ece:	58                   	pop    %rax
    1ecf:	66 c3                	retw   
    1ed1:	66 83 ec 58          	sub    $0x58,%sp
    1ed5:	66 e8 9b ff          	callw  0x1e74
    1ed9:	ff                   	(bad)  
    1eda:	ff 66 89             	jmpq   *-0x77(%rsi)
    1edd:	e0 66                	loopne 0x1f45
    1edf:	e8 00 fa ff ff       	callq  0x18e4
    1ee4:	67 c6 44 24 1d 0f    	movb   $0xf,0x1d(%esp)
    1eea:	67 66 8d 4c 24 2c    	lea    0x2c(%esp),%cx
    1ef0:	66 89 e2             	mov    %sp,%dx
    1ef3:	66 b8 10 00          	mov    $0x10,%ax
    1ef7:	00 00                	add    %al,(%rax)
    1ef9:	66 e8 d5 e3          	callw  0x2d2
    1efd:	ff                   	(bad)  
    1efe:	ff 67 8a             	jmpq   *-0x76(%rdi)
    1f01:	44 24 48             	rex.R and $0x48,%al
    1f04:	66 83 e0 7f          	and    $0x7f,%ax
    1f08:	a2 b6 36 67 66 0f b6 	movabs %al,0x2454b60f666736b6
    1f0f:	54 24 
    1f11:	3d 89 16 b4 36       	cmp    $0x36b41689,%eax
    1f16:	66 ba 00 b8          	mov    $0xb800,%dx
    1f1a:	ff                   	(bad)  
    1f1b:	ff                   	(bad)  
    1f1c:	3c 07                	cmp    $0x7,%al
    1f1e:	75 06                	jne    0x1f26
    1f20:	66 ba 00 b0          	mov    $0xb000,%dx
    1f24:	ff                   	(bad)  
    1f25:	ff 89 16 e4 46 66    	decl   0x6646e416(%rcx)
    1f2b:	31 c0                	xor    %eax,%eax
    1f2d:	8e e0                	mov    %eax,%fs
    1f2f:	64 a1 85 04 a3 c0 36 	movabs %fs:0xe8b6436c0a30485,%eax
    1f36:	64 8b 0e 
    1f39:	4a 04 66             	rex.WX add $0x66,%al
    1f3c:	b8 19 00 00 00       	mov    $0x19,%eax
    1f41:	66 83 3e f8          	cmpw   $0xfff8,(%rsi)
    1f45:	46 00 74 0a 64       	add    %r14b,0x64(%rdx,%r9,1)
    1f4a:	a0 84 04 66 0f b6 c0 	movabs 0x4066c0b60f660484,%al
    1f51:	66 40 
    1f53:	66 8b 16             	mov    (%rsi),%dx
    1f56:	f4                   	hlt    
    1f57:	46                   	rex.RX
    1f58:	66 85 d2             	test   %dx,%dx
    1f5b:	75 04                	jne    0x1f61
    1f5d:	66 0f b7 d1          	movzww %cx,%dx
    1f61:	66 8b 0e             	mov    (%rsi),%cx
    1f64:	f0 46                	lock rex.RX
    1f66:	66 85 c9             	test   %cx,%cx
    1f69:	74 03                	je     0x1f6e
    1f6b:	66 89 c8             	mov    %cx,%ax
    1f6e:	88 16                	mov    %dl,(%rsi)
    1f70:	b7 36                	mov    $0x36,%bh
    1f72:	a2 be 36 66 83 c4 58 	movabs %al,0xc36658c4836636be
    1f79:	66 c3 
    1f7b:	66 55                	push   %bp
    1f7d:	66 57                	push   %di
    1f7f:	66 56                	push   %si
    1f81:	66 53                	push   %bx
    1f83:	66 83 ec 38          	sub    $0x38,%sp
    1f87:	8b 1e                	mov    (%rsi),%ebx
    1f89:	aa                   	stos   %al,%es:(%rdi)
    1f8a:	38 66 c7             	cmp    %ah,-0x39(%rsi)
    1f8d:	06                   	(bad)  
    1f8e:	44 35 00 49 00 00    	rex.R xor $0x4900,%eax
    1f94:	66 83 3e e8          	cmpw   $0xffe8,(%rsi)
    1f98:	46 00 75 06          	rex.RX add %r14b,0x6(%rbp)
    1f9c:	66 e8 2f ff          	callw  0x1ecf
    1fa0:	ff                   	(bad)  
    1fa1:	ff 66 0f             	jmpq   *0xf(%rsi)
    1fa4:	b6 0e                	mov    $0xe,%dh
    1fa6:	b7 36                	mov    $0x36,%bh
    1fa8:	66 89 0e             	mov    %cx,(%rsi)
    1fab:	d0 46 66             	rolb   0x66(%rsi)
    1fae:	0f b6 06             	movzbl (%rsi),%eax
    1fb1:	be 36 66 a3 d4       	mov    $0xd4a36636,%esi
    1fb6:	46                   	rex.RX
    1fb7:	66 0f b6 16          	movzbw (%rsi),%dx
    1fbb:	b0 36                	mov    $0x36,%al
    1fbd:	66 89 16             	mov    %dx,(%rsi)
    1fc0:	d8 46 66             	fadds  0x66(%rsi)
    1fc3:	0f b6 16             	movzbl (%rsi),%edx
    1fc6:	b1 36                	mov    $0x36,%cl
    1fc8:	66 89 16             	mov    %dx,(%rsi)
    1fcb:	dc 46 66             	faddl  0x66(%rsi)
    1fce:	0f af c8             	imul   %eax,%ecx
    1fd1:	66 81 c1 00 01       	add    $0x100,%cx
    1fd6:	00 00                	add    %al,(%rax)
    1fd8:	66 01 c9             	add    %cx,%cx
    1fdb:	66 a1 44 35 66 8b 16 	movabs 0x663540168b663544,%ax
    1fe2:	40 35 66 
    1fe5:	29 c2                	sub    %eax,%edx
    1fe7:	66 39 ca             	cmp    %cx,%dx
    1fea:	7c 28                	jl     0x2014
    1fec:	66 40                	data16 rex
    1fee:	66 83 e0 fe          	and    $0xfffe,%ax
    1ff2:	66 81 e9 00 02       	sub    $0x200,%cx
    1ff7:	00 00                	add    %al,(%rax)
    1ff9:	67 66 8d 14 08       	lea    (%eax,%ecx,1),%dx
    1ffe:	66 89 16             	mov    %dx,(%rsi)
    2001:	44 35 66 a3 e0 46    	rex.R xor $0x46e0a366,%eax
    2007:	8e 26                	mov    (%rsi),%fs
    2009:	e4 46                	in     $0x46,%al
    200b:	66 31 d2             	xor    %dx,%dx
    200e:	66 e8 3d e7          	callw  0x74f
    2012:	ff                   	(bad)  
    2013:	ff 66 31             	jmpq   *0x31(%rsi)
    2016:	c0 66 e8 15          	shlb   $0x15,-0x18(%rsi)
    201a:	04 00                	add    $0x0,%al
    201c:	00 83 fb fd 0f 85    	add    %al,-0x7af00205(%rbx)
    2022:	b7 02                	mov    $0x2,%bh
    2024:	66 b8 58 33          	mov    $0x3358,%ax
    2028:	00 00                	add    %al,(%rax)
    202a:	66 e8 91 e3          	callw  0x3bf
    202e:	ff                   	(bad)  
    202f:	ff 66 e8             	jmpq   *-0x18(%rsi)
    2032:	e2 fd                	loop   0x2031
    2034:	ff                   	(bad)  
    2035:	ff 66 e8             	jmpq   *-0x18(%rsi)
    2038:	f1                   	icebp  
    2039:	fd                   	std    
    203a:	ff                   	(bad)  
    203b:	ff 66 a9             	jmpq   *-0x57(%rsi)
    203e:	df ff                	(bad)  
    2040:	ff                   	(bad)  
    2041:	ff 0f                	decl   (%rdi)
    2043:	84 8f 02 66 83 f8    	test   %cl,-0x77c99fe(%rdi)
    2049:	0d 0f 84 c0 00       	or     $0xc0840f,%eax
    204e:	66 b8 07 00          	mov    $0x7,%ax
    2052:	00 00                	add    %al,(%rax)
    2054:	66 e8 d9 e2          	callw  0x331
    2058:	ff                   	(bad)  
    2059:	ff                   	(bad)  
    205a:	eb da                	jmp    0x2036
    205c:	66 85 f6             	test   %si,%si
    205f:	74 0c                	je     0x206d
    2061:	66 b8 0a 00          	mov    $0xa,%ax
    2065:	00 00                	add    %al,(%rax)
    2067:	66 e8 c6 e2          	callw  0x331
    206b:	ff                   	(bad)  
    206c:	ff 66 b8             	jmpq   *-0x48(%rsi)
    206f:	df 33                	fbstp  (%rbx)
    2071:	00 00                	add    %al,(%rax)
    2073:	66 e8 48 e3          	callw  0x3bf
    2077:	ff                   	(bad)  
    2078:	ff 66 31             	jmpq   *0x31(%rsi)
    207b:	f6 66 e8             	mulb   -0x18(%rsi)
    207e:	67 fd                	addr32 std 
    2080:	ff                   	(bad)  
    2081:	ff 66 89             	jmpq   *-0x77(%rsi)
    2084:	c3                   	retq   
    2085:	66 83 f8 08          	cmp    $0x8,%ax
    2089:	0f 84 0f 02 67 66    	je     0x6667229e
    208f:	8d 40 d0             	lea    -0x30(%rax),%eax
    2092:	66 83 f8 09          	cmp    $0x9,%ax
    2096:	0f 86 1a 02 66 89    	jbe    0xffffffff896622b6
    209c:	d8 66 83             	fsubs  -0x7d(%rsi)
    209f:	e0 df                	loopne 0x2080
    20a1:	66 83 e8 41          	sub    $0x41,%ax
    20a5:	66 83 f8 19          	cmp    $0x19,%ax
    20a9:	0f 86 07 02 66 83    	jbe    0xffffffff836622b6
    20af:	fb                   	sti    
    20b0:	0d 75 c9 66 b8       	or     $0xb866c975,%eax
    20b5:	0a 00                	or     (%rax),%al
    20b7:	00 00                	add    %al,(%rax)
    20b9:	66 e8 74 e2          	callw  0x331
    20bd:	ff                   	(bad)  
    20be:	ff 66 85             	jmpq   *-0x7b(%rsi)
    20c1:	f6 0f 84             	testb  $0x84,(%rdi)
    20c4:	0f 02 66 31          	lar    0x31(%rsi),%esp
    20c8:	d2 66 31             	shlb   %cl,0x31(%rsi)
    20cb:	db 66 c1             	(bad)  -0x3f(%rsi)
    20ce:	e3 04                	jrcxz  0x20d4
    20d0:	67 8a 44 14 0c       	mov    0xc(%esp,%edx,1),%al
    20d5:	66 83 c8 20          	or     $0x20,%ax
    20d9:	66 0f be c0          	movsbw %al,%ax
    20dd:	67 66 8d 48 d0       	lea    -0x30(%eax),%cx
    20e2:	66 83 f8 39          	cmp    $0x39,%ax
    20e6:	7e 05                	jle    0x20ed
    20e8:	67 66 8d 48 a9       	lea    -0x57(%eax),%cx
    20ed:	66 01 cb             	add    %cx,%bx
    20f0:	66 42                	data16 rex.X
    20f2:	66 39 f2             	cmp    %si,%dx
    20f5:	75 d5                	jne    0x20cc
    20f7:	66 81 fb b7 cc       	cmp    $0xccb7,%bx
    20fc:	01 00                	add    %eax,(%rax)
    20fe:	0f 85 d9 01 66 b8    	jne    0xffffffffb86622dd
    2104:	01 00                	add    %eax,(%rax)
    2106:	00 00                	add    %al,(%rax)
    2108:	66 e8 24 03          	callw  0x2430
    210c:	00 00                	add    %al,(%rax)
    210e:	66 31 d2             	xor    %dx,%dx
    2111:	66 b8 e4 34          	mov    $0x34e4,%ax
    2115:	00 00                	add    %al,(%rax)
    2117:	66 3d 38 35          	cmp    $0x3538,%ax
    211b:	00 00                	add    %al,(%rax)
    211d:	73 0b                	jae    0x212a
    211f:	67 66 03 50 10       	add    0x10(%eax),%dx
    2124:	66 83 c0 1c          	add    $0x1c,%ax
    2128:	eb ed                	jmp    0x2117
    212a:	66 31 c0             	xor    %ax,%ax
    212d:	66 83 fa 14          	cmp    $0x14,%dx
    2131:	0f 9d c0             	setge  %al
    2134:	67 66 8d 44 00 01    	lea    0x1(%eax,%eax,1),%ax
    213a:	67 66 89 44 24 04    	mov    %ax,0x4(%esp)
    2140:	66 31 db             	xor    %bx,%bx
    2143:	66 b8 a9 33          	mov    $0x33a9,%ax
    2147:	00 00                	add    %al,(%rax)
    2149:	66 e8 72 e2          	callw  0x3bf
    214d:	ff                   	(bad)  
    214e:	ff 66 43             	jmpq   *0x43(%rsi)
    2151:	67 66 3b 5c 24 04    	cmp    0x4(%esp),%bx
    2157:	75 ea                	jne    0x2143
    2159:	66 b8 0a 00          	mov    $0xa,%ax
    215d:	00 00                	add    %al,(%rax)
    215f:	66 e8 ce e1          	callw  0x331
    2163:	ff                   	(bad)  
    2164:	ff 66 31             	jmpq   *0x31(%rsi)
    2167:	f6 67 c6             	mulb   -0x3a(%rdi)
    216a:	04 24                	add    $0x24,%al
    216c:	30 66 bd             	xor    %ah,-0x43(%rsi)
    216f:	e4 34                	in     $0x34,%al
    2171:	00 00                	add    %al,(%rax)
    2173:	66 81 fd 38 35       	cmp    $0x3538,%bp
    2178:	00 00                	add    %al,(%rax)
    217a:	0f 83 de fe 67 66    	jae    0x6668205e
    2180:	8b 7d 0c             	mov    0xc(%rbp),%edi
    2183:	66 31 db             	xor    %bx,%bx
    2186:	67 66 3b 5d 10       	cmp    0x10(%ebp),%bx
    218b:	0f 8d 06 01 67 8b    	jge    0xffffffff8b672297
    2191:	4c df 02             	rex.WR filds (%rdx)
    2194:	66 31 d2             	xor    %dx,%dx
    2197:	85 c9                	test   %ecx,%ecx
    2199:	74 0c                	je     0x21a7
    219b:	66 31 d2             	xor    %dx,%dx
    219e:	67 83 7c df 04 00    	cmpl   $0x0,0x4(%edi,%ebx,8)
    21a4:	0f 95 c2             	setne  %dl
    21a7:	67 8b 04 df          	mov    (%edi,%ebx,8),%eax
    21ab:	67 89 44 24 0a       	mov    %eax,0xa(%esp)
    21b0:	85 c0                	test   %eax,%eax
    21b2:	75 11                	jne    0x21c5
    21b4:	67 8b 44 df 04       	mov    0x4(%edi,%ebx,8),%eax
    21b9:	66 c1 e0 08          	shl    $0x8,%ax
    21bd:	66 01 c8             	add    %cx,%ax
    21c0:	67 89 44 24 0a       	mov    %eax,0xa(%esp)
    21c5:	66 85 d2             	test   %dx,%dx
    21c8:	0f 84 c4 00 67 8b    	je     0xffffffff8b672292
    21ce:	44 df 06             	rex.R filds (%rsi)
    21d1:	67 66 0f b7 54 df 04 	movzww 0x4(%edi,%ebx,8),%dx
    21d8:	85 c0                	test   %eax,%eax
    21da:	74 22                	je     0x21fe
    21dc:	66 0f b7 c0          	movzww %ax,%ax
    21e0:	66 50                	push   %ax
    21e2:	66 52                	push   %dx
    21e4:	66 68 c3 33          	pushw  $0x33c3
    21e8:	00 00                	add    %al,(%rax)
    21ea:	67 66 8d 44 24 18    	lea    0x18(%esp),%ax
    21f0:	66 50                	push   %ax
    21f2:	66 e8 94 f6          	callw  0x188a
    21f6:	ff                   	(bad)  
    21f7:	ff 66 83             	jmpq   *-0x7d(%rsi)
    21fa:	c4                   	(bad)  
    21fb:	10 eb                	adc    %ch,%bl
    21fd:	1a 66 52             	sbb    0x52(%rsi),%ah
    2200:	66 68 c6 33          	pushw  $0x33c6
    2204:	00 00                	add    %al,(%rax)
    2206:	67 66 8d 44 24 14    	lea    0x14(%esp),%ax
    220c:	66 50                	push   %ax
    220e:	66 e8 78 f6          	callw  0x188a
    2212:	ff                   	(bad)  
    2213:	ff 66 83             	jmpq   *-0x7d(%rsi)
    2216:	c4                   	(bad)  
    2217:	0c 67                	or     $0x67,%al
    2219:	66 ff 75 00          	pushw  0x0(%rbp)
    221d:	67 66 8d 44 24 10    	lea    0x10(%esp),%ax
    2223:	66 50                	push   %ax
    2225:	67 66 0f b7 44 df 02 	movzww 0x2(%edi,%ebx,8),%ax
    222c:	66 50                	push   %ax
    222e:	67 66 0f b7 44 24 16 	movzww 0x16(%esp),%ax
    2235:	66 50                	push   %ax
    2237:	67 66 0f be 44 24 10 	movsbw 0x10(%esp),%ax
    223e:	66 50                	push   %ax
    2240:	66 68 c9 33          	pushw  $0x33c9
    2244:	00 00                	add    %al,(%rax)
    2246:	66 e8 5a f6          	callw  0x18a4
    224a:	ff                   	(bad)  
    224b:	ff 66 46             	jmpq   *0x46(%rsi)
    224e:	66 83 c4 18          	add    $0x18,%sp
    2252:	67 66 39 74 24 04    	cmp    %si,0x4(%esp)
    2258:	7f 0f                	jg     0x2269
    225a:	66 b8 0a 00          	mov    $0xa,%ax
    225e:	00 00                	add    %al,(%rax)
    2260:	66 e8 cd e0          	callw  0x331
    2264:	ff                   	(bad)  
    2265:	ff 66 31             	jmpq   *0x31(%rsi)
    2268:	f6 67 80             	mulb   -0x80(%rdi)
    226b:	3c 24                	cmp    $0x24,%al
    226d:	39 74 14 67          	cmp    %esi,0x67(%rsp,%rdx,1)
    2271:	80 3c 24 20          	cmpb   $0x20,(%rsp)
    2275:	74 14                	je     0x228b
    2277:	67 80 3c 24 7a       	cmpb   $0x7a,(%esp)
    227c:	74 0d                	je     0x228b
    227e:	67 fe 04 24          	incb   (%esp)
    2282:	eb 0c                	jmp    0x2290
    2284:	67 c6 04 24 61       	movb   $0x61,(%esp)
    2289:	eb 05                	jmp    0x2290
    228b:	67 c6 04 24 20       	movb   $0x20,(%esp)
    2290:	66 43 e9 f1 fe       	rex.XB jmpw 0x2186
    2295:	66 83 c5 1c          	add    $0x1c,%bp
    2299:	e9 d7 fe 66 85       	jmpq   0xffffffff85672175
    229e:	f6 0f 84             	testb  $0x84,(%rdi)
    22a1:	d9 fd                	fscale 
    22a3:	66 b8 1b 34          	mov    $0x341b,%ax
    22a7:	00 00                	add    %al,(%rax)
    22a9:	66 e8 12 e1          	callw  0x3bf
    22ad:	ff                   	(bad)  
    22ae:	ff 66 4e             	jmpq   *0x4e(%rsi)
    22b1:	e9 c8 fd 66 83       	jmpq   0xffffffff8367207e
    22b6:	fe 03                	incb   (%rbx)
    22b8:	0f 8f f1 fd 67 66    	jg     0x666820af
    22be:	8d 7e 01             	lea    0x1(%rsi),%edi
    22c1:	67 88 5c 34 0c       	mov    %bl,0xc(%esp,%esi,1)
    22c6:	66 89 d8             	mov    %bx,%ax
    22c9:	66 e8 64 e0          	callw  0x331
    22cd:	ff                   	(bad)  
    22ce:	ff 66 89             	jmpq   *-0x77(%rsi)
    22d1:	fe                   	(bad)  
    22d2:	e9 d8 fd 66 bb       	jmpq   0xffffffffbb6720af
    22d7:	04 0f                	add    $0xf,%al
    22d9:	00 00                	add    %al,(%rax)
    22db:	66 0f b7 f3          	movzww %bx,%si
    22df:	66 89 f0             	mov    %si,%ax
    22e2:	66 e8 f6 01          	callw  0x24dc
    22e6:	00 00                	add    %al,(%rax)
    22e8:	66 85 c0             	test   %ax,%ax
    22eb:	74 15                	je     0x2302
    22ed:	66 56                	push   %si
    22ef:	66 68 1f 34          	pushw  $0x341f
    22f3:	00 00                	add    %al,(%rax)
    22f5:	66 e8 ab f5          	callw  0x18a4
    22f9:	ff                   	(bad)  
    22fa:	ff 66 58             	jmpq   *0x58(%rsi)
    22fd:	66 5a                	pop    %dx
    22ff:	e9 22 fd 89 1e       	jmpq   0x1e8a2026
    2304:	aa                   	stos   %al,%es:(%rdi)
    2305:	38 66 e8             	cmp    %ah,-0x18(%rsi)
    2308:	65 09 00             	or     %eax,%gs:(%rax)
    230b:	00 66 83             	add    %ah,-0x7d(%rsi)
    230e:	3e e8 46 00 75 06    	ds callq 0x675235a
    2314:	66 e8 b7 fb          	callw  0x1ecf
    2318:	ff                   	(bad)  
    2319:	ff 66 83             	jmpq   *-0x7d(%rsi)
    231c:	3e ec                	ds in  (%dx),%al
    231e:	46 00 0f             	rex.RX add %r9b,(%rdi)
    2321:	84 00                	test   %al,(%rax)
    2323:	01 66 0f             	add    %esp,0xf(%rsi)
    2326:	b6 1e                	mov    $0x1e,%dh
    2328:	b7 36                	mov    $0x36,%bh
    232a:	66 0f b6 06          	movzbw (%rsi),%ax
    232e:	be 36 66 8b 2e       	mov    $0x2e8b6636,%esi
    2333:	e0 46                	loopne 0x237b
    2335:	66 83 3e e8          	cmpw   $0xffe8,(%rsi)
    2339:	46 00 0f             	rex.RX add %r9b,(%rdi)
    233c:	85 e5                	test   %esp,%ebp
    233e:	00 66 85             	add    %ah,-0x7b(%rsi)
    2341:	ed                   	in     (%dx),%eax
    2342:	0f 84 de 00 67 66    	je     0x66672426
    2348:	89 04 24             	mov    %eax,(%rsp)
    234b:	8e 26                	mov    (%rsi),%fs
    234d:	e4 46                	in     $0x46,%al
    234f:	66 31 f6             	xor    %si,%si
    2352:	66 31 ff             	xor    %di,%di
    2355:	67 66 39 34 24       	cmp    %si,(%esp)
    235a:	7e 69                	jle    0x23c5
    235c:	66 89 d9             	mov    %bx,%cx
    235f:	66 39 36             	cmp    %si,(%rsi)
    2362:	d4                   	(bad)  
    2363:	46 7e 45             	rex.RX jle 0x23ab
    2366:	66 8b 0e             	mov    (%rsi),%cx
    2369:	d0 46 66             	rolb   0x66(%rsi)
    236c:	39 d9                	cmp    %ebx,%ecx
    236e:	7e 03                	jle    0x2373
    2370:	66 89 d9             	mov    %bx,%cx
    2373:	66 01 c9             	add    %cx,%cx
    2376:	67 66 89 4c 24 04    	mov    %cx,0x4(%esp)
    237c:	66 89 ea             	mov    %bp,%dx
    237f:	66 89 f8             	mov    %di,%ax
    2382:	66 e8 d6 e3          	callw  0x75c
    2386:	ff                   	(bad)  
    2387:	ff 67 66             	jmpq   *0x66(%rdi)
    238a:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
    238e:	66 01 cf             	add    %cx,%di
    2391:	66 a1 d0 46 67 66 8d 	movabs 0x6600148d666746d0,%ax
    2398:	14 00 66 
    239b:	01 d5                	add    %edx,%ebp
    239d:	66 31 c9             	xor    %cx,%cx
    23a0:	66 39 c3             	cmp    %ax,%bx
    23a3:	7c 06                	jl     0x23ab
    23a5:	66 89 d9             	mov    %bx,%cx
    23a8:	66 29 c1             	sub    %ax,%cx
    23ab:	8b 16                	mov    (%rsi),%edx
    23ad:	e4 46                	in     $0x46,%al
    23af:	66 b8 20 07          	mov    $0x720,%ax
    23b3:	20 07                	and    %al,(%rdi)
    23b5:	06                   	(bad)  
    23b6:	8e c2                	mov    %edx,%es
    23b8:	d1 e9                	shr    %ecx
    23ba:	73 01                	jae    0x23bd
    23bc:	ab                   	stos   %eax,%es:(%rdi)
    23bd:	f3 66 ab             	rep stos %ax,%es:(%rdi)
    23c0:	07                   	(bad)  
    23c1:	66 46 eb 90          	data16 rex.RX jmp 0x2355
    23c5:	66 3b 1e             	cmp    (%rsi),%bx
    23c8:	d8 46 7f             	fadds  0x7f(%rsi)
    23cb:	07                   	(bad)  
    23cc:	66 4b                	data16 rex.WXB
    23ce:	66 89 1e             	mov    %bx,(%rsi)
    23d1:	d8 46 67             	fadds  0x67(%rsi)
    23d4:	66 8b 04 24          	mov    (%rsp),%ax
    23d8:	66 3b 06             	cmp    (%rsi),%ax
    23db:	dc 46 7f             	faddl  0x7f(%rsi)
    23de:	06                   	(bad)  
    23df:	66 48                	data16 rex.W
    23e1:	66 a3 dc 46 67 66 8d 	movabs %ax,0xc24448d666746dc
    23e8:	44 24 0c 
    23eb:	66 e8 f3 f4          	callw  0x18e2
    23ef:	ff                   	(bad)  
    23f0:	ff 67 c6             	jmpq   *-0x3a(%rdi)
    23f3:	44 24 29             	rex.R and $0x29,%al
    23f6:	02 66 a1             	add    -0x5f(%rsi),%ah
    23f9:	dc 46 67             	faddl  0x67(%rsi)
    23fc:	88 44 24 21          	mov    %al,0x21(%rsp)
    2400:	66 a1 d8 46 67 88 44 	movabs 0x66202444886746d8,%ax
    2407:	24 20 66 
    240a:	31 c9                	xor    %ecx,%ecx
    240c:	67 66 8d 54 24 0c    	lea    0xc(%esp),%dx
    2412:	66 b8 10 00          	mov    $0x10,%ax
    2416:	00 00                	add    %al,(%rax)
    2418:	66 e8 b6 de          	callw  0x2d2
    241c:	ff                   	(bad)  
    241d:	ff 66 e8             	jmpq   *-0x18(%rsi)
    2420:	52                   	push   %rdx
    2421:	fa                   	cli    
    2422:	ff                   	(bad)  
    2423:	ff 66 83             	jmpq   *-0x7d(%rsi)
    2426:	c4                   	(bad)  
    2427:	38 66 5b             	cmp    %ah,0x5b(%rsi)
    242a:	66 5e                	pop    %si
    242c:	66 5f                	pop    %di
    242e:	66 5d                	pop    %bp
    2430:	66 c3                	retw   
    2432:	67 80 b8 fc 46 00 00 	cmpb   $0x0,0x46fc(%eax)
    2439:	00 
    243a:	75 4e                	jne    0x248a
    243c:	66 56                	push   %si
    243e:	66 53                	push   %bx
    2440:	66 89 c6             	mov    %ax,%si
    2443:	67 c6 80 fc 46 00 00 	movb   $0x1,0x46fc(%eax)
    244a:	01 
    244b:	66 bb e4 34          	mov    $0x34e4,%bx
    244f:	00 00                	add    %al,(%rax)
    2451:	66 81 fb 38 35       	cmp    $0x3538,%bx
    2456:	00 00                	add    %al,(%rax)
    2458:	73 2a                	jae    0x2484
    245a:	67 66 39 73 14       	cmp    %si,0x14(%ebx)
    245f:	75 1d                	jne    0x247e
    2461:	67 66 8b 43 08       	mov    0x8(%ebx),%ax
    2466:	66 85 c0             	test   %ax,%ax
    2469:	74 0a                	je     0x2475
    246b:	66 ff d0             	callw  *%ax
    246e:	67 66 89 43 10       	mov    %ax,0x10(%ebx)
    2473:	eb 09                	jmp    0x247e
    2475:	67 66 c7 43 10 00 00 	movw   $0x0,0x10(%ebx)
    247c:	00 00                	add    %al,(%rax)
    247e:	66 83 c3 1c          	add    $0x1c,%bx
    2482:	eb cd                	jmp    0x2451
    2484:	66 5b                	pop    %bx
    2486:	66 5e                	pop    %si
    2488:	66 c3                	retw   
    248a:	66 c3                	retw   
    248c:	66 ba e4 34          	mov    $0x34e4,%dx
    2490:	00 00                	add    %al,(%rax)
    2492:	66 81 fa 38 35       	cmp    $0x3538,%dx
    2497:	00 00                	add    %al,(%rax)
    2499:	72 05                	jb     0x24a0
    249b:	66 31 c0             	xor    %ax,%ax
    249e:	66 c3                	retw   
    24a0:	66 56                	push   %si
    24a2:	66 53                	push   %bx
    24a4:	67 66 8b 72 0c       	mov    0xc(%edx),%si
    24a9:	67 66 8b 5a 10       	mov    0x10(%edx),%bx
    24ae:	66 31 c9             	xor    %cx,%cx
    24b1:	66 39 cb             	cmp    %cx,%bx
    24b4:	7e 0a                	jle    0x24c0
    24b6:	67 39 04 ce          	cmp    %eax,(%esi,%ecx,8)
    24ba:	74 16                	je     0x24d2
    24bc:	66 41 eb f1          	data16 rex.B jmp 0x24b1
    24c0:	66 83 c2 1c          	add    $0x1c,%dx
    24c4:	66 81 fa 38 35       	cmp    $0x3538,%dx
    24c9:	00 00                	add    %al,(%rax)
    24cb:	72 d7                	jb     0x24a4
    24cd:	66 31 c0             	xor    %ax,%ax
    24d0:	eb 06                	jmp    0x24d8
    24d2:	66 b8 01 00          	mov    $0x1,%ax
    24d6:	00 00                	add    %al,(%rax)
    24d8:	66 5b                	pop    %bx
    24da:	66 5e                	pop    %si
    24dc:	66 c3                	retw   
    24de:	66 55                	push   %bp
    24e0:	66 57                	push   %di
    24e2:	66 56                	push   %si
    24e4:	66 53                	push   %bx
    24e6:	66 83 ec 20          	sub    $0x20,%sp
    24ea:	66 31 ff             	xor    %di,%di
    24ed:	3d 04 0f 0f 84       	cmp    $0x840f0f04,%eax
    24f2:	f6 01 66             	testb  $0x66,(%rcx)
    24f5:	bb 00 0f 00 00       	mov    $0xf00,%ebx
    24fa:	83 f8 ff             	cmp    $0xffffffff,%eax
    24fd:	74 0e                	je     0x250d
    24ff:	66 89 c3             	mov    %ax,%bx
    2502:	83 f8 fe             	cmp    $0xfffffffe,%eax
    2505:	75 06                	jne    0x250d
    2507:	66 bb 01 0f          	mov    $0xf01,%bx
    250b:	00 00                	add    %al,(%rax)
    250d:	66 89 dd             	mov    %bx,%bp
    2510:	81 e5 ff 7f 66 ba    	and    $0xba667fff,%ebp
    2516:	e4 34                	in     $0x34,%al
    2518:	00 00                	add    %al,(%rax)
    251a:	67 66 c7 44 24 08 00 	movw   $0x0,0x8(%esp)
    2521:	00 
    2522:	00 00                	add    %al,(%rax)
    2524:	66 89 d8             	mov    %bx,%ax
    2527:	66 25 ff 7f          	and    $0x7fff,%ax
    252b:	00 00                	add    %al,(%rax)
    252d:	67 66 89 44 24 10    	mov    %ax,0x10(%esp)
    2533:	66 81 fa 38 35       	cmp    $0x3538,%dx
    2538:	00 00                	add    %al,(%rax)
    253a:	0f 83 b4 00 67 66    	jae    0x666725f4
    2540:	8b 42 0c             	mov    0xc(%rdx),%eax
    2543:	67 66 8b 7a 10       	mov    0x10(%edx),%di
    2548:	67 66 89 7c 24 14    	mov    %di,0x14(%esp)
    254e:	67 66 c7 44 24 0c 00 	movw   $0x0,0xc(%esp)
    2555:	00 
    2556:	00 00                	add    %al,(%rax)
    2558:	67 66 8b 7c 24 14    	mov    0x14(%esp),%di
    255e:	67 66 39 7c 24 0c    	cmp    %di,0xc(%esp)
    2564:	0f 8d 83 00 67 8b    	jge    0xffffffff8b6725ed
    256a:	70 02                	jo     0x256e
    256c:	67 89 74 24 06       	mov    %esi,0x6(%esp)
    2571:	67 66 c7 04 24 01 00 	movw   $0x1,(%esp)
    2578:	00 00                	add    %al,(%rax)
    257a:	85 f6                	test   %esi,%esi
    257c:	75 10                	jne    0x258e
    257e:	66 31 c9             	xor    %cx,%cx
    2581:	67 83 78 04 00       	cmpl   $0x0,0x4(%eax)
    2586:	0f 95 c1             	setne  %cl
    2589:	67 66 89 0c 24       	mov    %cx,(%esp)
    258e:	67 8b 30             	mov    (%eax),%esi
    2591:	67 66 8b 7c 24 08    	mov    0x8(%esp),%di
    2597:	67 66 39 7c 24 10    	cmp    %di,0x10(%esp)
    259d:	75 08                	jne    0x25a7
    259f:	67 66 83 3c 24 00    	cmpw   $0x0,(%esp)
    25a5:	75 20                	jne    0x25c7
    25a7:	39 f5                	cmp    %esi,%ebp
    25a9:	74 1c                	je     0x25c7
    25ab:	67 66 0f b7 48 04    	movzww 0x4(%eax),%cx
    25b1:	66 c1 e1 08          	shl    $0x8,%cx
    25b5:	67 66 0f b7 7c 24 06 	movzww 0x6(%esp),%di
    25bc:	66 01 f9             	add    %di,%cx
    25bf:	67 66 39 4c 24 10    	cmp    %cx,0x10(%esp)
    25c5:	75 0a                	jne    0x25d1
    25c7:	67 66 ff 52 04       	callw  *0x4(%edx)
    25cc:	66 89 c7             	mov    %ax,%di
    25cf:	eb 7b                	jmp    0x264c
    25d1:	67 66 83 3c 24 01    	cmpw   $0x1,(%esp)
    25d7:	67 66 83 5c 24 08 ff 	sbbw   $0xffff,0x8(%esp)
    25de:	67 66 ff 44 24 0c    	incw   0xc(%esp)
    25e4:	66 83 c0 08          	add    $0x8,%ax
    25e8:	e9 6d ff 66 83       	jmpq   0xffffffff8367255a
    25ed:	c2 1c e9             	retq   $0xe91c
    25f0:	41 ff 66 ba          	jmpq   *-0x46(%r14)
    25f4:	e4 34                	in     $0x34,%al
    25f6:	00 00                	add    %al,(%rax)
    25f8:	66 0f b7 cd          	movzww %bp,%cx
    25fc:	66 81 fa 38 35       	cmp    $0x3538,%dx
    2601:	00 00                	add    %al,(%rax)
    2603:	73 40                	jae    0x2645
    2605:	67 66 0f b7 42 18    	movzww 0x18(%edx),%ax
    260b:	39 c5                	cmp    %eax,%ebp
    260d:	72 30                	jb     0x263f
    260f:	67 66 0f b7 72 1a    	movzww 0x1a(%edx),%si
    2615:	66 01 f0             	add    %si,%ax
    2618:	66 39 c1             	cmp    %ax,%cx
    261b:	7d 22                	jge    0x263f
    261d:	67 89 6c 24 18       	mov    %ebp,0x18(%esp)
    2622:	67 66 c7 44 24 1a 00 	movw   $0x0,0x1a(%esp)
    2629:	00 
    262a:	00 00                	add    %al,(%rax)
    262c:	67 66 8d 44 24 18    	lea    0x18(%esp),%ax
    2632:	67 66 ff 52 04       	callw  *0x4(%edx)
    2637:	66 89 c7             	mov    %ax,%di
    263a:	66 89 ee             	mov    %bp,%si
    263d:	eb 0d                	jmp    0x264c
    263f:	66 83 c2 1c          	add    $0x1c,%dx
    2643:	eb b7                	jmp    0x25fc
    2645:	66 83 cf ff          	or     $0xffff,%di
    2649:	e9 9e 00 66 85       	jmpq   0xffffffff856626ec
    264e:	ff 0f                	decl   (%rdi)
    2650:	85 97 00 85 db 0f    	test   %edx,0xfdb8500(%rdi)
    2656:	89 8d 00 66 31 c0    	mov    %ecx,-0x3fce9a00(%rbp)
    265c:	8e e0                	mov    %eax,%fs
    265e:	64 8a 1e             	mov    %fs:(%rsi),%bl
    2661:	85 04 66             	test   %eax,(%rsi,%riz,2)
    2664:	0f b6 db             	movzbl %bl,%ebx
    2667:	66 a1 f0 46 66 85 c0 	movabs 0x640a75c0856646f0,%ax
    266e:	75 0a 64 
    2671:	a0 84 04 66 0f b6 c0 	movabs 0x4066c0b60f660484,%al
    2678:	66 40 
    267a:	66 0f af d8          	imul   %ax,%bx
    267e:	66 4b                	data16 rex.WXB
    2680:	66 e8 21 02          	callw  0x28a5
    2684:	00 00                	add    %al,(%rax)
    2686:	66 89 c1             	mov    %ax,%cx
    2689:	b0 11                	mov    $0x11,%al
    268b:	66 89 ca             	mov    %cx,%dx
    268e:	ee                   	out    %al,(%dx)
    268f:	67 66 8d 69 01       	lea    0x1(%ecx),%bp
    2694:	66 89 ea             	mov    %bp,%dx
    2697:	ec                   	in     (%dx),%al
    2698:	66 83 e0 7f          	and    $0x7f,%ax
    269c:	66 c1 e0 08          	shl    $0x8,%ax
    26a0:	66 83 c0 11          	add    $0x11,%ax
    26a4:	66 89 ca             	mov    %cx,%dx
    26a7:	ef                   	out    %eax,(%dx)
    26a8:	66 89 d8             	mov    %bx,%ax
    26ab:	66 c1 e0 08          	shl    $0x8,%ax
    26af:	66 83 c0 12          	add    $0x12,%ax
    26b3:	ef                   	out    %eax,(%dx)
    26b4:	b0 07                	mov    $0x7,%al
    26b6:	ee                   	out    %al,(%dx)
    26b7:	66 89 ea             	mov    %bp,%dx
    26ba:	ec                   	in     (%dx),%al
    26bb:	66 83 e0 bd          	and    $0xffbd,%ax
    26bf:	88 c2                	mov    %al,%dl
    26c1:	66 89 d8             	mov    %bx,%ax
    26c4:	66 c1 e8 07          	shr    $0x7,%ax
    26c8:	66 83 e0 02          	and    $0x2,%ax
    26cc:	66 c1 eb 03          	shr    $0x3,%bx
    26d0:	66 83 e3 40          	and    $0x40,%bx
    26d4:	66 09 d8             	or     %bx,%ax
    26d7:	66 09 d0             	or     %dx,%ax
    26da:	66 c1 e0 08          	shl    $0x8,%ax
    26de:	66 83 c0 07          	add    $0x7,%ax
    26e2:	66 89 ca             	mov    %cx,%dx
    26e5:	ef                   	out    %eax,(%dx)
    26e6:	89 36                	mov    %esi,(%rsi)
    26e8:	aa                   	stos   %al,%es:(%rdi)
    26e9:	38 66 89             	cmp    %ah,-0x77(%rsi)
    26ec:	f8                   	clc    
    26ed:	66 83 c4 20          	add    $0x20,%sp
    26f1:	66 5b                	pop    %bx
    26f3:	66 5e                	pop    %si
    26f5:	66 5f                	pop    %di
    26f7:	66 5d                	pop    %bp
    26f9:	66 c3                	retw   
    26fb:	66 83 ec 58          	sub    $0x58,%sp
    26ff:	66 89 e0             	mov    %sp,%ax
    2702:	66 e8 dc f1          	callw  0x18e2
    2706:	ff                   	(bad)  
    2707:	ff 67 c7             	jmpq   *-0x39(%rdi)
    270a:	44 24 1c             	rex.R and $0x1c,%al
    270d:	00 12                	add    %dl,(%rdx)
    270f:	67 c6 44 24 10 10    	movb   $0x10,0x10(%esp)
    2715:	67 66 8d 4c 24 2c    	lea    0x2c(%esp),%cx
    271b:	66 89 e2             	mov    %sp,%dx
    271e:	66 b8 10 00          	mov    $0x10,%ax
    2722:	00 00                	add    %al,(%rax)
    2724:	66 e8 aa db          	callw  0x2d2
    2728:	ff                   	(bad)  
    2729:	ff 67 66             	jmpq   *0x66(%rdi)
    272c:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
    2730:	a3 ba 36 67 80 7c 24 	movabs %eax,0x103c247c806736ba
    2737:	3c 10 
    2739:	74 3f                	je     0x277a
    273b:	67 c7 44 24 1c 00 1a 	movl   $0x66671a00,0x1c(%esp)
    2742:	67 66 
    2744:	8d 4c 24 2c          	lea    0x2c(%rsp),%ecx
    2748:	66 89 e2             	mov    %sp,%dx
    274b:	66 b8 10 00          	mov    $0x10,%ax
    274f:	00 00                	add    %al,(%rax)
    2751:	66 e8 7d db          	callw  0x2d2
    2755:	ff                   	(bad)  
    2756:	ff 67 80             	jmpq   *-0x80(%rdi)
    2759:	7c 24                	jl     0x277f
    275b:	48 1a 75 10          	rex.W sbb 0x10(%rbp),%sil
    275f:	66 c7 06 f8 46       	movw   $0x46f8,(%rsi)
    2764:	02 00                	add    (%rax),%al
    2766:	00 00                	add    %al,(%rax)
    2768:	c6 06 bf             	movb   $0xbf,(%rsi)
    276b:	36 01 eb             	ss add %ebp,%ebx
    276e:	14 66                	adc    $0x66,%al
    2770:	c7 06 f8 46 01 00    	movl   $0x146f8,(%rsi)
    2776:	00 00                	add    %al,(%rax)
    2778:	eb 09                	jmp    0x2783
    277a:	66 c7 06 f8 46       	movw   $0x46f8,(%rsi)
    277f:	00 00                	add    %al,(%rax)
    2781:	00 00                	add    %al,(%rax)
    2783:	66 a1 f8 46 67 66 8b 	movabs 0xb885148b666746f8,%ax
    278a:	14 85 b8 
    278d:	34 00                	xor    $0x0,%al
    278f:	00 66 89             	add    %ah,-0x77(%rsi)
    2792:	16                   	(bad)  
    2793:	f0 34 67             	lock xor $0x67,%al
    2796:	66 8b 14 85 ac 34 00 	mov    0x34ac(,%rax,4),%dx
    279d:	00 
    279e:	66 89 16             	mov    %dx,(%rsi)
    27a1:	e4 34                	in     $0x34,%al
    27a3:	67 66 8b 04 85 a0 34 	mov    0x34a0(,%eax,4),%ax
    27aa:	00 00 
    27ac:	66 83 c4 58          	add    $0x58,%sp
    27b0:	66 c3                	retw   
    27b2:	66 83 ec 2c          	sub    $0x2c,%sp
    27b6:	66 89 e0             	mov    %sp,%ax
    27b9:	66 e8 25 f1          	callw  0x18e2
    27bd:	ff                   	(bad)  
    27be:	ff 67 c7             	jmpq   *-0x39(%rdi)
    27c1:	44 24 1c             	rex.R and $0x1c,%al
    27c4:	12 11                	adc    (%rcx),%dl
    27c6:	66 31 c9             	xor    %cx,%cx
    27c9:	66 89 e2             	mov    %sp,%dx
    27cc:	66 b8 10 00          	mov    $0x10,%ax
    27d0:	00 00                	add    %al,(%rax)
    27d2:	66 e8 fc da          	callw  0x2d2
    27d6:	ff                   	(bad)  
    27d7:	ff 67 c7             	jmpq   *-0x39(%rdi)
    27da:	44 24 1c             	rex.R and $0x1c,%al
    27dd:	00 12                	add    %dl,(%rdx)
    27df:	67 c6 44 24 10 20    	movb   $0x20,0x10(%esp)
    27e5:	66 31 c9             	xor    %cx,%cx
    27e8:	66 89 e2             	mov    %sp,%dx
    27eb:	66 b8 10 00          	mov    $0x10,%ax
    27ef:	00 00                	add    %al,(%rax)
    27f1:	66 e8 dd da          	callw  0x2d2
    27f5:	ff                   	(bad)  
    27f6:	ff 67 c7             	jmpq   *-0x39(%rdi)
    27f9:	44 24 1c             	rex.R and $0x1c,%al
    27fc:	01 12                	add    %edx,(%rdx)
    27fe:	67 c6 44 24 10 34    	movb   $0x34,0x10(%esp)
    2804:	66 31 c9             	xor    %cx,%cx
    2807:	66 89 e2             	mov    %sp,%dx
    280a:	66 b8 10 00          	mov    $0x10,%ax
    280e:	00 00                	add    %al,(%rax)
    2810:	66 e8 be da          	callw  0x2d2
    2814:	ff                   	(bad)  
    2815:	ff 67 c7             	jmpq   *-0x39(%rdi)
    2818:	44 24 1c             	rex.R and $0x1c,%al
    281b:	00 01                	add    %al,(%rcx)
    281d:	67 c7 44 24 18 07 06 	movl   $0x31660607,0x18(%esp)
    2824:	66 31 
    2826:	c9                   	leaveq 
    2827:	66 89 e2             	mov    %sp,%dx
    282a:	66 b8 10 00          	mov    $0x10,%ax
    282e:	00 00                	add    %al,(%rax)
    2830:	66 e8 9e da          	callw  0x2d2
    2834:	ff                   	(bad)  
    2835:	ff 66 83             	jmpq   *-0x7d(%rsi)
    2838:	c4                   	(bad)  
    2839:	2c 66                	sub    $0x66,%al
    283b:	c3                   	retq   
    283c:	66 83 ec 2c          	sub    $0x2c,%sp
    2840:	66 89 e0             	mov    %sp,%ax
    2843:	66 e8 9b f0          	callw  0x18e2
    2847:	ff                   	(bad)  
    2848:	ff 67 c7             	jmpq   *-0x39(%rdi)
    284b:	44 24 1c             	rex.R and $0x1c,%al
    284e:	11 11                	adc    %edx,(%rcx)
    2850:	66 31 c9             	xor    %cx,%cx
    2853:	66 89 e2             	mov    %sp,%dx
    2856:	66 b8 10 00          	mov    $0x10,%ax
    285a:	00 00                	add    %al,(%rax)
    285c:	66 e8 72 da          	callw  0x2d2
    2860:	ff                   	(bad)  
    2861:	ff 67 c7             	jmpq   *-0x39(%rdi)
    2864:	44 24 1c             	rex.R and $0x1c,%al
    2867:	01 12                	add    %edx,(%rdx)
    2869:	67 c6 44 24 10 34    	movb   $0x34,0x10(%esp)
    286f:	66 31 c9             	xor    %cx,%cx
    2872:	66 89 e2             	mov    %sp,%dx
    2875:	66 b8 10 00          	mov    $0x10,%ax
    2879:	00 00                	add    %al,(%rax)
    287b:	66 e8 53 da          	callw  0x2d2
    287f:	ff                   	(bad)  
    2880:	ff 67 c7             	jmpq   *-0x39(%rdi)
    2883:	44 24 1c             	rex.R and $0x1c,%al
    2886:	00 01                	add    %al,(%rcx)
    2888:	67 c7 44 24 18 0c 0b 	movl   $0x31660b0c,0x18(%esp)
    288f:	66 31 
    2891:	c9                   	leaveq 
    2892:	66 89 e2             	mov    %sp,%dx
    2895:	66 b8 10 00          	mov    $0x10,%ax
    2899:	00 00                	add    %al,(%rax)
    289b:	66 e8 33 da          	callw  0x2d2
    289f:	ff                   	(bad)  
    28a0:	ff 66 83             	jmpq   *-0x7d(%rsi)
    28a3:	c4                   	(bad)  
    28a4:	2c 66                	sub    $0x66,%al
    28a6:	c3                   	retq   
    28a7:	66 ba cc 03          	mov    $0x3cc,%dx
    28ab:	00 00                	add    %al,(%rax)
    28ad:	ec                   	in     (%dx),%al
    28ae:	88 c2                	mov    %al,%dl
    28b0:	66 b8 d4 03          	mov    $0x3d4,%ax
    28b4:	00 00                	add    %al,(%rax)
    28b6:	80 e2 01             	and    $0x1,%dl
    28b9:	75 06                	jne    0x28c1
    28bb:	66 b8 b4 03          	mov    $0x3b4,%ax
    28bf:	00 00                	add    %al,(%rax)
    28c1:	66 c3                	retw   
    28c3:	66 e8 de ff          	callw  0x28a5
    28c7:	ff                   	(bad)  
    28c8:	ff 66 89             	jmpq   *-0x77(%rsi)
    28cb:	c2 66 b8             	retq   $0xb866
    28ce:	11 0c 00             	adc    %ecx,(%rax,%rax,1)
    28d1:	00 ef                	add    %ch,%bh
    28d3:	66 b8 06 0b          	mov    $0xb06,%ax
    28d7:	00 00                	add    %al,(%rax)
    28d9:	ef                   	out    %eax,(%dx)
    28da:	66 b8 07 3e          	mov    $0x3e07,%ax
    28de:	00 00                	add    %al,(%rax)
    28e0:	ef                   	out    %eax,(%dx)
    28e1:	66 b8 10 ea          	mov    $0xea10,%ax
    28e5:	ff                   	(bad)  
    28e6:	ff                   	(bad)  
    28e7:	ef                   	out    %eax,(%dx)
    28e8:	66 b8 12 df          	mov    $0xdf12,%ax
    28ec:	ff                   	(bad)  
    28ed:	ff                   	(bad)  
    28ee:	ef                   	out    %eax,(%dx)
    28ef:	66 b8 15 e7          	mov    $0xe715,%ax
    28f3:	ff                   	(bad)  
    28f4:	ff                   	(bad)  
    28f5:	ef                   	out    %eax,(%dx)
    28f6:	66 b8 16 04          	mov    $0x416,%ax
    28fa:	00 00                	add    %al,(%rax)
    28fc:	ef                   	out    %eax,(%dx)
    28fd:	66 ba cc 03          	mov    $0x3cc,%dx
    2901:	00 00                	add    %al,(%rax)
    2903:	ec                   	in     (%dx),%al
    2904:	66 83 e0 0d          	and    $0xd,%ax
    2908:	66 83 c8 e2          	or     $0xffe2,%ax
    290c:	66 ba c2 03          	mov    $0x3c2,%dx
    2910:	00 00                	add    %al,(%rax)
    2912:	ee                   	out    %al,(%dx)
    2913:	66 c3                	retw   
    2915:	66 53                	push   %bx
    2917:	66 83 ec 58          	sub    $0x58,%sp
    291b:	66 89 c3             	mov    %ax,%bx
    291e:	66 89 e0             	mov    %sp,%ax
    2921:	66 e8 bd ef          	callw  0x18e2
    2925:	ff                   	(bad)  
    2926:	ff 67 c7             	jmpq   *-0x39(%rdi)
    2929:	44 24 1c             	rex.R and $0x1c,%al
    292c:	00 0f                	add    %cl,(%rdi)
    292e:	67 66 8d 4c 24 2c    	lea    0x2c(%esp),%cx
    2934:	66 89 e2             	mov    %sp,%dx
    2937:	66 b8 10 00          	mov    $0x10,%ax
    293b:	00 00                	add    %al,(%rax)
    293d:	66 e8 91 d9          	callw  0x2d2
    2941:	ff                   	(bad)  
    2942:	ff 67 66             	jmpq   *0x66(%rdi)
    2945:	0f b6 44 24 48       	movzbl 0x48(%rsp),%eax
    294a:	3c 07                	cmp    $0x7,%al
    294c:	74 06                	je     0x2954
    294e:	66 b8 03 00          	mov    $0x3,%ax
    2952:	00 00                	add    %al,(%rax)
    2954:	67 89 44 24 1c       	mov    %eax,0x1c(%esp)
    2959:	66 31 c9             	xor    %cx,%cx
    295c:	66 89 e2             	mov    %sp,%dx
    295f:	66 b8 10 00          	mov    $0x10,%ax
    2963:	00 00                	add    %al,(%rax)
    2965:	66 e8 69 d9          	callw  0x2d2
    2969:	ff                   	(bad)  
    296a:	ff 66 c7             	jmpq   *-0x39(%rsi)
    296d:	06                   	(bad)  
    296e:	ec                   	in     (%dx),%al
    296f:	46 01 00             	rex.RX add %r8d,(%rax)
    2972:	00 00                	add    %al,(%rax)
    2974:	67 66 0f b7 43 02    	movzww 0x2(%ebx),%ax
    297a:	66 a3 f4 46 67 66 0f 	movabs %ax,0x443b70f666746f4
    2981:	b7 43 04 
    2984:	66 a3 f0 46 67 8b 03 	movabs %ax,0xf012d038b6746f0
    298b:	2d 01 0f 
    298e:	83 f8 06             	cmp    $0x6,%eax
    2991:	0f 87 b5 00 66 0f    	ja     0xf662a4c
    2997:	b7 c0                	mov    $0xc0,%bh
    2999:	67 ff 24 85 84 34 00 	jmpq   *0x3484(,%eax,4)
    29a0:	00 
    29a1:	67 66 8d 44 24 2c    	lea    0x2c(%esp),%ax
    29a7:	66 e8 37 ef          	callw  0x18e2
    29ab:	ff                   	(bad)  
    29ac:	ff 67 c7             	jmpq   *-0x39(%rdi)
    29af:	44 24 48             	rex.R and $0x48,%al
    29b2:	01 12                	add    %edx,(%rdx)
    29b4:	67 c6 44 24 3c 30    	movb   $0x30,0x3c(%esp)
    29ba:	66 31 c9             	xor    %cx,%cx
    29bd:	67 66 8d 54 24 2c    	lea    0x2c(%esp),%dx
    29c3:	66 b8 10 00          	mov    $0x10,%ax
    29c7:	00 00                	add    %al,(%rax)
    29c9:	66 e8 05 d9          	callw  0x2d2
    29cd:	ff                   	(bad)  
    29ce:	ff 67 c7             	jmpq   *-0x39(%rdi)
    29d1:	44 24 48             	rex.R and $0x48,%al
    29d4:	03 00                	add    (%rax),%eax
    29d6:	66 31 c9             	xor    %cx,%cx
    29d9:	67 66 8d 54 24 2c    	lea    0x2c(%esp),%dx
    29df:	66 b8 10 00          	mov    $0x10,%ax
    29e3:	00 00                	add    %al,(%rax)
    29e5:	66 e8 e9 d8          	callw  0x2d2
    29e9:	ff                   	(bad)  
    29ea:	ff 66 e8             	jmpq   *-0x18(%rsi)
    29ed:	c1 fd ff             	sar    $0xff,%ebp
    29f0:	ff                   	(bad)  
    29f1:	eb 57                	jmp    0x2a4a
    29f3:	66 e8 43 fe          	callw  0x283a
    29f7:	ff                   	(bad)  
    29f8:	ff                   	(bad)  
    29f9:	eb 4f                	jmp    0x2a4a
    29fb:	66 e8 c2 fe          	callw  0x28c1
    29ff:	ff                   	(bad)  
    2a00:	ff                   	(bad)  
    2a01:	eb 30                	jmp    0x2a33
    2a03:	66 e8 ba fe          	callw  0x28c1
    2a07:	ff                   	(bad)  
    2a08:	ff 66 e8             	jmpq   *-0x18(%rsi)
    2a0b:	2d fe ff ff 66       	sub    $0x66fffffe,%eax
    2a10:	e8 92 fe ff ff       	callq  0x28a7
    2a15:	66 89 c2             	mov    %ax,%dx
    2a18:	66 b8 07 3e          	mov    $0x3e07,%ax
    2a1c:	00 00                	add    %al,(%rax)
    2a1e:	ef                   	out    %eax,(%dx)
    2a1f:	66 b8 12 db          	mov    $0xdb12,%ax
    2a23:	ff                   	(bad)  
    2a24:	ff                   	(bad)  
    2a25:	eb 22                	jmp    0x2a49
    2a27:	66 e8 96 fe          	callw  0x28c1
    2a2b:	ff                   	(bad)  
    2a2c:	ff 66 e8             	jmpq   *-0x18(%rsi)
    2a2f:	7f fd                	jg     0x2a2e
    2a31:	ff                   	(bad)  
    2a32:	ff 66 e8             	jmpq   *-0x18(%rsi)
    2a35:	6e                   	outsb  %ds:(%rsi),(%dx)
    2a36:	fe                   	(bad)  
    2a37:	ff                   	(bad)  
    2a38:	ff 66 89             	jmpq   *-0x77(%rsi)
    2a3b:	c2 66 b8             	retq   $0xb866
    2a3e:	07                   	(bad)  
    2a3f:	3e 00 00             	add    %al,%ds:(%rax)
    2a42:	ef                   	out    %eax,(%dx)
    2a43:	66 b8 12 df          	mov    $0xdf12,%ax
    2a47:	ff                   	(bad)  
    2a48:	ff                   	(bad)  
    2a49:	ef                   	out    %eax,(%dx)
    2a4a:	66 31 c0             	xor    %ax,%ax
    2a4d:	66 83 c4 58          	add    $0x58,%sp
    2a51:	66 5b                	pop    %bx
    2a53:	66 c3                	retw   
    2a55:	66 55                	push   %bp
    2a57:	66 57                	push   %di
    2a59:	66 56                	push   %si
    2a5b:	66 53                	push   %bx
    2a5d:	66 83 ec 58          	sub    $0x58,%sp
    2a61:	66 89 c3             	mov    %ax,%bx
    2a64:	67 8b 00             	mov    (%eax),%eax
    2a67:	67 66 8d b0 00 fe ff 	lea    -0x200(%eax),%si
    2a6e:	ff 
    2a6f:	66 bd 00 47          	mov    $0x4700,%bp
    2a73:	00 00                	add    %al,(%rax)
    2a75:	66 b9 40 00          	mov    $0x40,%cx
    2a79:	00 00                	add    %al,(%rax)
    2a7b:	66 31 c0             	xor    %ax,%ax
    2a7e:	66 89 ef             	mov    %bp,%di
    2a81:	66 f3 ab             	rep stos %ax,%es:(%rdi)
    2a84:	66 89 e0             	mov    %sp,%ax
    2a87:	66 e8 57 ee          	callw  0x18e2
    2a8b:	ff                   	(bad)  
    2a8c:	ff 67 c7             	jmpq   *-0x39(%rdi)
    2a8f:	44 24 1c             	rex.R and $0x1c,%al
    2a92:	01 4f 67             	add    %ecx,0x67(%rdi)
    2a95:	89 74 24 18          	mov    %esi,0x18(%rsp)
    2a99:	67 89 2c 24          	mov    %ebp,(%esp)
    2a9d:	67 66 8d 4c 24 2c    	lea    0x2c(%esp),%cx
    2aa3:	66 89 e2             	mov    %sp,%dx
    2aa6:	66 b8 10 00          	mov    $0x10,%ax
    2aaa:	00 00                	add    %al,(%rax)
    2aac:	66 e8 22 d8          	callw  0x2d2
    2ab0:	ff                   	(bad)  
    2ab1:	ff 67 83             	jmpq   *-0x7d(%rdi)
    2ab4:	7c 24                	jl     0x2ada
    2ab6:	48                   	rex.W
    2ab7:	4f 74 06             	rex.WRXB je 0x2ac0
    2aba:	66 83 c8 ff          	or     $0xffff,%ax
    2abe:	eb 68                	jmp    0x2b28
    2ac0:	66 a1 00 47 66 83 e0 	movabs 0xf88315e083664700,%ax
    2ac7:	15 83 f8 
    2aca:	05 75 ed 66 89       	add    $0x8966ed75,%eax
    2acf:	e0 66                	loopne 0x2b37
    2ad1:	e8 0e ee ff ff       	callq  0x18e4
    2ad6:	67 c7 44 24 1c 02 4f 	movl   $0x89674f02,0x1c(%esp)
    2add:	67 89 
    2adf:	74 24                	je     0x2b05
    2ae1:	10 67 66             	adc    %ah,0x66(%rdi)
    2ae4:	8d 4c 24 2c          	lea    0x2c(%rsp),%ecx
    2ae8:	66 89 e2             	mov    %sp,%dx
    2aeb:	66 b8 10 00          	mov    $0x10,%ax
    2aef:	00 00                	add    %al,(%rax)
    2af1:	66 e8 dd d7          	callw  0x2d2
    2af5:	ff                   	(bad)  
    2af6:	ff 67 83             	jmpq   *-0x7d(%rdi)
    2af9:	7c 24                	jl     0x2b1f
    2afb:	48                   	rex.W
    2afc:	4f 75 bb             	rex.WRXB jne 0x2aba
    2aff:	66 c7 06 e8 46       	movw   $0x46e8,(%rsi)
    2b04:	00 00                	add    %al,(%rax)
    2b06:	00 00                	add    %al,(%rax)
    2b08:	67 66 0f b7 43 02    	movzww 0x2(%ebx),%ax
    2b0e:	66 a3 f4 46 67 66 0f 	movabs %ax,0x443b70f666746f4
    2b15:	b7 43 04 
    2b18:	66 a3 f0 46 66 c7 06 	movabs %ax,0x146ec06c76646f0
    2b1f:	ec 46 01 
    2b22:	00 00                	add    %al,(%rax)
    2b24:	00 66 31             	add    %ah,0x31(%rsi)
    2b27:	c0 66 83 c4          	shlb   $0xc4,-0x7d(%rsi)
    2b2b:	58                   	pop    %rax
    2b2c:	66 5b                	pop    %bx
    2b2e:	66 5e                	pop    %si
    2b30:	66 5f                	pop    %di
    2b32:	66 5d                	pop    %bp
    2b34:	66 c3                	retw   
    2b36:	66 55                	push   %bp
    2b38:	66 57                	push   %di
    2b3a:	66 56                	push   %si
    2b3c:	66 53                	push   %bx
    2b3e:	66 83 ec 58          	sub    $0x58,%sp
    2b42:	66 a1 44 35 66 40 66 	movabs 0xfee0836640663544,%ax
    2b49:	83 e0 fe 
    2b4c:	66 a3 44 35 66 a3 0c 	movabs %ax,0x8966350ca3663544
    2b53:	35 66 89 
    2b56:	e0 66                	loopne 0x2bbe
    2b58:	e8 87 ed ff ff       	callq  0x18e4
    2b5d:	67 c7 44 24 1c 00 4f 	movl   $0xb8664f00,0x1c(%esp)
    2b64:	66 b8 
    2b66:	00 48 00             	add    %cl,0x0(%rax)
    2b69:	00 67 89             	add    %ah,-0x77(%rdi)
    2b6c:	04 24                	add    $0x24,%al
    2b6e:	67 66 8d 4c 24 2c    	lea    0x2c(%esp),%cx
    2b74:	66 89 e2             	mov    %sp,%dx
    2b77:	66 b8 10 00          	mov    $0x10,%ax
    2b7b:	00 00                	add    %al,(%rax)
    2b7d:	66 e8 51 d7          	callw  0x2d2
    2b81:	ff                   	(bad)  
    2b82:	ff 66 31             	jmpq   *0x31(%rsi)
    2b85:	f6 67 83             	mulb   -0x7d(%rdi)
    2b88:	7c 24                	jl     0x2bae
    2b8a:	48                   	rex.W
    2b8b:	4f 0f 85 d0 00 66 81 	rex.WRXB jne 0xffffffff81662c62
    2b92:	3e 00 48 56          	add    %cl,%ds:0x56(%rax)
    2b96:	45 53                	rex.RB push %r11
    2b98:	41 0f 85 c3 00 81 3e 	rex.B jne 0x3e812c62
    2b9f:	04 48                	add    $0x48,%al
    2ba1:	01 01                	add    %eax,(%rcx)
    2ba3:	0f 86 b9 00 8e 26    	jbe    0x268e2c62
    2ba9:	10 48 66             	adc    %cl,0x66(%rax)
    2bac:	0f b7 2e             	movzwl (%rsi),%ebp
    2baf:	0e                   	(bad)  
    2bb0:	48                   	rex.W
    2bb1:	64 67 8b 5d 00       	mov    %fs:0x0(%ebp),%ebx
    2bb6:	83 fb ff             	cmp    $0xffffffff,%ebx
    2bb9:	0f 84 a3 00 66 83    	je     0xffffffff83662c62
    2bbf:	c5 02 66             	(bad)
    2bc2:	a1 40 35 66 2b 06 44 	movabs 0x663544062b663540,%eax
    2bc9:	35 66 
    2bcb:	83 f8 07             	cmp    $0x7,%eax
    2bce:	0f 8e 8e 00 66 89    	jle    0xffffffff89662c62
    2bd4:	d8 66 25             	fsubs  0x25(%rsi)
    2bd7:	00 fe                	add    %bh,%dh
    2bd9:	00 00                	add    %al,(%rax)
    2bdb:	75 d4                	jne    0x2bb1
    2bdd:	66 ba 00 47          	mov    $0x4700,%dx
    2be1:	00 00                	add    %al,(%rax)
    2be3:	66 b9 40 00          	mov    $0x40,%cx
    2be7:	00 00                	add    %al,(%rax)
    2be9:	66 89 d7             	mov    %dx,%di
    2bec:	66 f3 ab             	rep stos %ax,%es:(%rdi)
    2bef:	67 c7 44 24 1c 01 4f 	movl   $0x89674f01,0x1c(%esp)
    2bf6:	67 89 
    2bf8:	5c                   	pop    %rsp
    2bf9:	24 18                	and    $0x18,%al
    2bfb:	67 89 14 24          	mov    %edx,(%esp)
    2bff:	67 66 8d 4c 24 2c    	lea    0x2c(%esp),%cx
    2c05:	66 89 e2             	mov    %sp,%dx
    2c08:	66 b8 10 00          	mov    $0x10,%ax
    2c0c:	00 00                	add    %al,(%rax)
    2c0e:	66 e8 c0 d6          	callw  0x2d2
    2c12:	ff                   	(bad)  
    2c13:	ff 67 83             	jmpq   *-0x7d(%rdi)
    2c16:	7c 24                	jl     0x2c3c
    2c18:	48                   	rex.W
    2c19:	4f 75 95             	rex.WRXB jne 0x2bb1
    2c1c:	66 a1 00 47 66 83 e0 	movabs 0xf88315e083664700,%ax
    2c23:	15 83 f8 
    2c26:	05 75 88 66 a1       	add    $0xa1668875,%eax
    2c2b:	44 35 66 40 66 83    	rex.R xor $0x83664066,%eax
    2c31:	e0 fe                	loopne 0x2c31
    2c33:	67 66 8d 50 08       	lea    0x8(%eax),%dx
    2c38:	66 89 16             	mov    %dx,(%rsi)
    2c3b:	44 35 81 c3 00 02    	rex.R xor $0x200c381,%eax
    2c41:	67 89 18             	mov    %ebx,(%eax)
    2c44:	67 c7 40 06 00 00 8b 	movl   $0x168b0000,0x6(%eax)
    2c4b:	16 
    2c4c:	12 47 67             	adc    0x67(%rdi),%al
    2c4f:	89 50 02             	mov    %edx,0x2(%rax)
    2c52:	66 8b 16             	mov    (%rsi),%dx
    2c55:	14 47                	adc    $0x47,%al
    2c57:	67 89 50 04          	mov    %edx,0x4(%eax)
    2c5b:	66 46 e9 51 ff       	rex.RX jmpw 0x2bb1
    2c60:	66 89 f0             	mov    %si,%ax
    2c63:	66 83 c4 58          	add    $0x58,%sp
    2c67:	66 5b                	pop    %bx
    2c69:	66 5e                	pop    %si
    2c6b:	66 5f                	pop    %di
    2c6d:	66 5d                	pop    %bp
    2c6f:	66 c3                	retw   
    2c71:	66 c3                	retw   
    2c73:	66 53                	push   %bx
    2c75:	66 83 ec 58          	sub    $0x58,%sp
    2c79:	66 89 c3             	mov    %ax,%bx
    2c7c:	66 89 e0             	mov    %sp,%ax
    2c7f:	66 e8 5f ec          	callw  0x18e2
    2c83:	ff                   	(bad)  
    2c84:	ff 67 88             	jmpq   *-0x78(%rdi)
    2c87:	5c                   	pop    %rsp
    2c88:	24 1c                	and    $0x1c,%al
    2c8a:	66 31 c9             	xor    %cx,%cx
    2c8d:	66 89 e2             	mov    %sp,%dx
    2c90:	66 b8 10 00          	mov    $0x10,%ax
    2c94:	00 00                	add    %al,(%rax)
    2c96:	66 e8 38 d6          	callw  0x2d2
    2c9a:	ff                   	(bad)  
    2c9b:	ff 67 c6             	jmpq   *-0x3a(%rdi)
    2c9e:	44 24 1d             	rex.R and $0x1d,%al
    2ca1:	0f 67 66 8d          	packuswb -0x73(%rsi),%mm4
    2ca5:	4c 24 2c             	rex.WR and $0x2c,%al
    2ca8:	66 89 e2             	mov    %sp,%dx
    2cab:	66 b8 10 00          	mov    $0x10,%ax
    2caf:	00 00                	add    %al,(%rax)
    2cb1:	66 e8 1d d6          	callw  0x2d2
    2cb5:	ff                   	(bad)  
    2cb6:	ff 66 c7             	jmpq   *-0x39(%rsi)
    2cb9:	06                   	(bad)  
    2cba:	ec                   	in     (%dx),%al
    2cbb:	46 01 00             	rex.RX add %r8d,(%rax)
    2cbe:	00 00                	add    %al,(%rax)
    2cc0:	67 8a 54 24 48       	mov    0x48(%esp),%dl
    2cc5:	66 83 e2 7f          	and    $0x7f,%dx
    2cc9:	38 d3                	cmp    %dl,%bl
    2ccb:	74 27                	je     0x2cf4
    2ccd:	66 0f b6 06          	movzbw (%rsi),%ax
    2cd1:	b6 36                	mov    $0x36,%dh
    2cd3:	66 83 cb ff          	or     $0xffff,%bx
    2cd7:	38 d0                	cmp    %dl,%al
    2cd9:	74 1c                	je     0x2cf7
    2cdb:	67 89 44 24 1c       	mov    %eax,0x1c(%esp)
    2ce0:	66 31 c9             	xor    %cx,%cx
    2ce3:	66 89 e2             	mov    %sp,%dx
    2ce6:	66 b8 10 00          	mov    $0x10,%ax
    2cea:	00 00                	add    %al,(%rax)
    2cec:	66 e8 e2 d5          	callw  0x2d2
    2cf0:	ff                   	(bad)  
    2cf1:	ff                   	(bad)  
    2cf2:	eb 03                	jmp    0x2cf7
    2cf4:	66 31 db             	xor    %bx,%bx
    2cf7:	66 89 d8             	mov    %bx,%ax
    2cfa:	66 83 c4 58          	add    $0x58,%sp
    2cfe:	66 5b                	pop    %bx
    2d00:	66 c3                	retw   
    2d02:	67 66 0f b6 00       	movzbw (%eax),%ax
    2d07:	e9 69 ff 66 55       	jmpq   0x55672c75
    2d0c:	66 57                	push   %di
    2d0e:	66 56                	push   %si
    2d10:	66 53                	push   %bx
    2d12:	66 a1 f8 46 66 48 66 	movabs 0x66ff3166486646f8,%ax
    2d19:	31 ff 66 
    2d1c:	83 f8 01             	cmp    $0x1,%eax
    2d1f:	0f 87 e4 00 8a 1e    	ja     0x1e8a2e09
    2d25:	b6 36                	mov    $0x36,%dh
    2d27:	66 31 c0             	xor    %ax,%ax
    2d2a:	8e e0                	mov    %eax,%fs
    2d2c:	66 e8 75 fb          	callw  0x28a5
    2d30:	ff                   	(bad)  
    2d31:	ff 66 89             	jmpq   *-0x77(%rsi)
    2d34:	c6                   	(bad)  
    2d35:	66 a1 44 35 66 40 66 	movabs 0xfee0836640663544,%ax
    2d3c:	83 e0 fe 
    2d3f:	66 a3 44 35 66 a3 28 	movabs %ax,0xbd663528a3663544
    2d46:	35 66 bd 
    2d49:	14 01                	adc    $0x1,%al
    2d4b:	00 00                	add    %al,(%rax)
    2d4d:	66 a1 40 35 66 2b 06 	movabs 0x663544062b663540,%ax
    2d54:	44 35 66 
    2d57:	83 f8 07             	cmp    $0x7,%eax
    2d5a:	0f 8e 9f 00 66 89    	jle    0xffffffff89662dff
    2d60:	e8 66 e8 25 f7       	callq  0xfffffffff72615cb
    2d65:	ff                   	(bad)  
    2d66:	ff 66 85             	jmpq   *-0x7b(%rsi)
    2d69:	c0 0f 85             	rorb   $0x85,(%rdi)
    2d6c:	82                   	(bad)  
    2d6d:	00 67 66             	add    %ah,0x66(%rdi)
    2d70:	8d 85 00 ff ff ff    	lea    -0x100(%rbp),%eax
    2d76:	66 e8 f7 fe          	callw  0x2c71
    2d7a:	ff                   	(bad)  
    2d7b:	ff 66 85             	jmpq   *-0x7b(%rsi)
    2d7e:	c0 75 6f b0          	shlb   $0xb0,0x6f(%rbp)
    2d82:	10 66 ba             	adc    %ah,-0x46(%rsi)
    2d85:	c0 03 00             	rolb   $0x0,(%rbx)
    2d88:	00 ee                	add    %ch,%dh
    2d8a:	66 ba c1 03          	mov    $0x3c1,%dx
    2d8e:	00 00                	add    %al,(%rax)
    2d90:	ec                   	in     (%dx),%al
    2d91:	a8 01                	test   $0x1,%al
    2d93:	75 5b                	jne    0x2df0
    2d95:	b0 06                	mov    $0x6,%al
    2d97:	66 ba ce 03          	mov    $0x3ce,%dx
    2d9b:	00 00                	add    %al,(%rax)
    2d9d:	ee                   	out    %al,(%dx)
    2d9e:	66 ba cf 03          	mov    $0x3cf,%dx
    2da2:	00 00                	add    %al,(%rax)
    2da4:	ec                   	in     (%dx),%al
    2da5:	a8 01                	test   $0x1,%al
    2da7:	75 47                	jne    0x2df0
    2da9:	b0 0f                	mov    $0xf,%al
    2dab:	66 89 f2             	mov    %si,%dx
    2dae:	ee                   	out    %al,(%dx)
    2daf:	67 66 8d 56 01       	lea    0x1(%esi),%dx
    2db4:	ec                   	in     (%dx),%al
    2db5:	84 c0                	test   %al,%al
    2db7:	75 37                	jne    0x2df0
    2db9:	66 a1 44 35 66 40 66 	movabs 0xfee0836640663544,%ax
    2dc0:	83 e0 fe 
    2dc3:	67 66 8d 50 08       	lea    0x8(%eax),%dx
    2dc8:	66 89 16             	mov    %dx,(%rsi)
    2dcb:	44 35 67 89 28 67    	rex.R xor $0x67288967,%eax
    2dd1:	c7 40 06 00 00 64 8b 	movl   $0x8b640000,0x6(%rax)
    2dd8:	16                   	(bad)  
    2dd9:	4a 04 67             	rex.WX add $0x67,%al
    2ddc:	89 50 02             	mov    %edx,0x2(%rax)
    2ddf:	64 8a 16             	mov    %fs:(%rsi),%dl
    2de2:	84 04 66             	test   %al,(%rsi,%riz,2)
    2de5:	0f b6 d2             	movzbl %dl,%edx
    2de8:	66 42                	data16 rex.X
    2dea:	67 89 50 04          	mov    %edx,0x4(%eax)
    2dee:	66 47                	data16 rex.RXB
    2df0:	66 45                	data16 rex.RB
    2df2:	66 81 fd 80 01       	cmp    $0x180,%bp
    2df7:	00 00                	add    %al,(%rax)
    2df9:	0f 85 50 ff 66 0f    	jne    0xf672d4f
    2dff:	b6 c3                	mov    $0xc3,%dh
    2e01:	66 e8 6c fe          	callw  0x2c71
    2e05:	ff                   	(bad)  
    2e06:	ff 66 89             	jmpq   *-0x77(%rsi)
    2e09:	f8                   	clc    
    2e0a:	66 5b                	pop    %bx
    2e0c:	66 5e                	pop    %si
    2e0e:	66 5f                	pop    %di
    2e10:	66 5d                	pop    %bp
    2e12:	66 c3                	retw   
    2e14:	66 57                	push   %di
    2e16:	66 56                	push   %si
    2e18:	66 83 ec 58          	sub    $0x58,%sp
    2e1c:	66 b8 a1 38          	mov    $0x38a1,%ax
    2e20:	00 00                	add    %al,(%rax)
    2e22:	66 be f1 01          	mov    $0x1f1,%si
    2e26:	00 00                	add    %al,(%rax)
    2e28:	66 b9 7b 00          	mov    $0x7b,%cx
    2e2c:	00 00                	add    %al,(%rax)
    2e2e:	66 89 c7             	mov    %ax,%di
    2e31:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
    2e33:	66 83 3e d8          	cmpw   $0xffd8,(%rsi)
    2e37:	38 00                	cmp    %al,(%rax)
    2e39:	75 2b                	jne    0x2e66
    2e3b:	81 3e 20 00 3f a3    	cmpl   $0xa33f0020,(%rsi)
    2e41:	75 23                	jne    0x2e66
    2e43:	66 0f b7 16          	movzww (%rsi),%dx
    2e47:	22 00                	and    (%rax),%al
    2e49:	66 b8 00 90          	mov    $0x9000,%ax
    2e4d:	ff                   	(bad)  
    2e4e:	ff                   	(bad)  
    2e4f:	3b 16                	cmp    (%rsi),%edx
    2e51:	c2 38 73             	retq   $0x7338
    2e54:	02 8c d8 66 0f b7 c0 	add    -0x3f48f09a(%rax,%rbx,8),%cl
    2e5b:	66 c1 e0 04          	shl    $0x4,%ax
    2e5f:	66 01 d0             	add    %dx,%ax
    2e62:	66 a3 d8 38 66 e8 26 	movabs %ax,0xffffdf26e86638d8
    2e69:	df ff ff 
    2e6c:	66 a1 d8 38 66 3d ff 	movabs 0xfffff3d6638d8,%ax
    2e73:	ff 0f 00 
    2e76:	76 0e                	jbe    0x2e86
    2e78:	66 b8 f0 31          	mov    $0x31f0,%ax
    2e7c:	00 00                	add    %al,(%rax)
    2e7e:	66 e8 3d d5          	callw  0x3bf
    2e82:	ff                   	(bad)  
    2e83:	ff                   	(bad)  
    2e84:	eb 11                	jmp    0x2e97
    2e86:	66 ba 0d 32          	mov    $0x320d,%dx
    2e8a:	00 00                	add    %al,(%rax)
    2e8c:	66 e8 d3 d7          	callw  0x663
    2e90:	ff                   	(bad)  
    2e91:	ff 66 85             	jmpq   *-0x7b(%rsi)
    2e94:	c0 75 e1 80          	shlb   $0x80,-0x1f(%rbp)
    2e98:	3e c1 38 00          	sarl   $0x0,%ds:(%rax)
    2e9c:	79 27                	jns    0x2ec5
    2e9e:	67 66 8d 94 24 00 fc 	lea    -0x400(%esp),%dx
    2ea5:	ff ff 
    2ea7:	66 0f b7 06          	movzww (%rsi),%ax
    2eab:	d4                   	(bad)  
    2eac:	38 66 05             	cmp    %ah,0x5(%rsi)
    2eaf:	00 02                	add    %al,(%rdx)
    2eb1:	00 00                	add    %al,(%rax)
    2eb3:	66 39 c2             	cmp    %ax,%dx
    2eb6:	72 06                	jb     0x2ebe
    2eb8:	66 a3 40 35 eb 13 66 	movabs %ax,0x4016896613eb3540
    2ebf:	89 16 40 
    2ec2:	35 eb 0c 66 b8       	xor    $0xb8660ceb,%eax
    2ec7:	13 32                	adc    (%rdx),%esi
    2ec9:	00 00                	add    %al,(%rax)
    2ecb:	66 e8 f0 d4          	callw  0x3bf
    2ecf:	ff                   	(bad)  
    2ed0:	ff 66 e8             	jmpq   *-0x18(%rsi)
    2ed3:	94                   	xchg   %eax,%esp
    2ed4:	d8 ff                	fdivr  %st(7),%st
    2ed6:	ff 66 85             	jmpq   *-0x7b(%rsi)
    2ed9:	c0 74 12 66 b8       	shlb   $0xb8,0x66(%rdx,%rdx,1)
    2ede:	54                   	push   %rsp
    2edf:	32 00                	xor    (%rax),%al
    2ee1:	00 66 e8             	add    %ah,-0x18(%rsi)
    2ee4:	d9 d4                	(bad)  
    2ee6:	ff                   	(bad)  
    2ee7:	ff 66 e8             	jmpq   *-0x18(%rsi)
    2eea:	e3 d3                	jrcxz  0x2ebf
    2eec:	ff                   	(bad)  
    2eed:	ff 67 66             	jmpq   *0x66(%rdi)
    2ef0:	8d 44 24 2c          	lea    0x2c(%rsp),%eax
    2ef4:	66 e8 ea e9          	callw  0x18e2
    2ef8:	ff                   	(bad)  
    2ef9:	ff 67 c7             	jmpq   *-0x39(%rdi)
    2efc:	44 24 48             	rex.R and $0x48,%al
    2eff:	00 ec                	add    %ch,%ah
    2f01:	67 c7 44 24 3c 02 00 	movl   $0x31660002,0x3c(%esp)
    2f08:	66 31 
    2f0a:	c9                   	leaveq 
    2f0b:	67 66 8d 54 24 2c    	lea    0x2c(%esp),%dx
    2f11:	66 b8 15 00          	mov    $0x15,%ax
    2f15:	00 00                	add    %al,(%rax)
    2f17:	66 e8 b7 d3          	callw  0x2d2
    2f1b:	ff                   	(bad)  
    2f1c:	ff 66 e8             	jmpq   *-0x18(%rsi)
    2f1f:	e0 e0                	loopne 0x2f01
    2f21:	ff                   	(bad)  
    2f22:	ff 66 89             	jmpq   *-0x77(%rsi)
    2f25:	e0 66                	loopne 0x2f8d
    2f27:	e8 b8 e9 ff ff       	callq  0x18e4
    2f2c:	67 c6 44 24 1d 02    	movb   $0x2,0x1d(%esp)
    2f32:	67 66 8d 4c 24 2c    	lea    0x2c(%esp),%cx
    2f38:	66 89 e2             	mov    %sp,%dx
    2f3b:	66 b8 16 00          	mov    $0x16,%ax
    2f3f:	00 00                	add    %al,(%rax)
    2f41:	66 e8 8d d3          	callw  0x2d2
    2f45:	ff                   	(bad)  
    2f46:	ff 67 8a             	jmpq   *-0x76(%rdi)
    2f49:	44 24 48             	rex.R and $0x48,%al
    2f4c:	a2 9b 38 67 c7 44 24 	movabs %al,0x51c2444c767389b
    2f53:	1c 05 
    2f55:	03 66 31             	add    0x31(%rsi),%esp
    2f58:	c9                   	leaveq 
    2f59:	66 89 e2             	mov    %sp,%dx
    2f5c:	66 b8 16 00          	mov    $0x16,%ax
    2f60:	00 00                	add    %al,(%rax)
    2f62:	66 e8 6c d3          	callw  0x2d2
    2f66:	ff                   	(bad)  
    2f67:	ff 66 83             	jmpq   *-0x7d(%rsi)
    2f6a:	3e 00 36             	add    %dh,%ds:(%rsi)
    2f6d:	05 7e 57 66 89       	add    $0x8966577e,%eax
    2f72:	e0 66                	loopne 0x2fda
    2f74:	e8 6b e9 ff ff       	callq  0x18e4
    2f79:	67 c7 44 24 1c 80 e9 	movl   $0x6667e980,0x1c(%esp)
    2f80:	67 66 
    2f82:	c7 44 24 14 43 49 53 	movl   $0x47534943,0x14(%rsp)
    2f89:	47 
    2f8a:	67 66 8d 4c 24 2c    	lea    0x2c(%esp),%cx
    2f90:	66 89 e2             	mov    %sp,%dx
    2f93:	66 b8 15 00          	mov    $0x15,%ax
    2f97:	00 00                	add    %al,(%rax)
    2f99:	66 e8 35 d3          	callw  0x2d2
    2f9d:	ff                   	(bad)  
    2f9e:	ff 67 66             	jmpq   *0x66(%rdi)
    2fa1:	8b 44 24 48          	mov    0x48(%rsp),%eax
    2fa5:	66 a3 10 37 67 66 8b 	movabs %ax,0x3c24448b66673710
    2fac:	44 24 3c 
    2faf:	66 a3 14 37 67 66 8b 	movabs %ax,0x4424448b66673714
    2fb6:	44 24 44 
    2fb9:	66 a3 18 37 67 66 8b 	movabs %ax,0x4024448b66673718
    2fc0:	44 24 40 
    2fc3:	66 a3 1c 37 66 e8 ae 	movabs %ax,0xffffefaee866371c
    2fca:	ef ff ff 
    2fcd:	66 e8 76 e1          	callw  0x1147
    2fd1:	ff                   	(bad)  
    2fd2:	ff 8e d9 8e c1 8e    	decl   -0x713e7127(%rsi)
    2fd8:	e1 8e                	loope  0x2f68
    2fda:	e9 8e d1 01 dc       	jmpq   0xffffffffdc02016d
    2fdf:	0f 00 df             	ltr    %di
    2fe2:	31 c9                	xor    %ecx,%ecx
    2fe4:	31 d2                	xor    %edx,%edx
    2fe6:	31 db                	xor    %ebx,%ebx
    2fe8:	31 ed                	xor    %ebp,%ebp
    2fea:	31 ff                	xor    %edi,%edi
    2fec:	0f 00 d1             	lldt   %cx
    2fef:	ff e0                	jmpq   *%rax
	...
    2ffd:	00 00                	add    %al,(%rax)
    2fff:	00 78 38             	add    %bh,0x38(%rax)
    3002:	36 2d 36 34 00 69    	ss sub $0x69003436,%eax
    3008:	25 64 38 36 00       	and    $0x363864,%eax
    300d:	54                   	push   %rsp
    300e:	68 69 73 20 6b       	pushq  $0x6b207369
    3013:	65 72 6e             	gs jb  0x3084
    3016:	65 6c                	gs insb (%dx),%es:(%rdi)
    3018:	20 72 65             	and    %dh,0x65(%rdx)
    301b:	71 75                	jno    0x3092
    301d:	69 72 65 73 20 61 6e 	imul   $0x6e612073,0x65(%rdx),%esi
    3024:	20 25 73 20 43 50    	and    %ah,0x50432073(%rip)        # 0x5043509d
    302a:	55                   	push   %rbp
    302b:	2c 20                	sub    $0x20,%al
    302d:	00 62 75             	add    %ah,0x75(%rdx)
    3030:	74 20                	je     0x3052
    3032:	6f                   	outsl  %ds:(%rsi),(%dx)
    3033:	6e                   	outsb  %ds:(%rsi),(%dx)
    3034:	6c                   	insb   (%dx),%es:(%rdi)
    3035:	79 20                	jns    0x3057
    3037:	64 65 74 65          	fs gs je 0x30a0
    303b:	63 74 65 64          	movsxd 0x64(%rbp,%riz,2),%esi
    303f:	20 61 6e             	and    %ah,0x6e(%rcx)
    3042:	20 25 73 20 43 50    	and    %ah,0x50432073(%rip)        # 0x504350bb
    3048:	55                   	push   %rbp
    3049:	2e 0a 00             	or     %cs:(%rax),%al
    304c:	54                   	push   %rsp
    304d:	68 69 73 20 6b       	pushq  $0x6b207369
    3052:	65 72 6e             	gs jb  0x30c3
    3055:	65 6c                	gs insb (%dx),%es:(%rdi)
    3057:	20 72 65             	and    %dh,0x65(%rdx)
    305a:	71 75                	jno    0x30d1
    305c:	69 72 65 73 20 74 68 	imul   $0x68742073,0x65(%rdx),%esi
    3063:	65 20 66 6f          	and    %ah,%gs:0x6f(%rsi)
    3067:	6c                   	insb   (%dx),%es:(%rdi)
    3068:	6c                   	insb   (%dx),%es:(%rdi)
    3069:	6f                   	outsl  %ds:(%rsi),(%dx)
    306a:	77 69                	ja     0x30d5
    306c:	6e                   	outsb  %ds:(%rsi),(%dx)
    306d:	67 20 66 65          	and    %ah,0x65(%esi)
    3071:	61                   	(bad)  
    3072:	74 75                	je     0x30e9
    3074:	72 65                	jb     0x30db
    3076:	73 20                	jae    0x3098
    3078:	6e                   	outsb  %ds:(%rsi),(%dx)
    3079:	6f                   	outsl  %ds:(%rsi),(%dx)
    307a:	74 20                	je     0x309c
    307c:	70 72                	jo     0x30f0
    307e:	65 73 65             	gs jae 0x30e6
    3081:	6e                   	outsb  %ds:(%rsi),(%dx)
    3082:	74 20                	je     0x30a4
    3084:	6f                   	outsl  %ds:(%rsi),(%dx)
    3085:	6e                   	outsb  %ds:(%rsi),(%dx)
    3086:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
    308a:	20 43 50             	and    %al,0x50(%rbx)
    308d:	55                   	push   %rbp
    308e:	3a 0a                	cmp    (%rdx),%cl
    3090:	00 25 73 20 00 25    	add    %ah,0x25002073(%rip)        # 0x25005109
    3096:	64 3a 25 64 20 00 00 	cmp    %fs:0x2064(%rip),%ah        # 0x5101
    309d:	00 00                	add    %al,(%rax)
    309f:	00 00                	add    %al,(%rax)
    30a1:	00 66 70             	add    %ah,0x70(%rsi)
    30a4:	75 00                	jne    0x30a6
    30a6:	00 05 6d 73 72 00    	add    %al,0x72736d(%rip)        # 0x72a419
    30ac:	00 06                	add    %al,(%rsi)
    30ae:	70 61                	jo     0x3111
    30b0:	65 00 00             	add    %al,%gs:(%rax)
    30b3:	08 63 78             	or     %ah,0x78(%rbx)
    30b6:	38 00                	cmp    %al,(%rax)
    30b8:	00 0f                	add    %cl,(%rdi)
    30ba:	63 6d 6f             	movsxd 0x6f(%rbp),%ebp
    30bd:	76 00                	jbe    0x30bf
    30bf:	00 18                	add    %bl,(%rax)
    30c1:	66 78 73             	data16 js 0x3137
    30c4:	72 00                	jb     0x30c6
    30c6:	00 19                	add    %bl,(%rcx)
    30c8:	73 73                	jae    0x313d
    30ca:	65 00 00             	add    %al,%gs:(%rax)
    30cd:	1a 73 73             	sbb    0x73(%rbx),%dh
    30d0:	65 32 00             	xor    %gs:(%rax),%al
    30d3:	01 1d 6c 6d 00 03    	add    %ebx,0x3006d6c(%rip)        # 0x3009e45
    30d9:	14 6e                	adc    $0x6e,%al
    30db:	6f                   	outsl  %ds:(%rsi),(%dx)
    30dc:	70 6c                	jo     0x314a
    30de:	00 12                	add    %dl,(%rdx)
    30e0:	1f                   	(bad)  
    30e1:	00 57 41             	add    %dl,0x41(%rdi)
    30e4:	52                   	push   %rdx
    30e5:	4e                   	rex.WRX
    30e6:	49                   	rex.WB
    30e7:	4e                   	rex.WRX
    30e8:	47 3a 20             	rex.RXB cmp (%r8),%r12b
    30eb:	46 6f                	rex.RX outsl %ds:(%rsi),(%dx)
    30ed:	72 63                	jb     0x3152
    30ef:	69 6e 67 20 50 41 45 	imul   $0x45415020,0x67(%rsi),%ebp
    30f6:	20 69 6e             	and    %ch,0x6e(%rcx)
    30f9:	20 43 50             	and    %al,0x50(%rbx)
    30fc:	55                   	push   %rbp
    30fd:	20 66 6c             	and    %ah,0x6c(%rsi)
    3100:	61                   	(bad)  
    3101:	67 73 0a             	addr32 jae 0x310e
    3104:	00 66 6f             	add    %ah,0x6f(%rsi)
    3107:	72 63                	jb     0x316c
    3109:	65 70 61             	gs jo  0x316d
    310c:	65 00 57 41          	add    %dl,%gs:0x41(%rdi)
    3110:	52                   	push   %rdx
    3111:	4e                   	rex.WRX
    3112:	49                   	rex.WB
    3113:	4e                   	rex.WRX
    3114:	47 3a 20             	rex.RXB cmp (%r8),%r12b
    3117:	50                   	push   %rax
    3118:	41                   	rex.B
    3119:	45 20 64 69 73       	and    %r12b,0x73(%r9,%rbp,2)
    311e:	61                   	(bad)  
    311f:	62                   	(bad)  
    3120:	6c                   	insb   (%dx),%es:(%rdi)
    3121:	65 64 2e 20 55 73    	gs fs and %dl,%cs:0x73(%rbp)
    3127:	65 20 70 61          	and    %dh,%gs:0x61(%rax)
    312b:	72 61                	jb     0x318e
    312d:	6d                   	insl   (%dx),%es:(%rdi)
    312e:	65 74 65             	gs je  0x3196
    3131:	72 20                	jb     0x3153
    3133:	27                   	(bad)  
    3134:	66 6f                	outsw  %ds:(%rsi),(%dx)
    3136:	72 63                	jb     0x319b
    3138:	65 70 61             	gs jo  0x319c
    313b:	65 27                	gs (bad) 
    313d:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
    3141:	65 6e                	outsb  %gs:(%rsi),(%dx)
    3143:	61                   	(bad)  
    3144:	62                   	(bad)  
    3145:	6c                   	insb   (%dx),%es:(%rdi)
    3146:	65 20 61 74          	and    %ah,%gs:0x74(%rcx)
    314a:	20 79 6f             	and    %bh,0x6f(%rcx)
    314d:	75 72                	jne    0x31c1
    314f:	20 6f 77             	and    %ch,0x77(%rdi)
    3152:	6e                   	outsb  %ds:(%rsi),(%dx)
    3153:	20 72 69             	and    %dh,0x69(%rdx)
    3156:	73 6b                	jae    0x31c3
    3158:	21 0a                	and    %ecx,(%rdx)
    315a:	00 00                	add    %al,(%rax)
    315c:	00 00                	add    %al,(%rax)
    315e:	00 00                	add    %al,(%rax)
    3160:	61                   	(bad)  
    3161:	81 00 07 00 00 00    	addl   $0x7,(%rax)
    3167:	20 00                	and    %al,(%rax)
	...
    31a9:	00 00                	add    %al,(%rax)
    31ab:	00 65 61             	add    %ah,0x61(%rbp)
    31ae:	72 6c                	jb     0x321c
    31b0:	79 70                	jns    0x3222
    31b2:	72 69                	jb     0x321d
    31b4:	6e                   	outsb  %ds:(%rsi),(%dx)
    31b5:	74 6b                	je     0x3222
    31b7:	00 73 65             	add    %dh,0x65(%rbx)
    31ba:	72 69                	jb     0x3225
    31bc:	61                   	(bad)  
    31bd:	6c                   	insb   (%dx),%es:(%rdi)
    31be:	00 30                	add    %dh,(%rax)
    31c0:	78 00                	js     0x31c2
    31c2:	74 74                	je     0x3238
    31c4:	79 53                	jns    0x3219
    31c6:	00 63 6f             	add    %ah,0x6f(%rbx)
    31c9:	6e                   	outsb  %ds:(%rsi),(%dx)
    31ca:	73 6f                	jae    0x323b
    31cc:	6c                   	insb   (%dx),%es:(%rdi)
    31cd:	65 00 75 61          	add    %dh,%gs:0x61(%rbp)
    31d1:	72 74                	jb     0x3247
    31d3:	38 32                	cmp    %dh,(%rdx)
    31d5:	35 30 2c 69 6f       	xor    $0x6f692c30,%eax
    31da:	2c 00                	sub    $0x0,%al
    31dc:	75 61                	jne    0x323f
    31de:	72 74                	jb     0x3254
    31e0:	2c 69                	sub    $0x69,%al
    31e2:	6f                   	outsl  %ds:(%rsi),(%dx)
    31e3:	2c 00                	sub    $0x0,%al
    31e5:	00 00                	add    %al,(%rax)
    31e7:	00 f8                	add    %bh,%al
    31e9:	03 00                	add    (%rax),%eax
    31eb:	00 f8                	add    %bh,%al
    31ed:	02 00                	add    (%rax),%al
    31ef:	00 65 61             	add    %ah,0x61(%rbp)
    31f2:	72 6c                	jb     0x3260
    31f4:	79 20                	jns    0x3216
    31f6:	63 6f 6e             	movsxd 0x6e(%rdi),%ebp
    31f9:	73 6f                	jae    0x326a
    31fb:	6c                   	insb   (%dx),%es:(%rdi)
    31fc:	65 20 69 6e          	and    %ch,%gs:0x6e(%rcx)
    3200:	20 73 65             	and    %dh,0x65(%rbx)
    3203:	74 75                	je     0x327a
    3205:	70 20                	jo     0x3227
    3207:	63 6f 64             	movsxd 0x64(%rdi),%ebp
    320a:	65 0a 00             	or     %gs:(%rax),%al
    320d:	64 65 62             	fs gs (bad) 
    3210:	75 67                	jne    0x3279
    3212:	00 57 41             	add    %dl,0x41(%rdi)
    3215:	52                   	push   %rdx
    3216:	4e                   	rex.WRX
    3217:	49                   	rex.WB
    3218:	4e                   	rex.WRX
    3219:	47 3a 20             	rex.RXB cmp (%r8),%r12b
    321c:	41 6e                	rex.B outsb %ds:(%rsi),(%dx)
    321e:	63 69 65             	movsxd 0x65(%rcx),%ebp
    3221:	6e                   	outsb  %ds:(%rsi),(%dx)
    3222:	74 20                	je     0x3244
    3224:	62                   	(bad)  
    3225:	6f                   	outsl  %ds:(%rsi),(%dx)
    3226:	6f                   	outsl  %ds:(%rsi),(%dx)
    3227:	74 6c                	je     0x3295
    3229:	6f                   	outsl  %ds:(%rsi),(%dx)
    322a:	61                   	(bad)  
    322b:	64 65 72 2c          	fs gs jb 0x325b
    322f:	20 73 6f             	and    %dh,0x6f(%rbx)
    3232:	6d                   	insl   (%dx),%es:(%rdi)
    3233:	65 20 66 75          	and    %ah,%gs:0x75(%rsi)
    3237:	6e                   	outsb  %ds:(%rsi),(%dx)
    3238:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
    323c:	6e                   	outsb  %ds:(%rsi),(%dx)
    323d:	61                   	(bad)  
    323e:	6c                   	insb   (%dx),%es:(%rdi)
    323f:	69 74 79 20 6d 61 79 	imul   $0x2079616d,0x20(%rcx,%rdi,2),%esi
    3246:	20 
    3247:	62                   	(bad)  
    3248:	65 20 6c 69 6d       	and    %ch,%gs:0x6d(%rcx,%rbp,2)
    324d:	69 74 65 64 21 0a 00 	imul   $0x55000a21,0x64(%rbp,%riz,2),%esi
    3254:	55 
    3255:	6e                   	outsb  %ds:(%rsi),(%dx)
    3256:	61                   	(bad)  
    3257:	62                   	(bad)  
    3258:	6c                   	insb   (%dx),%es:(%rdi)
    3259:	65 20 74 6f 20       	and    %dh,%gs:0x20(%rdi,%rbp,2)
    325e:	62                   	(bad)  
    325f:	6f                   	outsl  %ds:(%rsi),(%dx)
    3260:	6f                   	outsl  %ds:(%rsi),(%dx)
    3261:	74 20                	je     0x3283
    3263:	2d 20 70 6c 65       	sub    $0x656c7020,%eax
    3268:	61                   	(bad)  
    3269:	73 65                	jae    0x32d0
    326b:	20 75 73             	and    %dh,0x73(%rbp)
    326e:	65 20 61 20          	and    %ah,%gs:0x20(%rcx)
    3272:	6b 65 72 6e          	imul   $0x6e,0x72(%rbp),%esp
    3276:	65 6c                	gs insb (%dx),%es:(%rdi)
    3278:	20 61 70             	and    %ah,0x70(%rcx)
    327b:	70 72                	jo     0x32ef
    327d:	6f                   	outsl  %ds:(%rsi),(%dx)
    327e:	70 72                	jo     0x32f2
    3280:	69 61 74 65 20 66 6f 	imul   $0x6f662065,0x74(%rcx),%esp
    3287:	72 20                	jb     0x32a9
    3289:	79 6f                	jns    0x32fa
    328b:	75 72                	jne    0x32ff
    328d:	20 43 50             	and    %al,0x50(%rbx)
    3290:	55                   	push   %rbp
    3291:	2e 0a 00             	or     %cs:(%rax),%al
    3294:	41 32 30             	xor    (%r8),%sil
    3297:	20 67 61             	and    %ah,0x61(%rdi)
    329a:	74 65                	je     0x3301
    329c:	20 6e 6f             	and    %ch,0x6f(%rsi)
    329f:	74 20                	je     0x32c1
    32a1:	72 65                	jb     0x3308
    32a3:	73 70                	jae    0x3315
    32a5:	6f                   	outsl  %ds:(%rsi),(%dx)
    32a6:	6e                   	outsb  %ds:(%rsi),(%dx)
    32a7:	64 69 6e 67 2c 20 75 	imul   $0x6e75202c,%fs:0x67(%rsi),%ebp
    32ae:	6e 
    32af:	61                   	(bad)  
    32b0:	62                   	(bad)  
    32b1:	6c                   	insb   (%dx),%es:(%rdi)
    32b2:	65 20 74 6f 20       	and    %dh,%gs:0x20(%rdi,%rbp,2)
    32b7:	62                   	(bad)  
    32b8:	6f                   	outsl  %ds:(%rsi),(%dx)
    32b9:	6f                   	outsl  %ds:(%rsi),(%dx)
    32ba:	74 2e                	je     0x32ea
    32bc:	2e 2e 0a 00          	cs or  %cs:(%rax),%al
	...
    32d0:	ff                   	(bad)  
    32d1:	ff 00                	incl   (%rax)
    32d3:	00 00                	add    %al,(%rax)
    32d5:	9b                   	fwait
    32d6:	cf                   	iret   
    32d7:	00 ff                	add    %bh,%bh
    32d9:	ff 00                	incl   (%rax)
    32db:	00 00                	add    %al,(%rax)
    32dd:	93                   	xchg   %eax,%ebx
    32de:	cf                   	iret   
    32df:	00 67 00             	add    %ah,0x0(%rdi)
    32e2:	00 10                	add    %dl,(%rax)
    32e4:	00 89 00 00 00 00    	add    %cl,0x0(%rcx)
    32ea:	00 00                	add    %al,(%rax)
    32ec:	00 00                	add    %al,(%rax)
    32ee:	00 00                	add    %al,(%rax)
    32f0:	18 16                	sbb    %dl,(%rsi)
    32f2:	00 00                	add    %al,(%rax)
    32f4:	d9 17                	fsts   (%rdi)
    32f6:	00 00                	add    %al,(%rax)
    32f8:	e1 17                	loope  0x3311
    32fa:	00 00                	add    %al,(%rax)
    32fc:	e1 17                	loope  0x3315
    32fe:	00 00                	add    %al,(%rax)
    3300:	e1 17                	loope  0x3319
    3302:	00 00                	add    %al,(%rax)
    3304:	e1 17                	loope  0x331d
    3306:	00 00                	add    %al,(%rax)
    3308:	d9 17                	fsts   (%rdi)
    330a:	00 00                	add    %al,(%rax)
    330c:	e1 17                	loope  0x3325
    330e:	00 00                	add    %al,(%rax)
    3310:	e1 17                	loope  0x3329
    3312:	00 00                	add    %al,(%rax)
    3314:	e1 17                	loope  0x332d
    3316:	00 00                	add    %al,(%rax)
    3318:	e1 17                	loope  0x3331
    331a:	00 00                	add    %al,(%rax)
    331c:	aa                   	stos   %al,%es:(%rdi)
    331d:	17                   	(bad)  
    331e:	00 00                	add    %al,(%rax)
    3320:	0f 16 00             	movhps (%rax),%xmm0
    3323:	00 61 17             	add    %ah,0x17(%rcx)
    3326:	00 00                	add    %al,(%rax)
    3328:	e1 17                	loope  0x3341
    332a:	00 00                	add    %al,(%rax)
    332c:	e1 17                	loope  0x3345
    332e:	00 00                	add    %al,(%rax)
    3330:	99                   	cltd   
    3331:	16                   	(bad)  
    3332:	00 00                	add    %al,(%rax)
    3334:	e1 17                	loope  0x334d
    3336:	00 00                	add    %al,(%rax)
    3338:	fd                   	std    
    3339:	17                   	(bad)  
    333a:	00 00                	add    %al,(%rax)
    333c:	e1 17                	loope  0x3355
    333e:	00 00                	add    %al,(%rax)
    3340:	e1 17                	loope  0x3359
    3342:	00 00                	add    %al,(%rax)
    3344:	cb                   	lret   
    3345:	17                   	(bad)  
    3346:	00 00                	add    %al,(%rax)
    3348:	30 31                	xor    %dh,(%rcx)
    334a:	32 33                	xor    (%rbx),%dh
    334c:	34 35                	xor    $0x35,%al
    334e:	36 37                	ss (bad) 
    3350:	38 39                	cmp    %bh,(%rcx)
    3352:	41                   	rex.B
    3353:	42                   	rex.X
    3354:	43                   	rex.XB
    3355:	44                   	rex.R
    3356:	45                   	rex.RB
    3357:	46 50                	rex.RX push %rax
    3359:	72 65                	jb     0x33c0
    335b:	73 73                	jae    0x33d0
    335d:	20 3c 45 4e 54 45 52 	and    %bh,0x5245544e(,%rax,2)
    3364:	3e 20 74 6f 20       	and    %dh,%ds:0x20(%rdi,%rbp,2)
    3369:	73 65                	jae    0x33d0
    336b:	65 20 76 69          	and    %dh,%gs:0x69(%rsi)
    336f:	64 65 6f             	fs outsl %gs:(%rsi),(%dx)
    3372:	20 6d 6f             	and    %ch,0x6f(%rbp)
    3375:	64 65 73 20          	fs gs jae 0x3399
    3379:	61                   	(bad)  
    337a:	76 61                	jbe    0x33dd
    337c:	69 6c 61 62 6c 65 2c 	imul   $0x202c656c,0x62(%rcx,%riz,2),%ebp
    3383:	20 
    3384:	3c 53                	cmp    $0x53,%al
    3386:	50                   	push   %rax
    3387:	41                   	rex.B
    3388:	43                   	rex.XB
    3389:	45                   	rex.RB
    338a:	3e 20 74 6f 20       	and    %dh,%ds:0x20(%rdi,%rbp,2)
    338f:	63 6f 6e             	movsxd 0x6e(%rdi),%ebp
    3392:	74 69                	je     0x33fd
    3394:	6e                   	outsb  %ds:(%rsi),(%dx)
    3395:	75 65                	jne    0x33fc
    3397:	2c 20                	sub    $0x20,%al
    3399:	6f                   	outsl  %ds:(%rsi),(%dx)
    339a:	72 20                	jb     0x33bc
    339c:	77 61                	ja     0x33ff
    339e:	69 74 20 33 30 20 73 	imul   $0x65732030,0x33(%rax,%riz,1),%esi
    33a5:	65 
    33a6:	63 0a                	movsxd (%rdx),%ecx
    33a8:	00 4d 6f             	add    %cl,0x6f(%rbp)
    33ab:	64 65 3a 20          	fs cmp %gs:(%rax),%ah
    33af:	52                   	push   %rdx
    33b0:	65 73 6f             	gs jae 0x3422
    33b3:	6c                   	insb   (%dx),%es:(%rdi)
    33b4:	75 74                	jne    0x342a
    33b6:	69 6f 6e 3a 20 20 54 	imul   $0x5420203a,0x6e(%rdi),%ebp
    33bd:	79 70                	jns    0x342f
    33bf:	65 3a 20             	cmp    %gs:(%rax),%ah
    33c2:	00 25 64 78 25 64    	add    %ah,0x64257864(%rip)        # 0x6425ac2c
    33c8:	00 25 63 20 25 30    	add    %ah,0x30252063(%rip)        # 0x30255431
    33ce:	33 58 20             	xor    0x20(%rax),%ebx
    33d1:	25 34 64 78 25       	and    $0x25786434,%eax
    33d6:	2d 37 73 20 25       	sub    $0x25207337,%eax
    33db:	2d 36 73 00 45       	sub    $0x45007336,%eax
    33e0:	6e                   	outsb  %ds:(%rsi),(%dx)
    33e1:	74 65                	je     0x3448
    33e3:	72 20                	jb     0x3405
    33e5:	61                   	(bad)  
    33e6:	20 76 69             	and    %dh,0x69(%rsi)
    33e9:	64 65 6f             	fs outsl %gs:(%rsi),(%dx)
    33ec:	20 6d 6f             	and    %ch,0x6f(%rbp)
    33ef:	64 65 20 6f 72       	fs and %ch,%gs:0x72(%rdi)
    33f4:	20 22                	and    %ah,(%rdx)
    33f6:	73 63                	jae    0x345b
    33f8:	61                   	(bad)  
    33f9:	6e                   	outsb  %ds:(%rsi),(%dx)
    33fa:	22 20                	and    (%rax),%ah
    33fc:	74 6f                	je     0x346d
    33fe:	20 73 63             	and    %dh,0x63(%rbx)
    3401:	61                   	(bad)  
    3402:	6e                   	outsb  %ds:(%rsi),(%dx)
    3403:	20 66 6f             	and    %ah,0x6f(%rsi)
    3406:	72 20                	jb     0x3428
    3408:	61                   	(bad)  
    3409:	64 64 69 74 69 6f 6e 	fs imul $0x206c616e,%fs:0x6f(%rcx,%rbp,2),%esi
    3410:	61 6c 20 
    3413:	6d                   	insl   (%dx),%es:(%rdi)
    3414:	6f                   	outsl  %ds:(%rsi),(%dx)
    3415:	64 65 73 3a          	fs gs jae 0x3453
    3419:	20 00                	and    %al,(%rax)
    341b:	08 20                	or     %ah,(%rax)
    341d:	08 00                	or     %al,(%rax)
    341f:	55                   	push   %rbp
    3420:	6e                   	outsb  %ds:(%rsi),(%dx)
    3421:	64 65 66 69 6e 65 64 	fs imul $0x2064,%gs:0x65(%rsi),%bp
    3428:	20 
    3429:	76 69                	jbe    0x3494
    342b:	64 65 6f             	fs outsl %gs:(%rsi),(%dx)
    342e:	20 6d 6f             	and    %ch,0x6f(%rbp)
    3431:	64 65 20 6e 75       	fs and %ch,%gs:0x75(%rsi)
    3436:	6d                   	insl   (%dx),%es:(%rdi)
    3437:	62                   	(bad)  
    3438:	65 72 3a             	gs jb  0x3475
    343b:	20 25 78 0a 00 35    	and    %ah,0x35000a78(%rip)        # 0x35003eb9
    3441:	2e 36 2e 33 2d 36 34 	cs ss xor %cs:0x28203436(%rip),%ebp        # 0x28206880
    3448:	20 28 
    344a:	61                   	(bad)  
    344b:	67 65 6e             	outsb  %gs:(%esi),(%dx)
    344e:	74 40                	je     0x3490
    3450:	63 69 63             	movsxd 0x63(%rcx),%ebp
    3453:	64 2d 61 30 36 2e    	fs sub $0x2e363061,%eax
    3459:	6d                   	insl   (%dx),%es:(%rdi)
    345a:	74 2e                	je     0x348a
    345c:	6c                   	insb   (%dx),%es:(%rdi)
    345d:	76 29                	jbe    0x3488
    345f:	20 23                	and    %ah,(%rbx)
    3461:	31 20                	xor    %esp,(%rax)
    3463:	53                   	push   %rbx
    3464:	4d 50                	rex.WRB push %r8
    3466:	20 4d 6f             	and    %cl,0x6f(%rbp)
    3469:	6e                   	outsb  %ds:(%rsi),(%dx)
    346a:	20 4f 63             	and    %cl,0x63(%rdi)
    346d:	74 20                	je     0x348f
    346f:	31 37                	xor    %esi,(%rdi)
    3471:	20 31                	and    %dh,(%rcx)
    3473:	31 3a                	xor    %edi,(%rdx)
    3475:	30 35 3a 32 39 20    	xor    %dh,0x2039323a(%rip)        # 0x203966b5
    347b:	55                   	push   %rbp
    347c:	54                   	push   %rsp
    347d:	43 20 32             	rex.XB and %sil,(%r10)
    3480:	30 32                	xor    %dh,(%rdx)
    3482:	32 00                	xor    (%rax),%al
    3484:	eb 29                	jmp    0x34af
    3486:	00 00                	add    %al,(%rax)
    3488:	a1 29 00 00 f3 29 00 	movabs 0x4a000029f3000029,%eax
    348f:	00 4a 
    3491:	2a 00                	sub    (%rax),%al
    3493:	00 fb                	add    %bh,%bl
    3495:	29 00                	sub    %eax,(%rax)
    3497:	00 03                	add    %al,(%rbx)
    3499:	2a 00                	sub    (%rax),%al
    349b:	00 27                	add    %ah,(%rdi)
    349d:	2a 00                	sub    (%rax),%al
    349f:	00 01                	add    %al,(%rcx)
    34a1:	00 00                	add    %al,(%rax)
    34a3:	00 02                	add    %al,(%rdx)
    34a5:	00 00                	add    %al,(%rax)
    34a7:	00 07                	add    %al,(%rdi)
    34a9:	00 00                	add    %al,(%rax)
    34ab:	00 c4                	add    %al,%ah
    34ad:	34 00                	xor    $0x0,%al
    34af:	00 d0                	add    %dl,%al
    34b1:	34 00                	xor    $0x0,%al
    34b3:	00 d4                	add    %dl,%ah
    34b5:	34 00                	xor    $0x0,%al
    34b7:	00 60 35             	add    %ah,0x35(%rax)
    34ba:	00 00                	add    %al,(%rax)
    34bc:	68 35 00 00 80       	pushq  $0xffffffff80000035
    34c1:	35 00 00 43 47       	xor    $0x47430000,%eax
    34c6:	41 2f                	rex.B (bad) 
    34c8:	4d                   	rex.WRB
    34c9:	44                   	rex.R
    34ca:	41 2f                	rex.B (bad) 
    34cc:	48                   	rex.W
    34cd:	47                   	rex.RXB
    34ce:	43 00 45 47          	rex.XB add %al,0x47(%r13)
    34d2:	41 00 56 47          	add    %dl,0x47(%r14)
    34d6:	41 00 56 45          	add    %dl,0x45(%r14)
    34da:	53                   	push   %rbx
    34db:	41 00 42 49          	add    %al,0x49(%r10)
    34df:	4f 53                	rex.WRXB push %r11
    34e1:	00 00                	add    %al,(%rax)
    34e3:	00 d4                	add    %dl,%ah
    34e5:	34 00                	xor    $0x0,%al
    34e7:	00 15 29 00 00 fb    	add    %dl,-0x4ffffd7(%rip)        # 0xfffffffffb003516
    34ed:	26 00 00             	add    %al,%es:(%rax)
	...
    3500:	d8 34 00             	fdivs  (%rax,%rax,1)
    3503:	00 55 2a             	add    %dl,0x2a(%rbp)
    3506:	00 00                	add    %al,(%rax)
    3508:	36 2b 00             	sub    %ss:(%rax),%eax
	...
    3517:	00 00                	add    %al,(%rax)
    3519:	02 00                	add    (%rax),%al
    351b:	02 dd                	add    %ch,%bl
    351d:	34 00                	xor    $0x0,%al
    351f:	00 02                	add    %al,(%rdx)
    3521:	2d 00 00 0a 2d       	sub    $0x2d0a0000,%eax
	...
    352e:	00 00                	add    %al,(%rax)
    3530:	01 00                	add    %eax,(%rax)
    3532:	00 00                	add    %al,(%rax)
    3534:	00 01                	add    %al,(%rcx)
    3536:	80 00 00             	addb   $0x0,(%rax)
	...
    3541:	49 00 00             	rex.WB add %al,(%r8)
    3544:	00 49 00             	add    %cl,0x0(%rcx)
	...
    355f:	00 00                	add    %al,(%rax)
    3561:	0f 50                	(bad)  
    3563:	00 19                	add    %bl,(%rcx)
    3565:	00 00                	add    %al,(%rax)
    3567:	00 00                	add    %al,(%rax)
    3569:	0f 50                	(bad)  
    356b:	00 19                	add    %bl,(%rcx)
    356d:	00 00                	add    %al,(%rax)
    356f:	00 01                	add    %al,(%rcx)
    3571:	0f 50                	(bad)  
    3573:	00 2b                	add    %ch,(%rbx)
	...
    3581:	0f 50                	(bad)  
    3583:	00 19                	add    %bl,(%rcx)
    3585:	00 00                	add    %al,(%rax)
    3587:	00 01                	add    %al,(%rcx)
    3589:	0f 50                	(bad)  
    358b:	00 32                	add    %dh,(%rdx)
    358d:	00 00                	add    %al,(%rax)
    358f:	00 02                	add    %al,(%rdx)
    3591:	0f 50                	(bad)  
    3593:	00 2b                	add    %ch,(%rbx)
    3595:	00 00                	add    %al,(%rax)
    3597:	00 03                	add    %al,(%rbx)
    3599:	0f 50                	(bad)  
    359b:	00 1c 00             	add    %bl,(%rax,%rax,1)
    359e:	00 00                	add    %al,(%rax)
    35a0:	05 0f 50 00 1e       	add    $0x1e00500f,%eax
    35a5:	00 00                	add    %al,(%rax)
    35a7:	00 06                	add    %al,(%rsi)
    35a9:	0f 50                	(bad)  
    35ab:	00 22                	add    %ah,(%rdx)
    35ad:	00 00                	add    %al,(%rax)
    35af:	00 07                	add    %al,(%rdi)
    35b1:	0f 50                	(bad)  
    35b3:	00 3c 00             	add    %bh,(%rax,%rax,1)
    35b6:	00 00                	add    %al,(%rax)
    35b8:	55                   	push   %rbp
    35b9:	aa                   	stos   %al,%es:(%rdi)
    35ba:	5a                   	pop    %rdx
    35bb:	5a                   	pop    %rdx
	...
