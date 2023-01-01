
order:     file format elf32-i386


Disassembly of section .init:

080480b4 <.init>:
 80480b4:	55                   	push   %ebp
 80480b5:	89 e5                	mov    %esp,%ebp
 80480b7:	53                   	push   %ebx
 80480b8:	e8 ef 04 00 00       	call   0x80485ac
 80480bd:	81 c3 cb 9f 00 00    	add    $0x9fcb,%ebx
 80480c3:	e8 b4 05 00 00       	call   0x804867c
 80480c8:	e8 1b 75 00 00       	call   0x804f5e8
 80480cd:	5b                   	pop    %ebx
 80480ce:	5d                   	pop    %ebp
 80480cf:	c3                   	ret    

Disassembly of section .text:

080480d0 <.text>:
 80480d0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80480d4:	83 e4 f0             	and    $0xfffffff0,%esp
 80480d7:	ff 71 fc             	pushl  -0x4(%ecx)
 80480da:	55                   	push   %ebp
 80480db:	89 e5                	mov    %esp,%ebp
 80480dd:	57                   	push   %edi
 80480de:	56                   	push   %esi
 80480df:	53                   	push   %ebx
 80480e0:	51                   	push   %ecx
 80480e1:	81 ec 98 50 00 00    	sub    $0x5098,%esp
 80480e7:	8b 19                	mov    (%ecx),%ebx
 80480e9:	8b 71 04             	mov    0x4(%ecx),%esi
 80480ec:	8b 06                	mov    (%esi),%eax
 80480ee:	a3 1c 22 05 08       	mov    %eax,0x805221c
 80480f3:	c7 85 6c af ff ff 00 	movl   $0x0,-0x5094(%ebp)
 80480fa:	00 00 00 
 80480fd:	83 ec 0c             	sub    $0xc,%esp
 8048100:	6a 00                	push   $0x0
 8048102:	68 2c f9 04 08       	push   $0x804f92c
 8048107:	68 6c f9 04 08       	push   $0x804f96c
 804810c:	56                   	push   %esi
 804810d:	53                   	push   %ebx
 804810e:	e8 7d 30 00 00       	call   0x804b190
 8048113:	83 c4 20             	add    $0x20,%esp
 8048116:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048119:	0f 84 eb 00 00 00    	je     0x804820a
 804811f:	83 f8 6f             	cmp    $0x6f,%eax
 8048122:	74 66                	je     0x804818a
 8048124:	7f 13                	jg     0x8048139
 8048126:	83 f8 3f             	cmp    $0x3f,%eax
 8048129:	0f 85 d6 00 00 00    	jne    0x8048205
 804812f:	e8 b9 05 00 00       	call   0x80486ed
 8048134:	e9 f9 00 00 00       	jmp    0x8048232
 8048139:	3d 68 01 00 00       	cmp    $0x168,%eax
 804813e:	74 5a                	je     0x804819a
 8048140:	3d 76 01 00 00       	cmp    $0x176,%eax
 8048145:	0f 85 ba 00 00 00    	jne    0x8048205
 804814b:	52                   	push   %edx
 804814c:	52                   	push   %edx
 804814d:	ff 35 1c 22 05 08    	pushl  0x805221c
 8048153:	68 ee f7 04 08       	push   $0x804f7ee
 8048158:	e8 8b 08 00 00       	call   0x80489e8
 804815d:	c7 04 24 f6 f7 04 08 	movl   $0x804f7f6,(%esp)
 8048164:	e8 cb 07 00 00       	call   0x8048934
 8048169:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 8048170:	e8 9b 08 00 00       	call   0x8048a10
 8048175:	c7 04 24 16 f8 04 08 	movl   $0x804f816,(%esp)
 804817c:	e8 b3 07 00 00       	call   0x8048934
 8048181:	c7 04 24 38 f8 04 08 	movl   $0x804f838,(%esp)
 8048188:	eb 71                	jmp    0x80481fb
 804818a:	a1 6c 2d 05 08       	mov    0x8052d6c,%eax
 804818f:	89 85 6c af ff ff    	mov    %eax,-0x5094(%ebp)
 8048195:	e9 63 ff ff ff       	jmp    0x80480fd
 804819a:	51                   	push   %ecx
 804819b:	51                   	push   %ecx
 804819c:	ff 35 1c 22 05 08    	pushl  0x805221c
 80481a2:	68 5c f6 04 08       	push   $0x804f65c
 80481a7:	e8 3c 08 00 00       	call   0x80489e8
 80481ac:	c7 04 24 7a f6 04 08 	movl   $0x804f67a,(%esp)
 80481b3:	e8 7c 07 00 00       	call   0x8048934
 80481b8:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 80481bf:	e8 4c 08 00 00       	call   0x8048a10
 80481c4:	c7 04 24 ba f6 04 08 	movl   $0x804f6ba,(%esp)
 80481cb:	e8 64 07 00 00       	call   0x8048934
 80481d0:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 80481d7:	e8 34 08 00 00       	call   0x8048a10
 80481dc:	c7 04 24 03 f7 04 08 	movl   $0x804f703,(%esp)
 80481e3:	e8 4c 07 00 00       	call   0x8048934
 80481e8:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 80481ef:	e8 1c 08 00 00       	call   0x8048a10
 80481f4:	c7 04 24 bf f7 04 08 	movl   $0x804f7bf,(%esp)
 80481fb:	e8 34 07 00 00       	call   0x8048934
 8048200:	e9 70 02 00 00       	jmp    0x8048475
 8048205:	e8 d6 26 00 00       	call   0x804a8e0
 804820a:	83 bd 6c af ff ff 00 	cmpl   $0x0,-0x5094(%ebp)
 8048211:	75 29                	jne    0x804823c
 8048213:	50                   	push   %eax
 8048214:	ff 35 1c 22 05 08    	pushl  0x805221c
 804821a:	68 cf f8 04 08       	push   $0x804f8cf
 804821f:	ff 35 b0 20 05 08    	pushl  0x80520b0
 8048225:	e8 3e 46 00 00       	call   0x804c868
 804822a:	e8 be 04 00 00       	call   0x80486ed
 804822f:	83 c4 10             	add    $0x10,%esp
 8048232:	b8 02 00 00 00       	mov    $0x2,%eax
 8048237:	e9 40 03 00 00       	jmp    0x804857c
 804823c:	e8 3b 0a 00 00       	call   0x8048c7c
 8048241:	a3 9c 20 05 08       	mov    %eax,0x805209c
 8048246:	85 c0                	test   %eax,%eax
 8048248:	79 33                	jns    0x804827d
 804824a:	e8 ed 0d 00 00       	call   0x804903c
 804824f:	83 ec 0c             	sub    $0xc,%esp
 8048252:	ff 30                	pushl  (%eax)
 8048254:	e8 73 17 00 00       	call   0x80499cc
 8048259:	50                   	push   %eax
 804825a:	ff 35 1c 22 05 08    	pushl  0x805221c
 8048260:	68 ed f8 04 08       	push   $0x804f8ed
 8048265:	ff 35 b0 20 05 08    	pushl  0x80520b0
 804826b:	e8 f8 45 00 00       	call   0x804c868
 8048270:	83 c4 20             	add    $0x20,%esp
 8048273:	b8 01 00 00 00       	mov    $0x1,%eax
 8048278:	e9 ff 02 00 00       	jmp    0x804857c
 804827d:	39 1d c0 21 05 08    	cmp    %ebx,0x80521c0
 8048283:	7c 0a                	jl     0x804828f
 8048285:	b8 5a f6 04 08       	mov    $0x804f65a,%eax
 804828a:	e8 7f 04 00 00       	call   0x804870e
 804828f:	8b 3d c0 21 05 08    	mov    0x80521c0,%edi
 8048295:	39 df                	cmp    %ebx,%edi
 8048297:	7d 0b                	jge    0x80482a4
 8048299:	8b 04 be             	mov    (%esi,%edi,4),%eax
 804829c:	e8 6d 04 00 00       	call   0x804870e
 80482a1:	47                   	inc    %edi
 80482a2:	eb f1                	jmp    0x8048295
 80482a4:	50                   	push   %eax
 80482a5:	50                   	push   %eax
 80482a6:	68 d8 86 04 08       	push   $0x80486d8
 80482ab:	6a 0f                	push   $0xf
 80482ad:	e8 82 18 00 00       	call   0x8049b34
 80482b2:	83 c4 10             	add    $0x10,%esp
 80482b5:	83 3d 18 22 05 08 00 	cmpl   $0x0,0x8052218
 80482bc:	0f 85 62 01 00 00    	jne    0x8048424
 80482c2:	50                   	push   %eax
 80482c3:	68 00 40 00 00       	push   $0x4000
 80482c8:	8d 85 e8 bf ff ff    	lea    -0x4018(%ebp),%eax
 80482ce:	50                   	push   %eax
 80482cf:	ff 35 9c 20 05 08    	pushl  0x805209c
 80482d5:	e8 46 36 00 00       	call   0x804b920
 80482da:	89 85 68 af ff ff    	mov    %eax,-0x5098(%ebp)
 80482e0:	83 c4 10             	add    $0x10,%esp
 80482e3:	85 c0                	test   %eax,%eax
 80482e5:	0f 8e 2b 01 00 00    	jle    0x8048416
 80482eb:	c7 85 70 af ff ff 00 	movl   $0x0,-0x5090(%ebp)
 80482f2:	00 00 00 
 80482f5:	8d b5 e8 bf ff ff    	lea    -0x4018(%ebp),%esi
 80482fb:	8b 85 70 af ff ff    	mov    -0x5090(%ebp),%eax
 8048301:	01 c6                	add    %eax,%esi
 8048303:	b9 04 00 00 00       	mov    $0x4,%ecx
 8048308:	8d bd 80 af ff ff    	lea    -0x5080(%ebp),%edi
 804830e:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8048310:	89 c6                	mov    %eax,%esi
 8048312:	83 c6 10             	add    $0x10,%esi
 8048315:	8b bd 8c af ff ff    	mov    -0x5074(%ebp),%edi
 804831b:	8d 04 3e             	lea    (%esi,%edi,1),%eax
 804831e:	89 85 70 af ff ff    	mov    %eax,-0x5090(%ebp)
 8048324:	8b 15 0c 22 05 08    	mov    0x805220c,%edx
 804832a:	8b 85 80 af ff ff    	mov    -0x5080(%ebp),%eax
 8048330:	85 d2                	test   %edx,%edx
 8048332:	0f 84 c7 00 00 00    	je     0x80483ff
 8048338:	39 42 04             	cmp    %eax,0x4(%edx)
 804833b:	74 05                	je     0x8048342
 804833d:	8b 52 08             	mov    0x8(%edx),%edx
 8048340:	eb ee                	jmp    0x8048330
 8048342:	50                   	push   %eax
 8048343:	50                   	push   %eax
 8048344:	ff 32                	pushl  (%edx)
 8048346:	89 95 74 af ff ff    	mov    %edx,-0x508c(%ebp)
 804834c:	8d 9d e8 af ff ff    	lea    -0x5018(%ebp),%ebx
 8048352:	53                   	push   %ebx
 8048353:	e8 44 08 00 00       	call   0x8048b9c
 8048358:	58                   	pop    %eax
 8048359:	5a                   	pop    %edx
 804835a:	68 5a f6 04 08       	push   $0x804f65a
 804835f:	8b 95 74 af ff ff    	mov    -0x508c(%ebp),%edx
 8048365:	ff 32                	pushl  (%edx)
 8048367:	e8 98 57 00 00       	call   0x804db04
 804836c:	83 c4 10             	add    $0x10,%esp
 804836f:	85 c0                	test   %eax,%eax
 8048371:	74 10                	je     0x8048383
 8048373:	50                   	push   %eax
 8048374:	50                   	push   %eax
 8048375:	68 5a f6 04 08       	push   $0x804f65a
 804837a:	53                   	push   %ebx
 804837b:	e8 38 08 00 00       	call   0x8048bb8
 8048380:	83 c4 10             	add    $0x10,%esp
 8048383:	85 ff                	test   %edi,%edi
 8048385:	74 14                	je     0x804839b
 8048387:	50                   	push   %eax
 8048388:	50                   	push   %eax
 8048389:	8d 85 e8 bf ff ff    	lea    -0x4018(%ebp),%eax
 804838f:	01 c6                	add    %eax,%esi
 8048391:	56                   	push   %esi
 8048392:	53                   	push   %ebx
 8048393:	e8 20 08 00 00       	call   0x8048bb8
 8048398:	83 c4 10             	add    $0x10,%esp
 804839b:	8b 85 84 af ff ff    	mov    -0x507c(%ebp),%eax
 80483a1:	89 85 74 af ff ff    	mov    %eax,-0x508c(%ebp)
 80483a7:	f6 c4 01             	test   $0x1,%ah
 80483aa:	74 07                	je     0x80483b3
 80483ac:	89 d8                	mov    %ebx,%eax
 80483ae:	e8 5b 03 00 00       	call   0x804870e
 80483b3:	f6 85 74 af ff ff 38 	testb  $0x38,-0x508c(%ebp)
 80483ba:	74 43                	je     0x80483ff
 80483bc:	a1 10 22 05 08       	mov    0x8052210,%eax
 80483c1:	89 c6                	mov    %eax,%esi
 80483c3:	8b 3d 14 22 05 08    	mov    0x8052214,%edi
 80483c9:	31 db                	xor    %ebx,%ebx
 80483cb:	8d 8d e8 af ff ff    	lea    -0x5018(%ebp),%ecx
 80483d1:	39 f3                	cmp    %esi,%ebx
 80483d3:	0f 8c a6 00 00 00    	jl     0x804847f
 80483d9:	0f 85 49 01 00 00    	jne    0x8048528
 80483df:	57                   	push   %edi
 80483e0:	57                   	push   %edi
 80483e1:	8d 85 90 af ff ff    	lea    -0x5070(%ebp),%eax
 80483e7:	50                   	push   %eax
 80483e8:	8d bd e8 af ff ff    	lea    -0x5018(%ebp),%edi
 80483ee:	57                   	push   %edi
 80483ef:	e8 2c 08 00 00       	call   0x8048c20
 80483f4:	83 c4 10             	add    $0x10,%esp
 80483f7:	85 c0                	test   %eax,%eax
 80483f9:	0f 89 ab 00 00 00    	jns    0x80484aa
 80483ff:	8b 85 68 af ff ff    	mov    -0x5098(%ebp),%eax
 8048405:	39 85 70 af ff ff    	cmp    %eax,-0x5090(%ebp)
 804840b:	0f 8c e4 fe ff ff    	jl     0x80482f5
 8048411:	e9 9f fe ff ff       	jmp    0x80482b5
 8048416:	e8 21 0c 00 00       	call   0x804903c
 804841b:	83 38 04             	cmpl   $0x4,(%eax)
 804841e:	0f 84 91 fe ff ff    	je     0x80482b5
 8048424:	53                   	push   %ebx
 8048425:	53                   	push   %ebx
 8048426:	68 13 f9 04 08       	push   $0x804f913
 804842b:	ff b5 6c af ff ff    	pushl  -0x5094(%ebp)
 8048431:	e8 e6 0d 00 00       	call   0x804921c
 8048436:	89 c6                	mov    %eax,%esi
 8048438:	83 c4 10             	add    $0x10,%esp
 804843b:	85 c0                	test   %eax,%eax
 804843d:	74 39                	je     0x8048478
 804843f:	31 db                	xor    %ebx,%ebx
 8048441:	3b 1d 10 22 05 08    	cmp    0x8052210,%ebx
 8048447:	7d 23                	jge    0x804846c
 8048449:	6b d3 1c             	imul   $0x1c,%ebx,%edx
 804844c:	03 15 14 22 05 08    	add    0x8052214,%edx
 8048452:	83 7a 18 00          	cmpl   $0x0,0x18(%edx)
 8048456:	75 11                	jne    0x8048469
 8048458:	51                   	push   %ecx
 8048459:	ff 32                	pushl  (%edx)
 804845b:	68 0f f9 04 08       	push   $0x804f90f
 8048460:	56                   	push   %esi
 8048461:	e8 02 44 00 00       	call   0x804c868
 8048466:	83 c4 10             	add    $0x10,%esp
 8048469:	43                   	inc    %ebx
 804846a:	eb d5                	jmp    0x8048441
 804846c:	83 ec 0c             	sub    $0xc,%esp
 804846f:	56                   	push   %esi
 8048470:	e8 e7 0b 00 00       	call   0x804905c
 8048475:	83 c4 10             	add    $0x10,%esp
 8048478:	31 c0                	xor    %eax,%eax
 804847a:	e9 fd 00 00 00       	jmp    0x804857c
 804847f:	50                   	push   %eax
 8048480:	50                   	push   %eax
 8048481:	51                   	push   %ecx
 8048482:	89 8d 64 af ff ff    	mov    %ecx,-0x509c(%ebp)
 8048488:	6b c3 1c             	imul   $0x1c,%ebx,%eax
 804848b:	ff 34 07             	pushl  (%edi,%eax,1)
 804848e:	e8 71 56 00 00       	call   0x804db04
 8048493:	83 c4 10             	add    $0x10,%esp
 8048496:	85 c0                	test   %eax,%eax
 8048498:	0f 84 8a 00 00 00    	je     0x8048528
 804849e:	43                   	inc    %ebx
 804849f:	8b 8d 64 af ff ff    	mov    -0x509c(%ebp),%ecx
 80484a5:	e9 27 ff ff ff       	jmp    0x80483d1
 80484aa:	8b 85 a0 af ff ff    	mov    -0x5060(%ebp),%eax
 80484b0:	25 00 f0 00 00       	and    $0xf000,%eax
 80484b5:	3d 00 80 00 00       	cmp    $0x8000,%eax
 80484ba:	0f 85 3f ff ff ff    	jne    0x80483ff
 80484c0:	a1 10 22 05 08       	mov    0x8052210,%eax
 80484c5:	40                   	inc    %eax
 80484c6:	a3 10 22 05 08       	mov    %eax,0x8052210
 80484cb:	56                   	push   %esi
 80484cc:	56                   	push   %esi
 80484cd:	6b c0 1c             	imul   $0x1c,%eax,%eax
 80484d0:	50                   	push   %eax
 80484d1:	ff 35 14 22 05 08    	pushl  0x8052214
 80484d7:	e8 70 57 00 00       	call   0x804dc4c
 80484dc:	a3 14 22 05 08       	mov    %eax,0x8052214
 80484e1:	6b d3 1c             	imul   $0x1c,%ebx,%edx
 80484e4:	01 c2                	add    %eax,%edx
 80484e6:	89 95 64 af ff ff    	mov    %edx,-0x509c(%ebp)
 80484ec:	89 3c 24             	mov    %edi,(%esp)
 80484ef:	e8 e8 06 00 00       	call   0x8048bdc
 80484f4:	8b 95 64 af ff ff    	mov    -0x509c(%ebp),%edx
 80484fa:	89 02                	mov    %eax,(%edx)
 80484fc:	8b b5 90 af ff ff    	mov    -0x5070(%ebp),%esi
 8048502:	8b bd 94 af ff ff    	mov    -0x506c(%ebp),%edi
 8048508:	89 72 04             	mov    %esi,0x4(%edx)
 804850b:	89 7a 08             	mov    %edi,0x8(%edx)
 804850e:	8b 85 9c af ff ff    	mov    -0x5064(%ebp),%eax
 8048514:	89 42 0c             	mov    %eax,0xc(%edx)
 8048517:	c7 42 14 00 00 00 00 	movl   $0x0,0x14(%edx)
 804851e:	c7 42 18 00 00 00 00 	movl   $0x0,0x18(%edx)
 8048525:	83 c4 10             	add    $0x10,%esp
 8048528:	f6 85 74 af ff ff 20 	testb  $0x20,-0x508c(%ebp)
 804852f:	74 10                	je     0x8048541
 8048531:	6b c3 1c             	imul   $0x1c,%ebx,%eax
 8048534:	03 05 14 22 05 08    	add    0x8052214,%eax
 804853a:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 8048541:	f6 85 74 af ff ff 18 	testb  $0x18,-0x508c(%ebp)
 8048548:	74 10                	je     0x804855a
 804854a:	6b c3 1c             	imul   $0x1c,%ebx,%eax
 804854d:	03 05 14 22 05 08    	add    0x8052214,%eax
 8048553:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
 804855a:	f6 85 74 af ff ff 08 	testb  $0x8,-0x508c(%ebp)
 8048561:	0f 84 98 fe ff ff    	je     0x80483ff
 8048567:	6b db 1c             	imul   $0x1c,%ebx,%ebx
 804856a:	03 1d 14 22 05 08    	add    0x8052214,%ebx
 8048570:	c7 43 18 01 00 00 00 	movl   $0x1,0x18(%ebx)
 8048577:	e9 83 fe ff ff       	jmp    0x80483ff
 804857c:	8d 65 f0             	lea    -0x10(%ebp),%esp
 804857f:	59                   	pop    %ecx
 8048580:	5b                   	pop    %ebx
 8048581:	5e                   	pop    %esi
 8048582:	5f                   	pop    %edi
 8048583:	5d                   	pop    %ebp
 8048584:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048587:	c3                   	ret    
 8048588:	31 ed                	xor    %ebp,%ebp
 804858a:	5e                   	pop    %esi
 804858b:	89 e1                	mov    %esp,%ecx
 804858d:	83 e4 f0             	and    $0xfffffff0,%esp
 8048590:	50                   	push   %eax
 8048591:	54                   	push   %esp
 8048592:	52                   	push   %edx
 8048593:	68 0c f6 04 08       	push   $0x804f60c
 8048598:	68 b4 80 04 08       	push   $0x80480b4
 804859d:	51                   	push   %ecx
 804859e:	56                   	push   %esi
 804859f:	68 d0 80 04 08       	push   $0x80480d0
 80485a4:	e8 a2 35 00 00       	call   0x804bb4b
 80485a9:	f4                   	hlt    
 80485aa:	66 90                	xchg   %ax,%ax
 80485ac:	8b 1c 24             	mov    (%esp),%ebx
 80485af:	c3                   	ret    
 80485b0:	b8 ef 21 05 08       	mov    $0x80521ef,%eax
 80485b5:	2d ec 21 05 08       	sub    $0x80521ec,%eax
 80485ba:	83 f8 06             	cmp    $0x6,%eax
 80485bd:	77 01                	ja     0x80485c0
 80485bf:	c3                   	ret    
 80485c0:	b8 00 00 00 00       	mov    $0x0,%eax
 80485c5:	85 c0                	test   %eax,%eax
 80485c7:	74 f6                	je     0x80485bf
 80485c9:	55                   	push   %ebp
 80485ca:	89 e5                	mov    %esp,%ebp
 80485cc:	83 ec 18             	sub    $0x18,%esp
 80485cf:	c7 04 24 ec 21 05 08 	movl   $0x80521ec,(%esp)
 80485d6:	ff d0                	call   *%eax
 80485d8:	c9                   	leave  
 80485d9:	c3                   	ret    
 80485da:	66 90                	xchg   %ax,%ax
 80485dc:	b8 ec 21 05 08       	mov    $0x80521ec,%eax
 80485e1:	2d ec 21 05 08       	sub    $0x80521ec,%eax
 80485e6:	c1 f8 02             	sar    $0x2,%eax
 80485e9:	89 c2                	mov    %eax,%edx
 80485eb:	c1 ea 1f             	shr    $0x1f,%edx
 80485ee:	01 d0                	add    %edx,%eax
 80485f0:	d1 f8                	sar    %eax
 80485f2:	75 01                	jne    0x80485f5
 80485f4:	c3                   	ret    
 80485f5:	ba 00 00 00 00       	mov    $0x0,%edx
 80485fa:	85 d2                	test   %edx,%edx
 80485fc:	74 f6                	je     0x80485f4
 80485fe:	55                   	push   %ebp
 80485ff:	89 e5                	mov    %esp,%ebp
 8048601:	83 ec 18             	sub    $0x18,%esp
 8048604:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048608:	c7 04 24 ec 21 05 08 	movl   $0x80521ec,(%esp)
 804860f:	ff d2                	call   *%edx
 8048611:	c9                   	leave  
 8048612:	c3                   	ret    
 8048613:	90                   	nop
 8048614:	80 3d ec 21 05 08 00 	cmpb   $0x0,0x80521ec
 804861b:	75 5b                	jne    0x8048678
 804861d:	55                   	push   %ebp
 804861e:	89 e5                	mov    %esp,%ebp
 8048620:	53                   	push   %ebx
 8048621:	83 ec 14             	sub    $0x14,%esp
 8048624:	a1 f0 21 05 08       	mov    0x80521f0,%eax
 8048629:	bb 0c 20 05 08       	mov    $0x805200c,%ebx
 804862e:	81 eb 08 20 05 08    	sub    $0x8052008,%ebx
 8048634:	c1 fb 02             	sar    $0x2,%ebx
 8048637:	4b                   	dec    %ebx
 8048638:	39 d8                	cmp    %ebx,%eax
 804863a:	73 16                	jae    0x8048652
 804863c:	40                   	inc    %eax
 804863d:	a3 f0 21 05 08       	mov    %eax,0x80521f0
 8048642:	ff 14 85 08 20 05 08 	call   *0x8052008(,%eax,4)
 8048649:	a1 f0 21 05 08       	mov    0x80521f0,%eax
 804864e:	39 d8                	cmp    %ebx,%eax
 8048650:	72 ea                	jb     0x804863c
 8048652:	e8 59 ff ff ff       	call   0x80485b0
 8048657:	b8 00 00 00 00       	mov    $0x0,%eax
 804865c:	85 c0                	test   %eax,%eax
 804865e:	74 0c                	je     0x804866c
 8048660:	c7 04 24 e0 0e 05 08 	movl   $0x8050ee0,(%esp)
 8048667:	e8 94 79 fb f7       	call   0x0
 804866c:	c6 05 ec 21 05 08 01 	movb   $0x1,0x80521ec
 8048673:	83 c4 14             	add    $0x14,%esp
 8048676:	5b                   	pop    %ebx
 8048677:	5d                   	pop    %ebp
 8048678:	c3                   	ret    
 8048679:	8d 76 00             	lea    0x0(%esi),%esi
 804867c:	55                   	push   %ebp
 804867d:	89 e5                	mov    %esp,%ebp
 804867f:	83 ec 18             	sub    $0x18,%esp
 8048682:	e8 00 00 00 00       	call   0x8048687
 8048687:	5a                   	pop    %edx
 8048688:	81 c2 01 9a 00 00    	add    $0x9a01,%edx
 804868e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048693:	85 c0                	test   %eax,%eax
 8048695:	74 20                	je     0x80486b7
 8048697:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804869b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80486a2:	00 
 80486a3:	c7 44 24 04 f4 21 05 	movl   $0x80521f4,0x4(%esp)
 80486aa:	08 
 80486ab:	c7 04 24 e0 0e 05 08 	movl   $0x8050ee0,(%esp)
 80486b2:	e8 49 79 fb f7       	call   0x0
 80486b7:	a1 10 20 05 08       	mov    0x8052010,%eax
 80486bc:	85 c0                	test   %eax,%eax
 80486be:	74 12                	je     0x80486d2
 80486c0:	b8 00 00 00 00       	mov    $0x0,%eax
 80486c5:	85 c0                	test   %eax,%eax
 80486c7:	74 09                	je     0x80486d2
 80486c9:	c7 04 24 10 20 05 08 	movl   $0x8052010,(%esp)
 80486d0:	ff d0                	call   *%eax
 80486d2:	c9                   	leave  
 80486d3:	e9 04 ff ff ff       	jmp    0x80485dc
 80486d8:	55                   	push   %ebp
 80486d9:	89 e5                	mov    %esp,%ebp
 80486db:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
 80486df:	75 0a                	jne    0x80486eb
 80486e1:	c7 05 18 22 05 08 01 	movl   $0x1,0x8052218
 80486e8:	00 00 00 
 80486eb:	5d                   	pop    %ebp
 80486ec:	c3                   	ret    
 80486ed:	55                   	push   %ebp
 80486ee:	89 e5                	mov    %esp,%ebp
 80486f0:	83 ec 0c             	sub    $0xc,%esp
 80486f3:	ff 35 1c 22 05 08    	pushl  0x805221c
 80486f9:	68 30 f6 04 08       	push   $0x804f630
 80486fe:	ff 35 b0 20 05 08    	pushl  0x80520b0
 8048704:	e8 5f 41 00 00       	call   0x804c868
 8048709:	83 c4 10             	add    $0x10,%esp
 804870c:	c9                   	leave  
 804870d:	c3                   	ret    
 804870e:	55                   	push   %ebp
 804870f:	89 e5                	mov    %esp,%ebp
 8048711:	57                   	push   %edi
 8048712:	56                   	push   %esi
 8048713:	53                   	push   %ebx
 8048714:	81 ec 84 10 00 00    	sub    $0x1084,%esp
 804871a:	89 c3                	mov    %eax,%ebx
 804871c:	8d bd 90 ef ff ff    	lea    -0x1070(%ebp),%edi
 8048722:	57                   	push   %edi
 8048723:	50                   	push   %eax
 8048724:	e8 f7 04 00 00       	call   0x8048c20
 8048729:	83 c4 10             	add    $0x10,%esp
 804872c:	85 c0                	test   %eax,%eax
 804872e:	0f 88 f6 01 00 00    	js     0x804892a
 8048734:	8b 85 a0 ef ff ff    	mov    -0x1060(%ebp),%eax
 804873a:	25 00 f0 00 00       	and    $0xf000,%eax
 804873f:	3d 00 40 00 00       	cmp    $0x4000,%eax
 8048744:	0f 85 e0 01 00 00    	jne    0x804892a
 804874a:	83 ec 0c             	sub    $0xc,%esp
 804874d:	6a 10                	push   $0x10
 804874f:	e8 04 15 00 00       	call   0x8049c58
 8048754:	89 c6                	mov    %eax,%esi
 8048756:	89 1c 24             	mov    %ebx,(%esp)
 8048759:	e8 7e 04 00 00       	call   0x8048bdc
 804875e:	89 06                	mov    %eax,(%esi)
 8048760:	8b 85 90 ef ff ff    	mov    -0x1070(%ebp),%eax
 8048766:	8b 95 94 ef ff ff    	mov    -0x106c(%ebp),%edx
 804876c:	89 46 04             	mov    %eax,0x4(%esi)
 804876f:	89 56 08             	mov    %edx,0x8(%esi)
 8048772:	c7 46 0c 00 00 00 00 	movl   $0x0,0xc(%esi)
 8048779:	83 c4 10             	add    $0x10,%esp
 804877c:	89 f3                	mov    %esi,%ebx
 804877e:	89 bd 80 ef ff ff    	mov    %edi,-0x1080(%ebp)
 8048784:	50                   	push   %eax
 8048785:	68 38 01 00 00       	push   $0x138
 804878a:	ff 33                	pushl  (%ebx)
 804878c:	ff 35 9c 20 05 08    	pushl  0x805209c
 8048792:	e8 44 05 00 00       	call   0x8048cdb
 8048797:	89 c7                	mov    %eax,%edi
 8048799:	83 c4 10             	add    $0x10,%esp
 804879c:	85 c0                	test   %eax,%eax
 804879e:	0f 88 7b 01 00 00    	js     0x804891f
 80487a4:	83 ec 0c             	sub    $0xc,%esp
 80487a7:	6a 0c                	push   $0xc
 80487a9:	e8 aa 14 00 00       	call   0x8049c58
 80487ae:	89 c2                	mov    %eax,%edx
 80487b0:	8b 03                	mov    (%ebx),%eax
 80487b2:	89 02                	mov    %eax,(%edx)
 80487b4:	89 7a 04             	mov    %edi,0x4(%edx)
 80487b7:	8b 0d 0c 22 05 08    	mov    0x805220c,%ecx
 80487bd:	89 4a 08             	mov    %ecx,0x8(%edx)
 80487c0:	89 15 0c 22 05 08    	mov    %edx,0x805220c
 80487c6:	89 04 24             	mov    %eax,(%esp)
 80487c9:	e8 44 07 00 00       	call   0x8048f12
 80487ce:	89 85 84 ef ff ff    	mov    %eax,-0x107c(%ebp)
 80487d4:	83 c4 10             	add    $0x10,%esp
 80487d7:	85 c0                	test   %eax,%eax
 80487d9:	0f 84 40 01 00 00    	je     0x804891f
 80487df:	83 ec 0c             	sub    $0xc,%esp
 80487e2:	ff b5 84 ef ff ff    	pushl  -0x107c(%ebp)
 80487e8:	e8 b7 07 00 00       	call   0x8048fa4
 80487ed:	83 c4 10             	add    $0x10,%esp
 80487f0:	85 c0                	test   %eax,%eax
 80487f2:	0f 84 16 01 00 00    	je     0x804890e
 80487f8:	8d 78 0b             	lea    0xb(%eax),%edi
 80487fb:	50                   	push   %eax
 80487fc:	50                   	push   %eax
 80487fd:	68 58 f6 04 08       	push   $0x804f658
 8048802:	57                   	push   %edi
 8048803:	e8 fc 52 00 00       	call   0x804db04
 8048808:	83 c4 10             	add    $0x10,%esp
 804880b:	85 c0                	test   %eax,%eax
 804880d:	74 d0                	je     0x80487df
 804880f:	51                   	push   %ecx
 8048810:	51                   	push   %ecx
 8048811:	68 57 f6 04 08       	push   $0x804f657
 8048816:	57                   	push   %edi
 8048817:	e8 e8 52 00 00       	call   0x804db04
 804881c:	83 c4 10             	add    $0x10,%esp
 804881f:	85 c0                	test   %eax,%eax
 8048821:	74 bc                	je     0x80487df
 8048823:	50                   	push   %eax
 8048824:	50                   	push   %eax
 8048825:	ff 33                	pushl  (%ebx)
 8048827:	8d 85 e8 ef ff ff    	lea    -0x1018(%ebp),%eax
 804882d:	50                   	push   %eax
 804882e:	e8 69 03 00 00       	call   0x8048b9c
 8048833:	58                   	pop    %eax
 8048834:	5a                   	pop    %edx
 8048835:	68 5a f6 04 08       	push   $0x804f65a
 804883a:	ff 33                	pushl  (%ebx)
 804883c:	e8 c3 52 00 00       	call   0x804db04
 8048841:	83 c4 10             	add    $0x10,%esp
 8048844:	85 c0                	test   %eax,%eax
 8048846:	74 16                	je     0x804885e
 8048848:	50                   	push   %eax
 8048849:	50                   	push   %eax
 804884a:	68 5a f6 04 08       	push   $0x804f65a
 804884f:	8d 85 e8 ef ff ff    	lea    -0x1018(%ebp),%eax
 8048855:	50                   	push   %eax
 8048856:	e8 5d 03 00 00       	call   0x8048bb8
 804885b:	83 c4 10             	add    $0x10,%esp
 804885e:	50                   	push   %eax
 804885f:	50                   	push   %eax
 8048860:	57                   	push   %edi
 8048861:	8d 85 e8 ef ff ff    	lea    -0x1018(%ebp),%eax
 8048867:	50                   	push   %eax
 8048868:	e8 4b 03 00 00       	call   0x8048bb8
 804886d:	5a                   	pop    %edx
 804886e:	59                   	pop    %ecx
 804886f:	ff b5 80 ef ff ff    	pushl  -0x1080(%ebp)
 8048875:	8d 85 e8 ef ff ff    	lea    -0x1018(%ebp),%eax
 804887b:	50                   	push   %eax
 804887c:	e8 9f 03 00 00       	call   0x8048c20
 8048881:	83 c4 10             	add    $0x10,%esp
 8048884:	85 c0                	test   %eax,%eax
 8048886:	0f 88 53 ff ff ff    	js     0x80487df
 804888c:	8b 85 a0 ef ff ff    	mov    -0x1060(%ebp),%eax
 8048892:	25 00 f0 00 00       	and    $0xf000,%eax
 8048897:	3d 00 40 00 00       	cmp    $0x4000,%eax
 804889c:	0f 85 3d ff ff ff    	jne    0x80487df
 80488a2:	8b 95 90 ef ff ff    	mov    -0x1070(%ebp),%edx
 80488a8:	8b 8d 94 ef ff ff    	mov    -0x106c(%ebp),%ecx
 80488ae:	3b 4b 08             	cmp    0x8(%ebx),%ecx
 80488b1:	0f 85 28 ff ff ff    	jne    0x80487df
 80488b7:	3b 53 04             	cmp    0x4(%ebx),%edx
 80488ba:	0f 85 1f ff ff ff    	jne    0x80487df
 80488c0:	89 8d 78 ef ff ff    	mov    %ecx,-0x1088(%ebp)
 80488c6:	89 95 7c ef ff ff    	mov    %edx,-0x1084(%ebp)
 80488cc:	83 ec 0c             	sub    $0xc,%esp
 80488cf:	6a 10                	push   $0x10
 80488d1:	e8 82 13 00 00       	call   0x8049c58
 80488d6:	89 c7                	mov    %eax,%edi
 80488d8:	89 46 0c             	mov    %eax,0xc(%esi)
 80488db:	8d 85 e8 ef ff ff    	lea    -0x1018(%ebp),%eax
 80488e1:	89 04 24             	mov    %eax,(%esp)
 80488e4:	e8 f3 02 00 00       	call   0x8048bdc
 80488e9:	89 07                	mov    %eax,(%edi)
 80488eb:	8b 95 7c ef ff ff    	mov    -0x1084(%ebp),%edx
 80488f1:	89 57 04             	mov    %edx,0x4(%edi)
 80488f4:	8b 8d 78 ef ff ff    	mov    -0x1088(%ebp),%ecx
 80488fa:	89 4f 08             	mov    %ecx,0x8(%edi)
 80488fd:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%edi)
 8048904:	83 c4 10             	add    $0x10,%esp
 8048907:	89 fe                	mov    %edi,%esi
 8048909:	e9 d1 fe ff ff       	jmp    0x80487df
 804890e:	83 ec 0c             	sub    $0xc,%esp
 8048911:	ff b5 84 ef ff ff    	pushl  -0x107c(%ebp)
 8048917:	e8 38 04 00 00       	call   0x8048d54
 804891c:	83 c4 10             	add    $0x10,%esp
 804891f:	8b 5b 0c             	mov    0xc(%ebx),%ebx
 8048922:	85 db                	test   %ebx,%ebx
 8048924:	0f 85 5a fe ff ff    	jne    0x8048784
 804892a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804892d:	5b                   	pop    %ebx
 804892e:	5e                   	pop    %esi
 804892f:	5f                   	pop    %edi
 8048930:	5d                   	pop    %ebp
 8048931:	c3                   	ret    
 8048932:	66 90                	xchg   %ax,%ax
 8048934:	55                   	push   %ebp
 8048935:	89 e5                	mov    %esp,%ebp
 8048937:	57                   	push   %edi
 8048938:	56                   	push   %esi
 8048939:	53                   	push   %ebx
 804893a:	e8 38 03 00 00       	call   0x8048c77
 804893f:	81 c3 49 97 00 00    	add    $0x9749,%ebx
 8048945:	56                   	push   %esi
 8048946:	8b 83 90 ff ff ff    	mov    -0x70(%ebx),%eax
 804894c:	8b 30                	mov    (%eax),%esi
 804894e:	8b 7e 34             	mov    0x34(%esi),%edi
 8048951:	85 ff                	test   %edi,%edi
 8048953:	75 2a                	jne    0x804897f
 8048955:	65 8b 15 08 00 00 00 	mov    %gs:0x8,%edx
 804895c:	39 56 40             	cmp    %edx,0x40(%esi)
 804895f:	74 1b                	je     0x804897c
 8048961:	89 f8                	mov    %edi,%eax
 8048963:	b9 01 00 00 00       	mov    $0x1,%ecx
 8048968:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804896f:	00 
 8048970:	74 01                	je     0x8048973
 8048972:	f0 0f b1 4e 38       	lock cmpxchg %ecx,0x38(%esi)
 8048977:	75 5a                	jne    0x80489d3
 8048979:	89 56 40             	mov    %edx,0x40(%esi)
 804897c:	ff 46 3c             	incl   0x3c(%esi)
 804897f:	56                   	push   %esi
 8048980:	ff 75 08             	pushl  0x8(%ebp)
 8048983:	e8 84 50 00 00       	call   0x804da0c
 8048988:	89 c2                	mov    %eax,%edx
 804898a:	58                   	pop    %eax
 804898b:	83 fa ff             	cmp    $0xffffffff,%edx
 804898e:	59                   	pop    %ecx
 804898f:	74 17                	je     0x80489a8
 8048991:	42                   	inc    %edx
 8048992:	56                   	push   %esi
 8048993:	89 55 f0             	mov    %edx,-0x10(%ebp)
 8048996:	6a 0a                	push   $0xa
 8048998:	e8 47 01 00 00       	call   0x8048ae4
 804899d:	5a                   	pop    %edx
 804899e:	40                   	inc    %eax
 804899f:	59                   	pop    %ecx
 80489a0:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80489a3:	75 03                	jne    0x80489a8
 80489a5:	83 ca ff             	or     $0xffffffff,%edx
 80489a8:	85 ff                	test   %edi,%edi
 80489aa:	75 1d                	jne    0x80489c9
 80489ac:	ff 4e 3c             	decl   0x3c(%esi)
 80489af:	75 18                	jne    0x80489c9
 80489b1:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
 80489b8:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 80489bf:	00 
 80489c0:	74 01                	je     0x80489c3
 80489c2:	f0 83 6e 38 01       	lock subl $0x1,0x38(%esi)
 80489c7:	75 14                	jne    0x80489dd
 80489c9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80489cc:	89 d0                	mov    %edx,%eax
 80489ce:	5b                   	pop    %ebx
 80489cf:	5e                   	pop    %esi
 80489d0:	5f                   	pop    %edi
 80489d1:	5d                   	pop    %ebp
 80489d2:	c3                   	ret    
 80489d3:	8d 4e 38             	lea    0x38(%esi),%ecx
 80489d6:	e8 a5 2d 00 00       	call   0x804b780
 80489db:	eb 9c                	jmp    0x8048979
 80489dd:	8d 46 38             	lea    0x38(%esi),%eax
 80489e0:	e8 cb 2d 00 00       	call   0x804b7b0
 80489e5:	eb e2                	jmp    0x80489c9
 80489e7:	90                   	nop
 80489e8:	55                   	push   %ebp
 80489e9:	89 e5                	mov    %esp,%ebp
 80489eb:	53                   	push   %ebx
 80489ec:	e8 86 02 00 00       	call   0x8048c77
 80489f1:	81 c3 97 96 00 00    	add    $0x9697,%ebx
 80489f7:	8d 45 0c             	lea    0xc(%ebp),%eax
 80489fa:	50                   	push   %eax
 80489fb:	8b 83 90 ff ff ff    	mov    -0x70(%ebx),%eax
 8048a01:	ff 75 08             	pushl  0x8(%ebp)
 8048a04:	ff 30                	pushl  (%eax)
 8048a06:	e8 e5 3f 00 00       	call   0x804c9f0
 8048a0b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048a0e:	c9                   	leave  
 8048a0f:	c3                   	ret    
 8048a10:	55                   	push   %ebp
 8048a11:	89 e5                	mov    %esp,%ebp
 8048a13:	57                   	push   %edi
 8048a14:	56                   	push   %esi
 8048a15:	53                   	push   %ebx
 8048a16:	e8 5c 02 00 00       	call   0x8048c77
 8048a1b:	81 c3 6d 96 00 00    	add    $0x966d,%ebx
 8048a21:	8b 55 08             	mov    0x8(%ebp),%edx
 8048a24:	8b 83 90 ff ff ff    	mov    -0x70(%ebx),%eax
 8048a2a:	8b 30                	mov    (%eax),%esi
 8048a2c:	83 7e 34 00          	cmpl   $0x0,0x34(%esi)
 8048a30:	74 22                	je     0x8048a54
 8048a32:	8b 46 10             	mov    0x10(%esi),%eax
 8048a35:	3b 46 1c             	cmp    0x1c(%esi),%eax
 8048a38:	73 0d                	jae    0x8048a47
 8048a3a:	8d 48 01             	lea    0x1(%eax),%ecx
 8048a3d:	89 4e 10             	mov    %ecx,0x10(%esi)
 8048a40:	88 10                	mov    %dl,(%eax)
 8048a42:	0f b6 d2             	movzbl %dl,%edx
 8048a45:	eb 7e                	jmp    0x8048ac5
 8048a47:	56                   	push   %esi
 8048a48:	52                   	push   %edx
 8048a49:	e8 96 00 00 00       	call   0x8048ae4
 8048a4e:	59                   	pop    %ecx
 8048a4f:	89 c2                	mov    %eax,%edx
 8048a51:	5e                   	pop    %esi
 8048a52:	eb 71                	jmp    0x8048ac5
 8048a54:	65 8b 3d 08 00 00 00 	mov    %gs:0x8,%edi
 8048a5b:	39 7e 40             	cmp    %edi,0x40(%esi)
 8048a5e:	74 1b                	je     0x8048a7b
 8048a60:	31 c0                	xor    %eax,%eax
 8048a62:	b9 01 00 00 00       	mov    $0x1,%ecx
 8048a67:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8048a6e:	00 
 8048a6f:	74 01                	je     0x8048a72
 8048a71:	f0 0f b1 4e 38       	lock cmpxchg %ecx,0x38(%esi)
 8048a76:	75 57                	jne    0x8048acf
 8048a78:	89 7e 40             	mov    %edi,0x40(%esi)
 8048a7b:	8b 46 10             	mov    0x10(%esi),%eax
 8048a7e:	ff 46 3c             	incl   0x3c(%esi)
 8048a81:	3b 46 1c             	cmp    0x1c(%esi),%eax
 8048a84:	73 0d                	jae    0x8048a93
 8048a86:	8d 48 01             	lea    0x1(%eax),%ecx
 8048a89:	89 4e 10             	mov    %ecx,0x10(%esi)
 8048a8c:	88 10                	mov    %dl,(%eax)
 8048a8e:	0f b6 ca             	movzbl %dl,%ecx
 8048a91:	eb 0b                	jmp    0x8048a9e
 8048a93:	56                   	push   %esi
 8048a94:	52                   	push   %edx
 8048a95:	e8 4a 00 00 00       	call   0x8048ae4
 8048a9a:	89 c1                	mov    %eax,%ecx
 8048a9c:	58                   	pop    %eax
 8048a9d:	5a                   	pop    %edx
 8048a9e:	8b 46 3c             	mov    0x3c(%esi),%eax
 8048aa1:	89 ca                	mov    %ecx,%edx
 8048aa3:	48                   	dec    %eax
 8048aa4:	89 46 3c             	mov    %eax,0x3c(%esi)
 8048aa7:	85 c0                	test   %eax,%eax
 8048aa9:	75 1a                	jne    0x8048ac5
 8048aab:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
 8048ab2:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8048ab9:	00 
 8048aba:	74 01                	je     0x8048abd
 8048abc:	f0 83 6e 38 01       	lock subl $0x1,0x38(%esi)
 8048ac1:	75 16                	jne    0x8048ad9
 8048ac3:	89 ca                	mov    %ecx,%edx
 8048ac5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048ac8:	89 d0                	mov    %edx,%eax
 8048aca:	5b                   	pop    %ebx
 8048acb:	5e                   	pop    %esi
 8048acc:	5f                   	pop    %edi
 8048acd:	5d                   	pop    %ebp
 8048ace:	c3                   	ret    
 8048acf:	8d 4e 38             	lea    0x38(%esi),%ecx
 8048ad2:	e8 a9 2c 00 00       	call   0x804b780
 8048ad7:	eb 9f                	jmp    0x8048a78
 8048ad9:	8d 46 38             	lea    0x38(%esi),%eax
 8048adc:	e8 cf 2c 00 00       	call   0x804b7b0
 8048ae1:	eb e0                	jmp    0x8048ac3
 8048ae3:	90                   	nop
 8048ae4:	55                   	push   %ebp
 8048ae5:	89 e5                	mov    %esp,%ebp
 8048ae7:	56                   	push   %esi
 8048ae8:	56                   	push   %esi
 8048ae9:	8b 75 0c             	mov    0xc(%ebp),%esi
 8048aec:	8b 46 10             	mov    0x10(%esi),%eax
 8048aef:	3b 46 1c             	cmp    0x1c(%esi),%eax
 8048af2:	73 13                	jae    0x8048b07
 8048af4:	8d 50 01             	lea    0x1(%eax),%edx
 8048af7:	8a 4d 08             	mov    0x8(%ebp),%cl
 8048afa:	89 56 10             	mov    %edx,0x10(%esi)
 8048afd:	88 08                	mov    %cl,(%eax)
 8048aff:	0f b6 c1             	movzbl %cl,%eax
 8048b02:	e9 8e 00 00 00       	jmp    0x8048b95
 8048b07:	8b 06                	mov    (%esi),%eax
 8048b09:	66 25 c0 00          	and    $0xc0,%ax
 8048b0d:	66 3d c0 00          	cmp    $0xc0,%ax
 8048b11:	75 08                	jne    0x8048b1b
 8048b13:	83 7e 04 fe          	cmpl   $0xfffffffe,0x4(%esi)
 8048b17:	75 15                	jne    0x8048b2e
 8048b19:	eb 35                	jmp    0x8048b50
 8048b1b:	68 80 00 00 00       	push   $0x80
 8048b20:	56                   	push   %esi
 8048b21:	e8 66 5d 00 00       	call   0x804e88c
 8048b26:	5a                   	pop    %edx
 8048b27:	85 c0                	test   %eax,%eax
 8048b29:	59                   	pop    %ecx
 8048b2a:	74 e7                	je     0x8048b13
 8048b2c:	eb 64                	jmp    0x8048b92
 8048b2e:	8b 46 0c             	mov    0xc(%esi),%eax
 8048b31:	39 46 08             	cmp    %eax,0x8(%esi)
 8048b34:	74 43                	je     0x8048b79
 8048b36:	39 46 10             	cmp    %eax,0x10(%esi)
 8048b39:	74 1b                	je     0x8048b56
 8048b3b:	8b 46 10             	mov    0x10(%esi),%eax
 8048b3e:	8a 4d 08             	mov    0x8(%ebp),%cl
 8048b41:	8d 50 01             	lea    0x1(%eax),%edx
 8048b44:	89 56 10             	mov    %edx,0x10(%esi)
 8048b47:	88 08                	mov    %cl,(%eax)
 8048b49:	66 f7 06 00 01       	testw  $0x100,(%esi)
 8048b4e:	75 13                	jne    0x8048b63
 8048b50:	0f b6 45 08          	movzbl 0x8(%ebp),%eax
 8048b54:	eb 3f                	jmp    0x8048b95
 8048b56:	56                   	push   %esi
 8048b57:	e8 b0 0a 00 00       	call   0x804960c
 8048b5c:	59                   	pop    %ecx
 8048b5d:	85 c0                	test   %eax,%eax
 8048b5f:	74 da                	je     0x8048b3b
 8048b61:	eb 2f                	jmp    0x8048b92
 8048b63:	80 7d 08 0a          	cmpb   $0xa,0x8(%ebp)
 8048b67:	75 e7                	jne    0x8048b50
 8048b69:	56                   	push   %esi
 8048b6a:	e8 9d 0a 00 00       	call   0x804960c
 8048b6f:	5a                   	pop    %edx
 8048b70:	85 c0                	test   %eax,%eax
 8048b72:	74 dc                	je     0x8048b50
 8048b74:	ff 4e 10             	decl   0x10(%esi)
 8048b77:	eb 19                	jmp    0x8048b92
 8048b79:	8a 45 08             	mov    0x8(%ebp),%al
 8048b7c:	6a 01                	push   $0x1
 8048b7e:	88 45 fb             	mov    %al,-0x5(%ebp)
 8048b81:	8d 45 fb             	lea    -0x5(%ebp),%eax
 8048b84:	50                   	push   %eax
 8048b85:	56                   	push   %esi
 8048b86:	e8 f1 3c 00 00       	call   0x804c87c
 8048b8b:	83 c4 0c             	add    $0xc,%esp
 8048b8e:	85 c0                	test   %eax,%eax
 8048b90:	75 be                	jne    0x8048b50
 8048b92:	83 c8 ff             	or     $0xffffffff,%eax
 8048b95:	8b 75 fc             	mov    -0x4(%ebp),%esi
 8048b98:	c9                   	leave  
 8048b99:	c3                   	ret    
 8048b9a:	66 90                	xchg   %ax,%ax
 8048b9c:	55                   	push   %ebp
 8048b9d:	89 e5                	mov    %esp,%ebp
 8048b9f:	57                   	push   %edi
 8048ba0:	56                   	push   %esi
 8048ba1:	8b 55 08             	mov    0x8(%ebp),%edx
 8048ba4:	8b 75 0c             	mov    0xc(%ebp),%esi
 8048ba7:	89 d7                	mov    %edx,%edi
 8048ba9:	ac                   	lods   %ds:(%esi),%al
 8048baa:	aa                   	stos   %al,%es:(%edi)
 8048bab:	84 c0                	test   %al,%al
 8048bad:	75 fa                	jne    0x8048ba9
 8048baf:	5e                   	pop    %esi
 8048bb0:	89 d0                	mov    %edx,%eax
 8048bb2:	5f                   	pop    %edi
 8048bb3:	5d                   	pop    %ebp
 8048bb4:	c3                   	ret    
 8048bb5:	66 90                	xchg   %ax,%ax
 8048bb7:	90                   	nop
 8048bb8:	55                   	push   %ebp
 8048bb9:	31 c0                	xor    %eax,%eax
 8048bbb:	89 e5                	mov    %esp,%ebp
 8048bbd:	83 c9 ff             	or     $0xffffffff,%ecx
 8048bc0:	57                   	push   %edi
 8048bc1:	56                   	push   %esi
 8048bc2:	8b 55 08             	mov    0x8(%ebp),%edx
 8048bc5:	8b 75 0c             	mov    0xc(%ebp),%esi
 8048bc8:	89 d7                	mov    %edx,%edi
 8048bca:	f2 ae                	repnz scas %es:(%edi),%al
 8048bcc:	4f                   	dec    %edi
 8048bcd:	ac                   	lods   %ds:(%esi),%al
 8048bce:	aa                   	stos   %al,%es:(%edi)
 8048bcf:	84 c0                	test   %al,%al
 8048bd1:	75 fa                	jne    0x8048bcd
 8048bd3:	5e                   	pop    %esi
 8048bd4:	89 d0                	mov    %edx,%eax
 8048bd6:	5f                   	pop    %edi
 8048bd7:	5d                   	pop    %ebp
 8048bd8:	c3                   	ret    
 8048bd9:	66 90                	xchg   %ax,%ax
 8048bdb:	90                   	nop
 8048bdc:	55                   	push   %ebp
 8048bdd:	89 e5                	mov    %esp,%ebp
 8048bdf:	57                   	push   %edi
 8048be0:	56                   	push   %esi
 8048be1:	53                   	push   %ebx
 8048be2:	ff 75 08             	pushl  0x8(%ebp)
 8048be5:	e8 8d 00 00 00       	call   0x8048c77
 8048bea:	81 c3 9e 94 00 00    	add    $0x949e,%ebx
 8048bf0:	e8 cb 4f 00 00       	call   0x804dbc0
 8048bf5:	8d 78 01             	lea    0x1(%eax),%edi
 8048bf8:	89 3c 24             	mov    %edi,(%esp)
 8048bfb:	e8 58 10 00 00       	call   0x8049c58
 8048c00:	89 c6                	mov    %eax,%esi
 8048c02:	58                   	pop    %eax
 8048c03:	85 f6                	test   %esi,%esi
 8048c05:	74 0d                	je     0x8048c14
 8048c07:	57                   	push   %edi
 8048c08:	ff 75 08             	pushl  0x8(%ebp)
 8048c0b:	56                   	push   %esi
 8048c0c:	e8 2f 4f 00 00       	call   0x804db40
 8048c11:	83 c4 0c             	add    $0xc,%esp
 8048c14:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048c17:	89 f0                	mov    %esi,%eax
 8048c19:	5b                   	pop    %ebx
 8048c1a:	5e                   	pop    %esi
 8048c1b:	5f                   	pop    %edi
 8048c1c:	5d                   	pop    %ebp
 8048c1d:	c3                   	ret    
 8048c1e:	66 90                	xchg   %ax,%ax
 8048c20:	55                   	push   %ebp
 8048c21:	89 e5                	mov    %esp,%ebp
 8048c23:	53                   	push   %ebx
 8048c24:	83 ec 64             	sub    $0x64,%esp
 8048c27:	e8 4b 00 00 00       	call   0x8048c77
 8048c2c:	81 c3 5c 94 00 00    	add    $0x945c,%ebx
 8048c32:	8d 4d 9c             	lea    -0x64(%ebp),%ecx
 8048c35:	8b 55 08             	mov    0x8(%ebp),%edx
 8048c38:	87 d3                	xchg   %edx,%ebx
 8048c3a:	b8 c4 00 00 00       	mov    $0xc4,%eax
 8048c3f:	cd 80                	int    $0x80
 8048c41:	87 d3                	xchg   %edx,%ebx
 8048c43:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 8048c48:	76 10                	jbe    0x8048c5a
 8048c4a:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 8048c50:	f7 d8                	neg    %eax
 8048c52:	65 89 02             	mov    %eax,%gs:(%edx)
 8048c55:	83 c8 ff             	or     $0xffffffff,%eax
 8048c58:	eb 18                	jmp    0x8048c72
 8048c5a:	85 c0                	test   %eax,%eax
 8048c5c:	75 14                	jne    0x8048c72
 8048c5e:	ff 75 0c             	pushl  0xc(%ebp)
 8048c61:	8d 55 9c             	lea    -0x64(%ebp),%edx
 8048c64:	89 45 98             	mov    %eax,-0x68(%ebp)
 8048c67:	52                   	push   %edx
 8048c68:	e8 0e 33 00 00       	call   0x804bf7b
 8048c6d:	58                   	pop    %eax
 8048c6e:	8b 45 98             	mov    -0x68(%ebp),%eax
 8048c71:	5a                   	pop    %edx
 8048c72:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048c75:	c9                   	leave  
 8048c76:	c3                   	ret    
 8048c77:	8b 1c 24             	mov    (%esp),%ebx
 8048c7a:	c3                   	ret    
 8048c7b:	90                   	nop
 8048c7c:	b8 23 01 00 00       	mov    $0x123,%eax
 8048c81:	cd 80                	int    $0x80
 8048c83:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 8048c88:	76 1d                	jbe    0x8048ca7
 8048c8a:	e8 bf 00 00 00       	call   0x8048d4e
 8048c8f:	81 c1 f9 93 00 00    	add    $0x93f9,%ecx
 8048c95:	f7 d8                	neg    %eax
 8048c97:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 8048c9d:	55                   	push   %ebp
 8048c9e:	89 e5                	mov    %esp,%ebp
 8048ca0:	65 89 02             	mov    %eax,%gs:(%edx)
 8048ca3:	83 c8 ff             	or     $0xffffffff,%eax
 8048ca6:	5d                   	pop    %ebp
 8048ca7:	c3                   	ret    
 8048ca8:	55                   	push   %ebp
 8048ca9:	e8 a0 00 00 00       	call   0x8048d4e
 8048cae:	81 c1 da 93 00 00    	add    $0x93da,%ecx
 8048cb4:	89 e5                	mov    %esp,%ebp
 8048cb6:	8b 55 08             	mov    0x8(%ebp),%edx
 8048cb9:	87 d3                	xchg   %edx,%ebx
 8048cbb:	b8 4c 01 00 00       	mov    $0x14c,%eax
 8048cc0:	cd 80                	int    $0x80
 8048cc2:	87 d3                	xchg   %edx,%ebx
 8048cc4:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 8048cc9:	76 0e                	jbe    0x8048cd9
 8048ccb:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 8048cd1:	f7 d8                	neg    %eax
 8048cd3:	65 89 02             	mov    %eax,%gs:(%edx)
 8048cd6:	83 c8 ff             	or     $0xffffffff,%eax
 8048cd9:	5d                   	pop    %ebp
 8048cda:	c3                   	ret    
 8048cdb:	55                   	push   %ebp
 8048cdc:	89 e5                	mov    %esp,%ebp
 8048cde:	53                   	push   %ebx
 8048cdf:	e8 93 ff ff ff       	call   0x8048c77
 8048ce4:	81 c3 a4 93 00 00    	add    $0x93a4,%ebx
 8048cea:	8b 55 10             	mov    0x10(%ebp),%edx
 8048ced:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8048cf0:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cf3:	53                   	push   %ebx
 8048cf4:	89 c3                	mov    %eax,%ebx
 8048cf6:	b8 24 01 00 00       	mov    $0x124,%eax
 8048cfb:	cd 80                	int    $0x80
 8048cfd:	5b                   	pop    %ebx
 8048cfe:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 8048d03:	76 0e                	jbe    0x8048d13
 8048d05:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 8048d0b:	f7 d8                	neg    %eax
 8048d0d:	65 89 02             	mov    %eax,%gs:(%edx)
 8048d10:	83 c8 ff             	or     $0xffffffff,%eax
 8048d13:	5b                   	pop    %ebx
 8048d14:	5d                   	pop    %ebp
 8048d15:	c3                   	ret    
 8048d16:	55                   	push   %ebp
 8048d17:	89 e5                	mov    %esp,%ebp
 8048d19:	53                   	push   %ebx
 8048d1a:	e8 58 ff ff ff       	call   0x8048c77
 8048d1f:	81 c3 69 93 00 00    	add    $0x9369,%ebx
 8048d25:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8048d28:	8b 55 08             	mov    0x8(%ebp),%edx
 8048d2b:	87 d3                	xchg   %edx,%ebx
 8048d2d:	b8 25 01 00 00       	mov    $0x125,%eax
 8048d32:	cd 80                	int    $0x80
 8048d34:	87 d3                	xchg   %edx,%ebx
 8048d36:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 8048d3b:	76 0e                	jbe    0x8048d4b
 8048d3d:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 8048d43:	f7 d8                	neg    %eax
 8048d45:	65 89 02             	mov    %eax,%gs:(%edx)
 8048d48:	83 c8 ff             	or     $0xffffffff,%eax
 8048d4b:	5b                   	pop    %ebx
 8048d4c:	5d                   	pop    %ebp
 8048d4d:	c3                   	ret    
 8048d4e:	8b 0c 24             	mov    (%esp),%ecx
 8048d51:	c3                   	ret    
 8048d52:	66 90                	xchg   %ax,%ax
 8048d54:	55                   	push   %ebp
 8048d55:	89 e5                	mov    %esp,%ebp
 8048d57:	57                   	push   %edi
 8048d58:	56                   	push   %esi
 8048d59:	53                   	push   %ebx
 8048d5a:	83 ec 14             	sub    $0x14,%esp
 8048d5d:	e8 15 ff ff ff       	call   0x8048c77
 8048d62:	81 c3 26 93 00 00    	add    $0x9326,%ebx
 8048d68:	8b 75 08             	mov    0x8(%ebp),%esi
 8048d6b:	8b 06                	mov    (%esi),%eax
 8048d6d:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048d70:	75 0f                	jne    0x8048d81
 8048d72:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 8048d78:	65 c7 02 09 00 00 00 	movl   $0x9,%gs:(%edx)
 8048d7f:	eb 66                	jmp    0x8048de7
 8048d81:	8d 46 18             	lea    0x18(%esi),%eax
 8048d84:	8d 7d e4             	lea    -0x1c(%ebp),%edi
 8048d87:	50                   	push   %eax
 8048d88:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8048d8b:	ff b3 b4 ff ff ff    	pushl  -0x4c(%ebx)
 8048d91:	57                   	push   %edi
 8048d92:	e8 05 2d 00 00       	call   0x804ba9c
 8048d97:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048d9a:	50                   	push   %eax
 8048d9b:	e8 ee 2c 00 00       	call   0x804ba8e
 8048da0:	8b 16                	mov    (%esi),%edx
 8048da2:	c7 06 ff ff ff ff    	movl   $0xffffffff,(%esi)
 8048da8:	6a 01                	push   $0x1
 8048daa:	57                   	push   %edi
 8048dab:	89 55 e0             	mov    %edx,-0x20(%ebp)
 8048dae:	e8 fc 2c 00 00       	call   0x804baaf
 8048db3:	ff 76 0c             	pushl  0xc(%esi)
 8048db6:	e8 96 19 00 00       	call   0x804a751
 8048dbb:	56                   	push   %esi
 8048dbc:	e8 90 19 00 00       	call   0x804a751
 8048dc1:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8048dc4:	87 d3                	xchg   %edx,%ebx
 8048dc6:	b8 06 00 00 00       	mov    $0x6,%eax
 8048dcb:	cd 80                	int    $0x80
 8048dcd:	87 d3                	xchg   %edx,%ebx
 8048dcf:	83 c4 20             	add    $0x20,%esp
 8048dd2:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 8048dd7:	76 0e                	jbe    0x8048de7
 8048dd9:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 8048ddf:	f7 d8                	neg    %eax
 8048de1:	65 89 02             	mov    %eax,%gs:(%edx)
 8048de4:	83 c8 ff             	or     $0xffffffff,%eax
 8048de7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048dea:	5b                   	pop    %ebx
 8048deb:	5e                   	pop    %esi
 8048dec:	5f                   	pop    %edi
 8048ded:	5d                   	pop    %ebp
 8048dee:	c3                   	ret    
 8048def:	90                   	nop
 8048df0:	55                   	push   %ebp
 8048df1:	89 e5                	mov    %esp,%ebp
 8048df3:	57                   	push   %edi
 8048df4:	89 d7                	mov    %edx,%edi
 8048df6:	56                   	push   %esi
 8048df7:	53                   	push   %ebx
 8048df8:	e8 7a fe ff ff       	call   0x8048c77
 8048dfd:	81 c3 8b 92 00 00    	add    $0x928b,%ebx
 8048e03:	56                   	push   %esi
 8048e04:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048e07:	6a 30                	push   $0x30
 8048e09:	e8 4a 0e 00 00       	call   0x8049c58
 8048e0e:	89 c6                	mov    %eax,%esi
 8048e10:	58                   	pop    %eax
 8048e11:	85 f6                	test   %esi,%esi
 8048e13:	74 78                	je     0x8048e8d
 8048e15:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 8048e18:	c7 46 10 00 00 00 00 	movl   $0x0,0x10(%esi)
 8048e1f:	89 0e                	mov    %ecx,(%esi)
 8048e21:	c7 46 08 00 00 00 00 	movl   $0x0,0x8(%esi)
 8048e28:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
 8048e2f:	81 ff ff 01 00 00    	cmp    $0x1ff,%edi
 8048e35:	76 05                	jbe    0x8048e3c
 8048e37:	89 7e 14             	mov    %edi,0x14(%esi)
 8048e3a:	eb 07                	jmp    0x8048e43
 8048e3c:	c7 46 14 00 02 00 00 	movl   $0x200,0x14(%esi)
 8048e43:	ff 76 14             	pushl  0x14(%esi)
 8048e46:	6a 01                	push   $0x1
 8048e48:	e8 c7 15 00 00       	call   0x804a414
 8048e4d:	5a                   	pop    %edx
 8048e4e:	89 46 0c             	mov    %eax,0xc(%esi)
 8048e51:	59                   	pop    %ecx
 8048e52:	85 c0                	test   %eax,%eax
 8048e54:	75 09                	jne    0x8048e5f
 8048e56:	56                   	push   %esi
 8048e57:	e8 f5 18 00 00       	call   0x804a751
 8048e5c:	58                   	pop    %eax
 8048e5d:	eb 2e                	jmp    0x8048e8d
 8048e5f:	c7 46 18 00 00 00 00 	movl   $0x0,0x18(%esi)
 8048e66:	c7 46 1c 00 00 00 00 	movl   $0x0,0x1c(%esi)
 8048e6d:	c7 46 20 00 00 00 00 	movl   $0x0,0x20(%esi)
 8048e74:	c7 46 24 01 00 00 00 	movl   $0x1,0x24(%esi)
 8048e7b:	c7 46 28 00 00 00 00 	movl   $0x0,0x28(%esi)
 8048e82:	c7 46 2c 00 00 00 00 	movl   $0x0,0x2c(%esi)
 8048e89:	89 f0                	mov    %esi,%eax
 8048e8b:	eb 02                	jmp    0x8048e8f
 8048e8d:	31 c0                	xor    %eax,%eax
 8048e8f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048e92:	5b                   	pop    %ebx
 8048e93:	5e                   	pop    %esi
 8048e94:	5f                   	pop    %edi
 8048e95:	5d                   	pop    %ebp
 8048e96:	c3                   	ret    
 8048e97:	55                   	push   %ebp
 8048e98:	89 e5                	mov    %esp,%ebp
 8048e9a:	56                   	push   %esi
 8048e9b:	53                   	push   %ebx
 8048e9c:	e8 d6 fd ff ff       	call   0x8048c77
 8048ea1:	81 c3 e7 91 00 00    	add    $0x91e7,%ebx
 8048ea7:	83 ec 58             	sub    $0x58,%esp
 8048eaa:	8d 45 a0             	lea    -0x60(%ebp),%eax
 8048ead:	8b 75 08             	mov    0x8(%ebp),%esi
 8048eb0:	50                   	push   %eax
 8048eb1:	56                   	push   %esi
 8048eb2:	e8 41 32 00 00       	call   0x804c0f8
 8048eb7:	5a                   	pop    %edx
 8048eb8:	85 c0                	test   %eax,%eax
 8048eba:	59                   	pop    %ecx
 8048ebb:	75 40                	jne    0x8048efd
 8048ebd:	8b 45 b0             	mov    -0x50(%ebp),%eax
 8048ec0:	25 00 f0 00 00       	and    $0xf000,%eax
 8048ec5:	3d 00 40 00 00       	cmp    $0x4000,%eax
 8048eca:	74 0f                	je     0x8048edb
 8048ecc:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 8048ed2:	65 c7 00 14 00 00 00 	movl   $0x14,%gs:(%eax)
 8048ed9:	eb 22                	jmp    0x8048efd
 8048edb:	6a 03                	push   $0x3
 8048edd:	56                   	push   %esi
 8048ede:	e8 0b 34 00 00       	call   0x804c2ee
 8048ee3:	5a                   	pop    %edx
 8048ee4:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048ee7:	59                   	pop    %ecx
 8048ee8:	74 13                	je     0x8048efd
 8048eea:	83 e0 03             	and    $0x3,%eax
 8048eed:	48                   	dec    %eax
 8048eee:	75 11                	jne    0x8048f01
 8048ef0:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 8048ef6:	65 c7 00 16 00 00 00 	movl   $0x16,%gs:(%eax)
 8048efd:	31 c0                	xor    %eax,%eax
 8048eff:	eb 0a                	jmp    0x8048f0b
 8048f01:	8b 55 d0             	mov    -0x30(%ebp),%edx
 8048f04:	89 f0                	mov    %esi,%eax
 8048f06:	e8 e5 fe ff ff       	call   0x8048df0
 8048f0b:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048f0e:	5b                   	pop    %ebx
 8048f0f:	5e                   	pop    %esi
 8048f10:	5d                   	pop    %ebp
 8048f11:	c3                   	ret    
 8048f12:	55                   	push   %ebp
 8048f13:	b9 00 08 09 00       	mov    $0x90800,%ecx
 8048f18:	89 e5                	mov    %esp,%ebp
 8048f1a:	56                   	push   %esi
 8048f1b:	53                   	push   %ebx
 8048f1c:	e8 56 fd ff ff       	call   0x8048c77
 8048f21:	81 c3 67 91 00 00    	add    $0x9167,%ebx
 8048f27:	83 ec 58             	sub    $0x58,%esp
 8048f2a:	8b 55 08             	mov    0x8(%ebp),%edx
 8048f2d:	87 d3                	xchg   %edx,%ebx
 8048f2f:	b8 05 00 00 00       	mov    $0x5,%eax
 8048f34:	cd 80                	int    $0x80
 8048f36:	87 d3                	xchg   %edx,%ebx
 8048f38:	89 c6                	mov    %eax,%esi
 8048f3a:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 8048f3f:	76 0d                	jbe    0x8048f4e
 8048f41:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 8048f47:	f7 de                	neg    %esi
 8048f49:	65 89 30             	mov    %esi,%gs:(%eax)
 8048f4c:	eb 4b                	jmp    0x8048f99
 8048f4e:	85 c0                	test   %eax,%eax
 8048f50:	78 47                	js     0x8048f99
 8048f52:	8d 45 a0             	lea    -0x60(%ebp),%eax
 8048f55:	50                   	push   %eax
 8048f56:	56                   	push   %esi
 8048f57:	e8 9c 31 00 00       	call   0x804c0f8
 8048f5c:	5a                   	pop    %edx
 8048f5d:	85 c0                	test   %eax,%eax
 8048f5f:	59                   	pop    %ecx
 8048f60:	79 0f                	jns    0x8048f71
 8048f62:	89 f1                	mov    %esi,%ecx
 8048f64:	87 cb                	xchg   %ecx,%ebx
 8048f66:	b8 06 00 00 00       	mov    $0x6,%eax
 8048f6b:	cd 80                	int    $0x80
 8048f6d:	87 cb                	xchg   %ecx,%ebx
 8048f6f:	eb 28                	jmp    0x8048f99
 8048f71:	8b 55 d0             	mov    -0x30(%ebp),%edx
 8048f74:	89 f0                	mov    %esi,%eax
 8048f76:	e8 75 fe ff ff       	call   0x8048df0
 8048f7b:	85 c0                	test   %eax,%eax
 8048f7d:	75 1c                	jne    0x8048f9b
 8048f7f:	89 f1                	mov    %esi,%ecx
 8048f81:	87 cb                	xchg   %ecx,%ebx
 8048f83:	b8 06 00 00 00       	mov    $0x6,%eax
 8048f88:	cd 80                	int    $0x80
 8048f8a:	87 cb                	xchg   %ecx,%ebx
 8048f8c:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 8048f92:	65 c7 00 0c 00 00 00 	movl   $0xc,%gs:(%eax)
 8048f99:	31 c0                	xor    %eax,%eax
 8048f9b:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048f9e:	5b                   	pop    %ebx
 8048f9f:	5e                   	pop    %esi
 8048fa0:	5d                   	pop    %ebp
 8048fa1:	c3                   	ret    
 8048fa2:	66 90                	xchg   %ax,%ax
 8048fa4:	55                   	push   %ebp
 8048fa5:	89 e5                	mov    %esp,%ebp
 8048fa7:	57                   	push   %edi
 8048fa8:	56                   	push   %esi
 8048fa9:	53                   	push   %ebx
 8048faa:	83 ec 14             	sub    $0x14,%esp
 8048fad:	e8 c5 fc ff ff       	call   0x8048c77
 8048fb2:	81 c3 d6 90 00 00    	add    $0x90d6,%ebx
 8048fb8:	8b 75 08             	mov    0x8(%ebp),%esi
 8048fbb:	8d 7d e4             	lea    -0x1c(%ebp),%edi
 8048fbe:	8d 46 18             	lea    0x18(%esi),%eax
 8048fc1:	50                   	push   %eax
 8048fc2:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8048fc5:	ff b3 b4 ff ff ff    	pushl  -0x4c(%ebx)
 8048fcb:	57                   	push   %edi
 8048fcc:	e8 cb 2a 00 00       	call   0x804ba9c
 8048fd1:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048fd4:	50                   	push   %eax
 8048fd5:	e8 b4 2a 00 00       	call   0x804ba8e
 8048fda:	83 c4 10             	add    $0x10,%esp
 8048fdd:	8b 46 04             	mov    0x4(%esi),%eax
 8048fe0:	39 46 08             	cmp    %eax,0x8(%esi)
 8048fe3:	77 1e                	ja     0x8049003
 8048fe5:	ff 76 14             	pushl  0x14(%esi)
 8048fe8:	ff 76 0c             	pushl  0xc(%esi)
 8048feb:	ff 36                	pushl  (%esi)
 8048fed:	e8 1e 2e 00 00       	call   0x804be10
 8048ff2:	83 c4 0c             	add    $0xc,%esp
 8048ff5:	85 c0                	test   %eax,%eax
 8048ff7:	7e 28                	jle    0x8049021
 8048ff9:	89 46 08             	mov    %eax,0x8(%esi)
 8048ffc:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
 8049003:	8b 56 04             	mov    0x4(%esi),%edx
 8049006:	8b 46 0c             	mov    0xc(%esi),%eax
 8049009:	01 d0                	add    %edx,%eax
 804900b:	0f b7 48 08          	movzwl 0x8(%eax),%ecx
 804900f:	01 ca                	add    %ecx,%edx
 8049011:	83 38 00             	cmpl   $0x0,(%eax)
 8049014:	89 56 04             	mov    %edx,0x4(%esi)
 8049017:	8b 50 04             	mov    0x4(%eax),%edx
 804901a:	89 56 10             	mov    %edx,0x10(%esi)
 804901d:	74 be                	je     0x8048fdd
 804901f:	eb 02                	jmp    0x8049023
 8049021:	31 c0                	xor    %eax,%eax
 8049023:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8049026:	6a 01                	push   $0x1
 8049028:	57                   	push   %edi
 8049029:	e8 81 2a 00 00       	call   0x804baaf
 804902e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049031:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8049034:	5b                   	pop    %ebx
 8049035:	5e                   	pop    %esi
 8049036:	5f                   	pop    %edi
 8049037:	5d                   	pop    %ebp
 8049038:	c3                   	ret    
 8049039:	66 90                	xchg   %ax,%ax
 804903b:	90                   	nop
 804903c:	e8 0d fd ff ff       	call   0x8048d4e
 8049041:	81 c1 47 90 00 00    	add    $0x9047,%ecx
 8049047:	55                   	push   %ebp
 8049048:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804904e:	89 e5                	mov    %esp,%ebp
 8049050:	65 03 05 00 00 00 00 	add    %gs:0x0,%eax
 8049057:	5d                   	pop    %ebp
 8049058:	c3                   	ret    
 8049059:	66 90                	xchg   %ax,%ax
 804905b:	90                   	nop
 804905c:	55                   	push   %ebp
 804905d:	89 e5                	mov    %esp,%ebp
 804905f:	57                   	push   %edi
 8049060:	56                   	push   %esi
 8049061:	53                   	push   %ebx
 8049062:	83 ec 08             	sub    $0x8,%esp
 8049065:	e8 0d fc ff ff       	call   0x8048c77
 804906a:	81 c3 1e 90 00 00    	add    $0x901e,%ebx
 8049070:	8b 75 08             	mov    0x8(%ebp),%esi
 8049073:	8b 46 34             	mov    0x34(%esi),%eax
 8049076:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049079:	85 c0                	test   %eax,%eax
 804907b:	75 2c                	jne    0x80490a9
 804907d:	65 8b 15 08 00 00 00 	mov    %gs:0x8,%edx
 8049084:	39 56 40             	cmp    %edx,0x40(%esi)
 8049087:	74 1d                	je     0x80490a6
 8049089:	b9 01 00 00 00       	mov    $0x1,%ecx
 804908e:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8049095:	00 
 8049096:	74 01                	je     0x8049099
 8049098:	f0 0f b1 4e 38       	lock cmpxchg %ecx,0x38(%esi)
 804909d:	0f 85 32 01 00 00    	jne    0x80491d5
 80490a3:	89 56 40             	mov    %edx,0x40(%esi)
 80490a6:	ff 46 3c             	incl   0x3c(%esi)
 80490a9:	31 ff                	xor    %edi,%edi
 80490ab:	f6 06 40             	testb  $0x40,(%esi)
 80490ae:	74 09                	je     0x80490b9
 80490b0:	56                   	push   %esi
 80490b1:	e8 d8 06 00 00       	call   0x804978e
 80490b6:	59                   	pop    %ecx
 80490b7:	89 c7                	mov    %eax,%edi
 80490b9:	ff 76 04             	pushl  0x4(%esi)
 80490bc:	e8 7f 27 00 00       	call   0x804b840
 80490c1:	5a                   	pop    %edx
 80490c2:	85 c0                	test   %eax,%eax
 80490c4:	79 03                	jns    0x80490c9
 80490c6:	83 cf ff             	or     $0xffffffff,%edi
 80490c9:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 80490cf:	c7 46 04 ff ff ff ff 	movl   $0xffffffff,0x4(%esi)
 80490d6:	65 a1 08 00 00 00    	mov    %gs:0x8,%eax
 80490dc:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80490df:	39 42 08             	cmp    %eax,0x8(%edx)
 80490e2:	74 21                	je     0x8049105
 80490e4:	31 c0                	xor    %eax,%eax
 80490e6:	b9 01 00 00 00       	mov    $0x1,%ecx
 80490eb:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 80490f2:	00 
 80490f3:	74 01                	je     0x80490f6
 80490f5:	f0 0f b1 0a          	lock cmpxchg %ecx,(%edx)
 80490f9:	0f 85 e3 00 00 00    	jne    0x80491e2
 80490ff:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049102:	89 42 08             	mov    %eax,0x8(%edx)
 8049105:	8b 83 8c ff ff ff    	mov    -0x74(%ebx),%eax
 804910b:	8b 08                	mov    (%eax),%ecx
 804910d:	41                   	inc    %ecx
 804910e:	89 08                	mov    %ecx,(%eax)
 8049110:	83 7a 04 00          	cmpl   $0x0,0x4(%edx)
 8049114:	75 1b                	jne    0x8049131
 8049116:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 804911d:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8049124:	00 
 8049125:	74 01                	je     0x8049128
 8049127:	f0 83 2a 01          	lock subl $0x1,(%edx)
 804912b:	0f 85 bd 00 00 00    	jne    0x80491ee
 8049131:	8b 06                	mov    (%esi),%eax
 8049133:	66 25 00 60          	and    $0x6000,%ax
 8049137:	83 c8 30             	or     $0x30,%eax
 804913a:	66 89 06             	mov    %ax,(%esi)
 804913d:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049141:	75 21                	jne    0x8049164
 8049143:	ff 4e 3c             	decl   0x3c(%esi)
 8049146:	75 1c                	jne    0x8049164
 8049148:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
 804914f:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8049156:	00 
 8049157:	74 01                	je     0x804915a
 8049159:	f0 83 6e 38 01       	lock subl $0x1,0x38(%esi)
 804915e:	0f 85 96 00 00 00    	jne    0x80491fa
 8049164:	66 f7 06 00 40       	testw  $0x4000,(%esi)
 8049169:	74 09                	je     0x8049174
 804916b:	ff 76 08             	pushl  0x8(%esi)
 804916e:	e8 de 15 00 00       	call   0x804a751
 8049173:	58                   	pop    %eax
 8049174:	65 8b 35 08 00 00 00 	mov    %gs:0x8,%esi
 804917b:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 8049181:	39 72 08             	cmp    %esi,0x8(%edx)
 8049184:	74 1a                	je     0x80491a0
 8049186:	31 c0                	xor    %eax,%eax
 8049188:	b9 01 00 00 00       	mov    $0x1,%ecx
 804918d:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8049194:	00 
 8049195:	74 01                	je     0x8049198
 8049197:	f0 0f b1 0a          	lock cmpxchg %ecx,(%edx)
 804919b:	75 6a                	jne    0x8049207
 804919d:	89 72 08             	mov    %esi,0x8(%edx)
 80491a0:	8b 83 c0 ff ff ff    	mov    -0x40(%ebx),%eax
 80491a6:	8b 4a 04             	mov    0x4(%edx),%ecx
 80491a9:	ff 00                	incl   (%eax)
 80491ab:	85 c9                	test   %ecx,%ecx
 80491ad:	75 17                	jne    0x80491c6
 80491af:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 80491b6:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 80491bd:	00 
 80491be:	74 01                	je     0x80491c1
 80491c0:	f0 83 2a 01          	lock subl $0x1,(%edx)
 80491c4:	75 4a                	jne    0x8049210
 80491c6:	e8 6d 04 00 00       	call   0x8049638
 80491cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80491ce:	89 f8                	mov    %edi,%eax
 80491d0:	5b                   	pop    %ebx
 80491d1:	5e                   	pop    %esi
 80491d2:	5f                   	pop    %edi
 80491d3:	5d                   	pop    %ebp
 80491d4:	c3                   	ret    
 80491d5:	8d 4e 38             	lea    0x38(%esi),%ecx
 80491d8:	e8 a3 25 00 00       	call   0x804b780
 80491dd:	e9 c1 fe ff ff       	jmp    0x80490a3
 80491e2:	8d 0a                	lea    (%edx),%ecx
 80491e4:	e8 97 25 00 00       	call   0x804b780
 80491e9:	e9 11 ff ff ff       	jmp    0x80490ff
 80491ee:	8d 02                	lea    (%edx),%eax
 80491f0:	e8 bb 25 00 00       	call   0x804b7b0
 80491f5:	e9 37 ff ff ff       	jmp    0x8049131
 80491fa:	8d 46 38             	lea    0x38(%esi),%eax
 80491fd:	e8 ae 25 00 00       	call   0x804b7b0
 8049202:	e9 5d ff ff ff       	jmp    0x8049164
 8049207:	8d 0a                	lea    (%edx),%ecx
 8049209:	e8 72 25 00 00       	call   0x804b780
 804920e:	eb 8d                	jmp    0x804919d
 8049210:	8d 02                	lea    (%edx),%eax
 8049212:	e8 99 25 00 00       	call   0x804b7b0
 8049217:	eb ad                	jmp    0x80491c6
 8049219:	66 90                	xchg   %ax,%ax
 804921b:	90                   	nop
 804921c:	55                   	push   %ebp
 804921d:	89 e5                	mov    %esp,%ebp
 804921f:	6a ff                	push   $0xffffffff
 8049221:	6a 00                	push   $0x0
 8049223:	ff 75 0c             	pushl  0xc(%ebp)
 8049226:	ff 75 08             	pushl  0x8(%ebp)
 8049229:	e8 02 00 00 00       	call   0x8049230
 804922e:	c9                   	leave  
 804922f:	c3                   	ret    
 8049230:	55                   	push   %ebp
 8049231:	89 e5                	mov    %esp,%ebp
 8049233:	57                   	push   %edi
 8049234:	56                   	push   %esi
 8049235:	53                   	push   %ebx
 8049236:	50                   	push   %eax
 8049237:	e8 3b fa ff ff       	call   0x8048c77
 804923c:	81 c3 4c 8e 00 00    	add    $0x8e4c,%ebx
 8049242:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8049245:	8b 75 10             	mov    0x10(%ebp),%esi
 8049248:	8b 55 14             	mov    0x14(%ebp),%edx
 804924b:	8a 01                	mov    (%ecx),%al
 804924d:	3c 72                	cmp    $0x72,%al
 804924f:	74 1b                	je     0x804926c
 8049251:	3c 77                	cmp    $0x77,%al
 8049253:	74 73                	je     0x80492c8
 8049255:	3c 61                	cmp    $0x61,%al
 8049257:	74 76                	je     0x80492cf
 8049259:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804925f:	85 f6                	test   %esi,%esi
 8049261:	65 c7 00 16 00 00 00 	movl   $0x16,%gs:(%eax)
 8049268:	75 49                	jne    0x80492b3
 804926a:	eb 55                	jmp    0x80492c1
 804926c:	31 ff                	xor    %edi,%edi
 804926e:	31 c0                	xor    %eax,%eax
 8049270:	80 79 01 62          	cmpb   $0x62,0x1(%ecx)
 8049274:	0f 94 c0             	sete   %al
 8049277:	80 7c 01 01 2b       	cmpb   $0x2b,0x1(%ecx,%eax,1)
 804927c:	75 04                	jne    0x8049282
 804927e:	83 cf 01             	or     $0x1,%edi
 8049281:	47                   	inc    %edi
 8049282:	85 f6                	test   %esi,%esi
 8049284:	74 50                	je     0x80492d6
 8049286:	85 d2                	test   %edx,%edx
 8049288:	0f 89 82 00 00 00    	jns    0x8049310
 804928e:	42                   	inc    %edx
 804928f:	74 06                	je     0x8049297
 8049291:	81 cf 00 80 00 00    	or     $0x8000,%edi
 8049297:	68 b6 01 00 00       	push   $0x1b6
 804929c:	57                   	push   %edi
 804929d:	ff 75 08             	pushl  0x8(%ebp)
 80492a0:	e8 0b 26 00 00       	call   0x804b8b0
 80492a5:	83 c4 0c             	add    $0xc,%esp
 80492a8:	89 46 04             	mov    %eax,0x4(%esi)
 80492ab:	85 c0                	test   %eax,%eax
 80492ad:	0f 89 ab 00 00 00    	jns    0x804935e
 80492b3:	66 f7 06 00 20       	testw  $0x2000,(%esi)
 80492b8:	74 07                	je     0x80492c1
 80492ba:	56                   	push   %esi
 80492bb:	e8 91 14 00 00       	call   0x804a751
 80492c0:	58                   	pop    %eax
 80492c1:	31 c0                	xor    %eax,%eax
 80492c3:	e9 f6 01 00 00       	jmp    0x80494be
 80492c8:	bf 41 02 00 00       	mov    $0x241,%edi
 80492cd:	eb 9f                	jmp    0x804926e
 80492cf:	bf 41 04 00 00       	mov    $0x441,%edi
 80492d4:	eb 98                	jmp    0x804926e
 80492d6:	6a 44                	push   $0x44
 80492d8:	89 55 f0             	mov    %edx,-0x10(%ebp)
 80492db:	e8 78 09 00 00       	call   0x8049c58
 80492e0:	89 c6                	mov    %eax,%esi
 80492e2:	58                   	pop    %eax
 80492e3:	85 f6                	test   %esi,%esi
 80492e5:	74 da                	je     0x80492c1
 80492e7:	66 c7 06 00 20       	movw   $0x2000,(%esi)
 80492ec:	c7 46 08 00 00 00 00 	movl   $0x0,0x8(%esi)
 80492f3:	c7 46 38 00 00 00 00 	movl   $0x0,0x38(%esi)
 80492fa:	c7 46 3c 00 00 00 00 	movl   $0x0,0x3c(%esi)
 8049301:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
 8049308:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804930b:	e9 76 ff ff ff       	jmp    0x8049286
 8049310:	89 f9                	mov    %edi,%ecx
 8049312:	8b 45 08             	mov    0x8(%ebp),%eax
 8049315:	81 e1 03 80 00 00    	and    $0x8003,%ecx
 804931b:	40                   	inc    %eax
 804931c:	41                   	inc    %ecx
 804931d:	89 56 04             	mov    %edx,0x4(%esi)
 8049320:	21 c8                	and    %ecx,%eax
 8049322:	39 c8                	cmp    %ecx,%eax
 8049324:	0f 85 2f ff ff ff    	jne    0x8049259
 804932a:	8b 45 08             	mov    0x8(%ebp),%eax
 804932d:	f7 d0                	not    %eax
 804932f:	25 00 04 00 00       	and    $0x400,%eax
 8049334:	85 f8                	test   %edi,%eax
 8049336:	75 0c                	jne    0x8049344
 8049338:	8b 45 08             	mov    0x8(%ebp),%eax
 804933b:	25 00 80 00 00       	and    $0x8000,%eax
 8049340:	09 c7                	or     %eax,%edi
 8049342:	eb 1a                	jmp    0x804935e
 8049344:	68 00 04 00 00       	push   $0x400
 8049349:	6a 04                	push   $0x4
 804934b:	52                   	push   %edx
 804934c:	e8 9d 2f 00 00       	call   0x804c2ee
 8049351:	83 c4 0c             	add    $0xc,%esp
 8049354:	85 c0                	test   %eax,%eax
 8049356:	0f 85 fd fe ff ff    	jne    0x8049259
 804935c:	eb da                	jmp    0x8049338
 804935e:	89 f8                	mov    %edi,%eax
 8049360:	83 e7 03             	and    $0x3,%edi
 8049363:	8b 16                	mov    (%esi),%edx
 8049365:	47                   	inc    %edi
 8049366:	66 25 00 84          	and    $0x8400,%ax
 804936a:	83 f7 03             	xor    $0x3,%edi
 804936d:	66 81 e2 00 20       	and    $0x2000,%dx
 8049372:	c1 e7 04             	shl    $0x4,%edi
 8049375:	09 d0                	or     %edx,%eax
 8049377:	09 f8                	or     %edi,%eax
 8049379:	66 89 06             	mov    %ax,(%esi)
 804937c:	8b 46 04             	mov    0x4(%esi),%eax
 804937f:	3d ff ff ff 7f       	cmp    $0x7fffffff,%eax
 8049384:	74 22                	je     0x80493a8
 8049386:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804938c:	65 8b 3a             	mov    %gs:(%edx),%edi
 804938f:	50                   	push   %eax
 8049390:	e8 1f 07 00 00       	call   0x8049ab4
 8049395:	59                   	pop    %ecx
 8049396:	85 c0                	test   %eax,%eax
 8049398:	74 05                	je     0x804939f
 804939a:	66 81 0e 00 01       	orw    $0x100,(%esi)
 804939f:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 80493a5:	65 89 38             	mov    %edi,%gs:(%eax)
 80493a8:	83 7e 08 00          	cmpl   $0x0,0x8(%esi)
 80493ac:	75 28                	jne    0x80493d6
 80493ae:	68 00 01 00 00       	push   $0x100
 80493b3:	e8 a0 08 00 00       	call   0x8049c58
 80493b8:	89 46 08             	mov    %eax,0x8(%esi)
 80493bb:	85 c0                	test   %eax,%eax
 80493bd:	5a                   	pop    %edx
 80493be:	74 0f                	je     0x80493cf
 80493c0:	66 81 0e 00 40       	orw    $0x4000,(%esi)
 80493c5:	05 00 01 00 00       	add    $0x100,%eax
 80493ca:	89 46 0c             	mov    %eax,0xc(%esi)
 80493cd:	eb 07                	jmp    0x80493d6
 80493cf:	c7 46 0c 00 00 00 00 	movl   $0x0,0xc(%esi)
 80493d6:	8b 46 08             	mov    0x8(%esi),%eax
 80493d9:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 80493dd:	89 46 18             	mov    %eax,0x18(%esi)
 80493e0:	89 46 1c             	mov    %eax,0x1c(%esi)
 80493e3:	89 46 10             	mov    %eax,0x10(%esi)
 80493e6:	89 46 14             	mov    %eax,0x14(%esi)
 80493e9:	8b 83 cc ff ff ff    	mov    -0x34(%ebx),%eax
 80493ef:	c7 46 2c 00 00 00 00 	movl   $0x0,0x2c(%esi)
 80493f6:	66 f7 06 00 20       	testw  $0x2000,(%esi)
 80493fb:	8b 00                	mov    (%eax),%eax
 80493fd:	89 46 34             	mov    %eax,0x34(%esi)
 8049400:	89 f0                	mov    %esi,%eax
 8049402:	0f 84 b6 00 00 00    	je     0x80494be
 8049408:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 804940e:	65 8b 3d 08 00 00 00 	mov    %gs:0x8,%edi
 8049415:	39 7a 08             	cmp    %edi,0x8(%edx)
 8049418:	74 1e                	je     0x8049438
 804941a:	31 c0                	xor    %eax,%eax
 804941c:	b9 01 00 00 00       	mov    $0x1,%ecx
 8049421:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8049428:	00 
 8049429:	74 01                	je     0x804942c
 804942b:	f0 0f b1 0a          	lock cmpxchg %ecx,(%edx)
 804942f:	0f 85 91 00 00 00    	jne    0x80494c6
 8049435:	89 7a 08             	mov    %edi,0x8(%edx)
 8049438:	8b bb f4 ff ff ff    	mov    -0xc(%ebx),%edi
 804943e:	ff 42 04             	incl   0x4(%edx)
 8049441:	65 a1 08 00 00 00    	mov    %gs:0x8,%eax
 8049447:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804944a:	39 47 08             	cmp    %eax,0x8(%edi)
 804944d:	74 1d                	je     0x804946c
 804944f:	31 c0                	xor    %eax,%eax
 8049451:	b9 01 00 00 00       	mov    $0x1,%ecx
 8049456:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804945d:	00 
 804945e:	74 01                	je     0x8049461
 8049460:	f0 0f b1 0f          	lock cmpxchg %ecx,(%edi)
 8049464:	75 6c                	jne    0x80494d2
 8049466:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049469:	89 47 08             	mov    %eax,0x8(%edi)
 804946c:	8b 83 bc ff ff ff    	mov    -0x44(%ebx),%eax
 8049472:	83 7f 04 00          	cmpl   $0x0,0x4(%edi)
 8049476:	8b 08                	mov    (%eax),%ecx
 8049478:	89 30                	mov    %esi,(%eax)
 804947a:	89 4e 20             	mov    %ecx,0x20(%esi)
 804947d:	75 17                	jne    0x8049496
 804947f:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%edi)
 8049486:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804948d:	00 
 804948e:	74 01                	je     0x8049491
 8049490:	f0 83 2f 01          	lock subl $0x1,(%edi)
 8049494:	75 45                	jne    0x80494db
 8049496:	8b 42 04             	mov    0x4(%edx),%eax
 8049499:	8d 48 ff             	lea    -0x1(%eax),%ecx
 804949c:	89 f0                	mov    %esi,%eax
 804949e:	89 4a 04             	mov    %ecx,0x4(%edx)
 80494a1:	85 c9                	test   %ecx,%ecx
 80494a3:	75 19                	jne    0x80494be
 80494a5:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 80494ac:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 80494b3:	00 
 80494b4:	74 01                	je     0x80494b7
 80494b6:	f0 83 2a 01          	lock subl $0x1,(%edx)
 80494ba:	75 28                	jne    0x80494e4
 80494bc:	89 f0                	mov    %esi,%eax
 80494be:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80494c1:	5b                   	pop    %ebx
 80494c2:	5e                   	pop    %esi
 80494c3:	5f                   	pop    %edi
 80494c4:	5d                   	pop    %ebp
 80494c5:	c3                   	ret    
 80494c6:	8d 0a                	lea    (%edx),%ecx
 80494c8:	e8 b3 22 00 00       	call   0x804b780
 80494cd:	e9 63 ff ff ff       	jmp    0x8049435
 80494d2:	8d 0f                	lea    (%edi),%ecx
 80494d4:	e8 a7 22 00 00       	call   0x804b780
 80494d9:	eb 8b                	jmp    0x8049466
 80494db:	8d 07                	lea    (%edi),%eax
 80494dd:	e8 ce 22 00 00       	call   0x804b7b0
 80494e2:	eb b2                	jmp    0x8049496
 80494e4:	8d 02                	lea    (%edx),%eax
 80494e6:	e8 c5 22 00 00       	call   0x804b7b0
 80494eb:	eb cf                	jmp    0x80494bc
 80494ed:	66 90                	xchg   %ax,%ax
 80494ef:	90                   	nop
 80494f0:	55                   	push   %ebp
 80494f1:	89 e5                	mov    %esp,%ebp
 80494f3:	57                   	push   %edi
 80494f4:	56                   	push   %esi
 80494f5:	53                   	push   %ebx
 80494f6:	e8 7c f7 ff ff       	call   0x8048c77
 80494fb:	81 c3 8d 8b 00 00    	add    $0x8b8d,%ebx
 8049501:	8b 83 f4 ff ff ff    	mov    -0xc(%ebx),%eax
 8049507:	8b 8b bc ff ff ff    	mov    -0x44(%ebx),%ecx
 804950d:	65 8b 35 08 00 00 00 	mov    %gs:0x8,%esi
 8049514:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804951a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8049521:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8049528:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804952e:	8b 11                	mov    (%ecx),%edx
 8049530:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049536:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804953d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8049544:	85 d2                	test   %edx,%edx
 8049546:	74 40                	je     0x8049588
 8049548:	39 72 40             	cmp    %esi,0x40(%edx)
 804954b:	74 1a                	je     0x8049567
 804954d:	31 c0                	xor    %eax,%eax
 804954f:	bf 01 00 00 00       	mov    $0x1,%edi
 8049554:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804955b:	00 
 804955c:	74 01                	je     0x804955f
 804955e:	f0 0f b1 7a 38       	lock cmpxchg %edi,0x38(%edx)
 8049563:	85 c0                	test   %eax,%eax
 8049565:	75 38                	jne    0x804959f
 8049567:	c7 42 34 01 00 00 00 	movl   $0x1,0x34(%edx)
 804956e:	c7 42 38 00 00 00 00 	movl   $0x0,0x38(%edx)
 8049575:	c7 42 3c 00 00 00 00 	movl   $0x0,0x3c(%edx)
 804957c:	c7 42 40 00 00 00 00 	movl   $0x0,0x40(%edx)
 8049583:	8b 52 20             	mov    0x20(%edx),%edx
 8049586:	eb bc                	jmp    0x8049544
 8049588:	8b 31                	mov    (%ecx),%esi
 804958a:	85 f6                	test   %esi,%esi
 804958c:	74 27                	je     0x80495b5
 804958e:	f6 06 40             	testb  $0x40,(%esi)
 8049591:	74 07                	je     0x804959a
 8049593:	56                   	push   %esi
 8049594:	e8 73 00 00 00       	call   0x804960c
 8049599:	58                   	pop    %eax
 804959a:	8b 76 20             	mov    0x20(%esi),%esi
 804959d:	eb eb                	jmp    0x804958a
 804959f:	8b 42 08             	mov    0x8(%edx),%eax
 80495a2:	66 c7 02 30 00       	movw   $0x30,(%edx)
 80495a7:	89 42 18             	mov    %eax,0x18(%edx)
 80495aa:	89 42 1c             	mov    %eax,0x1c(%edx)
 80495ad:	89 42 10             	mov    %eax,0x10(%edx)
 80495b0:	89 42 14             	mov    %eax,0x14(%edx)
 80495b3:	eb b2                	jmp    0x8049567
 80495b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80495b8:	5b                   	pop    %ebx
 80495b9:	5e                   	pop    %esi
 80495ba:	5f                   	pop    %edi
 80495bb:	5d                   	pop    %ebp
 80495bc:	c3                   	ret    
 80495bd:	55                   	push   %ebp
 80495be:	89 e5                	mov    %esp,%ebp
 80495c0:	57                   	push   %edi
 80495c1:	56                   	push   %esi
 80495c2:	53                   	push   %ebx
 80495c3:	e8 af f6 ff ff       	call   0x8048c77
 80495c8:	81 c3 c0 8a 00 00    	add    $0x8ac0,%ebx
 80495ce:	c7 c6 fc ff ff ff    	mov    $0xfffffffc,%esi
 80495d4:	65 8b 3e             	mov    %gs:(%esi),%edi
 80495d7:	6a 00                	push   $0x0
 80495d9:	e8 d6 04 00 00       	call   0x8049ab4
 80495de:	59                   	pop    %ecx
 80495df:	85 c0                	test   %eax,%eax
 80495e1:	75 09                	jne    0x80495ec
 80495e3:	66 81 b3 34 00 00 00 	xorw   $0x100,0x34(%ebx)
 80495ea:	00 01 
 80495ec:	6a 01                	push   $0x1
 80495ee:	e8 c1 04 00 00       	call   0x8049ab4
 80495f3:	5a                   	pop    %edx
 80495f4:	85 c0                	test   %eax,%eax
 80495f6:	75 09                	jne    0x8049601
 80495f8:	66 81 b3 78 00 00 00 	xorw   $0x100,0x78(%ebx)
 80495ff:	00 01 
 8049601:	65 89 3e             	mov    %edi,%gs:(%esi)
 8049604:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8049607:	5b                   	pop    %ebx
 8049608:	5e                   	pop    %esi
 8049609:	5f                   	pop    %edi
 804960a:	5d                   	pop    %ebp
 804960b:	c3                   	ret    
 804960c:	55                   	push   %ebp
 804960d:	89 e5                	mov    %esp,%ebp
 804960f:	56                   	push   %esi
 8049610:	8b 75 08             	mov    0x8(%ebp),%esi
 8049613:	8b 46 08             	mov    0x8(%esi),%eax
 8049616:	8b 56 10             	mov    0x10(%esi),%edx
 8049619:	29 c2                	sub    %eax,%edx
 804961b:	74 0e                	je     0x804962b
 804961d:	89 46 10             	mov    %eax,0x10(%esi)
 8049620:	52                   	push   %edx
 8049621:	50                   	push   %eax
 8049622:	56                   	push   %esi
 8049623:	e8 54 32 00 00       	call   0x804c87c
 8049628:	83 c4 0c             	add    $0xc,%esp
 804962b:	8b 46 10             	mov    0x10(%esi),%eax
 804962e:	2b 46 08             	sub    0x8(%esi),%eax
 8049631:	8b 75 fc             	mov    -0x4(%ebp),%esi
 8049634:	c9                   	leave  
 8049635:	c3                   	ret    
 8049636:	66 90                	xchg   %ax,%ax
 8049638:	55                   	push   %ebp
 8049639:	89 e5                	mov    %esp,%ebp
 804963b:	57                   	push   %edi
 804963c:	56                   	push   %esi
 804963d:	53                   	push   %ebx
 804963e:	83 ec 10             	sub    $0x10,%esp
 8049641:	e8 31 f6 ff ff       	call   0x8048c77
 8049646:	81 c3 42 8a 00 00    	add    $0x8a42,%ebx
 804964c:	8b b3 fc ff ff ff    	mov    -0x4(%ebx),%esi
 8049652:	65 8b 15 08 00 00 00 	mov    %gs:0x8,%edx
 8049659:	39 56 08             	cmp    %edx,0x8(%esi)
 804965c:	74 1e                	je     0x804967c
 804965e:	31 c0                	xor    %eax,%eax
 8049660:	b9 01 00 00 00       	mov    $0x1,%ecx
 8049665:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804966c:	00 
 804966d:	74 01                	je     0x8049670
 804966f:	f0 0f b1 0e          	lock cmpxchg %ecx,(%esi)
 8049673:	0f 85 d6 02 00 00    	jne    0x804994f
 8049679:	89 56 08             	mov    %edx,0x8(%esi)
 804967c:	8b 83 8c ff ff ff    	mov    -0x74(%ebx),%eax
 8049682:	ff 46 04             	incl   0x4(%esi)
 8049685:	8b 08                	mov    (%eax),%ecx
 8049687:	83 f9 01             	cmp    $0x1,%ecx
 804968a:	0f 85 c5 00 00 00    	jne    0x8049755
 8049690:	8b 83 c0 ff ff ff    	mov    -0x40(%ebx),%eax
 8049696:	83 38 00             	cmpl   $0x0,(%eax)
 8049699:	0f 8e b6 00 00 00    	jle    0x8049755
 804969f:	8b bb f4 ff ff ff    	mov    -0xc(%ebx),%edi
 80496a5:	65 8b 15 08 00 00 00 	mov    %gs:0x8,%edx
 80496ac:	39 57 08             	cmp    %edx,0x8(%edi)
 80496af:	74 19                	je     0x80496ca
 80496b1:	31 c0                	xor    %eax,%eax
 80496b3:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 80496ba:	00 
 80496bb:	74 01                	je     0x80496be
 80496bd:	f0 0f b1 0f          	lock cmpxchg %ecx,(%edi)
 80496c1:	0f 85 94 02 00 00    	jne    0x804995b
 80496c7:	89 57 08             	mov    %edx,0x8(%edi)
 80496ca:	8b 93 bc ff ff ff    	mov    -0x44(%ebx),%edx
 80496d0:	ff 47 04             	incl   0x4(%edi)
 80496d3:	8b 02                	mov    (%edx),%eax
 80496d5:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80496dc:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 80496df:	85 c0                	test   %eax,%eax
 80496e1:	74 46                	je     0x8049729
 80496e3:	8b 08                	mov    (%eax),%ecx
 80496e5:	8b 50 20             	mov    0x20(%eax),%edx
 80496e8:	66 89 4d ea          	mov    %cx,-0x16(%ebp)
 80496ec:	89 55 ec             	mov    %edx,-0x14(%ebp)
 80496ef:	66 81 e1 30 80       	and    $0x8030,%cx
 80496f4:	66 83 f9 30          	cmp    $0x30,%cx
 80496f8:	75 27                	jne    0x8049721
 80496fa:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 80496fe:	75 07                	jne    0x8049707
 8049700:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8049703:	89 11                	mov    %edx,(%ecx)
 8049705:	eb 09                	jmp    0x8049710
 8049707:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804970a:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804970d:	89 51 20             	mov    %edx,0x20(%ecx)
 8049710:	66 f7 45 ea 00 20    	testw  $0x2000,-0x16(%ebp)
 8049716:	74 0c                	je     0x8049724
 8049718:	50                   	push   %eax
 8049719:	e8 33 10 00 00       	call   0x804a751
 804971e:	58                   	pop    %eax
 804971f:	eb 03                	jmp    0x8049724
 8049721:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049724:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049727:	eb b6                	jmp    0x80496df
 8049729:	ff 4f 04             	decl   0x4(%edi)
 804972c:	75 1b                	jne    0x8049749
 804972e:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%edi)
 8049735:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804973c:	00 
 804973d:	74 01                	je     0x8049740
 804973f:	f0 83 2f 01          	lock subl $0x1,(%edi)
 8049743:	0f 85 1e 02 00 00    	jne    0x8049967
 8049749:	8b 83 c0 ff ff ff    	mov    -0x40(%ebx),%eax
 804974f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049755:	8b 83 8c ff ff ff    	mov    -0x74(%ebx),%eax
 804975b:	8b bb 8c ff ff ff    	mov    -0x74(%ebx),%edi
 8049761:	8b 00                	mov    (%eax),%eax
 8049763:	48                   	dec    %eax
 8049764:	ff 4e 04             	decl   0x4(%esi)
 8049767:	89 07                	mov    %eax,(%edi)
 8049769:	75 1b                	jne    0x8049786
 804976b:	c7 46 08 00 00 00 00 	movl   $0x0,0x8(%esi)
 8049772:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8049779:	00 
 804977a:	74 01                	je     0x804977d
 804977c:	f0 83 2e 01          	lock subl $0x1,(%esi)
 8049780:	0f 85 ed 01 00 00    	jne    0x8049973
 8049786:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8049789:	5b                   	pop    %ebx
 804978a:	5e                   	pop    %esi
 804978b:	5f                   	pop    %edi
 804978c:	5d                   	pop    %ebp
 804978d:	c3                   	ret    
 804978e:	55                   	push   %ebp
 804978f:	89 e5                	mov    %esp,%ebp
 8049791:	57                   	push   %edi
 8049792:	56                   	push   %esi
 8049793:	53                   	push   %ebx
 8049794:	e8 de f4 ff ff       	call   0x8048c77
 8049799:	81 c3 ef 88 00 00    	add    $0x88ef,%ebx
 804979f:	56                   	push   %esi
 80497a0:	8b 75 08             	mov    0x8(%ebp),%esi
 80497a3:	8b bb bc ff ff ff    	mov    -0x44(%ebx),%edi
 80497a9:	39 fe                	cmp    %edi,%esi
 80497ab:	74 10                	je     0x80497bd
 80497ad:	85 f6                	test   %esi,%esi
 80497af:	0f 85 6f 01 00 00    	jne    0x8049924
 80497b5:	66 c7 45 f2 00 01    	movw   $0x100,-0xe(%ebp)
 80497bb:	eb 06                	jmp    0x80497c3
 80497bd:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%ebp)
 80497c3:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 80497c9:	65 8b 35 08 00 00 00 	mov    %gs:0x8,%esi
 80497d0:	39 72 08             	cmp    %esi,0x8(%edx)
 80497d3:	74 1e                	je     0x80497f3
 80497d5:	31 c0                	xor    %eax,%eax
 80497d7:	b9 01 00 00 00       	mov    $0x1,%ecx
 80497dc:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 80497e3:	00 
 80497e4:	74 01                	je     0x80497e7
 80497e6:	f0 0f b1 0a          	lock cmpxchg %ecx,(%edx)
 80497ea:	0f 85 8f 01 00 00    	jne    0x804997f
 80497f0:	89 72 08             	mov    %esi,0x8(%edx)
 80497f3:	8b 83 8c ff ff ff    	mov    -0x74(%ebx),%eax
 80497f9:	8b 72 04             	mov    0x4(%edx),%esi
 80497fc:	8b 08                	mov    (%eax),%ecx
 80497fe:	41                   	inc    %ecx
 80497ff:	85 f6                	test   %esi,%esi
 8049801:	89 08                	mov    %ecx,(%eax)
 8049803:	75 1b                	jne    0x8049820
 8049805:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 804980c:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8049813:	00 
 8049814:	74 01                	je     0x8049817
 8049816:	f0 83 2a 01          	lock subl $0x1,(%edx)
 804981a:	0f 85 6b 01 00 00    	jne    0x804998b
 8049820:	8b 93 f4 ff ff ff    	mov    -0xc(%ebx),%edx
 8049826:	65 8b 35 08 00 00 00 	mov    %gs:0x8,%esi
 804982d:	39 72 08             	cmp    %esi,0x8(%edx)
 8049830:	74 1e                	je     0x8049850
 8049832:	31 c0                	xor    %eax,%eax
 8049834:	b9 01 00 00 00       	mov    $0x1,%ecx
 8049839:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8049840:	00 
 8049841:	74 01                	je     0x8049844
 8049843:	f0 0f b1 0a          	lock cmpxchg %ecx,(%edx)
 8049847:	0f 85 4a 01 00 00    	jne    0x8049997
 804984d:	89 72 08             	mov    %esi,0x8(%edx)
 8049850:	8b 37                	mov    (%edi),%esi
 8049852:	83 7a 04 00          	cmpl   $0x0,0x4(%edx)
 8049856:	75 1b                	jne    0x8049873
 8049858:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 804985f:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8049866:	00 
 8049867:	74 01                	je     0x804986a
 8049869:	f0 83 2a 01          	lock subl $0x1,(%edx)
 804986d:	0f 85 30 01 00 00    	jne    0x80499a3
 8049873:	31 ff                	xor    %edi,%edi
 8049875:	85 f6                	test   %esi,%esi
 8049877:	0f 84 a0 00 00 00    	je     0x804991d
 804987d:	f6 06 40             	testb  $0x40,(%esi)
 8049880:	0f 84 8f 00 00 00    	je     0x8049915
 8049886:	8b 83 cc ff ff ff    	mov    -0x34(%ebx),%eax
 804988c:	83 38 02             	cmpl   $0x2,(%eax)
 804988f:	74 2e                	je     0x80498bf
 8049891:	65 8b 15 08 00 00 00 	mov    %gs:0x8,%edx
 8049898:	39 56 40             	cmp    %edx,0x40(%esi)
 804989b:	74 1f                	je     0x80498bc
 804989d:	31 c0                	xor    %eax,%eax
 804989f:	b9 01 00 00 00       	mov    $0x1,%ecx
 80498a4:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 80498ab:	00 
 80498ac:	74 01                	je     0x80498af
 80498ae:	f0 0f b1 4e 38       	lock cmpxchg %ecx,0x38(%esi)
 80498b3:	0f 85 f6 00 00 00    	jne    0x80499af
 80498b9:	89 56 40             	mov    %edx,0x40(%esi)
 80498bc:	ff 46 3c             	incl   0x3c(%esi)
 80498bf:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
 80498c3:	0b 06                	or     (%esi),%eax
 80498c5:	66 35 40 01          	xor    $0x140,%ax
 80498c9:	66 a9 40 03          	test   $0x340,%ax
 80498cd:	75 1a                	jne    0x80498e9
 80498cf:	56                   	push   %esi
 80498d0:	e8 37 fd ff ff       	call   0x804960c
 80498d5:	59                   	pop    %ecx
 80498d6:	85 c0                	test   %eax,%eax
 80498d8:	75 0c                	jne    0x80498e6
 80498da:	66 83 26 bf          	andw   $0xffbf,(%esi)
 80498de:	8b 46 08             	mov    0x8(%esi),%eax
 80498e1:	89 46 1c             	mov    %eax,0x1c(%esi)
 80498e4:	eb 03                	jmp    0x80498e9
 80498e6:	83 cf ff             	or     $0xffffffff,%edi
 80498e9:	8b 83 cc ff ff ff    	mov    -0x34(%ebx),%eax
 80498ef:	83 38 02             	cmpl   $0x2,(%eax)
 80498f2:	74 21                	je     0x8049915
 80498f4:	ff 4e 3c             	decl   0x3c(%esi)
 80498f7:	75 1c                	jne    0x8049915
 80498f9:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
 8049900:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 8049907:	00 
 8049908:	74 01                	je     0x804990b
 804990a:	f0 83 6e 38 01       	lock subl $0x1,0x38(%esi)
 804990f:	0f 85 a7 00 00 00    	jne    0x80499bc
 8049915:	8b 76 20             	mov    0x20(%esi),%esi
 8049918:	e9 58 ff ff ff       	jmp    0x8049875
 804991d:	e8 16 fd ff ff       	call   0x8049638
 8049922:	eb 21                	jmp    0x8049945
 8049924:	31 ff                	xor    %edi,%edi
 8049926:	f6 06 40             	testb  $0x40,(%esi)
 8049929:	74 1a                	je     0x8049945
 804992b:	56                   	push   %esi
 804992c:	e8 db fc ff ff       	call   0x804960c
 8049931:	5a                   	pop    %edx
 8049932:	85 c0                	test   %eax,%eax
 8049934:	75 0c                	jne    0x8049942
 8049936:	66 83 26 bf          	andw   $0xffbf,(%esi)
 804993a:	8b 46 08             	mov    0x8(%esi),%eax
 804993d:	89 46 1c             	mov    %eax,0x1c(%esi)
 8049940:	eb 03                	jmp    0x8049945
 8049942:	83 cf ff             	or     $0xffffffff,%edi
 8049945:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8049948:	89 f8                	mov    %edi,%eax
 804994a:	5b                   	pop    %ebx
 804994b:	5e                   	pop    %esi
 804994c:	5f                   	pop    %edi
 804994d:	5d                   	pop    %ebp
 804994e:	c3                   	ret    
 804994f:	8d 0e                	lea    (%esi),%ecx
 8049951:	e8 2a 1e 00 00       	call   0x804b780
 8049956:	e9 1e fd ff ff       	jmp    0x8049679
 804995b:	8d 0f                	lea    (%edi),%ecx
 804995d:	e8 1e 1e 00 00       	call   0x804b780
 8049962:	e9 60 fd ff ff       	jmp    0x80496c7
 8049967:	8d 07                	lea    (%edi),%eax
 8049969:	e8 42 1e 00 00       	call   0x804b7b0
 804996e:	e9 d6 fd ff ff       	jmp    0x8049749
 8049973:	8d 06                	lea    (%esi),%eax
 8049975:	e8 36 1e 00 00       	call   0x804b7b0
 804997a:	e9 07 fe ff ff       	jmp    0x8049786
 804997f:	8d 0a                	lea    (%edx),%ecx
 8049981:	e8 fa 1d 00 00       	call   0x804b780
 8049986:	e9 65 fe ff ff       	jmp    0x80497f0
 804998b:	8d 02                	lea    (%edx),%eax
 804998d:	e8 1e 1e 00 00       	call   0x804b7b0
 8049992:	e9 89 fe ff ff       	jmp    0x8049820
 8049997:	8d 0a                	lea    (%edx),%ecx
 8049999:	e8 e2 1d 00 00       	call   0x804b780
 804999e:	e9 aa fe ff ff       	jmp    0x804984d
 80499a3:	8d 02                	lea    (%edx),%eax
 80499a5:	e8 06 1e 00 00       	call   0x804b7b0
 80499aa:	e9 c4 fe ff ff       	jmp    0x8049873
 80499af:	8d 4e 38             	lea    0x38(%esi),%ecx
 80499b2:	e8 c9 1d 00 00       	call   0x804b780
 80499b7:	e9 fd fe ff ff       	jmp    0x80498b9
 80499bc:	8d 46 38             	lea    0x38(%esi),%eax
 80499bf:	e8 ec 1d 00 00       	call   0x804b7b0
 80499c4:	e9 4c ff ff ff       	jmp    0x8049915
 80499c9:	66 90                	xchg   %ax,%ax
 80499cb:	90                   	nop
 80499cc:	55                   	push   %ebp
 80499cd:	89 e5                	mov    %esp,%ebp
 80499cf:	56                   	push   %esi
 80499d0:	53                   	push   %ebx
 80499d1:	e8 a1 f2 ff ff       	call   0x8048c77
 80499d6:	81 c3 b2 86 00 00    	add    $0x86b2,%ebx
 80499dc:	8d b3 b8 03 00 00    	lea    0x3b8(%ebx),%esi
 80499e2:	6a 32                	push   $0x32
 80499e4:	56                   	push   %esi
 80499e5:	ff 75 08             	pushl  0x8(%ebp)
 80499e8:	e8 0b 00 00 00       	call   0x80499f8
 80499ed:	8d 65 f8             	lea    -0x8(%ebp),%esp
 80499f0:	89 f0                	mov    %esi,%eax
 80499f2:	5b                   	pop    %ebx
 80499f3:	5e                   	pop    %esi
 80499f4:	5d                   	pop    %ebp
 80499f5:	c3                   	ret    
 80499f6:	66 90                	xchg   %ax,%ax
 80499f8:	55                   	push   %ebp
 80499f9:	89 e5                	mov    %esp,%ebp
 80499fb:	57                   	push   %edi
 80499fc:	56                   	push   %esi
 80499fd:	53                   	push   %ebx
 80499fe:	83 ec 38             	sub    $0x38,%esp
 8049a01:	e8 71 f2 ff ff       	call   0x8048c77
 8049a06:	81 c3 82 86 00 00    	add    $0x8682,%ebx
 8049a0c:	8b 45 08             	mov    0x8(%ebp),%eax
 8049a0f:	83 f8 7c             	cmp    $0x7c,%eax
 8049a12:	77 1c                	ja     0x8049a30
 8049a14:	89 c1                	mov    %eax,%ecx
 8049a16:	8d 93 f8 d8 ff ff    	lea    -0x2708(%ebx),%edx
 8049a1c:	85 c9                	test   %ecx,%ecx
 8049a1e:	74 09                	je     0x8049a29
 8049a20:	80 3a 01             	cmpb   $0x1,(%edx)
 8049a23:	83 d9 00             	sbb    $0x0,%ecx
 8049a26:	42                   	inc    %edx
 8049a27:	eb f3                	jmp    0x8049a1c
 8049a29:	31 f6                	xor    %esi,%esi
 8049a2b:	80 3a 00             	cmpb   $0x0,(%edx)
 8049a2e:	75 28                	jne    0x8049a58
 8049a30:	99                   	cltd   
 8049a31:	6a 00                	push   $0x0
 8049a33:	6a f6                	push   $0xfffffff6
 8049a35:	52                   	push   %edx
 8049a36:	50                   	push   %eax
 8049a37:	8d 45 f3             	lea    -0xd(%ebp),%eax
 8049a3a:	8d b3 e8 d8 ff ff    	lea    -0x2718(%ebx),%esi
 8049a40:	50                   	push   %eax
 8049a41:	e8 de 2e 00 00       	call   0x804c924
 8049a46:	8d 50 f2             	lea    -0xe(%eax),%edx
 8049a49:	89 d7                	mov    %edx,%edi
 8049a4b:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 8049a4c:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 8049a4d:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 8049a4e:	66 a5                	movsw  %ds:(%esi),%es:(%edi)
 8049a50:	be 16 00 00 00       	mov    $0x16,%esi
 8049a55:	83 c4 14             	add    $0x14,%esp
 8049a58:	31 c0                	xor    %eax,%eax
 8049a5a:	52                   	push   %edx
 8049a5b:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8049a5f:	0f 95 c0             	setne  %al
 8049a62:	f7 d8                	neg    %eax
 8049a64:	21 45 10             	and    %eax,0x10(%ebp)
 8049a67:	89 55 bc             	mov    %edx,-0x44(%ebp)
 8049a6a:	e8 51 41 00 00       	call   0x804dbc0
 8049a6f:	5a                   	pop    %edx
 8049a70:	8b 55 bc             	mov    -0x44(%ebp),%edx
 8049a73:	8d 78 01             	lea    0x1(%eax),%edi
 8049a76:	3b 7d 10             	cmp    0x10(%ebp),%edi
 8049a79:	76 08                	jbe    0x8049a83
 8049a7b:	8b 7d 10             	mov    0x10(%ebp),%edi
 8049a7e:	be 22 00 00 00       	mov    $0x22,%esi
 8049a83:	85 ff                	test   %edi,%edi
 8049a85:	74 15                	je     0x8049a9c
 8049a87:	57                   	push   %edi
 8049a88:	52                   	push   %edx
 8049a89:	ff 75 0c             	pushl  0xc(%ebp)
 8049a8c:	e8 af 40 00 00       	call   0x804db40
 8049a91:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a94:	83 c4 0c             	add    $0xc,%esp
 8049a97:	c6 44 38 ff 00       	movb   $0x0,-0x1(%eax,%edi,1)
 8049a9c:	85 f6                	test   %esi,%esi
 8049a9e:	74 09                	je     0x8049aa9
 8049aa0:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 8049aa6:	65 89 30             	mov    %esi,%gs:(%eax)
 8049aa9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8049aac:	89 f0                	mov    %esi,%eax
 8049aae:	5b                   	pop    %ebx
 8049aaf:	5e                   	pop    %esi
 8049ab0:	5f                   	pop    %edi
 8049ab1:	5d                   	pop    %ebp
 8049ab2:	c3                   	ret    
 8049ab3:	90                   	nop
 8049ab4:	55                   	push   %ebp
 8049ab5:	89 e5                	mov    %esp,%ebp
 8049ab7:	83 ec 3c             	sub    $0x3c,%esp
 8049aba:	8d 45 c4             	lea    -0x3c(%ebp),%eax
 8049abd:	50                   	push   %eax
 8049abe:	ff 75 08             	pushl  0x8(%ebp)
 8049ac1:	e8 0e 00 00 00       	call   0x8049ad4
 8049ac6:	5a                   	pop    %edx
 8049ac7:	85 c0                	test   %eax,%eax
 8049ac9:	59                   	pop    %ecx
 8049aca:	0f 94 c0             	sete   %al
 8049acd:	0f b6 c0             	movzbl %al,%eax
 8049ad0:	c9                   	leave  
 8049ad1:	c3                   	ret    
 8049ad2:	66 90                	xchg   %ax,%ax
 8049ad4:	55                   	push   %ebp
 8049ad5:	89 e5                	mov    %esp,%ebp
 8049ad7:	57                   	push   %edi
 8049ad8:	56                   	push   %esi
 8049ad9:	83 ec 24             	sub    $0x24,%esp
 8049adc:	8d 45 d4             	lea    -0x2c(%ebp),%eax
 8049adf:	8b 7d 0c             	mov    0xc(%ebp),%edi
 8049ae2:	50                   	push   %eax
 8049ae3:	68 01 54 00 00       	push   $0x5401
 8049ae8:	ff 75 08             	pushl  0x8(%ebp)
 8049aeb:	e8 60 26 00 00       	call   0x804c150
 8049af0:	83 c4 0c             	add    $0xc,%esp
 8049af3:	89 c2                	mov    %eax,%edx
 8049af5:	85 c0                	test   %eax,%eax
 8049af7:	75 30                	jne    0x8049b29
 8049af9:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049afc:	8d 75 e5             	lea    -0x1b(%ebp),%esi
 8049aff:	89 07                	mov    %eax,(%edi)
 8049b01:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8049b04:	89 47 04             	mov    %eax,0x4(%edi)
 8049b07:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049b0a:	89 47 08             	mov    %eax,0x8(%edi)
 8049b0d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049b10:	89 47 0c             	mov    %eax,0xc(%edi)
 8049b13:	8a 45 e4             	mov    -0x1c(%ebp),%al
 8049b16:	88 47 10             	mov    %al,0x10(%edi)
 8049b19:	83 c7 11             	add    $0x11,%edi
 8049b1c:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 8049b1d:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 8049b1e:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 8049b1f:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 8049b20:	66 a5                	movsw  %ds:(%esi),%es:(%edi)
 8049b22:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 8049b23:	31 c0                	xor    %eax,%eax
 8049b25:	ab                   	stos   %eax,%es:(%edi)
 8049b26:	ab                   	stos   %eax,%es:(%edi)
 8049b27:	ab                   	stos   %eax,%es:(%edi)
 8049b28:	aa                   	stos   %al,%es:(%edi)
 8049b29:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049b2c:	89 d0                	mov    %edx,%eax
 8049b2e:	5e                   	pop    %esi
 8049b2f:	5f                   	pop    %edi
 8049b30:	5d                   	pop    %ebp
 8049b31:	c3                   	ret    
 8049b32:	66 90                	xchg   %ax,%ax
 8049b34:	55                   	push   %ebp
 8049b35:	89 e5                	mov    %esp,%ebp
 8049b37:	56                   	push   %esi
 8049b38:	53                   	push   %ebx
 8049b39:	e8 39 f1 ff ff       	call   0x8048c77
 8049b3e:	81 c3 4a 85 00 00    	add    $0x854a,%ebx
 8049b44:	83 ec 28             	sub    $0x28,%esp
 8049b47:	8b 75 08             	mov    0x8(%ebp),%esi
 8049b4a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b4d:	8d 56 ff             	lea    -0x1(%esi),%edx
 8049b50:	83 fa 3f             	cmp    $0x3f,%edx
 8049b53:	77 05                	ja     0x8049b5a
 8049b55:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049b58:	75 0f                	jne    0x8049b69
 8049b5a:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 8049b60:	65 c7 00 16 00 00 00 	movl   $0x16,%gs:(%eax)
 8049b67:	eb 52                	jmp    0x8049bbb
 8049b69:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8049b6c:	8d 45 dc             	lea    -0x24(%ebp),%eax
 8049b6f:	56                   	push   %esi
 8049b70:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 8049b77:	50                   	push   %eax
 8049b78:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 8049b7f:	e8 67 00 00 00       	call   0x8049beb
 8049b84:	8d 83 64 09 00 00    	lea    0x964(%ebx),%eax
 8049b8a:	56                   	push   %esi
 8049b8b:	50                   	push   %eax
 8049b8c:	e8 37 00 00 00       	call   0x8049bc8
 8049b91:	83 c4 10             	add    $0x10,%esp
 8049b94:	83 f8 01             	cmp    $0x1,%eax
 8049b97:	19 c0                	sbb    %eax,%eax
 8049b99:	25 00 00 00 10       	and    $0x10000000,%eax
 8049b9e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049ba1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8049ba4:	50                   	push   %eax
 8049ba5:	8d 45 d0             	lea    -0x30(%ebp),%eax
 8049ba8:	50                   	push   %eax
 8049ba9:	56                   	push   %esi
 8049baa:	e8 c4 21 00 00       	call   0x804bd73
 8049baf:	83 c4 0c             	add    $0xc,%esp
 8049bb2:	85 c0                	test   %eax,%eax
 8049bb4:	78 05                	js     0x8049bbb
 8049bb6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049bb9:	eb 03                	jmp    0x8049bbe
 8049bbb:	83 c8 ff             	or     $0xffffffff,%eax
 8049bbe:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049bc1:	5b                   	pop    %ebx
 8049bc2:	5e                   	pop    %esi
 8049bc3:	5d                   	pop    %ebp
 8049bc4:	c3                   	ret    
 8049bc5:	66 90                	xchg   %ax,%ax
 8049bc7:	90                   	nop
 8049bc8:	55                   	push   %ebp
 8049bc9:	89 e5                	mov    %esp,%ebp
 8049bcb:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049bce:	8d 48 ff             	lea    -0x1(%eax),%ecx
 8049bd1:	b8 01 00 00 00       	mov    $0x1,%eax
 8049bd6:	89 ca                	mov    %ecx,%edx
 8049bd8:	d3 e0                	shl    %cl,%eax
 8049bda:	c1 ea 05             	shr    $0x5,%edx
 8049bdd:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049be0:	5d                   	pop    %ebp
 8049be1:	85 04 91             	test   %eax,(%ecx,%edx,4)
 8049be4:	0f 95 c0             	setne  %al
 8049be7:	0f b6 c0             	movzbl %al,%eax
 8049bea:	c3                   	ret    
 8049beb:	55                   	push   %ebp
 8049bec:	89 e5                	mov    %esp,%ebp
 8049bee:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049bf1:	8b 55 08             	mov    0x8(%ebp),%edx
 8049bf4:	8d 48 ff             	lea    -0x1(%eax),%ecx
 8049bf7:	89 c8                	mov    %ecx,%eax
 8049bf9:	c1 e8 05             	shr    $0x5,%eax
 8049bfc:	8d 04 82             	lea    (%edx,%eax,4),%eax
 8049bff:	ba 01 00 00 00       	mov    $0x1,%edx
 8049c04:	d3 e2                	shl    %cl,%edx
 8049c06:	09 10                	or     %edx,(%eax)
 8049c08:	31 c0                	xor    %eax,%eax
 8049c0a:	5d                   	pop    %ebp
 8049c0b:	c3                   	ret    
 8049c0c:	55                   	push   %ebp
 8049c0d:	89 e5                	mov    %esp,%ebp
 8049c0f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c12:	8d 48 ff             	lea    -0x1(%eax),%ecx
 8049c15:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c18:	89 ca                	mov    %ecx,%edx
 8049c1a:	c1 ea 05             	shr    $0x5,%edx
 8049c1d:	8d 14 90             	lea    (%eax,%edx,4),%edx
 8049c20:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c25:	d3 e0                	shl    %cl,%eax
 8049c27:	f7 d0                	not    %eax
 8049c29:	21 02                	and    %eax,(%edx)
 8049c2b:	31 c0                	xor    %eax,%eax
 8049c2d:	5d                   	pop    %ebp
 8049c2e:	c3                   	ret    
 8049c2f:	90                   	nop
 8049c30:	89 c2                	mov    %eax,%edx
 8049c32:	55                   	push   %ebp
 8049c33:	c1 ea 08             	shr    $0x8,%edx
 8049c36:	89 e5                	mov    %esp,%ebp
 8049c38:	81 fa ff ff 00 00    	cmp    $0xffff,%edx
 8049c3e:	77 11                	ja     0x8049c51
 8049c40:	0f bd d2             	bsr    %edx,%edx
 8049c43:	8d 4a 06             	lea    0x6(%edx),%ecx
 8049c46:	d3 e8                	shr    %cl,%eax
 8049c48:	83 e0 03             	and    $0x3,%eax
 8049c4b:	8d 44 90 20          	lea    0x20(%eax,%edx,4),%eax
 8049c4f:	eb 05                	jmp    0x8049c56
 8049c51:	b8 5f 00 00 00       	mov    $0x5f,%eax
 8049c56:	5d                   	pop    %ebp
 8049c57:	c3                   	ret    
 8049c58:	55                   	push   %ebp
 8049c59:	89 e5                	mov    %esp,%ebp
 8049c5b:	57                   	push   %edi
 8049c5c:	56                   	push   %esi
 8049c5d:	53                   	push   %ebx
 8049c5e:	83 ec 34             	sub    $0x34,%esp
 8049c61:	e8 11 f0 ff ff       	call   0x8048c77
 8049c66:	81 c3 22 84 00 00    	add    $0x8422,%ebx
 8049c6c:	8b 75 08             	mov    0x8(%ebp),%esi
 8049c6f:	85 f6                	test   %esi,%esi
 8049c71:	74 24                	je     0x8049c97
 8049c73:	8b bb d4 ff ff ff    	mov    -0x2c(%ebx),%edi
 8049c79:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8049c7c:	57                   	push   %edi
 8049c7d:	ff b3 b4 ff ff ff    	pushl  -0x4c(%ebx)
 8049c83:	50                   	push   %eax
 8049c84:	e8 13 1e 00 00       	call   0x804ba9c
 8049c89:	57                   	push   %edi
 8049c8a:	e8 ff 1d 00 00       	call   0x804ba8e
 8049c8f:	83 c4 10             	add    $0x10,%esp
 8049c92:	83 fe df             	cmp    $0xffffffdf,%esi
 8049c95:	76 14                	jbe    0x8049cab
 8049c97:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 8049c9d:	65 c7 00 0c 00 00 00 	movl   $0xc,%gs:(%eax)
 8049ca4:	31 c0                	xor    %eax,%eax
 8049ca6:	e9 61 07 00 00       	jmp    0x804a40c
 8049cab:	83 c6 0b             	add    $0xb,%esi
 8049cae:	c7 45 e0 10 00 00 00 	movl   $0x10,-0x20(%ebp)
 8049cb5:	83 fe 0f             	cmp    $0xf,%esi
 8049cb8:	76 06                	jbe    0x8049cc0
 8049cba:	83 e6 f8             	and    $0xfffffff8,%esi
 8049cbd:	89 75 e0             	mov    %esi,-0x20(%ebp)
 8049cc0:	8b b3 b0 ff ff ff    	mov    -0x50(%ebx),%esi
 8049cc6:	8b 3e                	mov    (%esi),%edi
 8049cc8:	f7 c7 01 00 00 00    	test   $0x1,%edi
 8049cce:	75 14                	jne    0x8049ce4
 8049cd0:	85 ff                	test   %edi,%edi
 8049cd2:	0f 85 4e 03 00 00    	jne    0x804a026
 8049cd8:	56                   	push   %esi
 8049cd9:	e8 ca 08 00 00       	call   0x804a5a8
 8049cde:	5e                   	pop    %esi
 8049cdf:	e9 42 03 00 00       	jmp    0x804a026
 8049ce4:	39 7d e0             	cmp    %edi,-0x20(%ebp)
 8049ce7:	77 1d                	ja     0x8049d06
 8049ce9:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8049cec:	c1 ea 03             	shr    $0x3,%edx
 8049cef:	83 ea 02             	sub    $0x2,%edx
 8049cf2:	8b 44 96 04          	mov    0x4(%esi,%edx,4),%eax
 8049cf6:	85 c0                	test   %eax,%eax
 8049cf8:	74 0c                	je     0x8049d06
 8049cfa:	8b 48 08             	mov    0x8(%eax),%ecx
 8049cfd:	89 4c 96 04          	mov    %ecx,0x4(%esi,%edx,4)
 8049d01:	e9 93 05 00 00       	jmp    0x804a299
 8049d06:	81 7d e0 ff 00 00 00 	cmpl   $0xff,-0x20(%ebp)
 8049d0d:	77 29                	ja     0x8049d38
 8049d0f:	8b 7d e0             	mov    -0x20(%ebp),%edi
 8049d12:	89 f8                	mov    %edi,%eax
 8049d14:	c1 e8 03             	shr    $0x3,%eax
 8049d17:	8d 54 3e 2c          	lea    0x2c(%esi,%edi,1),%edx
 8049d1b:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8049d1e:	8b 42 0c             	mov    0xc(%edx),%eax
 8049d21:	39 d0                	cmp    %edx,%eax
 8049d23:	74 2a                	je     0x8049d4f
 8049d25:	8b 48 0c             	mov    0xc(%eax),%ecx
 8049d28:	83 4c 38 04 01       	orl    $0x1,0x4(%eax,%edi,1)
 8049d2d:	89 4a 0c             	mov    %ecx,0xc(%edx)
 8049d30:	89 51 08             	mov    %edx,0x8(%ecx)
 8049d33:	e9 61 05 00 00       	jmp    0x804a299
 8049d38:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049d3b:	e8 f0 fe ff ff       	call   0x8049c30
 8049d40:	83 e7 02             	and    $0x2,%edi
 8049d43:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8049d46:	74 07                	je     0x8049d4f
 8049d48:	56                   	push   %esi
 8049d49:	e8 5a 08 00 00       	call   0x804a5a8
 8049d4e:	59                   	pop    %ecx
 8049d4f:	8b 46 30             	mov    0x30(%esi),%eax
 8049d52:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8049d55:	8b 83 b0 ff ff ff    	mov    -0x50(%ebx),%eax
 8049d5b:	83 c0 34             	add    $0x34,%eax
 8049d5e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8049d61:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049d64:	83 c0 10             	add    $0x10,%eax
 8049d67:	89 45 c8             	mov    %eax,-0x38(%ebp)
 8049d6a:	8b 83 b0 ff ff ff    	mov    -0x50(%ebx),%eax
 8049d70:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 8049d73:	8b 83 b0 ff ff ff    	mov    -0x50(%ebx),%eax
 8049d79:	8b 70 40             	mov    0x40(%eax),%esi
 8049d7c:	3b 75 d4             	cmp    -0x2c(%ebp),%esi
 8049d7f:	0f 84 16 01 00 00    	je     0x8049e9b
 8049d85:	8b 7e 04             	mov    0x4(%esi),%edi
 8049d88:	8b 46 0c             	mov    0xc(%esi),%eax
 8049d8b:	83 e7 fc             	and    $0xfffffffc,%edi
 8049d8e:	81 7d e0 ff 00 00 00 	cmpl   $0xff,-0x20(%ebp)
 8049d95:	77 49                	ja     0x8049de0
 8049d97:	3b 45 d4             	cmp    -0x2c(%ebp),%eax
 8049d9a:	75 44                	jne    0x8049de0
 8049d9c:	3b 75 d0             	cmp    -0x30(%ebp),%esi
 8049d9f:	75 3f                	jne    0x8049de0
 8049da1:	3b 7d c8             	cmp    -0x38(%ebp),%edi
 8049da4:	76 3a                	jbe    0x8049de0
 8049da6:	8b 4d d0             	mov    -0x30(%ebp),%ecx
 8049da9:	8b b3 b0 ff ff ff    	mov    -0x50(%ebx),%esi
 8049daf:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8049db2:	89 c8                	mov    %ecx,%eax
 8049db4:	01 d0                	add    %edx,%eax
 8049db6:	29 d7                	sub    %edx,%edi
 8049db8:	89 46 3c             	mov    %eax,0x3c(%esi)
 8049dbb:	89 46 40             	mov    %eax,0x40(%esi)
 8049dbe:	89 46 30             	mov    %eax,0x30(%esi)
 8049dc1:	83 ca 01             	or     $0x1,%edx
 8049dc4:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 8049dc7:	89 70 08             	mov    %esi,0x8(%eax)
 8049dca:	89 70 0c             	mov    %esi,0xc(%eax)
 8049dcd:	89 51 04             	mov    %edx,0x4(%ecx)
 8049dd0:	89 fa                	mov    %edi,%edx
 8049dd2:	83 ca 01             	or     $0x1,%edx
 8049dd5:	89 50 04             	mov    %edx,0x4(%eax)
 8049dd8:	89 3c 38             	mov    %edi,(%eax,%edi,1)
 8049ddb:	e9 02 02 00 00       	jmp    0x8049fe2
 8049de0:	8b 8b b0 ff ff ff    	mov    -0x50(%ebx),%ecx
 8049de6:	3b 7d e0             	cmp    -0x20(%ebp),%edi
 8049de9:	8d 51 34             	lea    0x34(%ecx),%edx
 8049dec:	89 41 40             	mov    %eax,0x40(%ecx)
 8049def:	89 50 08             	mov    %edx,0x8(%eax)
 8049df2:	75 0d                	jne    0x8049e01
 8049df4:	83 4c 3e 04 01       	orl    $0x1,0x4(%esi,%edi,1)
 8049df9:	83 c6 08             	add    $0x8,%esi
 8049dfc:	e9 ac 04 00 00       	jmp    0x804a2ad
 8049e01:	81 ff ff 00 00 00    	cmp    $0xff,%edi
 8049e07:	77 1b                	ja     0x8049e24
 8049e09:	89 f9                	mov    %edi,%ecx
 8049e0b:	8b bb b0 ff ff ff    	mov    -0x50(%ebx),%edi
 8049e11:	c1 e9 03             	shr    $0x3,%ecx
 8049e14:	8d 44 09 0a          	lea    0xa(%ecx,%ecx,1),%eax
 8049e18:	8d 44 87 04          	lea    0x4(%edi,%eax,4),%eax
 8049e1c:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8049e1f:	8b 50 08             	mov    0x8(%eax),%edx
 8049e22:	eb 47                	jmp    0x8049e6b
 8049e24:	89 f8                	mov    %edi,%eax
 8049e26:	e8 05 fe ff ff       	call   0x8049c30
 8049e2b:	8b 93 b0 ff ff ff    	mov    -0x50(%ebx),%edx
 8049e31:	89 c1                	mov    %eax,%ecx
 8049e33:	8d 44 00 0a          	lea    0xa(%eax,%eax,1),%eax
 8049e37:	8d 54 82 04          	lea    0x4(%edx,%eax,4),%edx
 8049e3b:	8b 42 08             	mov    0x8(%edx),%eax
 8049e3e:	89 45 cc             	mov    %eax,-0x34(%ebp)
 8049e41:	39 d0                	cmp    %edx,%eax
 8049e43:	74 23                	je     0x8049e68
 8049e45:	8b 42 0c             	mov    0xc(%edx),%eax
 8049e48:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8049e4b:	3b 78 04             	cmp    0x4(%eax),%edi
 8049e4e:	72 1b                	jb     0x8049e6b
 8049e50:	83 cf 01             	or     $0x1,%edi
 8049e53:	8b 55 cc             	mov    -0x34(%ebp),%edx
 8049e56:	3b 7a 04             	cmp    0x4(%edx),%edi
 8049e59:	73 05                	jae    0x8049e60
 8049e5b:	8b 52 08             	mov    0x8(%edx),%edx
 8049e5e:	eb f6                	jmp    0x8049e56
 8049e60:	8b 42 0c             	mov    0xc(%edx),%eax
 8049e63:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8049e66:	eb 03                	jmp    0x8049e6b
 8049e68:	89 55 dc             	mov    %edx,-0x24(%ebp)
 8049e6b:	89 cf                	mov    %ecx,%edi
 8049e6d:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 8049e70:	c1 ff 05             	sar    $0x5,%edi
 8049e73:	89 7d cc             	mov    %edi,-0x34(%ebp)
 8049e76:	bf 01 00 00 00       	mov    $0x1,%edi
 8049e7b:	d3 e7                	shl    %cl,%edi
 8049e7d:	8b 4d cc             	mov    -0x34(%ebp),%ecx
 8049e80:	09 bc 88 34 03 00 00 	or     %edi,0x334(%eax,%ecx,4)
 8049e87:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049e8a:	89 46 0c             	mov    %eax,0xc(%esi)
 8049e8d:	89 56 08             	mov    %edx,0x8(%esi)
 8049e90:	89 72 0c             	mov    %esi,0xc(%edx)
 8049e93:	89 70 08             	mov    %esi,0x8(%eax)
 8049e96:	e9 d8 fe ff ff       	jmp    0x8049d73
 8049e9b:	81 7d e0 ff 00 00 00 	cmpl   $0xff,-0x20(%ebp)
 8049ea2:	0f 86 8a 00 00 00    	jbe    0x8049f32
 8049ea8:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8049eab:	8b 8b b0 ff ff ff    	mov    -0x50(%ebx),%ecx
 8049eb1:	8d 44 00 0a          	lea    0xa(%eax,%eax,1),%eax
 8049eb5:	8d 4c 81 04          	lea    0x4(%ecx,%eax,4),%ecx
 8049eb9:	8b 41 0c             	mov    0xc(%ecx),%eax
 8049ebc:	39 c8                	cmp    %ecx,%eax
 8049ebe:	74 72                	je     0x8049f32
 8049ec0:	8b 50 04             	mov    0x4(%eax),%edx
 8049ec3:	83 e2 fc             	and    $0xfffffffc,%edx
 8049ec6:	3b 55 e0             	cmp    -0x20(%ebp),%edx
 8049ec9:	72 62                	jb     0x8049f2d
 8049ecb:	8b 78 08             	mov    0x8(%eax),%edi
 8049ece:	89 d1                	mov    %edx,%ecx
 8049ed0:	2b 4d e0             	sub    -0x20(%ebp),%ecx
 8049ed3:	8b 70 0c             	mov    0xc(%eax),%esi
 8049ed6:	39 47 0c             	cmp    %eax,0xc(%edi)
 8049ed9:	75 05                	jne    0x8049ee0
 8049edb:	39 46 08             	cmp    %eax,0x8(%esi)
 8049ede:	74 05                	je     0x8049ee5
 8049ee0:	e8 fb 09 00 00       	call   0x804a8e0
 8049ee5:	89 77 0c             	mov    %esi,0xc(%edi)
 8049ee8:	83 f9 0f             	cmp    $0xf,%ecx
 8049eeb:	89 7e 08             	mov    %edi,0x8(%esi)
 8049eee:	77 0a                	ja     0x8049efa
 8049ef0:	83 4c 10 04 01       	orl    $0x1,0x4(%eax,%edx,1)
 8049ef5:	e9 9f 03 00 00       	jmp    0x804a299
 8049efa:	8b 7d e0             	mov    -0x20(%ebp),%edi
 8049efd:	8b b3 b0 ff ff ff    	mov    -0x50(%ebx),%esi
 8049f03:	83 c6 34             	add    $0x34,%esi
 8049f06:	8d 14 38             	lea    (%eax,%edi,1),%edx
 8049f09:	89 56 08             	mov    %edx,0x8(%esi)
 8049f0c:	89 56 0c             	mov    %edx,0xc(%esi)
 8049f0f:	89 72 08             	mov    %esi,0x8(%edx)
 8049f12:	89 72 0c             	mov    %esi,0xc(%edx)
 8049f15:	89 fe                	mov    %edi,%esi
 8049f17:	83 ce 01             	or     $0x1,%esi
 8049f1a:	89 70 04             	mov    %esi,0x4(%eax)
 8049f1d:	89 ce                	mov    %ecx,%esi
 8049f1f:	83 ce 01             	or     $0x1,%esi
 8049f22:	89 72 04             	mov    %esi,0x4(%edx)
 8049f25:	89 0c 0a             	mov    %ecx,(%edx,%ecx,1)
 8049f28:	e9 6c 03 00 00       	jmp    0x804a299
 8049f2d:	8b 40 0c             	mov    0xc(%eax),%eax
 8049f30:	eb 8a                	jmp    0x8049ebc
 8049f32:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8049f35:	8b bb b0 ff ff ff    	mov    -0x50(%ebx),%edi
 8049f3b:	ba 01 00 00 00       	mov    $0x1,%edx
 8049f40:	8d 48 01             	lea    0x1(%eax),%ecx
 8049f43:	8d 74 c7 34          	lea    0x34(%edi,%eax,8),%esi
 8049f47:	89 cf                	mov    %ecx,%edi
 8049f49:	8b 83 b0 ff ff ff    	mov    -0x50(%ebx),%eax
 8049f4f:	c1 ef 05             	shr    $0x5,%edi
 8049f52:	d3 e2                	shl    %cl,%edx
 8049f54:	8b 8b b0 ff ff ff    	mov    -0x50(%ebx),%ecx
 8049f5a:	8b 84 b8 34 03 00 00 	mov    0x334(%eax,%edi,4),%eax
 8049f61:	89 4d dc             	mov    %ecx,-0x24(%ebp)
 8049f64:	85 d2                	test   %edx,%edx
 8049f66:	74 04                	je     0x8049f6c
 8049f68:	39 c2                	cmp    %eax,%edx
 8049f6a:	76 2f                	jbe    0x8049f9b
 8049f6c:	47                   	inc    %edi
 8049f6d:	83 ff 02             	cmp    $0x2,%edi
 8049f70:	0f 87 b0 00 00 00    	ja     0x804a026
 8049f76:	8b 83 b0 ff ff ff    	mov    -0x50(%ebx),%eax
 8049f7c:	8b 84 b8 34 03 00 00 	mov    0x334(%eax,%edi,4),%eax
 8049f83:	85 c0                	test   %eax,%eax
 8049f85:	74 e5                	je     0x8049f6c
 8049f87:	89 fa                	mov    %edi,%edx
 8049f89:	8b 8b b0 ff ff ff    	mov    -0x50(%ebx),%ecx
 8049f8f:	c1 e2 06             	shl    $0x6,%edx
 8049f92:	8d 74 91 2c          	lea    0x2c(%ecx,%edx,4),%esi
 8049f96:	ba 01 00 00 00       	mov    $0x1,%edx
 8049f9b:	85 c2                	test   %eax,%edx
 8049f9d:	75 07                	jne    0x8049fa6
 8049f9f:	83 c6 08             	add    $0x8,%esi
 8049fa2:	01 d2                	add    %edx,%edx
 8049fa4:	eb f5                	jmp    0x8049f9b
 8049fa6:	8b 4e 0c             	mov    0xc(%esi),%ecx
 8049fa9:	39 f1                	cmp    %esi,%ecx
 8049fab:	75 17                	jne    0x8049fc4
 8049fad:	89 d1                	mov    %edx,%ecx
 8049faf:	83 c6 08             	add    $0x8,%esi
 8049fb2:	f7 d1                	not    %ecx
 8049fb4:	21 c8                	and    %ecx,%eax
 8049fb6:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 8049fb9:	01 d2                	add    %edx,%edx
 8049fbb:	89 84 b9 34 03 00 00 	mov    %eax,0x334(%ecx,%edi,4)
 8049fc2:	eb a0                	jmp    0x8049f64
 8049fc4:	8b 41 04             	mov    0x4(%ecx),%eax
 8049fc7:	8b 79 0c             	mov    0xc(%ecx),%edi
 8049fca:	83 e0 fc             	and    $0xfffffffc,%eax
 8049fcd:	89 7e 0c             	mov    %edi,0xc(%esi)
 8049fd0:	89 c2                	mov    %eax,%edx
 8049fd2:	89 77 08             	mov    %esi,0x8(%edi)
 8049fd5:	2b 55 e0             	sub    -0x20(%ebp),%edx
 8049fd8:	83 fa 0f             	cmp    $0xf,%edx
 8049fdb:	77 0d                	ja     0x8049fea
 8049fdd:	83 4c 01 04 01       	orl    $0x1,0x4(%ecx,%eax,1)
 8049fe2:	8d 71 08             	lea    0x8(%ecx),%esi
 8049fe5:	e9 c3 02 00 00       	jmp    0x804a2ad
 8049fea:	8b b3 b0 ff ff ff    	mov    -0x50(%ebx),%esi
 8049ff0:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049ff3:	01 c8                	add    %ecx,%eax
 8049ff5:	8d 7e 34             	lea    0x34(%esi),%edi
 8049ff8:	89 46 3c             	mov    %eax,0x3c(%esi)
 8049ffb:	89 46 40             	mov    %eax,0x40(%esi)
 8049ffe:	89 78 08             	mov    %edi,0x8(%eax)
 804a001:	89 78 0c             	mov    %edi,0xc(%eax)
 804a004:	81 7d e0 ff 00 00 00 	cmpl   $0xff,-0x20(%ebp)
 804a00b:	77 03                	ja     0x804a010
 804a00d:	89 46 30             	mov    %eax,0x30(%esi)
 804a010:	8b 75 e0             	mov    -0x20(%ebp),%esi
 804a013:	83 ce 01             	or     $0x1,%esi
 804a016:	89 71 04             	mov    %esi,0x4(%ecx)
 804a019:	89 d6                	mov    %edx,%esi
 804a01b:	83 ce 01             	or     $0x1,%esi
 804a01e:	89 70 04             	mov    %esi,0x4(%eax)
 804a021:	89 14 10             	mov    %edx,(%eax,%edx,1)
 804a024:	eb bc                	jmp    0x8049fe2
 804a026:	8b 93 b0 ff ff ff    	mov    -0x50(%ebx),%edx
 804a02c:	8b 7d e0             	mov    -0x20(%ebp),%edi
 804a02f:	8b 42 2c             	mov    0x2c(%edx),%eax
 804a032:	8d 77 10             	lea    0x10(%edi),%esi
 804a035:	89 75 c8             	mov    %esi,-0x38(%ebp)
 804a038:	8b 48 04             	mov    0x4(%eax),%ecx
 804a03b:	83 e1 fc             	and    $0xfffffffc,%ecx
 804a03e:	39 f1                	cmp    %esi,%ecx
 804a040:	0f 83 3d 02 00 00    	jae    0x804a283
 804a046:	8b 82 5c 03 00 00    	mov    0x35c(%edx),%eax
 804a04c:	f6 02 02             	testb  $0x2,(%edx)
 804a04f:	8d 48 ff             	lea    -0x1(%eax),%ecx
 804a052:	89 4d d8             	mov    %ecx,-0x28(%ebp)
 804a055:	74 1b                	je     0x804a072
 804a057:	52                   	push   %edx
 804a058:	e8 4b 05 00 00       	call   0x804a5a8
 804a05d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a060:	83 e8 07             	sub    $0x7,%eax
 804a063:	50                   	push   %eax
 804a064:	e8 ef fb ff ff       	call   0x8049c58
 804a069:	89 c6                	mov    %eax,%esi
 804a06b:	58                   	pop    %eax
 804a06c:	5a                   	pop    %edx
 804a06d:	e9 3b 02 00 00       	jmp    0x804a2ad
 804a072:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 804a075:	3b 8a 4c 03 00 00    	cmp    0x34c(%edx),%ecx
 804a07b:	0f 82 c6 00 00 00    	jb     0x804a147
 804a081:	8b 8a 54 03 00 00    	mov    0x354(%edx),%ecx
 804a087:	39 8a 50 03 00 00    	cmp    %ecx,0x350(%edx)
 804a08d:	0f 8d b4 00 00 00    	jge    0x804a147
 804a093:	8b 7d e0             	mov    -0x20(%ebp),%edi
 804a096:	8d 74 07 0a          	lea    0xa(%edi,%eax,1),%esi
 804a09a:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804a09d:	f7 d0                	not    %eax
 804a09f:	21 c6                	and    %eax,%esi
 804a0a1:	39 fe                	cmp    %edi,%esi
 804a0a3:	0f 86 9e 00 00 00    	jbe    0x804a147
 804a0a9:	6a 00                	push   $0x0
 804a0ab:	6a 00                	push   $0x0
 804a0ad:	6a 22                	push   $0x22
 804a0af:	6a 03                	push   $0x3
 804a0b1:	56                   	push   %esi
 804a0b2:	6a 00                	push   $0x0
 804a0b4:	e8 3b 1d 00 00       	call   0x804bdf4
 804a0b9:	83 c4 18             	add    $0x18,%esp
 804a0bc:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a0bf:	0f 84 82 00 00 00    	je     0x804a147
 804a0c5:	89 c1                	mov    %eax,%ecx
 804a0c7:	83 e1 07             	and    $0x7,%ecx
 804a0ca:	74 13                	je     0x804a0df
 804a0cc:	ba 08 00 00 00       	mov    $0x8,%edx
 804a0d1:	89 f7                	mov    %esi,%edi
 804a0d3:	29 ca                	sub    %ecx,%edx
 804a0d5:	01 d0                	add    %edx,%eax
 804a0d7:	29 d7                	sub    %edx,%edi
 804a0d9:	89 10                	mov    %edx,(%eax)
 804a0db:	89 fa                	mov    %edi,%edx
 804a0dd:	eb 08                	jmp    0x804a0e7
 804a0df:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a0e5:	89 f2                	mov    %esi,%edx
 804a0e7:	83 ca 02             	or     $0x2,%edx
 804a0ea:	89 50 04             	mov    %edx,0x4(%eax)
 804a0ed:	8b 93 b0 ff ff ff    	mov    -0x50(%ebx),%edx
 804a0f3:	8b ba 50 03 00 00    	mov    0x350(%edx),%edi
 804a0f9:	8d 4f 01             	lea    0x1(%edi),%ecx
 804a0fc:	89 8a 50 03 00 00    	mov    %ecx,0x350(%edx)
 804a102:	3b 8a 58 03 00 00    	cmp    0x358(%edx),%ecx
 804a108:	7e 06                	jle    0x804a110
 804a10a:	89 8a 58 03 00 00    	mov    %ecx,0x358(%edx)
 804a110:	03 b2 64 03 00 00    	add    0x364(%edx),%esi
 804a116:	89 b2 64 03 00 00    	mov    %esi,0x364(%edx)
 804a11c:	3b b2 70 03 00 00    	cmp    0x370(%edx),%esi
 804a122:	76 06                	jbe    0x804a12a
 804a124:	89 b2 70 03 00 00    	mov    %esi,0x370(%edx)
 804a12a:	03 b2 68 03 00 00    	add    0x368(%edx),%esi
 804a130:	3b b2 74 03 00 00    	cmp    0x374(%edx),%esi
 804a136:	0f 86 5d 01 00 00    	jbe    0x804a299
 804a13c:	89 b2 74 03 00 00    	mov    %esi,0x374(%edx)
 804a142:	e9 52 01 00 00       	jmp    0x804a299
 804a147:	8b 93 b0 ff ff ff    	mov    -0x50(%ebx),%edx
 804a14d:	8b 7d e0             	mov    -0x20(%ebp),%edi
 804a150:	8b 42 2c             	mov    0x2c(%edx),%eax
 804a153:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804a156:	8b 48 04             	mov    0x4(%eax),%ecx
 804a159:	89 4d dc             	mov    %ecx,-0x24(%ebp)
 804a15c:	83 65 dc fc          	andl   $0xfffffffc,-0x24(%ebp)
 804a160:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 804a163:	01 c8                	add    %ecx,%eax
 804a165:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804a168:	8b 82 48 03 00 00    	mov    0x348(%edx),%eax
 804a16e:	8d 44 07 10          	lea    0x10(%edi,%eax,1),%eax
 804a172:	89 c7                	mov    %eax,%edi
 804a174:	29 cf                	sub    %ecx,%edi
 804a176:	f6 82 60 03 00 00 01 	testb  $0x1,0x360(%edx)
 804a17d:	75 02                	jne    0x804a181
 804a17f:	89 c7                	mov    %eax,%edi
 804a181:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 804a184:	89 c8                	mov    %ecx,%eax
 804a186:	01 cf                	add    %ecx,%edi
 804a188:	f7 d0                	not    %eax
 804a18a:	21 c7                	and    %eax,%edi
 804a18c:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804a18f:	89 fe                	mov    %edi,%esi
 804a191:	85 ff                	test   %edi,%edi
 804a193:	7f 17                	jg     0x804a1ac
 804a195:	f6 82 60 03 00 00 01 	testb  $0x1,0x360(%edx)
 804a19c:	74 27                	je     0x804a1c5
 804a19e:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a1a1:	03 45 d8             	add    -0x28(%ebp),%eax
 804a1a4:	8d 34 38             	lea    (%eax,%edi,1),%esi
 804a1a7:	23 75 cc             	and    -0x34(%ebp),%esi
 804a1aa:	eb 19                	jmp    0x804a1c5
 804a1ac:	89 55 c4             	mov    %edx,-0x3c(%ebp)
 804a1af:	57                   	push   %edi
 804a1b0:	e8 23 20 00 00       	call   0x804c1d8
 804a1b5:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 804a1b8:	89 c1                	mov    %eax,%ecx
 804a1ba:	58                   	pop    %eax
 804a1bb:	83 f9 ff             	cmp    $0xffffffff,%ecx
 804a1be:	74 d5                	je     0x804a195
 804a1c0:	83 c8 ff             	or     $0xffffffff,%eax
 804a1c3:	eb 44                	jmp    0x804a209
 804a1c5:	81 fe ff ff 0f 00    	cmp    $0xfffff,%esi
 804a1cb:	77 05                	ja     0x804a1d2
 804a1cd:	be 00 00 10 00       	mov    $0x100000,%esi
 804a1d2:	3b 75 e0             	cmp    -0x20(%ebp),%esi
 804a1d5:	0f 86 c3 00 00 00    	jbe    0x804a29e
 804a1db:	6a 00                	push   $0x0
 804a1dd:	6a 00                	push   $0x0
 804a1df:	6a 22                	push   $0x22
 804a1e1:	6a 03                	push   $0x3
 804a1e3:	56                   	push   %esi
 804a1e4:	6a 00                	push   $0x0
 804a1e6:	e8 09 1c 00 00       	call   0x804bdf4
 804a1eb:	83 c4 18             	add    $0x18,%esp
 804a1ee:	89 c1                	mov    %eax,%ecx
 804a1f0:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a1f3:	0f 84 a5 00 00 00    	je     0x804a29e
 804a1f9:	8b 93 b0 ff ff ff    	mov    -0x50(%ebx),%edx
 804a1ff:	8d 04 30             	lea    (%eax,%esi,1),%eax
 804a202:	83 a2 60 03 00 00 fe 	andl   $0xfffffffe,0x360(%edx)
 804a209:	8b 93 b0 ff ff ff    	mov    -0x50(%ebx),%edx
 804a20f:	8b ba 68 03 00 00    	mov    0x368(%edx),%edi
 804a215:	01 f7                	add    %esi,%edi
 804a217:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a21a:	89 7d c4             	mov    %edi,-0x3c(%ebp)
 804a21d:	89 ba 68 03 00 00    	mov    %edi,0x368(%edx)
 804a223:	0f 94 45 c3          	sete   -0x3d(%ebp)
 804a227:	0f 85 94 00 00 00    	jne    0x804a2c1
 804a22d:	3b 4d d0             	cmp    -0x30(%ebp),%ecx
 804a230:	0f 85 8b 00 00 00    	jne    0x804a2c1
 804a236:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a239:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 804a23c:	01 f0                	add    %esi,%eax
 804a23e:	83 c8 01             	or     $0x1,%eax
 804a241:	89 41 04             	mov    %eax,0x4(%ecx)
 804a244:	8b 93 b0 ff ff ff    	mov    -0x50(%ebx),%edx
 804a24a:	8b 82 68 03 00 00    	mov    0x368(%edx),%eax
 804a250:	3b 82 6c 03 00 00    	cmp    0x36c(%edx),%eax
 804a256:	76 06                	jbe    0x804a25e
 804a258:	89 82 6c 03 00 00    	mov    %eax,0x36c(%edx)
 804a25e:	03 82 64 03 00 00    	add    0x364(%edx),%eax
 804a264:	3b 82 74 03 00 00    	cmp    0x374(%edx),%eax
 804a26a:	76 06                	jbe    0x804a272
 804a26c:	89 82 74 03 00 00    	mov    %eax,0x374(%edx)
 804a272:	8b 42 2c             	mov    0x2c(%edx),%eax
 804a275:	8b 48 04             	mov    0x4(%eax),%ecx
 804a278:	83 e1 fc             	and    $0xfffffffc,%ecx
 804a27b:	3b 4d c8             	cmp    -0x38(%ebp),%ecx
 804a27e:	72 1e                	jb     0x804a29e
 804a280:	8b 7d e0             	mov    -0x20(%ebp),%edi
 804a283:	8d 34 38             	lea    (%eax,%edi,1),%esi
 804a286:	29 f9                	sub    %edi,%ecx
 804a288:	89 72 2c             	mov    %esi,0x2c(%edx)
 804a28b:	89 fa                	mov    %edi,%edx
 804a28d:	83 ca 01             	or     $0x1,%edx
 804a290:	83 c9 01             	or     $0x1,%ecx
 804a293:	89 50 04             	mov    %edx,0x4(%eax)
 804a296:	89 4e 04             	mov    %ecx,0x4(%esi)
 804a299:	8d 70 08             	lea    0x8(%eax),%esi
 804a29c:	eb 0f                	jmp    0x804a2ad
 804a29e:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804a2a4:	31 f6                	xor    %esi,%esi
 804a2a6:	65 c7 00 0c 00 00 00 	movl   $0xc,%gs:(%eax)
 804a2ad:	8d 55 e4             	lea    -0x1c(%ebp),%edx
 804a2b0:	6a 01                	push   $0x1
 804a2b2:	52                   	push   %edx
 804a2b3:	e8 f7 17 00 00       	call   0x804baaf
 804a2b8:	58                   	pop    %eax
 804a2b9:	89 f0                	mov    %esi,%eax
 804a2bb:	5a                   	pop    %edx
 804a2bc:	e9 4b 01 00 00       	jmp    0x804a40c
 804a2c1:	8b ba 60 03 00 00    	mov    0x360(%edx),%edi
 804a2c7:	f7 c7 01 00 00 00    	test   $0x1,%edi
 804a2cd:	74 14                	je     0x804a2e3
 804a2cf:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804a2d3:	74 0e                	je     0x804a2e3
 804a2d5:	3b 4d d0             	cmp    -0x30(%ebp),%ecx
 804a2d8:	73 09                	jae    0x804a2e3
 804a2da:	83 e7 fe             	and    $0xfffffffe,%edi
 804a2dd:	89 ba 60 03 00 00    	mov    %edi,0x360(%edx)
 804a2e3:	8b bb b0 ff ff ff    	mov    -0x50(%ebx),%edi
 804a2e9:	f6 87 60 03 00 00 01 	testb  $0x1,0x360(%edi)
 804a2f0:	74 74                	je     0x804a366
 804a2f2:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804a2f6:	74 0e                	je     0x804a306
 804a2f8:	89 c8                	mov    %ecx,%eax
 804a2fa:	2b 45 d0             	sub    -0x30(%ebp),%eax
 804a2fd:	03 45 c4             	add    -0x3c(%ebp),%eax
 804a300:	89 87 68 03 00 00    	mov    %eax,0x368(%edi)
 804a306:	89 c8                	mov    %ecx,%eax
 804a308:	83 e0 07             	and    $0x7,%eax
 804a30b:	74 0c                	je     0x804a319
 804a30d:	ba 08 00 00 00       	mov    $0x8,%edx
 804a312:	29 c2                	sub    %eax,%edx
 804a314:	8d 3c 11             	lea    (%ecx,%edx,1),%edi
 804a317:	eb 04                	jmp    0x804a31d
 804a319:	89 cf                	mov    %ecx,%edi
 804a31b:	31 d2                	xor    %edx,%edx
 804a31d:	03 55 dc             	add    -0x24(%ebp),%edx
 804a320:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 804a323:	8d 04 32             	lea    (%edx,%esi,1),%eax
 804a326:	01 c8                	add    %ecx,%eax
 804a328:	29 c2                	sub    %eax,%edx
 804a32a:	03 45 d8             	add    -0x28(%ebp),%eax
 804a32d:	23 45 cc             	and    -0x34(%ebp),%eax
 804a330:	01 c2                	add    %eax,%edx
 804a332:	52                   	push   %edx
 804a333:	89 55 d8             	mov    %edx,-0x28(%ebp)
 804a336:	e8 9d 1e 00 00       	call   0x804c1d8
 804a33b:	5a                   	pop    %edx
 804a33c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a33f:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804a342:	8b 4d d0             	mov    -0x30(%ebp),%ecx
 804a345:	75 09                	jne    0x804a350
 804a347:	6a 00                	push   $0x0
 804a349:	e8 8a 1e 00 00       	call   0x804c1d8
 804a34e:	eb 39                	jmp    0x804a389
 804a350:	39 c8                	cmp    %ecx,%eax
 804a352:	73 41                	jae    0x804a395
 804a354:	8b 93 b0 ff ff ff    	mov    -0x50(%ebx),%edx
 804a35a:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 804a35d:	83 a2 60 03 00 00 fe 	andl   $0xfffffffe,0x360(%edx)
 804a364:	eb 24                	jmp    0x804a38a
 804a366:	31 d2                	xor    %edx,%edx
 804a368:	89 cf                	mov    %ecx,%edi
 804a36a:	80 7d c3 00          	cmpb   $0x0,-0x3d(%ebp)
 804a36e:	74 25                	je     0x804a395
 804a370:	6a 00                	push   $0x0
 804a372:	e8 61 1e 00 00       	call   0x804c1d8
 804a377:	89 c2                	mov    %eax,%edx
 804a379:	8b 8b b0 ff ff ff    	mov    -0x50(%ebx),%ecx
 804a37f:	29 fa                	sub    %edi,%edx
 804a381:	29 f2                	sub    %esi,%edx
 804a383:	01 91 68 03 00 00    	add    %edx,0x368(%ecx)
 804a389:	5e                   	pop    %esi
 804a38a:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a38d:	0f 84 b1 fe ff ff    	je     0x804a244
 804a393:	31 d2                	xor    %edx,%edx
 804a395:	29 f8                	sub    %edi,%eax
 804a397:	8b b3 b0 ff ff ff    	mov    -0x50(%ebx),%esi
 804a39d:	01 d0                	add    %edx,%eax
 804a39f:	83 c8 01             	or     $0x1,%eax
 804a3a2:	89 7e 2c             	mov    %edi,0x2c(%esi)
 804a3a5:	89 47 04             	mov    %eax,0x4(%edi)
 804a3a8:	01 96 68 03 00 00    	add    %edx,0x368(%esi)
 804a3ae:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804a3b2:	0f 84 8c fe ff ff    	je     0x804a244
 804a3b8:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a3bb:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 804a3be:	83 e8 0c             	sub    $0xc,%eax
 804a3c1:	83 e0 f8             	and    $0xfffffff8,%eax
 804a3c4:	89 c2                	mov    %eax,%edx
 804a3c6:	83 ca 01             	or     $0x1,%edx
 804a3c9:	83 f8 0f             	cmp    $0xf,%eax
 804a3cc:	89 51 04             	mov    %edx,0x4(%ecx)
 804a3cf:	c7 44 01 04 05 00 00 	movl   $0x5,0x4(%ecx,%eax,1)
 804a3d6:	00 
 804a3d7:	c7 44 01 08 05 00 00 	movl   $0x5,0x8(%ecx,%eax,1)
 804a3de:	00 
 804a3df:	0f 86 5f fe ff ff    	jbe    0x804a244
 804a3e5:	89 c8                	mov    %ecx,%eax
 804a3e7:	8b be 44 03 00 00    	mov    0x344(%esi),%edi
 804a3ed:	83 c0 08             	add    $0x8,%eax
 804a3f0:	c7 86 44 03 00 00 ff 	movl   $0xffffffff,0x344(%esi)
 804a3f7:	ff ff ff 
 804a3fa:	50                   	push   %eax
 804a3fb:	e8 51 03 00 00       	call   0x804a751
 804a400:	89 be 44 03 00 00    	mov    %edi,0x344(%esi)
 804a406:	59                   	pop    %ecx
 804a407:	e9 38 fe ff ff       	jmp    0x804a244
 804a40c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804a40f:	5b                   	pop    %ebx
 804a410:	5e                   	pop    %esi
 804a411:	5f                   	pop    %edi
 804a412:	5d                   	pop    %ebp
 804a413:	c3                   	ret    
 804a414:	55                   	push   %ebp
 804a415:	89 e5                	mov    %esp,%ebp
 804a417:	57                   	push   %edi
 804a418:	56                   	push   %esi
 804a419:	53                   	push   %ebx
 804a41a:	83 ec 14             	sub    $0x14,%esp
 804a41d:	e8 55 e8 ff ff       	call   0x8048c77
 804a422:	81 c3 66 7c 00 00    	add    $0x7c66,%ebx
 804a428:	8b 75 08             	mov    0x8(%ebp),%esi
 804a42b:	8b 7d 0c             	mov    0xc(%ebp),%edi
 804a42e:	89 f1                	mov    %esi,%ecx
 804a430:	0f af cf             	imul   %edi,%ecx
 804a433:	85 f6                	test   %esi,%esi
 804a435:	74 1e                	je     0x804a455
 804a437:	31 d2                	xor    %edx,%edx
 804a439:	89 c8                	mov    %ecx,%eax
 804a43b:	f7 f6                	div    %esi
 804a43d:	39 c7                	cmp    %eax,%edi
 804a43f:	74 14                	je     0x804a455
 804a441:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804a447:	65 c7 00 0c 00 00 00 	movl   $0xc,%gs:(%eax)
 804a44e:	31 c0                	xor    %eax,%eax
 804a450:	e9 b0 00 00 00       	jmp    0x804a505
 804a455:	8b b3 d4 ff ff ff    	mov    -0x2c(%ebx),%esi
 804a45b:	8d 7d e4             	lea    -0x1c(%ebp),%edi
 804a45e:	56                   	push   %esi
 804a45f:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 804a462:	ff b3 b4 ff ff ff    	pushl  -0x4c(%ebx)
 804a468:	57                   	push   %edi
 804a469:	e8 2e 16 00 00       	call   0x804ba9c
 804a46e:	56                   	push   %esi
 804a46f:	e8 1a 16 00 00       	call   0x804ba8e
 804a474:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 804a477:	51                   	push   %ecx
 804a478:	e8 db f7 ff ff       	call   0x8049c58
 804a47d:	83 c4 14             	add    $0x14,%esp
 804a480:	89 c6                	mov    %eax,%esi
 804a482:	85 c0                	test   %eax,%eax
 804a484:	74 73                	je     0x804a4f9
 804a486:	8b 50 fc             	mov    -0x4(%eax),%edx
 804a489:	f6 c2 02             	test   $0x2,%dl
 804a48c:	75 6b                	jne    0x804a4f9
 804a48e:	83 e2 fc             	and    $0xfffffffc,%edx
 804a491:	83 ea 04             	sub    $0x4,%edx
 804a494:	89 d0                	mov    %edx,%eax
 804a496:	c1 e8 02             	shr    $0x2,%eax
 804a499:	83 f8 09             	cmp    $0x9,%eax
 804a49c:	76 0e                	jbe    0x804a4ac
 804a49e:	52                   	push   %edx
 804a49f:	6a 00                	push   $0x0
 804a4a1:	56                   	push   %esi
 804a4a2:	e8 e5 36 00 00       	call   0x804db8c
 804a4a7:	83 c4 0c             	add    $0xc,%esp
 804a4aa:	eb 4d                	jmp    0x804a4f9
 804a4ac:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
 804a4b2:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
 804a4b9:	c7 46 08 00 00 00 00 	movl   $0x0,0x8(%esi)
 804a4c0:	83 f8 04             	cmp    $0x4,%eax
 804a4c3:	76 34                	jbe    0x804a4f9
 804a4c5:	c7 46 0c 00 00 00 00 	movl   $0x0,0xc(%esi)
 804a4cc:	c7 46 10 00 00 00 00 	movl   $0x0,0x10(%esi)
 804a4d3:	83 f8 06             	cmp    $0x6,%eax
 804a4d6:	76 21                	jbe    0x804a4f9
 804a4d8:	c7 46 14 00 00 00 00 	movl   $0x0,0x14(%esi)
 804a4df:	c7 46 18 00 00 00 00 	movl   $0x0,0x18(%esi)
 804a4e6:	83 f8 09             	cmp    $0x9,%eax
 804a4e9:	75 0e                	jne    0x804a4f9
 804a4eb:	c7 46 1c 00 00 00 00 	movl   $0x0,0x1c(%esi)
 804a4f2:	c7 46 20 00 00 00 00 	movl   $0x0,0x20(%esi)
 804a4f9:	6a 01                	push   $0x1
 804a4fb:	57                   	push   %edi
 804a4fc:	e8 ae 15 00 00       	call   0x804baaf
 804a501:	58                   	pop    %eax
 804a502:	89 f0                	mov    %esi,%eax
 804a504:	5a                   	pop    %edx
 804a505:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804a508:	5b                   	pop    %ebx
 804a509:	5e                   	pop    %esi
 804a50a:	5f                   	pop    %edi
 804a50b:	5d                   	pop    %ebp
 804a50c:	c3                   	ret    
 804a50d:	66 90                	xchg   %ax,%ax
 804a50f:	90                   	nop
 804a510:	55                   	push   %ebp
 804a511:	89 e5                	mov    %esp,%ebp
 804a513:	57                   	push   %edi
 804a514:	56                   	push   %esi
 804a515:	53                   	push   %ebx
 804a516:	e8 5c e7 ff ff       	call   0x8048c77
 804a51b:	81 c3 6d 7b 00 00    	add    $0x7b6d,%ebx
 804a521:	51                   	push   %ecx
 804a522:	8b b3 b0 ff ff ff    	mov    -0x50(%ebx),%esi
 804a528:	8b 56 2c             	mov    0x2c(%esi),%edx
 804a52b:	8b 8e 5c 03 00 00    	mov    0x35c(%esi),%ecx
 804a531:	8b 7a 04             	mov    0x4(%edx),%edi
 804a534:	83 e7 fc             	and    $0xfffffffc,%edi
 804a537:	8d 54 39 ef          	lea    -0x11(%ecx,%edi,1),%edx
 804a53b:	29 c2                	sub    %eax,%edx
 804a53d:	89 d0                	mov    %edx,%eax
 804a53f:	31 d2                	xor    %edx,%edx
 804a541:	f7 f1                	div    %ecx
 804a543:	8d 50 ff             	lea    -0x1(%eax),%edx
 804a546:	0f af d1             	imul   %ecx,%edx
 804a549:	85 d2                	test   %edx,%edx
 804a54b:	7f 04                	jg     0x804a551
 804a54d:	31 c0                	xor    %eax,%eax
 804a54f:	eb 4f                	jmp    0x804a5a0
 804a551:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804a554:	6a 00                	push   $0x0
 804a556:	e8 7d 1c 00 00       	call   0x804c1d8
 804a55b:	5a                   	pop    %edx
 804a55c:	89 c1                	mov    %eax,%ecx
 804a55e:	8b 46 2c             	mov    0x2c(%esi),%eax
 804a561:	01 f8                	add    %edi,%eax
 804a563:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804a566:	39 c1                	cmp    %eax,%ecx
 804a568:	75 e3                	jne    0x804a54d
 804a56a:	f7 da                	neg    %edx
 804a56c:	52                   	push   %edx
 804a56d:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 804a570:	e8 63 1c 00 00       	call   0x804c1d8
 804a575:	6a 00                	push   $0x0
 804a577:	e8 5c 1c 00 00       	call   0x804c1d8
 804a57c:	5a                   	pop    %edx
 804a57d:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a580:	59                   	pop    %ecx
 804a581:	74 ca                	je     0x804a54d
 804a583:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804a586:	29 c1                	sub    %eax,%ecx
 804a588:	74 c3                	je     0x804a54d
 804a58a:	8b 46 2c             	mov    0x2c(%esi),%eax
 804a58d:	29 cf                	sub    %ecx,%edi
 804a58f:	83 cf 01             	or     $0x1,%edi
 804a592:	29 8e 68 03 00 00    	sub    %ecx,0x368(%esi)
 804a598:	89 78 04             	mov    %edi,0x4(%eax)
 804a59b:	b8 01 00 00 00       	mov    $0x1,%eax
 804a5a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804a5a3:	5b                   	pop    %ebx
 804a5a4:	5e                   	pop    %esi
 804a5a5:	5f                   	pop    %edi
 804a5a6:	5d                   	pop    %ebp
 804a5a7:	c3                   	ret    
 804a5a8:	55                   	push   %ebp
 804a5a9:	89 e5                	mov    %esp,%ebp
 804a5ab:	57                   	push   %edi
 804a5ac:	56                   	push   %esi
 804a5ad:	83 ec 1c             	sub    $0x1c,%esp
 804a5b0:	8b 75 08             	mov    0x8(%ebp),%esi
 804a5b3:	8b 06                	mov    (%esi),%eax
 804a5b5:	85 c0                	test   %eax,%eax
 804a5b7:	0f 84 ff 00 00 00    	je     0x804a6bc
 804a5bd:	83 e0 fd             	and    $0xfffffffd,%eax
 804a5c0:	8d 4e 34             	lea    0x34(%esi),%ecx
 804a5c3:	89 06                	mov    %eax,(%esi)
 804a5c5:	89 4d e8             	mov    %ecx,-0x18(%ebp)
 804a5c8:	c1 e8 03             	shr    $0x3,%eax
 804a5cb:	8d 44 86 fc          	lea    -0x4(%esi,%eax,4),%eax
 804a5cf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a5d2:	8d 46 04             	lea    0x4(%esi),%eax
 804a5d5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a5d8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a5db:	8b 00                	mov    (%eax),%eax
 804a5dd:	85 c0                	test   %eax,%eax
 804a5df:	75 14                	jne    0x804a5f5
 804a5e1:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
 804a5e5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a5e8:	83 e8 04             	sub    $0x4,%eax
 804a5eb:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
 804a5ee:	75 e8                	jne    0x804a5d8
 804a5f0:	e9 29 01 00 00       	jmp    0x804a71e
 804a5f5:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804a5f8:	c7 01 00 00 00 00    	movl   $0x0,(%ecx)
 804a5fe:	8b 78 08             	mov    0x8(%eax),%edi
 804a601:	8b 50 04             	mov    0x4(%eax),%edx
 804a604:	89 7d e0             	mov    %edi,-0x20(%ebp)
 804a607:	89 d7                	mov    %edx,%edi
 804a609:	83 e7 fe             	and    $0xfffffffe,%edi
 804a60c:	89 7d ec             	mov    %edi,-0x14(%ebp)
 804a60f:	01 c7                	add    %eax,%edi
 804a611:	8b 4f 04             	mov    0x4(%edi),%ecx
 804a614:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 804a617:	83 65 f4 fc          	andl   $0xfffffffc,-0xc(%ebp)
 804a61b:	80 e2 01             	and    $0x1,%dl
 804a61e:	75 2c                	jne    0x804a64c
 804a620:	8b 10                	mov    (%eax),%edx
 804a622:	29 d0                	sub    %edx,%eax
 804a624:	01 55 ec             	add    %edx,-0x14(%ebp)
 804a627:	8b 50 08             	mov    0x8(%eax),%edx
 804a62a:	8b 48 0c             	mov    0xc(%eax),%ecx
 804a62d:	89 55 dc             	mov    %edx,-0x24(%ebp)
 804a630:	8b 52 0c             	mov    0xc(%edx),%edx
 804a633:	39 c2                	cmp    %eax,%edx
 804a635:	74 05                	je     0x804a63c
 804a637:	e8 a4 02 00 00       	call   0x804a8e0
 804a63c:	8b 41 08             	mov    0x8(%ecx),%eax
 804a63f:	39 d0                	cmp    %edx,%eax
 804a641:	75 f4                	jne    0x804a637
 804a643:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804a646:	89 4a 0c             	mov    %ecx,0xc(%edx)
 804a649:	89 51 08             	mov    %edx,0x8(%ecx)
 804a64c:	3b 7e 2c             	cmp    0x2c(%esi),%edi
 804a64f:	74 4c                	je     0x804a69d
 804a651:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804a654:	8b 54 0f 04          	mov    0x4(%edi,%ecx,1),%edx
 804a658:	89 4f 04             	mov    %ecx,0x4(%edi)
 804a65b:	80 e2 01             	and    $0x1,%dl
 804a65e:	75 19                	jne    0x804a679
 804a660:	01 4d ec             	add    %ecx,-0x14(%ebp)
 804a663:	8b 4f 08             	mov    0x8(%edi),%ecx
 804a666:	8b 57 0c             	mov    0xc(%edi),%edx
 804a669:	39 79 0c             	cmp    %edi,0xc(%ecx)
 804a66c:	75 c9                	jne    0x804a637
 804a66e:	39 7a 08             	cmp    %edi,0x8(%edx)
 804a671:	75 c4                	jne    0x804a637
 804a673:	89 51 0c             	mov    %edx,0xc(%ecx)
 804a676:	89 4a 08             	mov    %ecx,0x8(%edx)
 804a679:	8b 7d ec             	mov    -0x14(%ebp),%edi
 804a67c:	8b 56 3c             	mov    0x3c(%esi),%edx
 804a67f:	89 f9                	mov    %edi,%ecx
 804a681:	89 46 3c             	mov    %eax,0x3c(%esi)
 804a684:	83 c9 01             	or     $0x1,%ecx
 804a687:	89 42 0c             	mov    %eax,0xc(%edx)
 804a68a:	89 48 04             	mov    %ecx,0x4(%eax)
 804a68d:	8b 4d e8             	mov    -0x18(%ebp),%ecx
 804a690:	89 48 0c             	mov    %ecx,0xc(%eax)
 804a693:	89 f9                	mov    %edi,%ecx
 804a695:	89 50 08             	mov    %edx,0x8(%eax)
 804a698:	89 3c 08             	mov    %edi,(%eax,%ecx,1)
 804a69b:	eb 0f                	jmp    0x804a6ac
 804a69d:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804a6a0:	03 55 f4             	add    -0xc(%ebp),%edx
 804a6a3:	83 ca 01             	or     $0x1,%edx
 804a6a6:	89 50 04             	mov    %edx,0x4(%eax)
 804a6a9:	89 46 2c             	mov    %eax,0x2c(%esi)
 804a6ac:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a6af:	85 c0                	test   %eax,%eax
 804a6b1:	0f 85 47 ff ff ff    	jne    0x804a5fe
 804a6b7:	e9 25 ff ff ff       	jmp    0x804a5e1
 804a6bc:	b8 01 00 00 00       	mov    $0x1,%eax
 804a6c1:	8d 54 00 0a          	lea    0xa(%eax,%eax,1),%edx
 804a6c5:	40                   	inc    %eax
 804a6c6:	83 f8 60             	cmp    $0x60,%eax
 804a6c9:	8d 54 96 04          	lea    0x4(%esi,%edx,4),%edx
 804a6cd:	89 52 0c             	mov    %edx,0xc(%edx)
 804a6d0:	89 52 08             	mov    %edx,0x8(%edx)
 804a6d3:	75 ec                	jne    0x804a6c1
 804a6d5:	83 8e 60 03 00 00 01 	orl    $0x1,0x360(%esi)
 804a6dc:	8d 46 34             	lea    0x34(%esi),%eax
 804a6df:	c7 86 48 03 00 00 00 	movl   $0x0,0x348(%esi)
 804a6e6:	00 00 00 
 804a6e9:	c7 86 54 03 00 00 00 	movl   $0x10000,0x354(%esi)
 804a6f0:	00 01 00 
 804a6f3:	c7 86 4c 03 00 00 00 	movl   $0x40000,0x34c(%esi)
 804a6fa:	00 04 00 
 804a6fd:	c7 86 44 03 00 00 00 	movl   $0x40000,0x344(%esi)
 804a704:	00 04 00 
 804a707:	c7 06 48 00 00 00    	movl   $0x48,(%esi)
 804a70d:	89 46 2c             	mov    %eax,0x2c(%esi)
 804a710:	6a 1e                	push   $0x1e
 804a712:	e8 a1 0b 00 00       	call   0x804b2b8
 804a717:	89 86 5c 03 00 00    	mov    %eax,0x35c(%esi)
 804a71d:	5e                   	pop    %esi
 804a71e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804a721:	5e                   	pop    %esi
 804a722:	5f                   	pop    %edi
 804a723:	5d                   	pop    %ebp
 804a724:	c3                   	ret    
 804a725:	55                   	push   %ebp
 804a726:	89 e5                	mov    %esp,%ebp
 804a728:	56                   	push   %esi
 804a729:	53                   	push   %ebx
 804a72a:	e8 48 e5 ff ff       	call   0x8048c77
 804a72f:	81 c3 59 79 00 00    	add    $0x7959,%ebx
 804a735:	ff b3 b0 ff ff ff    	pushl  -0x50(%ebx)
 804a73b:	8b 75 08             	mov    0x8(%ebp),%esi
 804a73e:	e8 65 fe ff ff       	call   0x804a5a8
 804a743:	58                   	pop    %eax
 804a744:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804a747:	89 f0                	mov    %esi,%eax
 804a749:	5b                   	pop    %ebx
 804a74a:	5e                   	pop    %esi
 804a74b:	5d                   	pop    %ebp
 804a74c:	e9 bf fd ff ff       	jmp    0x804a510
 804a751:	55                   	push   %ebp
 804a752:	89 e5                	mov    %esp,%ebp
 804a754:	57                   	push   %edi
 804a755:	56                   	push   %esi
 804a756:	53                   	push   %ebx
 804a757:	83 ec 1c             	sub    $0x1c,%esp
 804a75a:	e8 18 e5 ff ff       	call   0x8048c77
 804a75f:	81 c3 29 79 00 00    	add    $0x7929,%ebx
 804a765:	8b 75 08             	mov    0x8(%ebp),%esi
 804a768:	85 f6                	test   %esi,%esi
 804a76a:	0f 84 67 01 00 00    	je     0x804a8d7
 804a770:	8b bb d4 ff ff ff    	mov    -0x2c(%ebx),%edi
 804a776:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804a779:	57                   	push   %edi
 804a77a:	ff b3 b4 ff ff ff    	pushl  -0x4c(%ebx)
 804a780:	50                   	push   %eax
 804a781:	e8 16 13 00 00       	call   0x804ba9c
 804a786:	57                   	push   %edi
 804a787:	e8 02 13 00 00       	call   0x804ba8e
 804a78c:	8b 8b b0 ff ff ff    	mov    -0x50(%ebx),%ecx
 804a792:	8b 46 fc             	mov    -0x4(%esi),%eax
 804a795:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804a798:	83 e0 fc             	and    $0xfffffffc,%eax
 804a79b:	8b 39                	mov    (%ecx),%edi
 804a79d:	83 c4 10             	add    $0x10,%esp
 804a7a0:	8d 56 f8             	lea    -0x8(%esi),%edx
 804a7a3:	39 f8                	cmp    %edi,%eax
 804a7a5:	77 1a                	ja     0x804a7c1
 804a7a7:	c1 e8 03             	shr    $0x3,%eax
 804a7aa:	83 cf 03             	or     $0x3,%edi
 804a7ad:	83 e8 02             	sub    $0x2,%eax
 804a7b0:	89 39                	mov    %edi,(%ecx)
 804a7b2:	8b 7c 81 04          	mov    0x4(%ecx,%eax,4),%edi
 804a7b6:	89 3e                	mov    %edi,(%esi)
 804a7b8:	89 54 81 04          	mov    %edx,0x4(%ecx,%eax,4)
 804a7bc:	e9 09 01 00 00       	jmp    0x804a8ca
 804a7c1:	f6 45 dc 02          	testb  $0x2,-0x24(%ebp)
 804a7c5:	0f 85 e3 00 00 00    	jne    0x804a8ae
 804a7cb:	83 cf 01             	or     $0x1,%edi
 804a7ce:	89 39                	mov    %edi,(%ecx)
 804a7d0:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
 804a7d3:	8b 79 04             	mov    0x4(%ecx),%edi
 804a7d6:	89 7d e0             	mov    %edi,-0x20(%ebp)
 804a7d9:	83 65 e0 fc          	andl   $0xfffffffc,-0x20(%ebp)
 804a7dd:	f6 45 dc 01          	testb  $0x1,-0x24(%ebp)
 804a7e1:	75 2e                	jne    0x804a811
 804a7e3:	8b 76 f8             	mov    -0x8(%esi),%esi
 804a7e6:	29 f2                	sub    %esi,%edx
 804a7e8:	01 f0                	add    %esi,%eax
 804a7ea:	89 55 dc             	mov    %edx,-0x24(%ebp)
 804a7ed:	8b 7a 08             	mov    0x8(%edx),%edi
 804a7f0:	8b 72 0c             	mov    0xc(%edx),%esi
 804a7f3:	8b 57 0c             	mov    0xc(%edi),%edx
 804a7f6:	89 55 d8             	mov    %edx,-0x28(%ebp)
 804a7f9:	3b 55 dc             	cmp    -0x24(%ebp),%edx
 804a7fc:	74 05                	je     0x804a803
 804a7fe:	e8 dd 00 00 00       	call   0x804a8e0
 804a803:	8b 56 08             	mov    0x8(%esi),%edx
 804a806:	3b 55 d8             	cmp    -0x28(%ebp),%edx
 804a809:	75 f3                	jne    0x804a7fe
 804a80b:	89 77 0c             	mov    %esi,0xc(%edi)
 804a80e:	89 7e 08             	mov    %edi,0x8(%esi)
 804a811:	8b b3 b0 ff ff ff    	mov    -0x50(%ebx),%esi
 804a817:	3b 4e 2c             	cmp    0x2c(%esi),%ecx
 804a81a:	74 4d                	je     0x804a869
 804a81c:	8b 7d e0             	mov    -0x20(%ebp),%edi
 804a81f:	8b 74 39 04          	mov    0x4(%ecx,%edi,1),%esi
 804a823:	89 79 04             	mov    %edi,0x4(%ecx)
 804a826:	83 e6 01             	and    $0x1,%esi
 804a829:	75 19                	jne    0x804a844
 804a82b:	8b 79 08             	mov    0x8(%ecx),%edi
 804a82e:	8b 71 0c             	mov    0xc(%ecx),%esi
 804a831:	39 4f 0c             	cmp    %ecx,0xc(%edi)
 804a834:	75 c8                	jne    0x804a7fe
 804a836:	39 4e 08             	cmp    %ecx,0x8(%esi)
 804a839:	75 c3                	jne    0x804a7fe
 804a83b:	03 45 e0             	add    -0x20(%ebp),%eax
 804a83e:	89 77 0c             	mov    %esi,0xc(%edi)
 804a841:	89 7e 08             	mov    %edi,0x8(%esi)
 804a844:	8b 8b b0 ff ff ff    	mov    -0x50(%ebx),%ecx
 804a84a:	8b 71 3c             	mov    0x3c(%ecx),%esi
 804a84d:	8d 79 34             	lea    0x34(%ecx),%edi
 804a850:	89 7a 0c             	mov    %edi,0xc(%edx)
 804a853:	89 72 08             	mov    %esi,0x8(%edx)
 804a856:	89 51 3c             	mov    %edx,0x3c(%ecx)
 804a859:	89 c1                	mov    %eax,%ecx
 804a85b:	83 c9 01             	or     $0x1,%ecx
 804a85e:	89 56 0c             	mov    %edx,0xc(%esi)
 804a861:	89 4a 04             	mov    %ecx,0x4(%edx)
 804a864:	89 04 02             	mov    %eax,(%edx,%eax,1)
 804a867:	eb 0e                	jmp    0x804a877
 804a869:	03 45 e0             	add    -0x20(%ebp),%eax
 804a86c:	89 c1                	mov    %eax,%ecx
 804a86e:	83 c9 01             	or     $0x1,%ecx
 804a871:	89 4a 04             	mov    %ecx,0x4(%edx)
 804a874:	89 56 2c             	mov    %edx,0x2c(%esi)
 804a877:	3d ff ff 01 00       	cmp    $0x1ffff,%eax
 804a87c:	76 4c                	jbe    0x804a8ca
 804a87e:	8b b3 b0 ff ff ff    	mov    -0x50(%ebx),%esi
 804a884:	f6 06 02             	testb  $0x2,(%esi)
 804a887:	74 07                	je     0x804a890
 804a889:	56                   	push   %esi
 804a88a:	e8 19 fd ff ff       	call   0x804a5a8
 804a88f:	5f                   	pop    %edi
 804a890:	8b 46 2c             	mov    0x2c(%esi),%eax
 804a893:	8b 40 04             	mov    0x4(%eax),%eax
 804a896:	83 e0 fc             	and    $0xfffffffc,%eax
 804a899:	3b 86 44 03 00 00    	cmp    0x344(%esi),%eax
 804a89f:	72 29                	jb     0x804a8ca
 804a8a1:	8b 86 48 03 00 00    	mov    0x348(%esi),%eax
 804a8a7:	e8 64 fc ff ff       	call   0x804a510
 804a8ac:	eb 1c                	jmp    0x804a8ca
 804a8ae:	8b 76 f8             	mov    -0x8(%esi),%esi
 804a8b1:	ff 89 50 03 00 00    	decl   0x350(%ecx)
 804a8b7:	01 f0                	add    %esi,%eax
 804a8b9:	29 f2                	sub    %esi,%edx
 804a8bb:	29 81 64 03 00 00    	sub    %eax,0x364(%ecx)
 804a8c1:	50                   	push   %eax
 804a8c2:	52                   	push   %edx
 804a8c3:	e8 c8 1a 00 00       	call   0x804c390
 804a8c8:	59                   	pop    %ecx
 804a8c9:	5e                   	pop    %esi
 804a8ca:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804a8cd:	6a 01                	push   $0x1
 804a8cf:	50                   	push   %eax
 804a8d0:	e8 da 11 00 00       	call   0x804baaf
 804a8d5:	58                   	pop    %eax
 804a8d6:	5a                   	pop    %edx
 804a8d7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804a8da:	5b                   	pop    %ebx
 804a8db:	5e                   	pop    %esi
 804a8dc:	5f                   	pop    %edi
 804a8dd:	5d                   	pop    %ebp
 804a8de:	c3                   	ret    
 804a8df:	90                   	nop
 804a8e0:	55                   	push   %ebp
 804a8e1:	89 e5                	mov    %esp,%ebp
 804a8e3:	57                   	push   %edi
 804a8e4:	56                   	push   %esi
 804a8e5:	53                   	push   %ebx
 804a8e6:	83 ec 1c             	sub    $0x1c,%esp
 804a8e9:	e8 89 e3 ff ff       	call   0x8048c77
 804a8ee:	81 c3 9a 77 00 00    	add    $0x779a,%ebx
 804a8f4:	8d b3 18 01 00 00    	lea    0x118(%ebx),%esi
 804a8fa:	56                   	push   %esi
 804a8fb:	e8 8e 11 00 00       	call   0x804ba8e
 804a900:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804a903:	6a 00                	push   $0x0
 804a905:	50                   	push   %eax
 804a906:	6a 01                	push   $0x1
 804a908:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 804a90f:	c7 45 d8 20 00 00 00 	movl   $0x20,-0x28(%ebp)
 804a916:	e8 f9 1a 00 00       	call   0x804c414
 804a91b:	83 c4 10             	add    $0x10,%esp
 804a91e:	80 bb ec 03 00 00 00 	cmpb   $0x0,0x3ec(%ebx)
 804a925:	75 1d                	jne    0x804a944
 804a927:	c6 83 ec 03 00 00 01 	movb   $0x1,0x3ec(%ebx)
 804a92e:	56                   	push   %esi
 804a92f:	e8 5a 11 00 00       	call   0x804ba8e
 804a934:	6a 06                	push   $0x6
 804a936:	e8 95 0e 00 00       	call   0x804b7d0
 804a93b:	56                   	push   %esi
 804a93c:	e8 4d 11 00 00       	call   0x804ba8e
 804a941:	83 c4 0c             	add    $0xc,%esp
 804a944:	8a 83 ec 03 00 00    	mov    0x3ec(%ebx),%al
 804a94a:	3c 01                	cmp    $0x1,%al
 804a94c:	75 31                	jne    0x804a97f
 804a94e:	c6 83 ec 03 00 00 02 	movb   $0x2,0x3ec(%ebx)
 804a955:	8d 7d e0             	lea    -0x20(%ebp),%edi
 804a958:	31 c0                	xor    %eax,%eax
 804a95a:	ab                   	stos   %eax,%es:(%edi)
 804a95b:	ab                   	stos   %eax,%es:(%edi)
 804a95c:	ab                   	stos   %eax,%es:(%edi)
 804a95d:	ab                   	stos   %eax,%es:(%edi)
 804a95e:	ab                   	stos   %eax,%es:(%edi)
 804a95f:	8d 45 e0             	lea    -0x20(%ebp),%eax
 804a962:	6a 00                	push   $0x0
 804a964:	50                   	push   %eax
 804a965:	6a 06                	push   $0x6
 804a967:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,-0x14(%ebp)
 804a96e:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
 804a975:	e8 f9 13 00 00       	call   0x804bd73
 804a97a:	83 c4 0c             	add    $0xc,%esp
 804a97d:	eb af                	jmp    0x804a92e
 804a97f:	3c 02                	cmp    $0x2,%al
 804a981:	75 08                	jne    0x804a98b
 804a983:	c6 83 ec 03 00 00 03 	movb   $0x3,0x3ec(%ebx)
 804a98a:	f4                   	hlt    
 804a98b:	80 bb ec 03 00 00 03 	cmpb   $0x3,0x3ec(%ebx)
 804a992:	75 0e                	jne    0x804a9a2
 804a994:	c6 83 ec 03 00 00 04 	movb   $0x4,0x3ec(%ebx)
 804a99b:	6a 7f                	push   $0x7f
 804a99d:	e8 26 1a 00 00       	call   0x804c3c8
 804a9a2:	f4                   	hlt    
 804a9a3:	eb fd                	jmp    0x804a9a2
 804a9a5:	66 90                	xchg   %ax,%ax
 804a9a7:	90                   	nop
 804a9a8:	55                   	push   %ebp
 804a9a9:	89 e5                	mov    %esp,%ebp
 804a9ab:	57                   	push   %edi
 804a9ac:	56                   	push   %esi
 804a9ad:	53                   	push   %ebx
 804a9ae:	83 ec 28             	sub    $0x28,%esp
 804a9b1:	e8 c1 e2 ff ff       	call   0x8048c77
 804a9b6:	81 c3 d2 76 00 00    	add    $0x76d2,%ebx
 804a9bc:	8b 8b 08 04 00 00    	mov    0x408(%ebx),%ecx
 804a9c2:	8b b3 f0 03 00 00    	mov    0x3f0(%ebx),%esi
 804a9c8:	89 4d e8             	mov    %ecx,-0x18(%ebp)
 804a9cb:	8b bb 04 04 00 00    	mov    0x404(%ebx),%edi
 804a9d1:	8d 14 88             	lea    (%eax,%ecx,4),%edx
 804a9d4:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a9d7:	69 c9 ff ff ff 3f    	imul   $0x3fffffff,%ecx,%ecx
 804a9dd:	89 7d dc             	mov    %edi,-0x24(%ebp)
 804a9e0:	89 75 d8             	mov    %esi,-0x28(%ebp)
 804a9e3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804a9e6:	89 4d cc             	mov    %ecx,-0x34(%ebp)
 804a9e9:	89 75 f0             	mov    %esi,-0x10(%ebp)
 804a9ec:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804a9ef:	39 fa                	cmp    %edi,%edx
 804a9f1:	0f 8e 80 00 00 00    	jle    0x804aa77
 804a9f7:	39 55 f0             	cmp    %edx,-0x10(%ebp)
 804a9fa:	7e 7b                	jle    0x804aa77
 804a9fc:	8b 75 e8             	mov    -0x18(%ebp),%esi
 804a9ff:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804aa02:	29 f1                	sub    %esi,%ecx
 804aa04:	29 fe                	sub    %edi,%esi
 804aa06:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 804aa09:	89 75 e0             	mov    %esi,-0x20(%ebp)
 804aa0c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804aa0f:	39 f1                	cmp    %esi,%ecx
 804aa11:	7f 0a                	jg     0x804aa1d
 804aa13:	8d 04 b8             	lea    (%eax,%edi,4),%eax
 804aa16:	31 d2                	xor    %edx,%edx
 804aa18:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804aa1b:	eb 32                	jmp    0x804aa4f
 804aa1d:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804aa20:	8d 0c b8             	lea    (%eax,%edi,4),%ecx
 804aa23:	01 fa                	add    %edi,%edx
 804aa25:	03 55 cc             	add    -0x34(%ebp),%edx
 804aa28:	8d 04 90             	lea    (%eax,%edx,4),%eax
 804aa2b:	31 d2                	xor    %edx,%edx
 804aa2d:	3b 55 e0             	cmp    -0x20(%ebp),%edx
 804aa30:	7d 15                	jge    0x804aa47
 804aa32:	8b 34 91             	mov    (%ecx,%edx,4),%esi
 804aa35:	89 75 e4             	mov    %esi,-0x1c(%ebp)
 804aa38:	8b 34 90             	mov    (%eax,%edx,4),%esi
 804aa3b:	89 34 91             	mov    %esi,(%ecx,%edx,4)
 804aa3e:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 804aa41:	89 34 90             	mov    %esi,(%eax,%edx,4)
 804aa44:	42                   	inc    %edx
 804aa45:	eb e6                	jmp    0x804aa2d
 804aa47:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 804aa4a:	29 4d f0             	sub    %ecx,-0x10(%ebp)
 804aa4d:	eb 9d                	jmp    0x804a9ec
 804aa4f:	3b 55 e4             	cmp    -0x1c(%ebp),%edx
 804aa52:	7d 1b                	jge    0x804aa6f
 804aa54:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804aa57:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 804aa5a:	8b 0c 90             	mov    (%eax,%edx,4),%ecx
 804aa5d:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 804aa60:	8b 0c 96             	mov    (%esi,%edx,4),%ecx
 804aa63:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
 804aa66:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804aa69:	89 04 96             	mov    %eax,(%esi,%edx,4)
 804aa6c:	42                   	inc    %edx
 804aa6d:	eb e0                	jmp    0x804aa4f
 804aa6f:	03 7d e4             	add    -0x1c(%ebp),%edi
 804aa72:	e9 75 ff ff ff       	jmp    0x804a9ec
 804aa77:	8b 7d d8             	mov    -0x28(%ebp),%edi
 804aa7a:	89 f8                	mov    %edi,%eax
 804aa7c:	89 bb 08 04 00 00    	mov    %edi,0x408(%ebx)
 804aa82:	2b 45 e8             	sub    -0x18(%ebp),%eax
 804aa85:	03 45 dc             	add    -0x24(%ebp),%eax
 804aa88:	89 83 04 04 00 00    	mov    %eax,0x404(%ebx)
 804aa8e:	83 c4 28             	add    $0x28,%esp
 804aa91:	5b                   	pop    %ebx
 804aa92:	5e                   	pop    %esi
 804aa93:	5f                   	pop    %edi
 804aa94:	5d                   	pop    %ebp
 804aa95:	c3                   	ret    
 804aa96:	55                   	push   %ebp
 804aa97:	89 e5                	mov    %esp,%ebp
 804aa99:	57                   	push   %edi
 804aa9a:	56                   	push   %esi
 804aa9b:	53                   	push   %ebx
 804aa9c:	83 ec 30             	sub    $0x30,%esp
 804aa9f:	e8 d3 e1 ff ff       	call   0x8048c77
 804aaa4:	81 c3 e4 75 00 00    	add    $0x75e4,%ebx
 804aaaa:	8b 83 c4 ff ff ff    	mov    -0x3c(%ebx),%eax
 804aab0:	8b 7d 0c             	mov    0xc(%ebp),%edi
 804aab3:	8b 10                	mov    (%eax),%edx
 804aab5:	8b 83 a0 ff ff ff    	mov    -0x60(%ebx),%eax
 804aabb:	89 93 f0 03 00 00    	mov    %edx,0x3f0(%ebx)
 804aac1:	8b 00                	mov    (%eax),%eax
 804aac3:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804aac6:	89 83 f4 03 00 00    	mov    %eax,0x3f4(%ebx)
 804aacc:	8b 45 10             	mov    0x10(%ebp),%eax
 804aacf:	80 38 3a             	cmpb   $0x3a,(%eax)
 804aad2:	0f 95 c0             	setne  %al
 804aad5:	0f b6 c0             	movzbl %al,%eax
 804aad8:	f7 d8                	neg    %eax
 804aada:	21 45 f0             	and    %eax,-0x10(%ebp)
 804aadd:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804aae1:	0f 8e 90 01 00 00    	jle    0x804ac77
 804aae7:	c7 83 f8 03 00 00 00 	movl   $0x0,0x3f8(%ebx)
 804aaee:	00 00 00 
 804aaf1:	85 d2                	test   %edx,%edx
 804aaf3:	74 0b                	je     0x804ab00
 804aaf5:	80 bb fd 03 00 00 00 	cmpb   $0x0,0x3fd(%ebx)
 804aafc:	74 0c                	je     0x804ab0a
 804aafe:	eb 70                	jmp    0x804ab70
 804ab00:	c7 83 f0 03 00 00 01 	movl   $0x1,0x3f0(%ebx)
 804ab07:	00 00 00 
 804ab0a:	8b 83 f0 03 00 00    	mov    0x3f0(%ebx),%eax
 804ab10:	c7 83 00 04 00 00 00 	movl   $0x0,0x400(%ebx)
 804ab17:	00 00 00 
 804ab1a:	89 83 08 04 00 00    	mov    %eax,0x408(%ebx)
 804ab20:	89 83 04 04 00 00    	mov    %eax,0x404(%ebx)
 804ab26:	8d 83 52 e4 ff ff    	lea    -0x1bae(%ebx),%eax
 804ab2c:	50                   	push   %eax
 804ab2d:	e8 32 34 00 00       	call   0x804df64
 804ab32:	85 c0                	test   %eax,%eax
 804ab34:	8b 45 10             	mov    0x10(%ebp),%eax
 804ab37:	0f 95 c2             	setne  %dl
 804ab3a:	88 93 ff 03 00 00    	mov    %dl,0x3ff(%ebx)
 804ab40:	5e                   	pop    %esi
 804ab41:	8a 00                	mov    (%eax),%al
 804ab43:	3c 2d                	cmp    $0x2d,%al
 804ab45:	75 09                	jne    0x804ab50
 804ab47:	c6 83 fe 03 00 00 02 	movb   $0x2,0x3fe(%ebx)
 804ab4e:	eb 0b                	jmp    0x804ab5b
 804ab50:	3c 2b                	cmp    $0x2b,%al
 804ab52:	75 0c                	jne    0x804ab60
 804ab54:	c6 83 fe 03 00 00 00 	movb   $0x0,0x3fe(%ebx)
 804ab5b:	ff 45 10             	incl   0x10(%ebp)
 804ab5e:	eb 09                	jmp    0x804ab69
 804ab60:	83 f2 01             	xor    $0x1,%edx
 804ab63:	88 93 fe 03 00 00    	mov    %dl,0x3fe(%ebx)
 804ab69:	c6 83 fd 03 00 00 01 	movb   $0x1,0x3fd(%ebx)
 804ab70:	8b 83 00 04 00 00    	mov    0x400(%ebx),%eax
 804ab76:	85 c0                	test   %eax,%eax
 804ab78:	74 09                	je     0x804ab83
 804ab7a:	80 38 00             	cmpb   $0x0,(%eax)
 804ab7d:	0f 85 48 01 00 00    	jne    0x804accb
 804ab83:	8b 83 f0 03 00 00    	mov    0x3f0(%ebx),%eax
 804ab89:	39 83 08 04 00 00    	cmp    %eax,0x408(%ebx)
 804ab8f:	7e 06                	jle    0x804ab97
 804ab91:	89 83 08 04 00 00    	mov    %eax,0x408(%ebx)
 804ab97:	39 83 04 04 00 00    	cmp    %eax,0x404(%ebx)
 804ab9d:	7e 06                	jle    0x804aba5
 804ab9f:	89 83 04 04 00 00    	mov    %eax,0x404(%ebx)
 804aba5:	80 bb fe 03 00 00 01 	cmpb   $0x1,0x3fe(%ebx)
 804abac:	75 53                	jne    0x804ac01
 804abae:	8b 93 04 04 00 00    	mov    0x404(%ebx),%edx
 804abb4:	8b 8b 08 04 00 00    	mov    0x408(%ebx),%ecx
 804abba:	39 ca                	cmp    %ecx,%edx
 804abbc:	74 0d                	je     0x804abcb
 804abbe:	39 c1                	cmp    %eax,%ecx
 804abc0:	74 24                	je     0x804abe6
 804abc2:	89 f8                	mov    %edi,%eax
 804abc4:	e8 df fd ff ff       	call   0x804a9a8
 804abc9:	eb 1b                	jmp    0x804abe6
 804abcb:	39 c2                	cmp    %eax,%edx
 804abcd:	74 17                	je     0x804abe6
 804abcf:	89 83 04 04 00 00    	mov    %eax,0x404(%ebx)
 804abd5:	eb 0f                	jmp    0x804abe6
 804abd7:	8b 14 87             	mov    (%edi,%eax,4),%edx
 804abda:	80 3a 2d             	cmpb   $0x2d,(%edx)
 804abdd:	74 1a                	je     0x804abf9
 804abdf:	40                   	inc    %eax
 804abe0:	89 83 f0 03 00 00    	mov    %eax,0x3f0(%ebx)
 804abe6:	8b 83 f0 03 00 00    	mov    0x3f0(%ebx),%eax
 804abec:	3b 45 08             	cmp    0x8(%ebp),%eax
 804abef:	7c e6                	jl     0x804abd7
 804abf1:	89 83 08 04 00 00    	mov    %eax,0x408(%ebx)
 804abf7:	eb 08                	jmp    0x804ac01
 804abf9:	80 7a 01 00          	cmpb   $0x0,0x1(%edx)
 804abfd:	74 e0                	je     0x804abdf
 804abff:	eb f0                	jmp    0x804abf1
 804ac01:	8b b3 f0 03 00 00    	mov    0x3f0(%ebx),%esi
 804ac07:	3b 75 08             	cmp    0x8(%ebp),%esi
 804ac0a:	74 4c                	je     0x804ac58
 804ac0c:	8d 83 62 e4 ff ff    	lea    -0x1b9e(%ebx),%eax
 804ac12:	50                   	push   %eax
 804ac13:	ff 34 b7             	pushl  (%edi,%esi,4)
 804ac16:	e8 e9 2e 00 00       	call   0x804db04
 804ac1b:	5a                   	pop    %edx
 804ac1c:	85 c0                	test   %eax,%eax
 804ac1e:	59                   	pop    %ecx
 804ac1f:	75 37                	jne    0x804ac58
 804ac21:	46                   	inc    %esi
 804ac22:	8b 83 08 04 00 00    	mov    0x408(%ebx),%eax
 804ac28:	89 b3 f0 03 00 00    	mov    %esi,0x3f0(%ebx)
 804ac2e:	39 83 04 04 00 00    	cmp    %eax,0x404(%ebx)
 804ac34:	74 0d                	je     0x804ac43
 804ac36:	39 f0                	cmp    %esi,%eax
 804ac38:	74 0f                	je     0x804ac49
 804ac3a:	89 f8                	mov    %edi,%eax
 804ac3c:	e8 67 fd ff ff       	call   0x804a9a8
 804ac41:	eb 06                	jmp    0x804ac49
 804ac43:	89 b3 04 04 00 00    	mov    %esi,0x404(%ebx)
 804ac49:	8b 45 08             	mov    0x8(%ebp),%eax
 804ac4c:	89 83 08 04 00 00    	mov    %eax,0x408(%ebx)
 804ac52:	89 83 f0 03 00 00    	mov    %eax,0x3f0(%ebx)
 804ac58:	8b 8b f0 03 00 00    	mov    0x3f0(%ebx),%ecx
 804ac5e:	3b 4d 08             	cmp    0x8(%ebp),%ecx
 804ac61:	75 1c                	jne    0x804ac7f
 804ac63:	8b 83 04 04 00 00    	mov    0x404(%ebx),%eax
 804ac69:	3b 83 08 04 00 00    	cmp    0x408(%ebx),%eax
 804ac6f:	74 06                	je     0x804ac77
 804ac71:	89 83 f0 03 00 00    	mov    %eax,0x3f0(%ebx)
 804ac77:	83 c8 ff             	or     $0xffffffff,%eax
 804ac7a:	e9 c5 04 00 00       	jmp    0x804b144
 804ac7f:	8b 04 8f             	mov    (%edi,%ecx,4),%eax
 804ac82:	80 38 2d             	cmpb   $0x2d,(%eax)
 804ac85:	75 07                	jne    0x804ac8e
 804ac87:	8a 50 01             	mov    0x1(%eax),%dl
 804ac8a:	84 d2                	test   %dl,%dl
 804ac8c:	75 20                	jne    0x804acae
 804ac8e:	80 bb fe 03 00 00 00 	cmpb   $0x0,0x3fe(%ebx)
 804ac95:	74 e0                	je     0x804ac77
 804ac97:	41                   	inc    %ecx
 804ac98:	89 83 f8 03 00 00    	mov    %eax,0x3f8(%ebx)
 804ac9e:	89 8b f0 03 00 00    	mov    %ecx,0x3f0(%ebx)
 804aca4:	b8 01 00 00 00       	mov    $0x1,%eax
 804aca9:	e9 96 04 00 00       	jmp    0x804b144
 804acae:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 804acb2:	74 0b                	je     0x804acbf
 804acb4:	80 fa 2d             	cmp    $0x2d,%dl
 804acb7:	0f 94 c2             	sete   %dl
 804acba:	0f b6 d2             	movzbl %dl,%edx
 804acbd:	eb 02                	jmp    0x804acc1
 804acbf:	31 d2                	xor    %edx,%edx
 804acc1:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
 804acc5:	89 83 00 04 00 00    	mov    %eax,0x400(%ebx)
 804accb:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 804accf:	0f 84 3b 03 00 00    	je     0x804b010
 804acd5:	8b 83 f0 03 00 00    	mov    0x3f0(%ebx),%eax
 804acdb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804acde:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 804ace5:	8b 04 87             	mov    (%edi,%eax,4),%eax
 804ace8:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804aceb:	89 4d cc             	mov    %ecx,-0x34(%ebp)
 804acee:	8a 40 01             	mov    0x1(%eax),%al
 804acf1:	88 45 db             	mov    %al,-0x25(%ebp)
 804acf4:	3c 2d                	cmp    $0x2d,%al
 804acf6:	74 2a                	je     0x804ad22
 804acf8:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
 804acfc:	0f 84 0e 03 00 00    	je     0x804b010
 804ad02:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804ad05:	80 78 02 00          	cmpb   $0x0,0x2(%eax)
 804ad09:	75 17                	jne    0x804ad22
 804ad0b:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
 804ad0f:	50                   	push   %eax
 804ad10:	ff 75 10             	pushl  0x10(%ebp)
 804ad13:	e8 c0 2e 00 00       	call   0x804dbd8
 804ad18:	59                   	pop    %ecx
 804ad19:	85 c0                	test   %eax,%eax
 804ad1b:	5e                   	pop    %esi
 804ad1c:	0f 85 ee 02 00 00    	jne    0x804b010
 804ad22:	8b 83 00 04 00 00    	mov    0x400(%ebx),%eax
 804ad28:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804ad2b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804ad2e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ad31:	8a 00                	mov    (%eax),%al
 804ad33:	3c 3d                	cmp    $0x3d,%al
 804ad35:	74 09                	je     0x804ad40
 804ad37:	84 c0                	test   %al,%al
 804ad39:	74 05                	je     0x804ad40
 804ad3b:	ff 45 e8             	incl   -0x18(%ebp)
 804ad3e:	eb ee                	jmp    0x804ad2e
 804ad40:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ad43:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804ad4a:	2b 45 ec             	sub    -0x14(%ebp),%eax
 804ad4d:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%ebp)
 804ad54:	31 d2                	xor    %edx,%edx
 804ad56:	31 f6                	xor    %esi,%esi
 804ad58:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804ad5b:	8b 45 14             	mov    0x14(%ebp),%eax
 804ad5e:	8b 08                	mov    (%eax),%ecx
 804ad60:	85 c9                	test   %ecx,%ecx
 804ad62:	74 77                	je     0x804addb
 804ad64:	ff 75 d0             	pushl  -0x30(%ebp)
 804ad67:	ff 75 ec             	pushl  -0x14(%ebp)
 804ad6a:	89 55 c4             	mov    %edx,-0x3c(%ebp)
 804ad6d:	51                   	push   %ecx
 804ad6e:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 804ad71:	e8 ee 2d 00 00       	call   0x804db64
 804ad76:	83 c4 0c             	add    $0xc,%esp
 804ad79:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 804ad7c:	85 c0                	test   %eax,%eax
 804ad7e:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 804ad81:	75 4f                	jne    0x804add2
 804ad83:	89 55 c8             	mov    %edx,-0x38(%ebp)
 804ad86:	51                   	push   %ecx
 804ad87:	e8 34 2e 00 00       	call   0x804dbc0
 804ad8c:	5a                   	pop    %edx
 804ad8d:	39 45 d0             	cmp    %eax,-0x30(%ebp)
 804ad90:	8b 55 c8             	mov    -0x38(%ebp),%edx
 804ad93:	74 50                	je     0x804ade5
 804ad95:	85 f6                	test   %esi,%esi
 804ad97:	74 29                	je     0x804adc2
 804ad99:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
 804ad9d:	75 2e                	jne    0x804adcd
 804ad9f:	8b 45 14             	mov    0x14(%ebp),%eax
 804ada2:	8b 40 04             	mov    0x4(%eax),%eax
 804ada5:	39 46 04             	cmp    %eax,0x4(%esi)
 804ada8:	75 23                	jne    0x804adcd
 804adaa:	8b 45 14             	mov    0x14(%ebp),%eax
 804adad:	8b 40 08             	mov    0x8(%eax),%eax
 804adb0:	39 46 08             	cmp    %eax,0x8(%esi)
 804adb3:	75 18                	jne    0x804adcd
 804adb5:	8b 45 14             	mov    0x14(%ebp),%eax
 804adb8:	8b 40 0c             	mov    0xc(%eax),%eax
 804adbb:	39 46 0c             	cmp    %eax,0xc(%esi)
 804adbe:	75 0d                	jne    0x804adcd
 804adc0:	eb 10                	jmp    0x804add2
 804adc2:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804adc5:	8b 75 14             	mov    0x14(%ebp),%esi
 804adc8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804adcb:	eb 05                	jmp    0x804add2
 804adcd:	ba 01 00 00 00       	mov    $0x1,%edx
 804add2:	83 45 14 10          	addl   $0x10,0x14(%ebp)
 804add6:	ff 45 e0             	incl   -0x20(%ebp)
 804add9:	eb 80                	jmp    0x804ad5b
 804addb:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804adde:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804ade1:	31 c0                	xor    %eax,%eax
 804ade3:	eb 08                	jmp    0x804aded
 804ade5:	8b 75 14             	mov    0x14(%ebp),%esi
 804ade8:	b8 01 00 00 00       	mov    $0x1,%eax
 804aded:	85 c0                	test   %eax,%eax
 804adef:	75 40                	jne    0x804ae31
 804adf1:	85 d2                	test   %edx,%edx
 804adf3:	74 3c                	je     0x804ae31
 804adf5:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804adf9:	74 1c                	je     0x804ae17
 804adfb:	ff 75 dc             	pushl  -0x24(%ebp)
 804adfe:	ff 37                	pushl  (%edi)
 804ae00:	8d 83 65 e4 ff ff    	lea    -0x1b9b(%ebx),%eax
 804ae06:	50                   	push   %eax
 804ae07:	8b 83 e0 ff ff ff    	mov    -0x20(%ebx),%eax
 804ae0d:	ff 30                	pushl  (%eax)
 804ae0f:	e8 54 1a 00 00       	call   0x804c868
 804ae14:	83 c4 10             	add    $0x10,%esp
 804ae17:	8b b3 00 04 00 00    	mov    0x400(%ebx),%esi
 804ae1d:	56                   	push   %esi
 804ae1e:	e8 9d 2d 00 00       	call   0x804dbc0
 804ae23:	01 c6                	add    %eax,%esi
 804ae25:	5f                   	pop    %edi
 804ae26:	89 b3 00 04 00 00    	mov    %esi,0x400(%ebx)
 804ae2c:	e9 c8 01 00 00       	jmp    0x804aff9
 804ae31:	85 f6                	test   %esi,%esi
 804ae33:	0f 84 3a 01 00 00    	je     0x804af73
 804ae39:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804ae3c:	8b 4d e8             	mov    -0x18(%ebp),%ecx
 804ae3f:	40                   	inc    %eax
 804ae40:	89 83 f0 03 00 00    	mov    %eax,0x3f0(%ebx)
 804ae46:	80 39 00             	cmpb   $0x0,(%ecx)
 804ae49:	74 73                	je     0x804aebe
 804ae4b:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
 804ae4f:	74 08                	je     0x804ae59
 804ae51:	89 c8                	mov    %ecx,%eax
 804ae53:	40                   	inc    %eax
 804ae54:	e9 83 00 00 00       	jmp    0x804aedc
 804ae59:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804ae5d:	74 42                	je     0x804aea1
 804ae5f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804ae62:	8b 14 87             	mov    (%edi,%eax,4),%edx
 804ae65:	8b 83 e0 ff ff ff    	mov    -0x20(%ebx),%eax
 804ae6b:	80 7a 01 2d          	cmpb   $0x2d,0x1(%edx)
 804ae6f:	75 17                	jne    0x804ae88
 804ae71:	ff 36                	pushl  (%esi)
 804ae73:	ff 37                	pushl  (%edi)
 804ae75:	8d 93 83 e4 ff ff    	lea    -0x1b7d(%ebx),%edx
 804ae7b:	52                   	push   %edx
 804ae7c:	ff 30                	pushl  (%eax)
 804ae7e:	e8 e5 19 00 00       	call   0x804c868
 804ae83:	83 c4 10             	add    $0x10,%esp
 804ae86:	eb 19                	jmp    0x804aea1
 804ae88:	ff 36                	pushl  (%esi)
 804ae8a:	0f b6 12             	movzbl (%edx),%edx
 804ae8d:	52                   	push   %edx
 804ae8e:	8d 93 b0 e4 ff ff    	lea    -0x1b50(%ebx),%edx
 804ae94:	ff 37                	pushl  (%edi)
 804ae96:	52                   	push   %edx
 804ae97:	ff 30                	pushl  (%eax)
 804ae99:	e8 ca 19 00 00       	call   0x804c868
 804ae9e:	83 c4 14             	add    $0x14,%esp
 804aea1:	8b bb 00 04 00 00    	mov    0x400(%ebx),%edi
 804aea7:	57                   	push   %edi
 804aea8:	e8 13 2d 00 00       	call   0x804dbc0
 804aead:	01 c7                	add    %eax,%edi
 804aeaf:	59                   	pop    %ecx
 804aeb0:	89 bb 00 04 00 00    	mov    %edi,0x400(%ebx)
 804aeb6:	8b 46 0c             	mov    0xc(%esi),%eax
 804aeb9:	e9 cd 01 00 00       	jmp    0x804b08b
 804aebe:	83 7e 04 01          	cmpl   $0x1,0x4(%esi)
 804aec2:	75 78                	jne    0x804af3c
 804aec4:	3b 45 08             	cmp    0x8(%ebp),%eax
 804aec7:	7d 1b                	jge    0x804aee4
 804aec9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804aecc:	83 c0 02             	add    $0x2,%eax
 804aecf:	89 83 f0 03 00 00    	mov    %eax,0x3f0(%ebx)
 804aed5:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804aed8:	8b 44 07 04          	mov    0x4(%edi,%eax,1),%eax
 804aedc:	89 83 f8 03 00 00    	mov    %eax,0x3f8(%ebx)
 804aee2:	eb 58                	jmp    0x804af3c
 804aee4:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804aee8:	74 1f                	je     0x804af09
 804aeea:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804aeed:	ff 34 87             	pushl  (%edi,%eax,4)
 804aef0:	ff 37                	pushl  (%edi)
 804aef2:	8d 83 dd e4 ff ff    	lea    -0x1b23(%ebx),%eax
 804aef8:	50                   	push   %eax
 804aef9:	8b 83 e0 ff ff ff    	mov    -0x20(%ebx),%eax
 804aeff:	ff 30                	pushl  (%eax)
 804af01:	e8 62 19 00 00       	call   0x804c868
 804af06:	83 c4 10             	add    $0x10,%esp
 804af09:	8b bb 00 04 00 00    	mov    0x400(%ebx),%edi
 804af0f:	57                   	push   %edi
 804af10:	e8 ab 2c 00 00       	call   0x804dbc0
 804af15:	01 c7                	add    %eax,%edi
 804af17:	8b 46 0c             	mov    0xc(%esi),%eax
 804af1a:	88 83 fc 03 00 00    	mov    %al,0x3fc(%ebx)
 804af20:	8b 45 10             	mov    0x10(%ebp),%eax
 804af23:	89 bb 00 04 00 00    	mov    %edi,0x400(%ebx)
 804af29:	5a                   	pop    %edx
 804af2a:	80 38 3a             	cmpb   $0x3a,(%eax)
 804af2d:	0f 95 c0             	setne  %al
 804af30:	0f b6 c0             	movzbl %al,%eax
 804af33:	8d 44 80 3a          	lea    0x3a(%eax,%eax,4),%eax
 804af37:	e9 08 02 00 00       	jmp    0x804b144
 804af3c:	8b 7d ec             	mov    -0x14(%ebp),%edi
 804af3f:	57                   	push   %edi
 804af40:	e8 7b 2c 00 00       	call   0x804dbc0
 804af45:	01 c7                	add    %eax,%edi
 804af47:	59                   	pop    %ecx
 804af48:	89 bb 00 04 00 00    	mov    %edi,0x400(%ebx)
 804af4e:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
 804af52:	74 08                	je     0x804af5c
 804af54:	8b 45 18             	mov    0x18(%ebp),%eax
 804af57:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 804af5a:	89 08                	mov    %ecx,(%eax)
 804af5c:	8b 56 08             	mov    0x8(%esi),%edx
 804af5f:	8b 46 0c             	mov    0xc(%esi),%eax
 804af62:	85 d2                	test   %edx,%edx
 804af64:	0f 84 da 01 00 00    	je     0x804b144
 804af6a:	89 02                	mov    %eax,(%edx)
 804af6c:	31 c0                	xor    %eax,%eax
 804af6e:	e9 d1 01 00 00       	jmp    0x804b144
 804af73:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
 804af77:	74 21                	je     0x804af9a
 804af79:	80 7d db 2d          	cmpb   $0x2d,-0x25(%ebp)
 804af7d:	0f 84 b2 01 00 00    	je     0x804b135
 804af83:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804af86:	0f b6 00             	movzbl (%eax),%eax
 804af89:	50                   	push   %eax
 804af8a:	ff 75 10             	pushl  0x10(%ebp)
 804af8d:	e8 46 2c 00 00       	call   0x804dbd8
 804af92:	5e                   	pop    %esi
 804af93:	85 c0                	test   %eax,%eax
 804af95:	5a                   	pop    %edx
 804af96:	75 78                	jne    0x804b010
 804af98:	eb 2a                	jmp    0x804afc4
 804af9a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804af9e:	74 4d                	je     0x804afed
 804afa0:	80 7d db 2d          	cmpb   $0x2d,-0x25(%ebp)
 804afa4:	75 24                	jne    0x804afca
 804afa6:	ff 75 ec             	pushl  -0x14(%ebp)
 804afa9:	ff 37                	pushl  (%edi)
 804afab:	8d 83 03 e5 ff ff    	lea    -0x1afd(%ebx),%eax
 804afb1:	50                   	push   %eax
 804afb2:	8b 83 e0 ff ff ff    	mov    -0x20(%ebx),%eax
 804afb8:	ff 30                	pushl  (%eax)
 804afba:	e8 a9 18 00 00       	call   0x804c868
 804afbf:	83 c4 10             	add    $0x10,%esp
 804afc2:	eb 29                	jmp    0x804afed
 804afc4:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804afc8:	74 23                	je     0x804afed
 804afca:	ff 75 ec             	pushl  -0x14(%ebp)
 804afcd:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804afd0:	0f b6 00             	movzbl (%eax),%eax
 804afd3:	50                   	push   %eax
 804afd4:	8d 83 23 e5 ff ff    	lea    -0x1add(%ebx),%eax
 804afda:	ff 37                	pushl  (%edi)
 804afdc:	50                   	push   %eax
 804afdd:	8b 83 e0 ff ff ff    	mov    -0x20(%ebx),%eax
 804afe3:	ff 30                	pushl  (%eax)
 804afe5:	e8 7e 18 00 00       	call   0x804c868
 804afea:	83 c4 14             	add    $0x14,%esp
 804afed:	8d 83 22 e5 ff ff    	lea    -0x1ade(%ebx),%eax
 804aff3:	89 83 00 04 00 00    	mov    %eax,0x400(%ebx)
 804aff9:	ff 83 f0 03 00 00    	incl   0x3f0(%ebx)
 804afff:	c6 83 fc 03 00 00 00 	movb   $0x0,0x3fc(%ebx)
 804b006:	b8 3f 00 00 00       	mov    $0x3f,%eax
 804b00b:	e9 34 01 00 00       	jmp    0x804b144
 804b010:	8b b3 00 04 00 00    	mov    0x400(%ebx),%esi
 804b016:	8d 56 01             	lea    0x1(%esi),%edx
 804b019:	89 93 00 04 00 00    	mov    %edx,0x400(%ebx)
 804b01f:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 804b022:	8a 06                	mov    (%esi),%al
 804b024:	0f b6 c8             	movzbl %al,%ecx
 804b027:	51                   	push   %ecx
 804b028:	89 4d e8             	mov    %ecx,-0x18(%ebp)
 804b02b:	ff 75 10             	pushl  0x10(%ebp)
 804b02e:	88 45 ec             	mov    %al,-0x14(%ebp)
 804b031:	e8 a2 2b 00 00       	call   0x804dbd8
 804b036:	5a                   	pop    %edx
 804b037:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804b03a:	59                   	pop    %ecx
 804b03b:	8b 4d e8             	mov    -0x18(%ebp),%ecx
 804b03e:	80 7e 01 00          	cmpb   $0x0,0x1(%esi)
 804b042:	75 06                	jne    0x804b04a
 804b044:	ff 83 f0 03 00 00    	incl   0x3f0(%ebx)
 804b04a:	85 c0                	test   %eax,%eax
 804b04c:	74 06                	je     0x804b054
 804b04e:	80 7d ec 3a          	cmpb   $0x3a,-0x14(%ebp)
 804b052:	75 42                	jne    0x804b096
 804b054:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804b058:	74 2e                	je     0x804b088
 804b05a:	80 bb ff 03 00 00 00 	cmpb   $0x0,0x3ff(%ebx)
 804b061:	8b 83 e0 ff ff ff    	mov    -0x20(%ebx),%eax
 804b067:	74 0b                	je     0x804b074
 804b069:	51                   	push   %ecx
 804b06a:	8d 93 43 e5 ff ff    	lea    -0x1abd(%ebx),%edx
 804b070:	ff 37                	pushl  (%edi)
 804b072:	eb 09                	jmp    0x804b07d
 804b074:	51                   	push   %ecx
 804b075:	8d 93 5d e5 ff ff    	lea    -0x1aa3(%ebx),%edx
 804b07b:	ff 37                	pushl  (%edi)
 804b07d:	52                   	push   %edx
 804b07e:	ff 30                	pushl  (%eax)
 804b080:	e8 e3 17 00 00       	call   0x804c868
 804b085:	83 c4 10             	add    $0x10,%esp
 804b088:	8a 45 ec             	mov    -0x14(%ebp),%al
 804b08b:	88 83 fc 03 00 00    	mov    %al,0x3fc(%ebx)
 804b091:	e9 70 ff ff ff       	jmp    0x804b006
 804b096:	80 78 01 3a          	cmpb   $0x3a,0x1(%eax)
 804b09a:	0f 85 8f 00 00 00    	jne    0x804b12f
 804b0a0:	80 78 02 3a          	cmpb   $0x3a,0x2(%eax)
 804b0a4:	8b 83 f0 03 00 00    	mov    0x3f0(%ebx),%eax
 804b0aa:	75 12                	jne    0x804b0be
 804b0ac:	80 7e 01 00          	cmpb   $0x0,0x1(%esi)
 804b0b0:	75 12                	jne    0x804b0c4
 804b0b2:	c7 83 f8 03 00 00 00 	movl   $0x0,0x3f8(%ebx)
 804b0b9:	00 00 00 
 804b0bc:	eb 67                	jmp    0x804b125
 804b0be:	80 7e 01 00          	cmpb   $0x0,0x1(%esi)
 804b0c2:	74 0f                	je     0x804b0d3
 804b0c4:	40                   	inc    %eax
 804b0c5:	89 93 f8 03 00 00    	mov    %edx,0x3f8(%ebx)
 804b0cb:	89 83 f0 03 00 00    	mov    %eax,0x3f0(%ebx)
 804b0d1:	eb 52                	jmp    0x804b125
 804b0d3:	3b 45 08             	cmp    0x8(%ebp),%eax
 804b0d6:	75 3b                	jne    0x804b113
 804b0d8:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804b0dc:	74 1a                	je     0x804b0f8
 804b0de:	51                   	push   %ecx
 804b0df:	8d 83 77 e5 ff ff    	lea    -0x1a89(%ebx),%eax
 804b0e5:	ff 37                	pushl  (%edi)
 804b0e7:	50                   	push   %eax
 804b0e8:	8b 83 e0 ff ff ff    	mov    -0x20(%ebx),%eax
 804b0ee:	ff 30                	pushl  (%eax)
 804b0f0:	e8 73 17 00 00       	call   0x804c868
 804b0f5:	83 c4 10             	add    $0x10,%esp
 804b0f8:	8a 45 ec             	mov    -0x14(%ebp),%al
 804b0fb:	88 83 fc 03 00 00    	mov    %al,0x3fc(%ebx)
 804b101:	8b 45 10             	mov    0x10(%ebp),%eax
 804b104:	80 38 3a             	cmpb   $0x3a,(%eax)
 804b107:	0f 95 c0             	setne  %al
 804b10a:	8d 44 80 3a          	lea    0x3a(%eax,%eax,4),%eax
 804b10e:	88 45 ec             	mov    %al,-0x14(%ebp)
 804b111:	eb 12                	jmp    0x804b125
 804b113:	8d 50 01             	lea    0x1(%eax),%edx
 804b116:	8b 04 87             	mov    (%edi,%eax,4),%eax
 804b119:	89 93 f0 03 00 00    	mov    %edx,0x3f0(%ebx)
 804b11f:	89 83 f8 03 00 00    	mov    %eax,0x3f8(%ebx)
 804b125:	c7 83 00 04 00 00 00 	movl   $0x0,0x400(%ebx)
 804b12c:	00 00 00 
 804b12f:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
 804b133:	eb 0f                	jmp    0x804b144
 804b135:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804b139:	0f 85 67 fe ff ff    	jne    0x804afa6
 804b13f:	e9 a9 fe ff ff       	jmp    0x804afed
 804b144:	8b 93 c4 ff ff ff    	mov    -0x3c(%ebx),%edx
 804b14a:	8b 8b f0 03 00 00    	mov    0x3f0(%ebx),%ecx
 804b150:	89 0a                	mov    %ecx,(%edx)
 804b152:	8b 93 9c ff ff ff    	mov    -0x64(%ebx),%edx
 804b158:	8b 8b f8 03 00 00    	mov    0x3f8(%ebx),%ecx
 804b15e:	89 0a                	mov    %ecx,(%edx)
 804b160:	8b 93 e8 ff ff ff    	mov    -0x18(%ebx),%edx
 804b166:	0f b6 8b fc 03 00 00 	movzbl 0x3fc(%ebx),%ecx
 804b16d:	89 0a                	mov    %ecx,(%edx)
 804b16f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804b172:	5b                   	pop    %ebx
 804b173:	5e                   	pop    %esi
 804b174:	5f                   	pop    %edi
 804b175:	5d                   	pop    %ebp
 804b176:	c3                   	ret    
 804b177:	55                   	push   %ebp
 804b178:	89 e5                	mov    %esp,%ebp
 804b17a:	6a 00                	push   $0x0
 804b17c:	6a 00                	push   $0x0
 804b17e:	6a 00                	push   $0x0
 804b180:	ff 75 10             	pushl  0x10(%ebp)
 804b183:	ff 75 0c             	pushl  0xc(%ebp)
 804b186:	ff 75 08             	pushl  0x8(%ebp)
 804b189:	e8 08 f9 ff ff       	call   0x804aa96
 804b18e:	c9                   	leave  
 804b18f:	c3                   	ret    
 804b190:	55                   	push   %ebp
 804b191:	89 e5                	mov    %esp,%ebp
 804b193:	6a 00                	push   $0x0
 804b195:	ff 75 18             	pushl  0x18(%ebp)
 804b198:	ff 75 14             	pushl  0x14(%ebp)
 804b19b:	ff 75 10             	pushl  0x10(%ebp)
 804b19e:	ff 75 0c             	pushl  0xc(%ebp)
 804b1a1:	ff 75 08             	pushl  0x8(%ebp)
 804b1a4:	e8 ed f8 ff ff       	call   0x804aa96
 804b1a9:	c9                   	leave  
 804b1aa:	c3                   	ret    
 804b1ab:	55                   	push   %ebp
 804b1ac:	89 e5                	mov    %esp,%ebp
 804b1ae:	6a 01                	push   $0x1
 804b1b0:	ff 75 18             	pushl  0x18(%ebp)
 804b1b3:	ff 75 14             	pushl  0x14(%ebp)
 804b1b6:	ff 75 10             	pushl  0x10(%ebp)
 804b1b9:	ff 75 0c             	pushl  0xc(%ebp)
 804b1bc:	ff 75 08             	pushl  0x8(%ebp)
 804b1bf:	e8 d2 f8 ff ff       	call   0x804aa96
 804b1c4:	c9                   	leave  
 804b1c5:	c3                   	ret    
 804b1c6:	66 90                	xchg   %ax,%ax
 804b1c8:	55                   	push   %ebp
 804b1c9:	89 e5                	mov    %esp,%ebp
 804b1cb:	57                   	push   %edi
 804b1cc:	56                   	push   %esi
 804b1cd:	53                   	push   %ebx
 804b1ce:	83 ec 08             	sub    $0x8,%esp
 804b1d1:	e8 a1 da ff ff       	call   0x8048c77
 804b1d6:	81 c3 b2 6e 00 00    	add    $0x6eb2,%ebx
 804b1dc:	8d 83 9e e5 ff ff    	lea    -0x1a62(%ebx),%eax
 804b1e2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804b1e9:	50                   	push   %eax
 804b1ea:	e8 71 13 00 00       	call   0x804c560
 804b1ef:	89 c7                	mov    %eax,%edi
 804b1f1:	58                   	pop    %eax
 804b1f2:	85 ff                	test   %edi,%edi
 804b1f4:	74 59                	je     0x804b24f
 804b1f6:	31 f6                	xor    %esi,%esi
 804b1f8:	8d 93 a9 e5 ff ff    	lea    -0x1a57(%ebx),%edx
 804b1fe:	8d 45 f0             	lea    -0x10(%ebp),%eax
 804b201:	52                   	push   %edx
 804b202:	89 55 ec             	mov    %edx,-0x14(%ebp)
 804b205:	68 02 01 00 00       	push   $0x102
 804b20a:	50                   	push   %eax
 804b20b:	57                   	push   %edi
 804b20c:	e8 ce 13 00 00       	call   0x804c5df
 804b211:	83 c4 10             	add    $0x10,%esp
 804b214:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804b217:	85 c0                	test   %eax,%eax
 804b219:	0f 84 82 00 00 00    	je     0x804b2a1
 804b21f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b222:	8b 00                	mov    (%eax),%eax
 804b224:	80 38 63             	cmpb   $0x63,(%eax)
 804b227:	75 d5                	jne    0x804b1fe
 804b229:	80 78 01 70          	cmpb   $0x70,0x1(%eax)
 804b22d:	75 cf                	jne    0x804b1fe
 804b22f:	80 78 02 75          	cmpb   $0x75,0x2(%eax)
 804b233:	75 c9                	jne    0x804b1fe
 804b235:	0f b6 48 03          	movzbl 0x3(%eax),%ecx
 804b239:	8b 83 40 01 00 00    	mov    0x140(%ebx),%eax
 804b23f:	66 8b 04 48          	mov    (%eax,%ecx,2),%ax
 804b243:	83 e0 08             	and    $0x8,%eax
 804b246:	66 83 f8 01          	cmp    $0x1,%ax
 804b24a:	83 de ff             	sbb    $0xffffffff,%esi
 804b24d:	eb af                	jmp    0x804b1fe
 804b24f:	8d 83 ab e5 ff ff    	lea    -0x1a55(%ebx),%eax
 804b255:	50                   	push   %eax
 804b256:	e8 05 13 00 00       	call   0x804c560
 804b25b:	5e                   	pop    %esi
 804b25c:	89 c7                	mov    %eax,%edi
 804b25e:	31 f6                	xor    %esi,%esi
 804b260:	85 c0                	test   %eax,%eax
 804b262:	74 3d                	je     0x804b2a1
 804b264:	8d 83 dc e5 ff ff    	lea    -0x1a24(%ebx),%eax
 804b26a:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b26d:	ff 75 ec             	pushl  -0x14(%ebp)
 804b270:	8d 45 f0             	lea    -0x10(%ebp),%eax
 804b273:	68 02 02 07 00       	push   $0x70202
 804b278:	50                   	push   %eax
 804b279:	57                   	push   %edi
 804b27a:	e8 60 13 00 00       	call   0x804c5df
 804b27f:	83 c4 10             	add    $0x10,%esp
 804b282:	85 c0                	test   %eax,%eax
 804b284:	74 1b                	je     0x804b2a1
 804b286:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b289:	ff 30                	pushl  (%eax)
 804b28b:	8d 83 b9 e5 ff ff    	lea    -0x1a47(%ebx),%eax
 804b291:	50                   	push   %eax
 804b292:	e8 6d 28 00 00       	call   0x804db04
 804b297:	83 f8 01             	cmp    $0x1,%eax
 804b29a:	5a                   	pop    %edx
 804b29b:	83 d6 00             	adc    $0x0,%esi
 804b29e:	59                   	pop    %ecx
 804b29f:	eb cc                	jmp    0x804b26d
 804b2a1:	57                   	push   %edi
 804b2a2:	e8 fc 12 00 00       	call   0x804c5a3
 804b2a7:	58                   	pop    %eax
 804b2a8:	85 f6                	test   %esi,%esi
 804b2aa:	89 f0                	mov    %esi,%eax
 804b2ac:	75 02                	jne    0x804b2b0
 804b2ae:	b0 01                	mov    $0x1,%al
 804b2b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804b2b3:	5b                   	pop    %ebx
 804b2b4:	5e                   	pop    %esi
 804b2b5:	5f                   	pop    %edi
 804b2b6:	5d                   	pop    %ebp
 804b2b7:	c3                   	ret    
 804b2b8:	55                   	push   %ebp
 804b2b9:	89 e5                	mov    %esp,%ebp
 804b2bb:	57                   	push   %edi
 804b2bc:	56                   	push   %esi
 804b2bd:	53                   	push   %ebx
 804b2be:	83 ec 08             	sub    $0x8,%esp
 804b2c1:	e8 b1 d9 ff ff       	call   0x8048c77
 804b2c6:	81 c3 c2 6d 00 00    	add    $0x6dc2,%ebx
 804b2cc:	8b 45 08             	mov    0x8(%ebp),%eax
 804b2cf:	3d f0 00 00 00       	cmp    $0xf0,%eax
 804b2d4:	77 13                	ja     0x804b2e9
 804b2d6:	8b 84 83 e0 e5 ff ff 	mov    -0x1a20(%ebx,%eax,4),%eax
 804b2dd:	01 d8                	add    %ebx,%eax
 804b2df:	ff e0                	jmp    *%eax
 804b2e1:	83 c8 ff             	or     $0xffffffff,%eax
 804b2e4:	e9 88 04 00 00       	jmp    0x804b771
 804b2e9:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804b2ef:	65 c7 00 16 00 00 00 	movl   $0x16,%gs:(%eax)
 804b2f6:	83 c8 ff             	or     $0xffffffff,%eax
 804b2f9:	e9 73 04 00 00       	jmp    0x804b771
 804b2fe:	8d 45 ec             	lea    -0x14(%ebp),%eax
 804b301:	50                   	push   %eax
 804b302:	6a 03                	push   $0x3
 804b304:	e8 7b 11 00 00       	call   0x804c484
 804b309:	5e                   	pop    %esi
 804b30a:	89 c2                	mov    %eax,%edx
 804b30c:	5f                   	pop    %edi
 804b30d:	b8 00 00 02 00       	mov    $0x20000,%eax
 804b312:	85 d2                	test   %edx,%edx
 804b314:	0f 85 57 04 00 00    	jne    0x804b771
 804b31a:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804b31d:	81 fa ff ff 07 00    	cmp    $0x7ffff,%edx
 804b323:	0f 86 48 04 00 00    	jbe    0x804b771
 804b329:	89 d0                	mov    %edx,%eax
 804b32b:	c1 e8 02             	shr    $0x2,%eax
 804b32e:	e9 3e 04 00 00       	jmp    0x804b771
 804b333:	b8 00 00 01 00       	mov    $0x10000,%eax
 804b338:	e9 34 04 00 00       	jmp    0x804b771
 804b33d:	e8 ea 0e 00 00       	call   0x804c22c
 804b342:	e9 2a 04 00 00       	jmp    0x804b771
 804b347:	b8 10 00 00 00       	mov    $0x10,%eax
 804b34c:	e9 20 04 00 00       	jmp    0x804b771
 804b351:	b8 06 00 00 00       	mov    $0x6,%eax
 804b356:	e9 16 04 00 00       	jmp    0x804b771
 804b35b:	b8 01 00 00 00       	mov    $0x1,%eax
 804b360:	e9 0c 04 00 00       	jmp    0x804b771
 804b365:	b8 01 00 00 00       	mov    $0x1,%eax
 804b36a:	e9 02 04 00 00       	jmp    0x804b771
 804b36f:	b8 01 00 00 00       	mov    $0x1,%eax
 804b374:	e9 f8 03 00 00       	jmp    0x804b771
 804b379:	b8 01 00 00 00       	mov    $0x1,%eax
 804b37e:	e9 ee 03 00 00       	jmp    0x804b771
 804b383:	b8 01 00 00 00       	mov    $0x1,%eax
 804b388:	e9 e4 03 00 00       	jmp    0x804b771
 804b38d:	b8 01 00 00 00       	mov    $0x1,%eax
 804b392:	e9 da 03 00 00       	jmp    0x804b771
 804b397:	b8 01 00 00 00       	mov    $0x1,%eax
 804b39c:	e9 d0 03 00 00       	jmp    0x804b771
 804b3a1:	b8 01 00 00 00       	mov    $0x1,%eax
 804b3a6:	e9 c6 03 00 00       	jmp    0x804b771
 804b3ab:	b8 01 00 00 00       	mov    $0x1,%eax
 804b3b0:	e9 bc 03 00 00       	jmp    0x804b771
 804b3b5:	b8 01 00 00 00       	mov    $0x1,%eax
 804b3ba:	e9 b2 03 00 00       	jmp    0x804b771
 804b3bf:	b8 01 00 00 00       	mov    $0x1,%eax
 804b3c4:	e9 a8 03 00 00       	jmp    0x804b771
 804b3c9:	b8 01 00 00 00       	mov    $0x1,%eax
 804b3ce:	e9 9e 03 00 00       	jmp    0x804b771
 804b3d3:	b8 01 00 00 00       	mov    $0x1,%eax
 804b3d8:	e9 94 03 00 00       	jmp    0x804b771
 804b3dd:	b8 01 00 00 00       	mov    $0x1,%eax
 804b3e2:	e9 8a 03 00 00       	jmp    0x804b771
 804b3e7:	b8 01 00 00 00       	mov    $0x1,%eax
 804b3ec:	e9 80 03 00 00       	jmp    0x804b771
 804b3f1:	b8 01 00 00 00       	mov    $0x1,%eax
 804b3f6:	e9 76 03 00 00       	jmp    0x804b771
 804b3fb:	b8 b0 0d 03 00       	mov    $0x30db0,%eax
 804b400:	e9 6c 03 00 00       	jmp    0x804b771
 804b405:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804b408:	5b                   	pop    %ebx
 804b409:	5e                   	pop    %esi
 804b40a:	5f                   	pop    %edi
 804b40b:	5d                   	pop    %ebp
 804b40c:	e9 97 0a 00 00       	jmp    0x804bea8
 804b411:	b8 14 00 00 00       	mov    $0x14,%eax
 804b416:	e9 56 03 00 00       	jmp    0x804b771
 804b41b:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 804b420:	e9 4c 03 00 00       	jmp    0x804b771
 804b425:	b8 00 80 00 00       	mov    $0x8000,%eax
 804b42a:	e9 42 03 00 00       	jmp    0x804b771
 804b42f:	b8 20 00 00 00       	mov    $0x20,%eax
 804b434:	e9 38 03 00 00       	jmp    0x804b771
 804b439:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 804b43e:	e9 2e 03 00 00       	jmp    0x804b771
 804b443:	b8 63 00 00 00       	mov    $0x63,%eax
 804b448:	e9 24 03 00 00       	jmp    0x804b771
 804b44d:	b8 00 08 00 00       	mov    $0x800,%eax
 804b452:	e9 1a 03 00 00       	jmp    0x804b771
 804b457:	b8 63 00 00 00       	mov    $0x63,%eax
 804b45c:	e9 10 03 00 00       	jmp    0x804b771
 804b461:	b8 e8 03 00 00       	mov    $0x3e8,%eax
 804b466:	e9 06 03 00 00       	jmp    0x804b771
 804b46b:	b8 ff 00 00 00       	mov    $0xff,%eax
 804b470:	e9 fc 02 00 00       	jmp    0x804b771
 804b475:	b8 20 00 00 00       	mov    $0x20,%eax
 804b47a:	e9 f2 02 00 00       	jmp    0x804b771
 804b47f:	b8 00 08 00 00       	mov    $0x800,%eax
 804b484:	e9 e8 02 00 00       	jmp    0x804b771
 804b489:	b8 ff 7f 00 00       	mov    $0x7fff,%eax
 804b48e:	e9 de 02 00 00       	jmp    0x804b771
 804b493:	b8 00 08 00 00       	mov    $0x800,%eax
 804b498:	e9 d4 02 00 00       	jmp    0x804b771
 804b49d:	b8 00 04 00 00       	mov    $0x400,%eax
 804b4a2:	e9 ca 02 00 00       	jmp    0x804b771
 804b4a7:	b8 b0 0d 03 00       	mov    $0x30db0,%eax
 804b4ac:	e9 c0 02 00 00       	jmp    0x804b771
 804b4b1:	b8 b0 0d 03 00       	mov    $0x30db0,%eax
 804b4b6:	e9 b6 02 00 00       	jmp    0x804b771
 804b4bb:	b8 b0 0d 03 00       	mov    $0x30db0,%eax
 804b4c0:	e9 ac 02 00 00       	jmp    0x804b771
 804b4c5:	b8 b0 0d 03 00       	mov    $0x30db0,%eax
 804b4ca:	e9 a2 02 00 00       	jmp    0x804b771
 804b4cf:	b8 69 10 03 00       	mov    $0x31069,%eax
 804b4d4:	e9 98 02 00 00       	jmp    0x804b771
 804b4d9:	b8 01 00 00 00       	mov    $0x1,%eax
 804b4de:	e9 8e 02 00 00       	jmp    0x804b771
 804b4e3:	b8 01 00 00 00       	mov    $0x1,%eax
 804b4e8:	e9 84 02 00 00       	jmp    0x804b771
 804b4ed:	b8 00 01 00 00       	mov    $0x100,%eax
 804b4f2:	e9 7a 02 00 00       	jmp    0x804b771
 804b4f7:	b8 00 01 00 00       	mov    $0x100,%eax
 804b4fc:	e9 70 02 00 00       	jmp    0x804b771
 804b501:	b8 00 01 00 00       	mov    $0x100,%eax
 804b506:	e9 66 02 00 00       	jmp    0x804b771
 804b50b:	b8 20 00 00 00       	mov    $0x20,%eax
 804b510:	e9 5c 02 00 00       	jmp    0x804b771
 804b515:	b8 04 00 00 00       	mov    $0x4,%eax
 804b51a:	e9 52 02 00 00       	jmp    0x804b771
 804b51f:	b8 00 04 00 00       	mov    $0x400,%eax
 804b524:	e9 48 02 00 00       	jmp    0x804b771
 804b529:	b8 00 40 00 00       	mov    $0x4000,%eax
 804b52e:	e9 3e 02 00 00       	jmp    0x804b771
 804b533:	b8 01 00 00 00       	mov    $0x1,%eax
 804b538:	e9 34 02 00 00       	jmp    0x804b771
 804b53d:	b8 01 00 00 00       	mov    $0x1,%eax
 804b542:	e9 2a 02 00 00       	jmp    0x804b771
 804b547:	b8 01 00 00 00       	mov    $0x1,%eax
 804b54c:	e9 20 02 00 00       	jmp    0x804b771
 804b551:	b8 01 00 00 00       	mov    $0x1,%eax
 804b556:	e9 16 02 00 00       	jmp    0x804b771
 804b55b:	b8 01 00 00 00       	mov    $0x1,%eax
 804b560:	e9 0c 02 00 00       	jmp    0x804b771
 804b565:	b8 01 00 00 00       	mov    $0x1,%eax
 804b56a:	e9 02 02 00 00       	jmp    0x804b771
 804b56f:	8d 83 c3 e5 ff ff    	lea    -0x1a3d(%ebx),%eax
 804b575:	50                   	push   %eax
 804b576:	e8 97 d9 ff ff       	call   0x8048f12
 804b57b:	59                   	pop    %ecx
 804b57c:	89 c7                	mov    %eax,%edi
 804b57e:	85 c0                	test   %eax,%eax
 804b580:	74 40                	je     0x804b5c2
 804b582:	31 f6                	xor    %esi,%esi
 804b584:	57                   	push   %edi
 804b585:	e8 3e 0f 00 00       	call   0x804c4c8
 804b58a:	5a                   	pop    %edx
 804b58b:	85 c0                	test   %eax,%eax
 804b58d:	74 2a                	je     0x804b5b9
 804b58f:	66 81 78 12 04 63    	cmpw   $0x6304,0x12(%eax)
 804b595:	75 ed                	jne    0x804b584
 804b597:	66 81 78 14 70 75    	cmpw   $0x7570,0x14(%eax)
 804b59d:	75 e5                	jne    0x804b584
 804b59f:	0f b6 50 16          	movzbl 0x16(%eax),%edx
 804b5a3:	8b 83 40 01 00 00    	mov    0x140(%ebx),%eax
 804b5a9:	66 8b 04 50          	mov    (%eax,%edx,2),%ax
 804b5ad:	83 e0 08             	and    $0x8,%eax
 804b5b0:	66 83 f8 01          	cmp    $0x1,%ax
 804b5b4:	83 de ff             	sbb    $0xffffffff,%esi
 804b5b7:	eb cb                	jmp    0x804b584
 804b5b9:	57                   	push   %edi
 804b5ba:	e8 95 d7 ff ff       	call   0x8048d54
 804b5bf:	58                   	pop    %eax
 804b5c0:	eb 07                	jmp    0x804b5c9
 804b5c2:	e8 01 fc ff ff       	call   0x804b1c8
 804b5c7:	89 c6                	mov    %eax,%esi
 804b5c9:	89 f0                	mov    %esi,%eax
 804b5cb:	85 f6                	test   %esi,%esi
 804b5cd:	0f 85 9e 01 00 00    	jne    0x804b771
 804b5d3:	b0 01                	mov    $0x1,%al
 804b5d5:	e9 97 01 00 00       	jmp    0x804b771
 804b5da:	e8 e9 fb ff ff       	call   0x804b1c8
 804b5df:	e9 8d 01 00 00       	jmp    0x804b771
 804b5e4:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 804b5e9:	e9 83 01 00 00       	jmp    0x804b771
 804b5ee:	b8 00 01 00 00       	mov    $0x100,%eax
 804b5f3:	e9 79 01 00 00       	jmp    0x804b771
 804b5f8:	b8 f4 01 00 00       	mov    $0x1f4,%eax
 804b5fd:	e9 6f 01 00 00       	jmp    0x804b771
 804b602:	b8 04 00 00 00       	mov    $0x4,%eax
 804b607:	e9 65 01 00 00       	jmp    0x804b771
 804b60c:	b8 01 00 00 00       	mov    $0x1,%eax
 804b611:	e9 5b 01 00 00       	jmp    0x804b771
 804b616:	b8 01 00 00 00       	mov    $0x1,%eax
 804b61b:	e9 51 01 00 00       	jmp    0x804b771
 804b620:	b8 01 00 00 00       	mov    $0x1,%eax
 804b625:	e9 47 01 00 00       	jmp    0x804b771
 804b62a:	b8 01 00 00 00       	mov    $0x1,%eax
 804b62f:	e9 3d 01 00 00       	jmp    0x804b771
 804b634:	b8 01 00 00 00       	mov    $0x1,%eax
 804b639:	e9 33 01 00 00       	jmp    0x804b771
 804b63e:	b8 01 00 00 00       	mov    $0x1,%eax
 804b643:	e9 29 01 00 00       	jmp    0x804b771
 804b648:	b8 01 00 00 00       	mov    $0x1,%eax
 804b64d:	e9 1f 01 00 00       	jmp    0x804b771
 804b652:	b8 08 00 00 00       	mov    $0x8,%eax
 804b657:	e9 15 01 00 00       	jmp    0x804b771
 804b65c:	b8 ff 00 00 00       	mov    $0xff,%eax
 804b661:	e9 0b 01 00 00       	jmp    0x804b771
 804b666:	31 c0                	xor    %eax,%eax
 804b668:	e9 04 01 00 00       	jmp    0x804b771
 804b66d:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 804b672:	e9 fa 00 00 00       	jmp    0x804b771
 804b677:	b8 00 00 00 80       	mov    $0x80000000,%eax
 804b67c:	e9 f0 00 00 00       	jmp    0x804b771
 804b681:	b8 20 00 00 00       	mov    $0x20,%eax
 804b686:	e9 e6 00 00 00       	jmp    0x804b771
 804b68b:	b8 20 00 00 00       	mov    $0x20,%eax
 804b690:	e9 dc 00 00 00       	jmp    0x804b771
 804b695:	b8 10 00 00 00       	mov    $0x10,%eax
 804b69a:	e9 d2 00 00 00       	jmp    0x804b771
 804b69f:	b8 14 00 00 00       	mov    $0x14,%eax
 804b6a4:	e9 c8 00 00 00       	jmp    0x804b771
 804b6a9:	b8 ff 7f 00 00       	mov    $0x7fff,%eax
 804b6ae:	e9 be 00 00 00       	jmp    0x804b771
 804b6b3:	b8 7f 00 00 00       	mov    $0x7f,%eax
 804b6b8:	e9 b4 00 00 00       	jmp    0x804b771
 804b6bd:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
 804b6c2:	e9 aa 00 00 00       	jmp    0x804b771
 804b6c7:	b8 ff 7f 00 00       	mov    $0x7fff,%eax
 804b6cc:	e9 a0 00 00 00       	jmp    0x804b771
 804b6d1:	b8 00 80 ff ff       	mov    $0xffff8000,%eax
 804b6d6:	e9 96 00 00 00       	jmp    0x804b771
 804b6db:	b8 ff 00 00 00       	mov    $0xff,%eax
 804b6e0:	e9 8c 00 00 00       	jmp    0x804b771
 804b6e5:	b8 ff ff 00 00       	mov    $0xffff,%eax
 804b6ea:	e9 82 00 00 00       	jmp    0x804b771
 804b6ef:	b8 09 00 00 00       	mov    $0x9,%eax
 804b6f4:	eb 7b                	jmp    0x804b771
 804b6f6:	b8 00 08 00 00       	mov    $0x800,%eax
 804b6fb:	eb 74                	jmp    0x804b771
 804b6fd:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 804b702:	eb 6d                	jmp    0x804b771
 804b704:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 804b709:	eb 66                	jmp    0x804b771
 804b70b:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 804b710:	eb 5f                	jmp    0x804b771
 804b712:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 804b717:	eb 58                	jmp    0x804b771
 804b719:	b8 01 00 00 00       	mov    $0x1,%eax
 804b71e:	eb 51                	jmp    0x804b771
 804b720:	b8 01 00 00 00       	mov    $0x1,%eax
 804b725:	eb 4a                	jmp    0x804b771
 804b727:	b8 01 00 00 00       	mov    $0x1,%eax
 804b72c:	eb 43                	jmp    0x804b771
 804b72e:	b8 01 00 00 00       	mov    $0x1,%eax
 804b733:	eb 3c                	jmp    0x804b771
 804b735:	b8 01 00 00 00       	mov    $0x1,%eax
 804b73a:	eb 35                	jmp    0x804b771
 804b73c:	b8 01 00 00 00       	mov    $0x1,%eax
 804b741:	eb 2e                	jmp    0x804b771
 804b743:	b8 01 00 00 00       	mov    $0x1,%eax
 804b748:	eb 27                	jmp    0x804b771
 804b74a:	8d 4d ec             	lea    -0x14(%ebp),%ecx
 804b74d:	ba 01 00 00 00       	mov    $0x1,%edx
 804b752:	87 d3                	xchg   %edx,%ebx
 804b754:	b8 0a 01 00 00       	mov    $0x10a,%eax
 804b759:	cd 80                	int    $0x80
 804b75b:	87 d3                	xchg   %edx,%ebx
 804b75d:	3d 01 f0 ff ff       	cmp    $0xfffff001,%eax
 804b762:	19 c0                	sbb    %eax,%eax
 804b764:	25 b1 0d 03 00       	and    $0x30db1,%eax
 804b769:	48                   	dec    %eax
 804b76a:	eb 05                	jmp    0x804b771
 804b76c:	b8 64 00 00 00       	mov    $0x64,%eax
 804b771:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804b774:	5b                   	pop    %ebx
 804b775:	5e                   	pop    %esi
 804b776:	5f                   	pop    %edi
 804b777:	5d                   	pop    %ebp
 804b778:	c3                   	ret    
 804b779:	66 90                	xchg   %ax,%ax
 804b77b:	66 90                	xchg   %ax,%ax
 804b77d:	66 90                	xchg   %ax,%ax
 804b77f:	90                   	nop
 804b780:	52                   	push   %edx
 804b781:	53                   	push   %ebx
 804b782:	56                   	push   %esi
 804b783:	ba 02 00 00 00       	mov    $0x2,%edx
 804b788:	89 cb                	mov    %ecx,%ebx
 804b78a:	31 f6                	xor    %esi,%esi
 804b78c:	b9 80 00 00 00       	mov    $0x80,%ecx
 804b791:	39 d0                	cmp    %edx,%eax
 804b793:	75 07                	jne    0x804b79c
 804b795:	b8 f0 00 00 00       	mov    $0xf0,%eax
 804b79a:	cd 80                	int    $0x80
 804b79c:	89 d0                	mov    %edx,%eax
 804b79e:	87 03                	xchg   %eax,(%ebx)
 804b7a0:	85 c0                	test   %eax,%eax
 804b7a2:	75 f1                	jne    0x804b795
 804b7a4:	5e                   	pop    %esi
 804b7a5:	5b                   	pop    %ebx
 804b7a6:	5a                   	pop    %edx
 804b7a7:	c3                   	ret    
 804b7a8:	90                   	nop
 804b7a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804b7b0:	53                   	push   %ebx
 804b7b1:	51                   	push   %ecx
 804b7b2:	52                   	push   %edx
 804b7b3:	89 c3                	mov    %eax,%ebx
 804b7b5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804b7bb:	b9 81 00 00 00       	mov    $0x81,%ecx
 804b7c0:	ba 01 00 00 00       	mov    $0x1,%edx
 804b7c5:	b8 f0 00 00 00       	mov    $0xf0,%eax
 804b7ca:	cd 80                	int    $0x80
 804b7cc:	5a                   	pop    %edx
 804b7cd:	59                   	pop    %ecx
 804b7ce:	5b                   	pop    %ebx
 804b7cf:	c3                   	ret    
 804b7d0:	55                   	push   %ebp
 804b7d1:	89 e5                	mov    %esp,%ebp
 804b7d3:	53                   	push   %ebx
 804b7d4:	e8 9e d4 ff ff       	call   0x8048c77
 804b7d9:	81 c3 af 68 00 00    	add    $0x68af,%ebx
 804b7df:	65 8b 15 6c 00 00 00 	mov    %gs:0x6c,%edx
 804b7e6:	65 8b 0d 68 00 00 00 	mov    %gs:0x68,%ecx
 804b7ed:	85 c9                	test   %ecx,%ecx
 804b7ef:	75 11                	jne    0x804b802
 804b7f1:	b8 e0 00 00 00       	mov    $0xe0,%eax
 804b7f6:	cd 80                	int    $0x80
 804b7f8:	65 a3 68 00 00 00    	mov    %eax,%gs:0x68
 804b7fe:	89 c1                	mov    %eax,%ecx
 804b800:	eb 14                	jmp    0x804b816
 804b802:	89 d0                	mov    %edx,%eax
 804b804:	85 d2                	test   %edx,%edx
 804b806:	7f 0e                	jg     0x804b816
 804b808:	89 c8                	mov    %ecx,%eax
 804b80a:	f7 c2 ff ff ff 7f    	test   $0x7fffffff,%edx
 804b810:	74 04                	je     0x804b816
 804b812:	89 d0                	mov    %edx,%eax
 804b814:	f7 d8                	neg    %eax
 804b816:	8b 55 08             	mov    0x8(%ebp),%edx
 804b819:	53                   	push   %ebx
 804b81a:	89 c3                	mov    %eax,%ebx
 804b81c:	b8 0e 01 00 00       	mov    $0x10e,%eax
 804b821:	cd 80                	int    $0x80
 804b823:	5b                   	pop    %ebx
 804b824:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804b829:	76 0e                	jbe    0x804b839
 804b82b:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804b831:	f7 d8                	neg    %eax
 804b833:	65 89 02             	mov    %eax,%gs:(%edx)
 804b836:	83 c8 ff             	or     $0xffffffff,%eax
 804b839:	5b                   	pop    %ebx
 804b83a:	5d                   	pop    %ebp
 804b83b:	c3                   	ret    
 804b83c:	66 90                	xchg   %ax,%ax
 804b83e:	66 90                	xchg   %ax,%ax
 804b840:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804b847:	00 
 804b848:	75 17                	jne    0x804b861
 804b84a:	89 da                	mov    %ebx,%edx
 804b84c:	8b 5c 24 04          	mov    0x4(%esp),%ebx
 804b850:	b8 06 00 00 00       	mov    $0x6,%eax
 804b855:	cd 80                	int    $0x80
 804b857:	89 d3                	mov    %edx,%ebx
 804b859:	3d 01 f0 ff ff       	cmp    $0xfffff001,%eax
 804b85e:	73 28                	jae    0x804b888
 804b860:	c3                   	ret    
 804b861:	e8 2a 01 00 00       	call   0x804b990
 804b866:	89 c1                	mov    %eax,%ecx
 804b868:	89 da                	mov    %ebx,%edx
 804b86a:	8b 5c 24 04          	mov    0x4(%esp),%ebx
 804b86e:	b8 06 00 00 00       	mov    $0x6,%eax
 804b873:	cd 80                	int    $0x80
 804b875:	89 d3                	mov    %edx,%ebx
 804b877:	50                   	push   %eax
 804b878:	89 c8                	mov    %ecx,%eax
 804b87a:	e8 6d 01 00 00       	call   0x804b9ec
 804b87f:	58                   	pop    %eax
 804b880:	3d 01 f0 ff ff       	cmp    $0xfffff001,%eax
 804b885:	73 01                	jae    0x804b888
 804b887:	c3                   	ret    
 804b888:	e8 c1 d4 ff ff       	call   0x8048d4e
 804b88d:	81 c1 fb 67 00 00    	add    $0x67fb,%ecx
 804b893:	c7 c1 fc ff ff ff    	mov    $0xfffffffc,%ecx
 804b899:	31 d2                	xor    %edx,%edx
 804b89b:	29 c2                	sub    %eax,%edx
 804b89d:	65 89 11             	mov    %edx,%gs:(%ecx)
 804b8a0:	83 c8 ff             	or     $0xffffffff,%eax
 804b8a3:	eb e2                	jmp    0x804b887
 804b8a5:	66 90                	xchg   %ax,%ax
 804b8a7:	66 90                	xchg   %ax,%ax
 804b8a9:	66 90                	xchg   %ax,%ax
 804b8ab:	66 90                	xchg   %ax,%ax
 804b8ad:	66 90                	xchg   %ax,%ax
 804b8af:	90                   	nop
 804b8b0:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804b8b7:	00 
 804b8b8:	75 1d                	jne    0x804b8d7
 804b8ba:	53                   	push   %ebx
 804b8bb:	8b 54 24 10          	mov    0x10(%esp),%edx
 804b8bf:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 804b8c3:	8b 5c 24 08          	mov    0x8(%esp),%ebx
 804b8c7:	b8 05 00 00 00       	mov    $0x5,%eax
 804b8cc:	cd 80                	int    $0x80
 804b8ce:	5b                   	pop    %ebx
 804b8cf:	3d 01 f0 ff ff       	cmp    $0xfffff001,%eax
 804b8d4:	73 2d                	jae    0x804b903
 804b8d6:	c3                   	ret    
 804b8d7:	e8 b4 00 00 00       	call   0x804b990
 804b8dc:	50                   	push   %eax
 804b8dd:	53                   	push   %ebx
 804b8de:	8b 54 24 14          	mov    0x14(%esp),%edx
 804b8e2:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 804b8e6:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
 804b8ea:	b8 05 00 00 00       	mov    $0x5,%eax
 804b8ef:	cd 80                	int    $0x80
 804b8f1:	5b                   	pop    %ebx
 804b8f2:	87 04 24             	xchg   %eax,(%esp)
 804b8f5:	e8 f2 00 00 00       	call   0x804b9ec
 804b8fa:	58                   	pop    %eax
 804b8fb:	3d 01 f0 ff ff       	cmp    $0xfffff001,%eax
 804b900:	73 01                	jae    0x804b903
 804b902:	c3                   	ret    
 804b903:	e8 46 d4 ff ff       	call   0x8048d4e
 804b908:	81 c1 80 67 00 00    	add    $0x6780,%ecx
 804b90e:	c7 c1 fc ff ff ff    	mov    $0xfffffffc,%ecx
 804b914:	31 d2                	xor    %edx,%edx
 804b916:	29 c2                	sub    %eax,%edx
 804b918:	65 89 11             	mov    %edx,%gs:(%ecx)
 804b91b:	83 c8 ff             	or     $0xffffffff,%eax
 804b91e:	eb e2                	jmp    0x804b902
 804b920:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804b927:	00 
 804b928:	75 1d                	jne    0x804b947
 804b92a:	53                   	push   %ebx
 804b92b:	8b 54 24 10          	mov    0x10(%esp),%edx
 804b92f:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 804b933:	8b 5c 24 08          	mov    0x8(%esp),%ebx
 804b937:	b8 03 00 00 00       	mov    $0x3,%eax
 804b93c:	cd 80                	int    $0x80
 804b93e:	5b                   	pop    %ebx
 804b93f:	3d 01 f0 ff ff       	cmp    $0xfffff001,%eax
 804b944:	73 2d                	jae    0x804b973
 804b946:	c3                   	ret    
 804b947:	e8 44 00 00 00       	call   0x804b990
 804b94c:	50                   	push   %eax
 804b94d:	53                   	push   %ebx
 804b94e:	8b 54 24 14          	mov    0x14(%esp),%edx
 804b952:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 804b956:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
 804b95a:	b8 03 00 00 00       	mov    $0x3,%eax
 804b95f:	cd 80                	int    $0x80
 804b961:	5b                   	pop    %ebx
 804b962:	87 04 24             	xchg   %eax,(%esp)
 804b965:	e8 82 00 00 00       	call   0x804b9ec
 804b96a:	58                   	pop    %eax
 804b96b:	3d 01 f0 ff ff       	cmp    $0xfffff001,%eax
 804b970:	73 01                	jae    0x804b973
 804b972:	c3                   	ret    
 804b973:	e8 d6 d3 ff ff       	call   0x8048d4e
 804b978:	81 c1 10 67 00 00    	add    $0x6710,%ecx
 804b97e:	c7 c1 fc ff ff ff    	mov    $0xfffffffc,%ecx
 804b984:	31 d2                	xor    %edx,%edx
 804b986:	29 c2                	sub    %eax,%edx
 804b988:	65 89 11             	mov    %edx,%gs:(%ecx)
 804b98b:	83 c8 ff             	or     $0xffffffff,%eax
 804b98e:	eb e2                	jmp    0x804b972
 804b990:	65 8b 15 84 00 00 00 	mov    %gs:0x84,%edx
 804b997:	89 d1                	mov    %edx,%ecx
 804b999:	83 c9 02             	or     $0x2,%ecx
 804b99c:	39 d1                	cmp    %edx,%ecx
 804b99e:	74 49                	je     0x804b9e9
 804b9a0:	89 d0                	mov    %edx,%eax
 804b9a2:	f0 65 0f b1 0d 84 00 	lock cmpxchg %ecx,%gs:0x84
 804b9a9:	00 00 
 804b9ab:	39 d0                	cmp    %edx,%eax
 804b9ad:	74 04                	je     0x804b9b3
 804b9af:	89 c2                	mov    %eax,%edx
 804b9b1:	eb e4                	jmp    0x804b997
 804b9b3:	83 e1 bb             	and    $0xffffffbb,%ecx
 804b9b6:	83 f9 0a             	cmp    $0xa,%ecx
 804b9b9:	75 2e                	jne    0x804b9e9
 804b9bb:	55                   	push   %ebp
 804b9bc:	89 e5                	mov    %esp,%ebp
 804b9be:	53                   	push   %ebx
 804b9bf:	e8 b3 d2 ff ff       	call   0x8048c77
 804b9c4:	81 c3 c4 66 00 00    	add    $0x66c4,%ebx
 804b9ca:	65 c7 05 20 02 00 00 	movl   $0xffffffff,%gs:0x220
 804b9d1:	ff ff ff ff 
 804b9d5:	f0 65 83 0d 84 00 00 	lock orl $0x10,%gs:0x84
 804b9dc:	00 10 
 804b9de:	65 a1 80 00 00 00    	mov    %gs:0x80,%eax
 804b9e4:	e8 17 46 fb f7       	call   0x0
 804b9e9:	89 d0                	mov    %edx,%eax
 804b9eb:	c3                   	ret    
 804b9ec:	a8 02                	test   $0x2,%al
 804b9ee:	75 59                	jne    0x804ba49
 804b9f0:	55                   	push   %ebp
 804b9f1:	89 e5                	mov    %esp,%ebp
 804b9f3:	57                   	push   %edi
 804b9f4:	65 8b 3d 08 00 00 00 	mov    %gs:0x8,%edi
 804b9fb:	56                   	push   %esi
 804b9fc:	65 8b 0d 84 00 00 00 	mov    %gs:0x84,%ecx
 804ba03:	89 ca                	mov    %ecx,%edx
 804ba05:	89 c8                	mov    %ecx,%eax
 804ba07:	83 e2 fd             	and    $0xfffffffd,%edx
 804ba0a:	f0 65 0f b1 15 84 00 	lock cmpxchg %edx,%gs:0x84
 804ba11:	00 00 
 804ba13:	39 c8                	cmp    %ecx,%eax
 804ba15:	74 04                	je     0x804ba1b
 804ba17:	89 c1                	mov    %eax,%ecx
 804ba19:	eb e8                	jmp    0x804ba03
 804ba1b:	81 c7 84 00 00 00    	add    $0x84,%edi
 804ba21:	89 d0                	mov    %edx,%eax
 804ba23:	83 e0 0c             	and    $0xc,%eax
 804ba26:	83 f8 04             	cmp    $0x4,%eax
 804ba29:	75 1b                	jne    0x804ba46
 804ba2b:	b8 f0 00 00 00       	mov    $0xf0,%eax
 804ba30:	b9 80 00 00 00       	mov    $0x80,%ecx
 804ba35:	31 f6                	xor    %esi,%esi
 804ba37:	87 fb                	xchg   %edi,%ebx
 804ba39:	cd 80                	int    $0x80
 804ba3b:	87 fb                	xchg   %edi,%ebx
 804ba3d:	65 8b 15 84 00 00 00 	mov    %gs:0x84,%edx
 804ba44:	eb db                	jmp    0x804ba21
 804ba46:	5e                   	pop    %esi
 804ba47:	5f                   	pop    %edi
 804ba48:	5d                   	pop    %ebp
 804ba49:	c3                   	ret    
 804ba4a:	66 90                	xchg   %ax,%ax
 804ba4c:	55                   	push   %ebp
 804ba4d:	89 e5                	mov    %esp,%ebp
 804ba4f:	57                   	push   %edi
 804ba50:	89 d7                	mov    %edx,%edi
 804ba52:	56                   	push   %esi
 804ba53:	89 c6                	mov    %eax,%esi
 804ba55:	53                   	push   %ebx
 804ba56:	e8 1c d2 ff ff       	call   0x8048c77
 804ba5b:	81 c3 2d 66 00 00    	add    $0x662d,%ebx
 804ba61:	6a 01                	push   $0x1
 804ba63:	50                   	push   %eax
 804ba64:	e8 85 08 00 00       	call   0x804c2ee
 804ba69:	5a                   	pop    %edx
 804ba6a:	40                   	inc    %eax
 804ba6b:	59                   	pop    %ecx
 804ba6c:	75 18                	jne    0x804ba86
 804ba6e:	8d 83 a4 e9 ff ff    	lea    -0x165c(%ebx),%eax
 804ba74:	57                   	push   %edi
 804ba75:	50                   	push   %eax
 804ba76:	e8 35 fe ff ff       	call   0x804b8b0
 804ba7b:	5a                   	pop    %edx
 804ba7c:	39 f0                	cmp    %esi,%eax
 804ba7e:	59                   	pop    %ecx
 804ba7f:	74 05                	je     0x804ba86
 804ba81:	e8 5a ee ff ff       	call   0x804a8e0
 804ba86:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804ba89:	5b                   	pop    %ebx
 804ba8a:	5e                   	pop    %esi
 804ba8b:	5f                   	pop    %edi
 804ba8c:	5d                   	pop    %ebp
 804ba8d:	c3                   	ret    
 804ba8e:	55                   	push   %ebp
 804ba8f:	31 c0                	xor    %eax,%eax
 804ba91:	89 e5                	mov    %esp,%ebp
 804ba93:	5d                   	pop    %ebp
 804ba94:	c3                   	ret    
 804ba95:	55                   	push   %ebp
 804ba96:	31 c0                	xor    %eax,%eax
 804ba98:	89 e5                	mov    %esp,%ebp
 804ba9a:	5d                   	pop    %ebp
 804ba9b:	c3                   	ret    
 804ba9c:	55                   	push   %ebp
 804ba9d:	89 e5                	mov    %esp,%ebp
 804ba9f:	8b 45 08             	mov    0x8(%ebp),%eax
 804baa2:	8b 55 0c             	mov    0xc(%ebp),%edx
 804baa5:	89 10                	mov    %edx,(%eax)
 804baa7:	8b 55 10             	mov    0x10(%ebp),%edx
 804baaa:	89 50 04             	mov    %edx,0x4(%eax)
 804baad:	5d                   	pop    %ebp
 804baae:	c3                   	ret    
 804baaf:	55                   	push   %ebp
 804bab0:	89 e5                	mov    %esp,%ebp
 804bab2:	8b 45 08             	mov    0x8(%ebp),%eax
 804bab5:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804bab9:	74 06                	je     0x804bac1
 804babb:	ff 70 04             	pushl  0x4(%eax)
 804babe:	ff 10                	call   *(%eax)
 804bac0:	58                   	pop    %eax
 804bac1:	c9                   	leave  
 804bac2:	c3                   	ret    
 804bac3:	55                   	push   %ebp
 804bac4:	89 e5                	mov    %esp,%ebp
 804bac6:	53                   	push   %ebx
 804bac7:	e8 ab d1 ff ff       	call   0x8048c77
 804bacc:	81 c3 bc 65 00 00    	add    $0x65bc,%ebx
 804bad2:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
 804bad8:	83 38 00             	cmpl   $0x0,(%eax)
 804badb:	75 1c                	jne    0x804baf9
 804badd:	c7 00 00 10 00 00    	movl   $0x1000,(%eax)
 804bae3:	e8 82 28 00 00       	call   0x804e36a
 804bae8:	8d 83 35 75 ff ff    	lea    -0x8acb(%ebx),%eax
 804baee:	85 c0                	test   %eax,%eax
 804baf0:	74 07                	je     0x804baf9
 804baf2:	5b                   	pop    %ebx
 804baf3:	5d                   	pop    %ebp
 804baf4:	e9 c4 da ff ff       	jmp    0x80495bd
 804baf9:	5b                   	pop    %ebx
 804bafa:	5d                   	pop    %ebp
 804bafb:	c3                   	ret    
 804bafc:	55                   	push   %ebp
 804bafd:	89 e5                	mov    %esp,%ebp
 804baff:	56                   	push   %esi
 804bb00:	53                   	push   %ebx
 804bb01:	e8 71 d1 ff ff       	call   0x8048c77
 804bb06:	81 c3 82 65 00 00    	add    $0x6582,%ebx
 804bb0c:	8d 83 78 ff ff ff    	lea    -0x88(%ebx),%eax
 804bb12:	8d 93 78 ff ff ff    	lea    -0x88(%ebx),%edx
 804bb18:	29 d0                	sub    %edx,%eax
 804bb1a:	c1 f8 02             	sar    $0x2,%eax
 804bb1d:	8d 70 ff             	lea    -0x1(%eax),%esi
 804bb20:	83 fe ff             	cmp    $0xffffffff,%esi
 804bb23:	74 0a                	je     0x804bb2f
 804bb25:	ff 94 b3 78 ff ff ff 	call   *-0x88(%ebx,%esi,4)
 804bb2c:	4e                   	dec    %esi
 804bb2d:	eb f1                	jmp    0x804bb20
 804bb2f:	8b 83 10 04 00 00    	mov    0x410(%ebx),%eax
 804bb35:	85 c0                	test   %eax,%eax
 804bb37:	74 02                	je     0x804bb3b
 804bb39:	ff d0                	call   *%eax
 804bb3b:	8b 83 0c 04 00 00    	mov    0x40c(%ebx),%eax
 804bb41:	85 c0                	test   %eax,%eax
 804bb43:	74 02                	je     0x804bb47
 804bb45:	ff d0                	call   *%eax
 804bb47:	5b                   	pop    %ebx
 804bb48:	5e                   	pop    %esi
 804bb49:	5d                   	pop    %ebp
 804bb4a:	c3                   	ret    
 804bb4b:	55                   	push   %ebp
 804bb4c:	89 e5                	mov    %esp,%ebp
 804bb4e:	57                   	push   %edi
 804bb4f:	56                   	push   %esi
 804bb50:	53                   	push   %ebx
 804bb51:	81 ec a4 00 00 00    	sub    $0xa4,%esp
 804bb57:	e8 1b d1 ff ff       	call   0x8048c77
 804bb5c:	81 c3 2c 65 00 00    	add    $0x652c,%ebx
 804bb62:	8b 83 94 ff ff ff    	mov    -0x6c(%ebx),%eax
 804bb68:	8b 55 20             	mov    0x20(%ebp),%edx
 804bb6b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804bb6e:	8b 75 10             	mov    0x10(%ebp),%esi
 804bb71:	89 10                	mov    %edx,(%eax)
 804bb73:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804bb76:	89 83 0c 04 00 00    	mov    %eax,0x40c(%ebx)
 804bb7c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bb7f:	8d 14 85 04 00 00 00 	lea    0x4(,%eax,4),%edx
 804bb86:	8b 83 a8 ff ff ff    	mov    -0x58(%ebx),%eax
 804bb8c:	01 d1                	add    %edx,%ecx
 804bb8e:	89 08                	mov    %ecx,(%eax)
 804bb90:	3b 0e                	cmp    (%esi),%ecx
 804bb92:	75 06                	jne    0x804bb9a
 804bb94:	8d 54 16 fc          	lea    -0x4(%esi,%edx,1),%edx
 804bb98:	89 10                	mov    %edx,(%eax)
 804bb9a:	8d bd 7c ff ff ff    	lea    -0x84(%ebp),%edi
 804bba0:	b9 1e 00 00 00       	mov    $0x1e,%ecx
 804bba5:	31 c0                	xor    %eax,%eax
 804bba7:	f3 ab                	rep stos %eax,%es:(%edi)
 804bba9:	8b 83 a8 ff ff ff    	mov    -0x58(%ebx),%eax
 804bbaf:	8b 00                	mov    (%eax),%eax
 804bbb1:	83 38 00             	cmpl   $0x0,(%eax)
 804bbb4:	74 05                	je     0x804bbbb
 804bbb6:	83 c0 04             	add    $0x4,%eax
 804bbb9:	eb f6                	jmp    0x804bbb1
 804bbbb:	83 c0 04             	add    $0x4,%eax
 804bbbe:	8d 95 7c ff ff ff    	lea    -0x84(%ebp),%edx
 804bbc4:	8b 08                	mov    (%eax),%ecx
 804bbc6:	85 c9                	test   %ecx,%ecx
 804bbc8:	74 11                	je     0x804bbdb
 804bbca:	83 f9 0e             	cmp    $0xe,%ecx
 804bbcd:	77 07                	ja     0x804bbd6
 804bbcf:	8d 3c ca             	lea    (%edx,%ecx,8),%edi
 804bbd2:	89 c6                	mov    %eax,%esi
 804bbd4:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 804bbd5:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 804bbd6:	83 c0 08             	add    $0x8,%eax
 804bbd9:	eb e9                	jmp    0x804bbc4
 804bbdb:	8d 85 7c ff ff ff    	lea    -0x84(%ebp),%eax
 804bbe1:	e8 ed 27 00 00       	call   0x804e3d3
 804bbe6:	e8 d8 fe ff ff       	call   0x804bac3
 804bbeb:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804bbee:	85 c0                	test   %eax,%eax
 804bbf0:	75 04                	jne    0x804bbf6
 804bbf2:	66 b8 00 10          	mov    $0x1000,%ax
 804bbf6:	8b 93 f0 ff ff ff    	mov    -0x10(%ebx),%edx
 804bbfc:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%ebp)
 804bc00:	89 02                	mov    %eax,(%edx)
 804bc02:	74 0a                	je     0x804bc0e
 804bc04:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804bc07:	83 f8 ff             	cmp    $0xffffffff,%eax
 804bc0a:	75 24                	jne    0x804bc30
 804bc0c:	eb 59                	jmp    0x804bc67
 804bc0e:	e8 d9 04 00 00       	call   0x804c0ec
 804bc13:	89 c6                	mov    %eax,%esi
 804bc15:	e8 6a 07 00 00       	call   0x804c384
 804bc1a:	39 c6                	cmp    %eax,%esi
 804bc1c:	75 1f                	jne    0x804bc3d
 804bc1e:	e8 99 08 00 00       	call   0x804c4bc
 804bc23:	89 c6                	mov    %eax,%esi
 804bc25:	e8 26 06 00 00       	call   0x804c250
 804bc2a:	39 c6                	cmp    %eax,%esi
 804bc2c:	75 0f                	jne    0x804bc3d
 804bc2e:	eb d4                	jmp    0x804bc04
 804bc30:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804bc33:	75 08                	jne    0x804bc3d
 804bc35:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804bc38:	39 45 e8             	cmp    %eax,-0x18(%ebp)
 804bc3b:	74 2a                	je     0x804bc67
 804bc3d:	ba 00 00 02 00       	mov    $0x20000,%edx
 804bc42:	31 c0                	xor    %eax,%eax
 804bc44:	e8 03 fe ff ff       	call   0x804ba4c
 804bc49:	ba 02 00 02 00       	mov    $0x20002,%edx
 804bc4e:	b8 01 00 00 00       	mov    $0x1,%eax
 804bc53:	e8 f4 fd ff ff       	call   0x804ba4c
 804bc58:	ba 02 00 02 00       	mov    $0x20002,%edx
 804bc5d:	b8 02 00 00 00       	mov    $0x2,%eax
 804bc62:	e8 e5 fd ff ff       	call   0x804ba4c
 804bc67:	8b 45 10             	mov    0x10(%ebp),%eax
 804bc6a:	8d b3 78 ff ff ff    	lea    -0x88(%ebx),%esi
 804bc70:	31 ff                	xor    %edi,%edi
 804bc72:	8b 00                	mov    (%eax),%eax
 804bc74:	89 83 3c 01 00 00    	mov    %eax,0x13c(%ebx)
 804bc7a:	8b 45 18             	mov    0x18(%ebp),%eax
 804bc7d:	89 83 10 04 00 00    	mov    %eax,0x410(%ebx)
 804bc83:	8d 83 78 ff ff ff    	lea    -0x88(%ebx),%eax
 804bc89:	29 c6                	sub    %eax,%esi
 804bc8b:	c1 fe 02             	sar    $0x2,%esi
 804bc8e:	39 f7                	cmp    %esi,%edi
 804bc90:	74 0a                	je     0x804bc9c
 804bc92:	ff 94 bb 78 ff ff ff 	call   *-0x88(%ebx,%edi,4)
 804bc99:	47                   	inc    %edi
 804bc9a:	eb f2                	jmp    0x804bc8e
 804bc9c:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 804bca0:	74 03                	je     0x804bca5
 804bca2:	ff 55 14             	call   *0x14(%ebp)
 804bca5:	8d b3 78 ff ff ff    	lea    -0x88(%ebx),%esi
 804bcab:	8d 83 78 ff ff ff    	lea    -0x88(%ebx),%eax
 804bcb1:	29 c6                	sub    %eax,%esi
 804bcb3:	31 ff                	xor    %edi,%edi
 804bcb5:	c1 fe 02             	sar    $0x2,%esi
 804bcb8:	39 f7                	cmp    %esi,%edi
 804bcba:	74 0a                	je     0x804bcc6
 804bcbc:	ff 94 bb 78 ff ff ff 	call   *-0x88(%ebx,%edi,4)
 804bcc3:	47                   	inc    %edi
 804bcc4:	eb f2                	jmp    0x804bcb8
 804bcc6:	8d 83 b4 6f ff ff    	lea    -0x904c(%ebx),%eax
 804bccc:	85 c0                	test   %eax,%eax
 804bcce:	74 0b                	je     0x804bcdb
 804bcd0:	e8 67 d3 ff ff       	call   0x804903c
 804bcd5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804bcdb:	8b 83 dc ff ff ff    	mov    -0x24(%ebx),%eax
 804bce1:	85 c0                	test   %eax,%eax
 804bce3:	74 0b                	je     0x804bcf0
 804bce5:	e8 16 43 fb f7       	call   0x0
 804bcea:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804bcf0:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
 804bcf6:	50                   	push   %eax
 804bcf7:	e8 d4 00 00 00       	call   0x804bdd0
 804bcfc:	5a                   	pop    %edx
 804bcfd:	85 c0                	test   %eax,%eax
 804bcff:	75 3a                	jne    0x804bd3b
 804bd01:	65 a1 80 00 00 00    	mov    %gs:0x80,%eax
 804bd07:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
 804bd0d:	65 a1 7c 00 00 00    	mov    %gs:0x7c,%eax
 804bd13:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
 804bd19:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
 804bd1f:	65 a3 80 00 00 00    	mov    %eax,%gs:0x80
 804bd25:	8b 83 a8 ff ff ff    	mov    -0x58(%ebx),%eax
 804bd2b:	ff 30                	pushl  (%eax)
 804bd2d:	ff 75 10             	pushl  0x10(%ebp)
 804bd30:	ff 75 0c             	pushl  0xc(%ebp)
 804bd33:	ff 55 08             	call   *0x8(%ebp)
 804bd36:	83 c4 0c             	add    $0xc,%esp
 804bd39:	eb 22                	jmp    0x804bd5d
 804bd3b:	e8 c0 42 fb f7       	call   0x0
 804bd40:	8b 83 d8 ff ff ff    	mov    -0x28(%ebx),%eax
 804bd46:	f0 ff 08             	lock decl (%eax)
 804bd49:	0f 94 c2             	sete   %dl
 804bd4c:	84 d2                	test   %dl,%dl
 804bd4e:	75 0b                	jne    0x804bd5b
 804bd50:	b8 01 00 00 00       	mov    $0x1,%eax
 804bd55:	31 db                	xor    %ebx,%ebx
 804bd57:	cd 80                	int    $0x80
 804bd59:	eb fa                	jmp    0x804bd55
 804bd5b:	31 c0                	xor    %eax,%eax
 804bd5d:	50                   	push   %eax
 804bd5e:	e8 65 22 00 00       	call   0x804dfc8
 804bd63:	90                   	nop
 804bd64:	b8 ad 00 00 00       	mov    $0xad,%eax
 804bd69:	cd 80                	int    $0x80
 804bd6b:	58                   	pop    %eax
 804bd6c:	b8 77 00 00 00       	mov    $0x77,%eax
 804bd71:	cd 80                	int    $0x80
 804bd73:	55                   	push   %ebp
 804bd74:	89 e5                	mov    %esp,%ebp
 804bd76:	57                   	push   %edi
 804bd77:	56                   	push   %esi
 804bd78:	53                   	push   %ebx
 804bd79:	83 ec 14             	sub    $0x14,%esp
 804bd7c:	e8 f6 ce ff ff       	call   0x8048c77
 804bd81:	81 c3 07 63 00 00    	add    $0x6307,%ebx
 804bd87:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bd8a:	85 c0                	test   %eax,%eax
 804bd8c:	74 2b                	je     0x804bdb9
 804bd8e:	8d 7d e0             	lea    -0x20(%ebp),%edi
 804bd91:	89 c6                	mov    %eax,%esi
 804bd93:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 804bd94:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 804bd95:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 804bd96:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 804bd97:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 804bd98:	81 4d e4 00 00 00 04 	orl    $0x4000000,-0x1c(%ebp)
 804bd9f:	f6 40 04 04          	testb  $0x4,0x4(%eax)
 804bda3:	74 08                	je     0x804bdad
 804bda5:	8d 83 dc 9c ff ff    	lea    -0x6324(%ebx),%eax
 804bdab:	eb 06                	jmp    0x804bdb3
 804bdad:	8d 83 e3 9c ff ff    	lea    -0x631d(%ebx),%eax
 804bdb3:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804bdb6:	8d 45 e0             	lea    -0x20(%ebp),%eax
 804bdb9:	6a 08                	push   $0x8
 804bdbb:	ff 75 10             	pushl  0x10(%ebp)
 804bdbe:	50                   	push   %eax
 804bdbf:	ff 75 08             	pushl  0x8(%ebp)
 804bdc2:	e8 95 04 00 00       	call   0x804c25c
 804bdc7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804bdca:	5b                   	pop    %ebx
 804bdcb:	5e                   	pop    %esi
 804bdcc:	5f                   	pop    %edi
 804bdcd:	5d                   	pop    %ebp
 804bdce:	c3                   	ret    
 804bdcf:	90                   	nop
 804bdd0:	31 c0                	xor    %eax,%eax
 804bdd2:	8b 54 24 04          	mov    0x4(%esp),%edx
 804bdd6:	89 1a                	mov    %ebx,(%edx)
 804bdd8:	89 72 04             	mov    %esi,0x4(%edx)
 804bddb:	89 7a 08             	mov    %edi,0x8(%edx)
 804bdde:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804bde2:	89 4a 10             	mov    %ecx,0x10(%edx)
 804bde5:	8b 0c 24             	mov    (%esp),%ecx
 804bde8:	89 4a 14             	mov    %ecx,0x14(%edx)
 804bdeb:	89 6a 0c             	mov    %ebp,0xc(%edx)
 804bdee:	89 42 18             	mov    %eax,0x18(%edx)
 804bdf1:	c3                   	ret    
 804bdf2:	66 90                	xchg   %ax,%ax
 804bdf4:	89 da                	mov    %ebx,%edx
 804bdf6:	b8 5a 00 00 00       	mov    $0x5a,%eax
 804bdfb:	8d 5c 24 04          	lea    0x4(%esp),%ebx
 804bdff:	cd 80                	int    $0x80
 804be01:	89 d3                	mov    %edx,%ebx
 804be03:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804be08:	0f 87 2e 26 00 00    	ja     0x804e43c
 804be0e:	c3                   	ret    
 804be0f:	90                   	nop
 804be10:	55                   	push   %ebp
 804be11:	89 e5                	mov    %esp,%ebp
 804be13:	57                   	push   %edi
 804be14:	56                   	push   %esi
 804be15:	53                   	push   %ebx
 804be16:	83 ec 0c             	sub    $0xc,%esp
 804be19:	e8 59 ce ff ff       	call   0x8048c77
 804be1e:	81 c3 6a 62 00 00    	add    $0x626a,%ebx
 804be24:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804be27:	8b 55 10             	mov    0x10(%ebp),%edx
 804be2a:	8b 45 08             	mov    0x8(%ebp),%eax
 804be2d:	53                   	push   %ebx
 804be2e:	89 c3                	mov    %eax,%ebx
 804be30:	b8 8d 00 00 00       	mov    $0x8d,%eax
 804be35:	cd 80                	int    $0x80
 804be37:	5b                   	pop    %ebx
 804be38:	89 c7                	mov    %eax,%edi
 804be3a:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804be3f:	76 12                	jbe    0x804be53
 804be41:	89 c2                	mov    %eax,%edx
 804be43:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804be49:	f7 da                	neg    %edx
 804be4b:	65 89 10             	mov    %edx,%gs:(%eax)
 804be4e:	83 cf ff             	or     $0xffffffff,%edi
 804be51:	eb 4b                	jmp    0x804be9e
 804be53:	83 f8 ff             	cmp    $0xffffffff,%eax
 804be56:	74 46                	je     0x804be9e
 804be58:	8d 04 01             	lea    (%ecx,%eax,1),%eax
 804be5b:	89 ce                	mov    %ecx,%esi
 804be5d:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804be60:	3b 75 ec             	cmp    -0x14(%ebp),%esi
 804be63:	73 39                	jae    0x804be9e
 804be65:	0f b7 46 08          	movzwl 0x8(%esi),%eax
 804be69:	8d 4e 0a             	lea    0xa(%esi),%ecx
 804be6c:	8a 44 06 ff          	mov    -0x1(%esi,%eax,1),%al
 804be70:	89 4d e8             	mov    %ecx,-0x18(%ebp)
 804be73:	51                   	push   %ecx
 804be74:	88 45 f3             	mov    %al,-0xd(%ebp)
 804be77:	e8 44 1d 00 00       	call   0x804dbc0
 804be7c:	8b 4d e8             	mov    -0x18(%ebp),%ecx
 804be7f:	40                   	inc    %eax
 804be80:	89 04 24             	mov    %eax,(%esp)
 804be83:	8d 46 0b             	lea    0xb(%esi),%eax
 804be86:	51                   	push   %ecx
 804be87:	50                   	push   %eax
 804be88:	e8 33 1c 00 00       	call   0x804dac0
 804be8d:	8a 45 f3             	mov    -0xd(%ebp),%al
 804be90:	88 46 0a             	mov    %al,0xa(%esi)
 804be93:	83 c4 0c             	add    $0xc,%esp
 804be96:	0f b7 46 08          	movzwl 0x8(%esi),%eax
 804be9a:	01 c6                	add    %eax,%esi
 804be9c:	eb c2                	jmp    0x804be60
 804be9e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804bea1:	89 f8                	mov    %edi,%eax
 804bea3:	5b                   	pop    %ebx
 804bea4:	5e                   	pop    %esi
 804bea5:	5f                   	pop    %edi
 804bea6:	5d                   	pop    %ebp
 804bea7:	c3                   	ret    
 804bea8:	e8 a1 ce ff ff       	call   0x8048d4e
 804bead:	81 c1 db 61 00 00    	add    $0x61db,%ecx
 804beb3:	55                   	push   %ebp
 804beb4:	8b 81 f0 ff ff ff    	mov    -0x10(%ecx),%eax
 804beba:	89 e5                	mov    %esp,%ebp
 804bebc:	8b 10                	mov    (%eax),%edx
 804bebe:	b8 00 10 00 00       	mov    $0x1000,%eax
 804bec3:	85 d2                	test   %edx,%edx
 804bec5:	74 02                	je     0x804bec9
 804bec7:	89 d0                	mov    %edx,%eax
 804bec9:	5d                   	pop    %ebp
 804beca:	c3                   	ret    
 804becb:	90                   	nop
 804becc:	55                   	push   %ebp
 804becd:	b9 16 00 00 00       	mov    $0x16,%ecx
 804bed2:	89 e5                	mov    %esp,%ebp
 804bed4:	57                   	push   %edi
 804bed5:	56                   	push   %esi
 804bed6:	31 c0                	xor    %eax,%eax
 804bed8:	8b 75 0c             	mov    0xc(%ebp),%esi
 804bedb:	89 f7                	mov    %esi,%edi
 804bedd:	f3 ab                	rep stos %eax,%es:(%edi)
 804bedf:	8b 45 08             	mov    0x8(%ebp),%eax
 804bee2:	8b 00                	mov    (%eax),%eax
 804bee4:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
 804beeb:	89 06                	mov    %eax,(%esi)
 804beed:	8b 45 08             	mov    0x8(%ebp),%eax
 804bef0:	8b 40 04             	mov    0x4(%eax),%eax
 804bef3:	89 46 0c             	mov    %eax,0xc(%esi)
 804bef6:	8b 45 08             	mov    0x8(%ebp),%eax
 804bef9:	0f b7 40 08          	movzwl 0x8(%eax),%eax
 804befd:	89 46 10             	mov    %eax,0x10(%esi)
 804bf00:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf03:	0f b7 40 0a          	movzwl 0xa(%eax),%eax
 804bf07:	89 46 14             	mov    %eax,0x14(%esi)
 804bf0a:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf0d:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804bf11:	89 46 18             	mov    %eax,0x18(%esi)
 804bf14:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf17:	0f b7 40 0e          	movzwl 0xe(%eax),%eax
 804bf1b:	89 46 1c             	mov    %eax,0x1c(%esi)
 804bf1e:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf21:	0f b7 40 10          	movzwl 0x10(%eax),%eax
 804bf25:	89 46 20             	mov    %eax,0x20(%esi)
 804bf28:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf2b:	c7 46 24 00 00 00 00 	movl   $0x0,0x24(%esi)
 804bf32:	8b 40 14             	mov    0x14(%eax),%eax
 804bf35:	89 46 2c             	mov    %eax,0x2c(%esi)
 804bf38:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf3b:	8b 40 18             	mov    0x18(%eax),%eax
 804bf3e:	89 46 30             	mov    %eax,0x30(%esi)
 804bf41:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf44:	8b 40 1c             	mov    0x1c(%eax),%eax
 804bf47:	89 46 34             	mov    %eax,0x34(%esi)
 804bf4a:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf4d:	8b 50 24             	mov    0x24(%eax),%edx
 804bf50:	8b 40 20             	mov    0x20(%eax),%eax
 804bf53:	89 46 38             	mov    %eax,0x38(%esi)
 804bf56:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf59:	89 56 3c             	mov    %edx,0x3c(%esi)
 804bf5c:	8b 50 2c             	mov    0x2c(%eax),%edx
 804bf5f:	8b 40 28             	mov    0x28(%eax),%eax
 804bf62:	89 46 40             	mov    %eax,0x40(%esi)
 804bf65:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf68:	89 56 44             	mov    %edx,0x44(%esi)
 804bf6b:	8b 50 34             	mov    0x34(%eax),%edx
 804bf6e:	8b 40 30             	mov    0x30(%eax),%eax
 804bf71:	89 46 48             	mov    %eax,0x48(%esi)
 804bf74:	89 56 4c             	mov    %edx,0x4c(%esi)
 804bf77:	5e                   	pop    %esi
 804bf78:	5f                   	pop    %edi
 804bf79:	5d                   	pop    %ebp
 804bf7a:	c3                   	ret    
 804bf7b:	55                   	push   %ebp
 804bf7c:	b9 16 00 00 00       	mov    $0x16,%ecx
 804bf81:	89 e5                	mov    %esp,%ebp
 804bf83:	57                   	push   %edi
 804bf84:	56                   	push   %esi
 804bf85:	31 c0                	xor    %eax,%eax
 804bf87:	8b 75 0c             	mov    0xc(%ebp),%esi
 804bf8a:	89 f7                	mov    %esi,%edi
 804bf8c:	f3 ab                	rep stos %eax,%es:(%edi)
 804bf8e:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf91:	8b 50 04             	mov    0x4(%eax),%edx
 804bf94:	8b 00                	mov    (%eax),%eax
 804bf96:	89 06                	mov    %eax,(%esi)
 804bf98:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf9b:	89 56 04             	mov    %edx,0x4(%esi)
 804bf9e:	8b 40 58             	mov    0x58(%eax),%eax
 804bfa1:	89 46 0c             	mov    %eax,0xc(%esi)
 804bfa4:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfa7:	8b 40 10             	mov    0x10(%eax),%eax
 804bfaa:	89 46 10             	mov    %eax,0x10(%esi)
 804bfad:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfb0:	8b 40 14             	mov    0x14(%eax),%eax
 804bfb3:	89 46 14             	mov    %eax,0x14(%esi)
 804bfb6:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfb9:	8b 40 18             	mov    0x18(%eax),%eax
 804bfbc:	89 46 18             	mov    %eax,0x18(%esi)
 804bfbf:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfc2:	8b 40 1c             	mov    0x1c(%eax),%eax
 804bfc5:	89 46 1c             	mov    %eax,0x1c(%esi)
 804bfc8:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfcb:	0f b7 40 20          	movzwl 0x20(%eax),%eax
 804bfcf:	89 46 20             	mov    %eax,0x20(%esi)
 804bfd2:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfd5:	c7 46 24 00 00 00 00 	movl   $0x0,0x24(%esi)
 804bfdc:	8b 40 2c             	mov    0x2c(%eax),%eax
 804bfdf:	89 46 2c             	mov    %eax,0x2c(%esi)
 804bfe2:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfe5:	8b 40 34             	mov    0x34(%eax),%eax
 804bfe8:	89 46 30             	mov    %eax,0x30(%esi)
 804bfeb:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfee:	8b 40 38             	mov    0x38(%eax),%eax
 804bff1:	89 46 34             	mov    %eax,0x34(%esi)
 804bff4:	8b 45 08             	mov    0x8(%ebp),%eax
 804bff7:	8b 50 44             	mov    0x44(%eax),%edx
 804bffa:	8b 40 40             	mov    0x40(%eax),%eax
 804bffd:	89 46 38             	mov    %eax,0x38(%esi)
 804c000:	8b 45 08             	mov    0x8(%ebp),%eax
 804c003:	89 56 3c             	mov    %edx,0x3c(%esi)
 804c006:	8b 50 4c             	mov    0x4c(%eax),%edx
 804c009:	8b 40 48             	mov    0x48(%eax),%eax
 804c00c:	89 46 40             	mov    %eax,0x40(%esi)
 804c00f:	8b 45 08             	mov    0x8(%ebp),%eax
 804c012:	89 56 44             	mov    %edx,0x44(%esi)
 804c015:	8b 50 54             	mov    0x54(%eax),%edx
 804c018:	8b 40 50             	mov    0x50(%eax),%eax
 804c01b:	89 46 48             	mov    %eax,0x48(%esi)
 804c01e:	89 56 4c             	mov    %edx,0x4c(%esi)
 804c021:	5e                   	pop    %esi
 804c022:	5f                   	pop    %edi
 804c023:	5d                   	pop    %ebp
 804c024:	c3                   	ret    
 804c025:	55                   	push   %ebp
 804c026:	b9 18 00 00 00       	mov    $0x18,%ecx
 804c02b:	89 e5                	mov    %esp,%ebp
 804c02d:	57                   	push   %edi
 804c02e:	56                   	push   %esi
 804c02f:	31 c0                	xor    %eax,%eax
 804c031:	8b 75 0c             	mov    0xc(%ebp),%esi
 804c034:	89 f7                	mov    %esi,%edi
 804c036:	f3 ab                	rep stos %eax,%es:(%edi)
 804c038:	8b 45 08             	mov    0x8(%ebp),%eax
 804c03b:	8b 50 04             	mov    0x4(%eax),%edx
 804c03e:	8b 00                	mov    (%eax),%eax
 804c040:	89 06                	mov    %eax,(%esi)
 804c042:	8b 45 08             	mov    0x8(%ebp),%eax
 804c045:	89 56 04             	mov    %edx,0x4(%esi)
 804c048:	8b 50 5c             	mov    0x5c(%eax),%edx
 804c04b:	8b 40 58             	mov    0x58(%eax),%eax
 804c04e:	89 46 58             	mov    %eax,0x58(%esi)
 804c051:	8b 45 08             	mov    0x8(%ebp),%eax
 804c054:	89 56 5c             	mov    %edx,0x5c(%esi)
 804c057:	8b 40 0c             	mov    0xc(%eax),%eax
 804c05a:	89 46 0c             	mov    %eax,0xc(%esi)
 804c05d:	8b 45 08             	mov    0x8(%ebp),%eax
 804c060:	8b 40 10             	mov    0x10(%eax),%eax
 804c063:	89 46 10             	mov    %eax,0x10(%esi)
 804c066:	8b 45 08             	mov    0x8(%ebp),%eax
 804c069:	8b 40 14             	mov    0x14(%eax),%eax
 804c06c:	89 46 14             	mov    %eax,0x14(%esi)
 804c06f:	8b 45 08             	mov    0x8(%ebp),%eax
 804c072:	8b 40 18             	mov    0x18(%eax),%eax
 804c075:	89 46 18             	mov    %eax,0x18(%esi)
 804c078:	8b 45 08             	mov    0x8(%ebp),%eax
 804c07b:	8b 40 1c             	mov    0x1c(%eax),%eax
 804c07e:	89 46 1c             	mov    %eax,0x1c(%esi)
 804c081:	8b 45 08             	mov    0x8(%ebp),%eax
 804c084:	0f b7 40 20          	movzwl 0x20(%eax),%eax
 804c088:	89 46 20             	mov    %eax,0x20(%esi)
 804c08b:	8b 45 08             	mov    0x8(%ebp),%eax
 804c08e:	c7 46 24 00 00 00 00 	movl   $0x0,0x24(%esi)
 804c095:	8b 50 30             	mov    0x30(%eax),%edx
 804c098:	8b 40 2c             	mov    0x2c(%eax),%eax
 804c09b:	89 46 2c             	mov    %eax,0x2c(%esi)
 804c09e:	89 56 30             	mov    %edx,0x30(%esi)
 804c0a1:	8b 45 08             	mov    0x8(%ebp),%eax
 804c0a4:	8b 40 34             	mov    0x34(%eax),%eax
 804c0a7:	89 46 34             	mov    %eax,0x34(%esi)
 804c0aa:	8b 45 08             	mov    0x8(%ebp),%eax
 804c0ad:	8b 40 38             	mov    0x38(%eax),%eax
 804c0b0:	c7 46 3c 00 00 00 00 	movl   $0x0,0x3c(%esi)
 804c0b7:	89 46 38             	mov    %eax,0x38(%esi)
 804c0ba:	8b 45 08             	mov    0x8(%ebp),%eax
 804c0bd:	8b 50 44             	mov    0x44(%eax),%edx
 804c0c0:	8b 40 40             	mov    0x40(%eax),%eax
 804c0c3:	89 46 40             	mov    %eax,0x40(%esi)
 804c0c6:	8b 45 08             	mov    0x8(%ebp),%eax
 804c0c9:	89 56 44             	mov    %edx,0x44(%esi)
 804c0cc:	8b 50 4c             	mov    0x4c(%eax),%edx
 804c0cf:	8b 40 48             	mov    0x48(%eax),%eax
 804c0d2:	89 46 48             	mov    %eax,0x48(%esi)
 804c0d5:	8b 45 08             	mov    0x8(%ebp),%eax
 804c0d8:	89 56 4c             	mov    %edx,0x4c(%esi)
 804c0db:	8b 50 54             	mov    0x54(%eax),%edx
 804c0de:	8b 40 50             	mov    0x50(%eax),%eax
 804c0e1:	89 46 50             	mov    %eax,0x50(%esi)
 804c0e4:	89 56 54             	mov    %edx,0x54(%esi)
 804c0e7:	5e                   	pop    %esi
 804c0e8:	5f                   	pop    %edi
 804c0e9:	5d                   	pop    %ebp
 804c0ea:	c3                   	ret    
 804c0eb:	90                   	nop
 804c0ec:	55                   	push   %ebp
 804c0ed:	89 e5                	mov    %esp,%ebp
 804c0ef:	b8 c7 00 00 00       	mov    $0xc7,%eax
 804c0f4:	cd 80                	int    $0x80
 804c0f6:	5d                   	pop    %ebp
 804c0f7:	c3                   	ret    
 804c0f8:	55                   	push   %ebp
 804c0f9:	89 e5                	mov    %esp,%ebp
 804c0fb:	53                   	push   %ebx
 804c0fc:	83 ec 64             	sub    $0x64,%esp
 804c0ff:	e8 73 cb ff ff       	call   0x8048c77
 804c104:	81 c3 84 5f 00 00    	add    $0x5f84,%ebx
 804c10a:	8d 4d 9c             	lea    -0x64(%ebp),%ecx
 804c10d:	8b 55 08             	mov    0x8(%ebp),%edx
 804c110:	87 d3                	xchg   %edx,%ebx
 804c112:	b8 c5 00 00 00       	mov    $0xc5,%eax
 804c117:	cd 80                	int    $0x80
 804c119:	87 d3                	xchg   %edx,%ebx
 804c11b:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c120:	76 10                	jbe    0x804c132
 804c122:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804c128:	f7 d8                	neg    %eax
 804c12a:	65 89 02             	mov    %eax,%gs:(%edx)
 804c12d:	83 c8 ff             	or     $0xffffffff,%eax
 804c130:	eb 18                	jmp    0x804c14a
 804c132:	85 c0                	test   %eax,%eax
 804c134:	75 14                	jne    0x804c14a
 804c136:	ff 75 0c             	pushl  0xc(%ebp)
 804c139:	8d 55 9c             	lea    -0x64(%ebp),%edx
 804c13c:	89 45 98             	mov    %eax,-0x68(%ebp)
 804c13f:	52                   	push   %edx
 804c140:	e8 36 fe ff ff       	call   0x804bf7b
 804c145:	58                   	pop    %eax
 804c146:	8b 45 98             	mov    -0x68(%ebp),%eax
 804c149:	5a                   	pop    %edx
 804c14a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804c14d:	c9                   	leave  
 804c14e:	c3                   	ret    
 804c14f:	90                   	nop
 804c150:	55                   	push   %ebp
 804c151:	89 e5                	mov    %esp,%ebp
 804c153:	57                   	push   %edi
 804c154:	56                   	push   %esi
 804c155:	53                   	push   %ebx
 804c156:	8b 75 10             	mov    0x10(%ebp),%esi
 804c159:	e8 19 cb ff ff       	call   0x8048c77
 804c15e:	81 c3 2a 5f 00 00    	add    $0x5f2a,%ebx
 804c164:	65 a1 0c 00 00 00    	mov    %gs:0xc,%eax
 804c16a:	85 c0                	test   %eax,%eax
 804c16c:	75 2a                	jne    0x804c198
 804c16e:	8b 45 08             	mov    0x8(%ebp),%eax
 804c171:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804c174:	89 f2                	mov    %esi,%edx
 804c176:	53                   	push   %ebx
 804c177:	89 c3                	mov    %eax,%ebx
 804c179:	b8 36 00 00 00       	mov    $0x36,%eax
 804c17e:	cd 80                	int    $0x80
 804c180:	5b                   	pop    %ebx
 804c181:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c186:	76 4a                	jbe    0x804c1d2
 804c188:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804c18e:	f7 d8                	neg    %eax
 804c190:	65 89 02             	mov    %eax,%gs:(%edx)
 804c193:	83 c8 ff             	or     $0xffffffff,%eax
 804c196:	eb 3a                	jmp    0x804c1d2
 804c198:	e8 f3 f7 ff ff       	call   0x804b990
 804c19d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804c1a0:	89 c7                	mov    %eax,%edi
 804c1a2:	89 f2                	mov    %esi,%edx
 804c1a4:	8b 45 08             	mov    0x8(%ebp),%eax
 804c1a7:	53                   	push   %ebx
 804c1a8:	89 c3                	mov    %eax,%ebx
 804c1aa:	b8 36 00 00 00       	mov    $0x36,%eax
 804c1af:	cd 80                	int    $0x80
 804c1b1:	5b                   	pop    %ebx
 804c1b2:	89 c6                	mov    %eax,%esi
 804c1b4:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c1b9:	76 0e                	jbe    0x804c1c9
 804c1bb:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804c1c1:	f7 de                	neg    %esi
 804c1c3:	65 89 32             	mov    %esi,%gs:(%edx)
 804c1c6:	83 ce ff             	or     $0xffffffff,%esi
 804c1c9:	89 f8                	mov    %edi,%eax
 804c1cb:	e8 1c f8 ff ff       	call   0x804b9ec
 804c1d0:	89 f0                	mov    %esi,%eax
 804c1d2:	5b                   	pop    %ebx
 804c1d3:	5e                   	pop    %esi
 804c1d4:	5f                   	pop    %edi
 804c1d5:	5d                   	pop    %ebp
 804c1d6:	c3                   	ret    
 804c1d7:	90                   	nop
 804c1d8:	55                   	push   %ebp
 804c1d9:	89 e5                	mov    %esp,%ebp
 804c1db:	57                   	push   %edi
 804c1dc:	56                   	push   %esi
 804c1dd:	53                   	push   %ebx
 804c1de:	e8 94 ca ff ff       	call   0x8048c77
 804c1e3:	81 c3 a5 5e 00 00    	add    $0x5ea5,%ebx
 804c1e9:	8b 7d 08             	mov    0x8(%ebp),%edi
 804c1ec:	83 bb 60 09 00 00 00 	cmpl   $0x0,0x960(%ebx)
 804c1f3:	74 0c                	je     0x804c201
 804c1f5:	85 ff                	test   %edi,%edi
 804c1f7:	8b b3 60 09 00 00    	mov    0x960(%ebx),%esi
 804c1fd:	74 20                	je     0x804c21f
 804c1ff:	eb 11                	jmp    0x804c212
 804c201:	6a 00                	push   $0x0
 804c203:	e8 f4 21 00 00       	call   0x804e3fc
 804c208:	59                   	pop    %ecx
 804c209:	85 c0                	test   %eax,%eax
 804c20b:	79 e8                	jns    0x804c1f5
 804c20d:	83 c8 ff             	or     $0xffffffff,%eax
 804c210:	eb 0f                	jmp    0x804c221
 804c212:	01 f7                	add    %esi,%edi
 804c214:	57                   	push   %edi
 804c215:	e8 e2 21 00 00       	call   0x804e3fc
 804c21a:	5a                   	pop    %edx
 804c21b:	85 c0                	test   %eax,%eax
 804c21d:	78 ee                	js     0x804c20d
 804c21f:	89 f0                	mov    %esi,%eax
 804c221:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804c224:	5b                   	pop    %ebx
 804c225:	5e                   	pop    %esi
 804c226:	5f                   	pop    %edi
 804c227:	5d                   	pop    %ebp
 804c228:	c3                   	ret    
 804c229:	66 90                	xchg   %ax,%ax
 804c22b:	90                   	nop
 804c22c:	55                   	push   %ebp
 804c22d:	89 e5                	mov    %esp,%ebp
 804c22f:	83 ec 08             	sub    $0x8,%esp
 804c232:	8d 45 f8             	lea    -0x8(%ebp),%eax
 804c235:	50                   	push   %eax
 804c236:	6a 07                	push   $0x7
 804c238:	e8 47 02 00 00       	call   0x804c484
 804c23d:	5a                   	pop    %edx
 804c23e:	85 c0                	test   %eax,%eax
 804c240:	59                   	pop    %ecx
 804c241:	ba 00 01 00 00       	mov    $0x100,%edx
 804c246:	78 03                	js     0x804c24b
 804c248:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804c24b:	89 d0                	mov    %edx,%eax
 804c24d:	c9                   	leave  
 804c24e:	c3                   	ret    
 804c24f:	90                   	nop
 804c250:	55                   	push   %ebp
 804c251:	89 e5                	mov    %esp,%ebp
 804c253:	b8 ca 00 00 00       	mov    $0xca,%eax
 804c258:	cd 80                	int    $0x80
 804c25a:	5d                   	pop    %ebp
 804c25b:	c3                   	ret    
 804c25c:	55                   	push   %ebp
 804c25d:	89 e5                	mov    %esp,%ebp
 804c25f:	56                   	push   %esi
 804c260:	53                   	push   %ebx
 804c261:	e8 11 ca ff ff       	call   0x8048c77
 804c266:	81 c3 22 5e 00 00    	add    $0x5e22,%ebx
 804c26c:	8b 55 10             	mov    0x10(%ebp),%edx
 804c26f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804c272:	8b 45 08             	mov    0x8(%ebp),%eax
 804c275:	8b 75 14             	mov    0x14(%ebp),%esi
 804c278:	53                   	push   %ebx
 804c279:	89 c3                	mov    %eax,%ebx
 804c27b:	b8 ae 00 00 00       	mov    $0xae,%eax
 804c280:	cd 80                	int    $0x80
 804c282:	5b                   	pop    %ebx
 804c283:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c288:	76 0e                	jbe    0x804c298
 804c28a:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804c290:	f7 d8                	neg    %eax
 804c292:	65 89 02             	mov    %eax,%gs:(%edx)
 804c295:	83 c8 ff             	or     $0xffffffff,%eax
 804c298:	5b                   	pop    %ebx
 804c299:	5e                   	pop    %esi
 804c29a:	5d                   	pop    %ebp
 804c29b:	c3                   	ret    
 804c29c:	55                   	push   %ebp
 804c29d:	89 e5                	mov    %esp,%ebp
 804c29f:	56                   	push   %esi
 804c2a0:	53                   	push   %ebx
 804c2a1:	e8 d1 c9 ff ff       	call   0x8048c77
 804c2a6:	81 c3 e2 5d 00 00    	add    $0x5de2,%ebx
 804c2ac:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804c2af:	8b 45 08             	mov    0x8(%ebp),%eax
 804c2b2:	8b 55 10             	mov    0x10(%ebp),%edx
 804c2b5:	8d 71 f4             	lea    -0xc(%ecx),%esi
 804c2b8:	83 fe 02             	cmp    $0x2,%esi
 804c2bb:	77 0d                	ja     0x804c2ca
 804c2bd:	53                   	push   %ebx
 804c2be:	89 c3                	mov    %eax,%ebx
 804c2c0:	b8 dd 00 00 00       	mov    $0xdd,%eax
 804c2c5:	cd 80                	int    $0x80
 804c2c7:	5b                   	pop    %ebx
 804c2c8:	eb 0b                	jmp    0x804c2d5
 804c2ca:	53                   	push   %ebx
 804c2cb:	89 c3                	mov    %eax,%ebx
 804c2cd:	b8 37 00 00 00       	mov    $0x37,%eax
 804c2d2:	cd 80                	int    $0x80
 804c2d4:	5b                   	pop    %ebx
 804c2d5:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c2da:	76 0e                	jbe    0x804c2ea
 804c2dc:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804c2e2:	f7 d8                	neg    %eax
 804c2e4:	65 89 02             	mov    %eax,%gs:(%edx)
 804c2e7:	83 c8 ff             	or     $0xffffffff,%eax
 804c2ea:	5b                   	pop    %ebx
 804c2eb:	5e                   	pop    %esi
 804c2ec:	5d                   	pop    %ebp
 804c2ed:	c3                   	ret    
 804c2ee:	55                   	push   %ebp
 804c2ef:	89 e5                	mov    %esp,%ebp
 804c2f1:	57                   	push   %edi
 804c2f2:	56                   	push   %esi
 804c2f3:	53                   	push   %ebx
 804c2f4:	51                   	push   %ecx
 804c2f5:	e8 7d c9 ff ff       	call   0x8048c77
 804c2fa:	81 c3 8e 5d 00 00    	add    $0x5d8e,%ebx
 804c300:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804c303:	8b 7d 10             	mov    0x10(%ebp),%edi
 804c306:	65 a1 0c 00 00 00    	mov    %gs:0xc,%eax
 804c30c:	85 c0                	test   %eax,%eax
 804c30e:	74 0a                	je     0x804c31a
 804c310:	83 f9 0e             	cmp    $0xe,%ecx
 804c313:	74 2c                	je     0x804c341
 804c315:	83 f9 07             	cmp    $0x7,%ecx
 804c318:	74 27                	je     0x804c341
 804c31a:	8b 45 08             	mov    0x8(%ebp),%eax
 804c31d:	89 fa                	mov    %edi,%edx
 804c31f:	53                   	push   %ebx
 804c320:	89 c3                	mov    %eax,%ebx
 804c322:	b8 dd 00 00 00       	mov    $0xdd,%eax
 804c327:	cd 80                	int    $0x80
 804c329:	5b                   	pop    %ebx
 804c32a:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c32f:	76 4d                	jbe    0x804c37e
 804c331:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804c337:	f7 d8                	neg    %eax
 804c339:	65 89 02             	mov    %eax,%gs:(%edx)
 804c33c:	83 c8 ff             	or     $0xffffffff,%eax
 804c33f:	eb 3d                	jmp    0x804c37e
 804c341:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 804c344:	e8 47 f6 ff ff       	call   0x804b990
 804c349:	89 fa                	mov    %edi,%edx
 804c34b:	89 c6                	mov    %eax,%esi
 804c34d:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804c350:	8b 45 08             	mov    0x8(%ebp),%eax
 804c353:	53                   	push   %ebx
 804c354:	89 c3                	mov    %eax,%ebx
 804c356:	b8 dd 00 00 00       	mov    $0xdd,%eax
 804c35b:	cd 80                	int    $0x80
 804c35d:	5b                   	pop    %ebx
 804c35e:	89 c7                	mov    %eax,%edi
 804c360:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c365:	76 0e                	jbe    0x804c375
 804c367:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804c36d:	f7 df                	neg    %edi
 804c36f:	65 89 3a             	mov    %edi,%gs:(%edx)
 804c372:	83 cf ff             	or     $0xffffffff,%edi
 804c375:	89 f0                	mov    %esi,%eax
 804c377:	e8 70 f6 ff ff       	call   0x804b9ec
 804c37c:	89 f8                	mov    %edi,%eax
 804c37e:	5a                   	pop    %edx
 804c37f:	5b                   	pop    %ebx
 804c380:	5e                   	pop    %esi
 804c381:	5f                   	pop    %edi
 804c382:	5d                   	pop    %ebp
 804c383:	c3                   	ret    
 804c384:	55                   	push   %ebp
 804c385:	89 e5                	mov    %esp,%ebp
 804c387:	b8 c9 00 00 00       	mov    $0xc9,%eax
 804c38c:	cd 80                	int    $0x80
 804c38e:	5d                   	pop    %ebp
 804c38f:	c3                   	ret    
 804c390:	55                   	push   %ebp
 804c391:	89 e5                	mov    %esp,%ebp
 804c393:	53                   	push   %ebx
 804c394:	e8 de c8 ff ff       	call   0x8048c77
 804c399:	81 c3 ef 5c 00 00    	add    $0x5cef,%ebx
 804c39f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804c3a2:	8b 55 08             	mov    0x8(%ebp),%edx
 804c3a5:	87 d3                	xchg   %edx,%ebx
 804c3a7:	b8 5b 00 00 00       	mov    $0x5b,%eax
 804c3ac:	cd 80                	int    $0x80
 804c3ae:	87 d3                	xchg   %edx,%ebx
 804c3b0:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c3b5:	76 0e                	jbe    0x804c3c5
 804c3b7:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804c3bd:	f7 d8                	neg    %eax
 804c3bf:	65 89 02             	mov    %eax,%gs:(%edx)
 804c3c2:	83 c8 ff             	or     $0xffffffff,%eax
 804c3c5:	5b                   	pop    %ebx
 804c3c6:	5d                   	pop    %ebp
 804c3c7:	c3                   	ret    
 804c3c8:	55                   	push   %ebp
 804c3c9:	89 e5                	mov    %esp,%ebp
 804c3cb:	56                   	push   %esi
 804c3cc:	53                   	push   %ebx
 804c3cd:	e8 a5 c8 ff ff       	call   0x8048c77
 804c3d2:	81 c3 b6 5c 00 00    	add    $0x5cb6,%ebx
 804c3d8:	c7 c1 fc ff ff ff    	mov    $0xfffffffc,%ecx
 804c3de:	8b 55 08             	mov    0x8(%ebp),%edx
 804c3e1:	89 ce                	mov    %ecx,%esi
 804c3e3:	87 d3                	xchg   %edx,%ebx
 804c3e5:	b8 fc 00 00 00       	mov    $0xfc,%eax
 804c3ea:	cd 80                	int    $0x80
 804c3ec:	87 d3                	xchg   %edx,%ebx
 804c3ee:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c3f3:	76 05                	jbe    0x804c3fa
 804c3f5:	f7 d8                	neg    %eax
 804c3f7:	65 89 01             	mov    %eax,%gs:(%ecx)
 804c3fa:	87 d3                	xchg   %edx,%ebx
 804c3fc:	b8 01 00 00 00       	mov    $0x1,%eax
 804c401:	cd 80                	int    $0x80
 804c403:	87 d3                	xchg   %edx,%ebx
 804c405:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c40a:	76 d7                	jbe    0x804c3e3
 804c40c:	f7 d8                	neg    %eax
 804c40e:	65 89 06             	mov    %eax,%gs:(%esi)
 804c411:	eb d0                	jmp    0x804c3e3
 804c413:	90                   	nop
 804c414:	55                   	push   %ebp
 804c415:	89 e5                	mov    %esp,%ebp
 804c417:	56                   	push   %esi
 804c418:	53                   	push   %ebx
 804c419:	e8 59 c8 ff ff       	call   0x8048c77
 804c41e:	81 c3 6a 5c 00 00    	add    $0x5c6a,%ebx
 804c424:	83 ec 08             	sub    $0x8,%esp
 804c427:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804c42a:	85 c9                	test   %ecx,%ecx
 804c42c:	74 24                	je     0x804c452
 804c42e:	83 39 00             	cmpl   $0x0,(%ecx)
 804c431:	78 06                	js     0x804c439
 804c433:	f6 41 04 01          	testb  $0x1,0x4(%ecx)
 804c437:	74 19                	je     0x804c452
 804c439:	8b 01                	mov    (%ecx),%eax
 804c43b:	8b 51 04             	mov    0x4(%ecx),%edx
 804c43e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c441:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804c444:	81 65 f0 ff ff ff 7f 	andl   $0x7fffffff,-0x10(%ebp)
 804c44b:	83 65 f4 fe          	andl   $0xfffffffe,-0xc(%ebp)
 804c44f:	8d 4d f0             	lea    -0x10(%ebp),%ecx
 804c452:	be 08 00 00 00       	mov    $0x8,%esi
 804c457:	8b 55 10             	mov    0x10(%ebp),%edx
 804c45a:	8b 45 08             	mov    0x8(%ebp),%eax
 804c45d:	53                   	push   %ebx
 804c45e:	89 c3                	mov    %eax,%ebx
 804c460:	b8 af 00 00 00       	mov    $0xaf,%eax
 804c465:	cd 80                	int    $0x80
 804c467:	5b                   	pop    %ebx
 804c468:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c46d:	76 0e                	jbe    0x804c47d
 804c46f:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804c475:	f7 d8                	neg    %eax
 804c477:	65 89 02             	mov    %eax,%gs:(%edx)
 804c47a:	83 c8 ff             	or     $0xffffffff,%eax
 804c47d:	5a                   	pop    %edx
 804c47e:	59                   	pop    %ecx
 804c47f:	5b                   	pop    %ebx
 804c480:	5e                   	pop    %esi
 804c481:	5d                   	pop    %ebp
 804c482:	c3                   	ret    
 804c483:	90                   	nop
 804c484:	55                   	push   %ebp
 804c485:	89 e5                	mov    %esp,%ebp
 804c487:	53                   	push   %ebx
 804c488:	e8 ea c7 ff ff       	call   0x8048c77
 804c48d:	81 c3 fb 5b 00 00    	add    $0x5bfb,%ebx
 804c493:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804c496:	8b 55 08             	mov    0x8(%ebp),%edx
 804c499:	87 d3                	xchg   %edx,%ebx
 804c49b:	b8 bf 00 00 00       	mov    $0xbf,%eax
 804c4a0:	cd 80                	int    $0x80
 804c4a2:	87 d3                	xchg   %edx,%ebx
 804c4a4:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804c4a9:	76 0e                	jbe    0x804c4b9
 804c4ab:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804c4b1:	f7 d8                	neg    %eax
 804c4b3:	65 89 02             	mov    %eax,%gs:(%edx)
 804c4b6:	83 c8 ff             	or     $0xffffffff,%eax
 804c4b9:	5b                   	pop    %ebx
 804c4ba:	5d                   	pop    %ebp
 804c4bb:	c3                   	ret    
 804c4bc:	55                   	push   %ebp
 804c4bd:	89 e5                	mov    %esp,%ebp
 804c4bf:	b8 c8 00 00 00       	mov    $0xc8,%eax
 804c4c4:	cd 80                	int    $0x80
 804c4c6:	5d                   	pop    %ebp
 804c4c7:	c3                   	ret    
 804c4c8:	55                   	push   %ebp
 804c4c9:	89 e5                	mov    %esp,%ebp
 804c4cb:	57                   	push   %edi
 804c4cc:	56                   	push   %esi
 804c4cd:	53                   	push   %ebx
 804c4ce:	83 ec 14             	sub    $0x14,%esp
 804c4d1:	e8 a1 c7 ff ff       	call   0x8048c77
 804c4d6:	81 c3 b2 5b 00 00    	add    $0x5bb2,%ebx
 804c4dc:	8b 75 08             	mov    0x8(%ebp),%esi
 804c4df:	8d 7d e4             	lea    -0x1c(%ebp),%edi
 804c4e2:	8d 46 18             	lea    0x18(%esi),%eax
 804c4e5:	50                   	push   %eax
 804c4e6:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804c4e9:	ff b3 b4 ff ff ff    	pushl  -0x4c(%ebx)
 804c4ef:	57                   	push   %edi
 804c4f0:	e8 a7 f5 ff ff       	call   0x804ba9c
 804c4f5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804c4f8:	50                   	push   %eax
 804c4f9:	e8 90 f5 ff ff       	call   0x804ba8e
 804c4fe:	83 c4 10             	add    $0x10,%esp
 804c501:	8b 46 04             	mov    0x4(%esi),%eax
 804c504:	39 46 08             	cmp    %eax,0x8(%esi)
 804c507:	77 1e                	ja     0x804c527
 804c509:	ff 76 14             	pushl  0x14(%esi)
 804c50c:	ff 76 0c             	pushl  0xc(%esi)
 804c50f:	ff 36                	pushl  (%esi)
 804c511:	e8 8e 1f 00 00       	call   0x804e4a4
 804c516:	83 c4 0c             	add    $0xc,%esp
 804c519:	85 c0                	test   %eax,%eax
 804c51b:	7e 2a                	jle    0x804c547
 804c51d:	89 46 08             	mov    %eax,0x8(%esi)
 804c520:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
 804c527:	8b 56 04             	mov    0x4(%esi),%edx
 804c52a:	8b 46 0c             	mov    0xc(%esi),%eax
 804c52d:	01 d0                	add    %edx,%eax
 804c52f:	0f b7 48 10          	movzwl 0x10(%eax),%ecx
 804c533:	01 ca                	add    %ecx,%edx
 804c535:	89 56 04             	mov    %edx,0x4(%esi)
 804c538:	8b 50 08             	mov    0x8(%eax),%edx
 804c53b:	89 56 10             	mov    %edx,0x10(%esi)
 804c53e:	8b 50 04             	mov    0x4(%eax),%edx
 804c541:	0b 10                	or     (%eax),%edx
 804c543:	74 bc                	je     0x804c501
 804c545:	eb 02                	jmp    0x804c549
 804c547:	31 c0                	xor    %eax,%eax
 804c549:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804c54c:	6a 01                	push   $0x1
 804c54e:	57                   	push   %edi
 804c54f:	e8 5b f5 ff ff       	call   0x804baaf
 804c554:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804c557:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804c55a:	5b                   	pop    %ebx
 804c55b:	5e                   	pop    %esi
 804c55c:	5f                   	pop    %edi
 804c55d:	5d                   	pop    %ebp
 804c55e:	c3                   	ret    
 804c55f:	90                   	nop
 804c560:	55                   	push   %ebp
 804c561:	89 e5                	mov    %esp,%ebp
 804c563:	56                   	push   %esi
 804c564:	53                   	push   %ebx
 804c565:	e8 0d c7 ff ff       	call   0x8048c77
 804c56a:	81 c3 1e 5b 00 00    	add    $0x5b1e,%ebx
 804c570:	8d 83 c1 e5 ff ff    	lea    -0x1a3f(%ebx),%eax
 804c576:	50                   	push   %eax
 804c577:	ff 75 08             	pushl  0x8(%ebp)
 804c57a:	e8 9d cc ff ff       	call   0x804921c
 804c57f:	89 c6                	mov    %eax,%esi
 804c581:	58                   	pop    %eax
 804c582:	85 f6                	test   %esi,%esi
 804c584:	5a                   	pop    %edx
 804c585:	74 13                	je     0x804c59a
 804c587:	6a 18                	push   $0x18
 804c589:	6a 01                	push   $0x1
 804c58b:	e8 84 de ff ff       	call   0x804a414
 804c590:	5a                   	pop    %edx
 804c591:	85 c0                	test   %eax,%eax
 804c593:	59                   	pop    %ecx
 804c594:	74 04                	je     0x804c59a
 804c596:	89 30                	mov    %esi,(%eax)
 804c598:	eb 02                	jmp    0x804c59c
 804c59a:	31 c0                	xor    %eax,%eax
 804c59c:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804c59f:	5b                   	pop    %ebx
 804c5a0:	5e                   	pop    %esi
 804c5a1:	5d                   	pop    %ebp
 804c5a2:	c3                   	ret    
 804c5a3:	55                   	push   %ebp
 804c5a4:	89 e5                	mov    %esp,%ebp
 804c5a6:	56                   	push   %esi
 804c5a7:	53                   	push   %ebx
 804c5a8:	e8 ca c6 ff ff       	call   0x8048c77
 804c5ad:	81 c3 db 5a 00 00    	add    $0x5adb,%ebx
 804c5b3:	8b 75 08             	mov    0x8(%ebp),%esi
 804c5b6:	85 f6                	test   %esi,%esi
 804c5b8:	74 1e                	je     0x804c5d8
 804c5ba:	ff 36                	pushl  (%esi)
 804c5bc:	e8 9b ca ff ff       	call   0x804905c
 804c5c1:	58                   	pop    %eax
 804c5c2:	80 7e 14 00          	cmpb   $0x0,0x14(%esi)
 804c5c6:	74 09                	je     0x804c5d1
 804c5c8:	ff 76 04             	pushl  0x4(%esi)
 804c5cb:	e8 81 e1 ff ff       	call   0x804a751
 804c5d0:	58                   	pop    %eax
 804c5d1:	56                   	push   %esi
 804c5d2:	e8 7a e1 ff ff       	call   0x804a751
 804c5d7:	59                   	pop    %ecx
 804c5d8:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804c5db:	5b                   	pop    %ebx
 804c5dc:	5e                   	pop    %esi
 804c5dd:	5d                   	pop    %ebp
 804c5de:	c3                   	ret    
 804c5df:	55                   	push   %ebp
 804c5e0:	89 e5                	mov    %esp,%ebp
 804c5e2:	57                   	push   %edi
 804c5e3:	56                   	push   %esi
 804c5e4:	53                   	push   %ebx
 804c5e5:	83 ec 20             	sub    $0x20,%esp
 804c5e8:	e8 8a c6 ff ff       	call   0x8048c77
 804c5ed:	81 c3 9b 5a 00 00    	add    $0x5a9b,%ebx
 804c5f3:	8b 75 08             	mov    0x8(%ebp),%esi
 804c5f6:	85 f6                	test   %esi,%esi
 804c5f8:	0f 84 95 00 00 00    	je     0x804c693
 804c5fe:	0f b6 45 10          	movzbl 0x10(%ebp),%eax
 804c602:	89 c1                	mov    %eax,%ecx
 804c604:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c607:	8b 45 10             	mov    0x10(%ebp),%eax
 804c60a:	0f b6 c4             	movzbl %ah,%eax
 804c60d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c610:	89 c8                	mov    %ecx,%eax
 804c612:	c1 e0 02             	shl    $0x2,%eax
 804c615:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804c618:	40                   	inc    %eax
 804c619:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804c61c:	8b 45 10             	mov    0x10(%ebp),%eax
 804c61f:	25 00 00 02 00       	and    $0x20000,%eax
 804c624:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c627:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
 804c62b:	75 31                	jne    0x804c65e
 804c62d:	83 7e 10 00          	cmpl   $0x0,0x10(%esi)
 804c631:	75 07                	jne    0x804c63a
 804c633:	c7 46 10 51 00 00 00 	movl   $0x51,0x10(%esi)
 804c63a:	83 7e 08 00          	cmpl   $0x0,0x8(%esi)
 804c63e:	75 06                	jne    0x804c646
 804c640:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804c643:	89 46 08             	mov    %eax,0x8(%esi)
 804c646:	8b 46 10             	mov    0x10(%esi),%eax
 804c649:	03 46 08             	add    0x8(%esi),%eax
 804c64c:	50                   	push   %eax
 804c64d:	e8 06 d6 ff ff       	call   0x8049c58
 804c652:	89 46 04             	mov    %eax,0x4(%esi)
 804c655:	85 c0                	test   %eax,%eax
 804c657:	59                   	pop    %ecx
 804c658:	74 39                	je     0x804c693
 804c65a:	80 4e 14 01          	orb    $0x1,0x14(%esi)
 804c65e:	8b 46 04             	mov    0x4(%esi),%eax
 804c661:	31 ff                	xor    %edi,%edi
 804c663:	03 46 08             	add    0x8(%esi),%eax
 804c666:	89 46 0c             	mov    %eax,0xc(%esi)
 804c669:	ff 36                	pushl  (%esi)
 804c66b:	8b 46 10             	mov    0x10(%esi),%eax
 804c66e:	29 f8                	sub    %edi,%eax
 804c670:	50                   	push   %eax
 804c671:	8b 46 0c             	mov    0xc(%esi),%eax
 804c674:	01 f8                	add    %edi,%eax
 804c676:	50                   	push   %eax
 804c677:	e8 a8 11 00 00       	call   0x804d824
 804c67c:	83 c4 0c             	add    $0xc,%esp
 804c67f:	85 c0                	test   %eax,%eax
 804c681:	75 17                	jne    0x804c69a
 804c683:	ff 76 10             	pushl  0x10(%esi)
 804c686:	6a 00                	push   $0x0
 804c688:	ff 76 0c             	pushl  0xc(%esi)
 804c68b:	e8 fc 14 00 00       	call   0x804db8c
 804c690:	83 c4 0c             	add    $0xc,%esp
 804c693:	31 c0                	xor    %eax,%eax
 804c695:	e9 c6 01 00 00       	jmp    0x804c860
 804c69a:	8b 56 0c             	mov    0xc(%esi),%edx
 804c69d:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804c6a0:	8d 04 3a             	lea    (%edx,%edi,1),%eax
 804c6a3:	50                   	push   %eax
 804c6a4:	e8 17 15 00 00       	call   0x804dbc0
 804c6a9:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804c6ac:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 804c6b3:	01 c7                	add    %eax,%edi
 804c6b5:	52                   	push   %edx
 804c6b6:	e8 1d 15 00 00       	call   0x804dbd8
 804c6bb:	59                   	pop    %ecx
 804c6bc:	85 c0                	test   %eax,%eax
 804c6be:	5a                   	pop    %edx
 804c6bf:	74 12                	je     0x804c6d3
 804c6c1:	8a 10                	mov    (%eax),%dl
 804c6c3:	4a                   	dec    %edx
 804c6c4:	88 10                	mov    %dl,(%eax)
 804c6c6:	80 fa 5c             	cmp    $0x5c,%dl
 804c6c9:	74 03                	je     0x804c6ce
 804c6cb:	4f                   	dec    %edi
 804c6cc:	eb 66                	jmp    0x804c734
 804c6ce:	83 ef 02             	sub    $0x2,%edi
 804c6d1:	eb 96                	jmp    0x804c669
 804c6d3:	80 7e 14 00          	cmpb   $0x0,0x14(%esi)
 804c6d7:	74 40                	je     0x804c719
 804c6d9:	8b 46 10             	mov    0x10(%esi),%eax
 804c6dc:	05 00 10 00 00       	add    $0x1000,%eax
 804c6e1:	89 46 10             	mov    %eax,0x10(%esi)
 804c6e4:	03 46 08             	add    0x8(%esi),%eax
 804c6e7:	50                   	push   %eax
 804c6e8:	ff 76 04             	pushl  0x4(%esi)
 804c6eb:	e8 5c 15 00 00       	call   0x804dc4c
 804c6f0:	89 46 04             	mov    %eax,0x4(%esi)
 804c6f3:	03 46 08             	add    0x8(%esi),%eax
 804c6f6:	89 46 0c             	mov    %eax,0xc(%esi)
 804c6f9:	58                   	pop    %eax
 804c6fa:	5a                   	pop    %edx
 804c6fb:	e9 69 ff ff ff       	jmp    0x804c669
 804c700:	8b 50 10             	mov    0x10(%eax),%edx
 804c703:	3b 50 18             	cmp    0x18(%eax),%edx
 804c706:	73 1b                	jae    0x804c723
 804c708:	8d 4a 01             	lea    0x1(%edx),%ecx
 804c70b:	89 48 10             	mov    %ecx,0x10(%eax)
 804c70e:	0f b6 02             	movzbl (%edx),%eax
 804c711:	83 f8 0a             	cmp    $0xa,%eax
 804c714:	74 1e                	je     0x804c734
 804c716:	40                   	inc    %eax
 804c717:	74 1b                	je     0x804c734
 804c719:	8b 06                	mov    (%esi),%eax
 804c71b:	83 78 34 00          	cmpl   $0x0,0x34(%eax)
 804c71f:	75 df                	jne    0x804c700
 804c721:	eb 08                	jmp    0x804c72b
 804c723:	50                   	push   %eax
 804c724:	e8 8b 11 00 00       	call   0x804d8b4
 804c729:	eb 06                	jmp    0x804c731
 804c72b:	50                   	push   %eax
 804c72c:	e8 3f 10 00 00       	call   0x804d770
 804c731:	59                   	pop    %ecx
 804c732:	eb dd                	jmp    0x804c711
 804c734:	47                   	inc    %edi
 804c735:	0f 84 58 ff ff ff    	je     0x804c693
 804c73b:	8b 7e 0c             	mov    0xc(%esi),%edi
 804c73e:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804c742:	74 0f                	je     0x804c753
 804c744:	8b 45 14             	mov    0x14(%ebp),%eax
 804c747:	40                   	inc    %eax
 804c748:	50                   	push   %eax
 804c749:	57                   	push   %edi
 804c74a:	e8 d5 14 00 00       	call   0x804dc24
 804c74f:	59                   	pop    %ecx
 804c750:	01 c7                	add    %eax,%edi
 804c752:	5a                   	pop    %edx
 804c753:	8a 07                	mov    (%edi),%al
 804c755:	84 c0                	test   %al,%al
 804c757:	0f 84 ca fe ff ff    	je     0x804c627
 804c75d:	8b 55 14             	mov    0x14(%ebp),%edx
 804c760:	3a 02                	cmp    (%edx),%al
 804c762:	0f 84 bf fe ff ff    	je     0x804c627
 804c768:	8b 55 0c             	mov    0xc(%ebp),%edx
 804c76b:	8b 46 04             	mov    0x4(%esi),%eax
 804c76e:	89 02                	mov    %eax,(%edx)
 804c770:	ff 75 e0             	pushl  -0x20(%ebp)
 804c773:	6a 00                	push   $0x0
 804c775:	50                   	push   %eax
 804c776:	e8 11 14 00 00       	call   0x804db8c
 804c77b:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804c77e:	48                   	dec    %eax
 804c77f:	83 c4 0c             	add    $0xc,%esp
 804c782:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804c789:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804c78c:	8a 07                	mov    (%edi),%al
 804c78e:	84 c0                	test   %al,%al
 804c790:	75 14                	jne    0x804c7a6
 804c792:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804c795:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 804c798:	0f 8c b0 00 00 00    	jl     0x804c84e
 804c79e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c7a1:	e9 ba 00 00 00       	jmp    0x804c860
 804c7a6:	8b 55 14             	mov    0x14(%ebp),%edx
 804c7a9:	3a 02                	cmp    (%edx),%al
 804c7ab:	74 e5                	je     0x804c792
 804c7ad:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804c7b0:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 804c7b3:	7d dd                	jge    0x804c792
 804c7b5:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c7b8:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804c7bb:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
 804c7be:	8b 00                	mov    (%eax),%eax
 804c7c0:	89 3c 88             	mov    %edi,(%eax,%ecx,4)
 804c7c3:	8b 45 14             	mov    0x14(%ebp),%eax
 804c7c6:	75 09                	jne    0x804c7d1
 804c7c8:	f7 45 10 00 00 04 00 	testl  $0x40000,0x10(%ebp)
 804c7cf:	75 13                	jne    0x804c7e4
 804c7d1:	80 38 01             	cmpb   $0x1,(%eax)
 804c7d4:	83 d0 00             	adc    $0x0,%eax
 804c7d7:	50                   	push   %eax
 804c7d8:	57                   	push   %edi
 804c7d9:	e8 1a 14 00 00       	call   0x804dbf8
 804c7de:	59                   	pop    %ecx
 804c7df:	01 c7                	add    %eax,%edi
 804c7e1:	5a                   	pop    %edx
 804c7e2:	eb 34                	jmp    0x804c818
 804c7e4:	0f b6 00             	movzbl (%eax),%eax
 804c7e7:	50                   	push   %eax
 804c7e8:	57                   	push   %edi
 804c7e9:	e8 36 13 00 00       	call   0x804db24
 804c7ee:	5f                   	pop    %edi
 804c7ef:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804c7f3:	5a                   	pop    %edx
 804c7f4:	89 c7                	mov    %eax,%edi
 804c7f6:	74 20                	je     0x804c818
 804c7f8:	8b 45 14             	mov    0x14(%ebp),%eax
 804c7fb:	8d 48 01             	lea    0x1(%eax),%ecx
 804c7fe:	0f b6 47 ff          	movzbl -0x1(%edi),%eax
 804c802:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 804c805:	50                   	push   %eax
 804c806:	51                   	push   %ecx
 804c807:	e8 cc 13 00 00       	call   0x804dbd8
 804c80c:	5a                   	pop    %edx
 804c80d:	85 c0                	test   %eax,%eax
 804c80f:	59                   	pop    %ecx
 804c810:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 804c813:	74 03                	je     0x804c818
 804c815:	4f                   	dec    %edi
 804c816:	eb e6                	jmp    0x804c7fe
 804c818:	8b 4d 14             	mov    0x14(%ebp),%ecx
 804c81b:	8a 07                	mov    (%edi),%al
 804c81d:	3a 01                	cmp    (%ecx),%al
 804c81f:	75 05                	jne    0x804c826
 804c821:	c6 07 00             	movb   $0x0,(%edi)
 804c824:	eb 08                	jmp    0x804c82e
 804c826:	84 c0                	test   %al,%al
 804c828:	74 04                	je     0x804c82e
 804c82a:	c6 07 00             	movb   $0x0,(%edi)
 804c82d:	47                   	inc    %edi
 804c82e:	f7 45 10 00 00 01 00 	testl  $0x10000,0x10(%ebp)
 804c835:	74 0f                	je     0x804c846
 804c837:	8b 45 14             	mov    0x14(%ebp),%eax
 804c83a:	40                   	inc    %eax
 804c83b:	50                   	push   %eax
 804c83c:	57                   	push   %edi
 804c83d:	e8 e2 13 00 00       	call   0x804dc24
 804c842:	5a                   	pop    %edx
 804c843:	01 c7                	add    %eax,%edi
 804c845:	59                   	pop    %ecx
 804c846:	ff 45 f0             	incl   -0x10(%ebp)
 804c849:	e9 3e ff ff ff       	jmp    0x804c78c
 804c84e:	f7 45 10 00 00 10 00 	testl  $0x100000,0x10(%ebp)
 804c855:	0f 84 cc fd ff ff    	je     0x804c627
 804c85b:	e9 33 fe ff ff       	jmp    0x804c693
 804c860:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804c863:	5b                   	pop    %ebx
 804c864:	5e                   	pop    %esi
 804c865:	5f                   	pop    %edi
 804c866:	5d                   	pop    %ebp
 804c867:	c3                   	ret    
 804c868:	55                   	push   %ebp
 804c869:	89 e5                	mov    %esp,%ebp
 804c86b:	8d 45 10             	lea    0x10(%ebp),%eax
 804c86e:	50                   	push   %eax
 804c86f:	ff 75 0c             	pushl  0xc(%ebp)
 804c872:	ff 75 08             	pushl  0x8(%ebp)
 804c875:	e8 76 01 00 00       	call   0x804c9f0
 804c87a:	c9                   	leave  
 804c87b:	c3                   	ret    
 804c87c:	55                   	push   %ebp
 804c87d:	89 e5                	mov    %esp,%ebp
 804c87f:	57                   	push   %edi
 804c880:	56                   	push   %esi
 804c881:	53                   	push   %ebx
 804c882:	83 ec 08             	sub    $0x8,%esp
 804c885:	e8 ed c3 ff ff       	call   0x8048c77
 804c88a:	81 c3 fe 57 00 00    	add    $0x57fe,%ebx
 804c890:	8b 7d 08             	mov    0x8(%ebp),%edi
 804c893:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804c896:	8b 75 10             	mov    0x10(%ebp),%esi
 804c899:	85 f6                	test   %esi,%esi
 804c89b:	74 7c                	je     0x804c919
 804c89d:	89 75 f0             	mov    %esi,-0x10(%ebp)
 804c8a0:	89 f0                	mov    %esi,%eax
 804c8a2:	79 05                	jns    0x804c8a9
 804c8a4:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 804c8a9:	50                   	push   %eax
 804c8aa:	51                   	push   %ecx
 804c8ab:	ff 77 04             	pushl  0x4(%edi)
 804c8ae:	89 4d ec             	mov    %ecx,-0x14(%ebp)
 804c8b1:	e8 8a 17 00 00       	call   0x804e040
 804c8b6:	83 c4 0c             	add    $0xc,%esp
 804c8b9:	8b 4d ec             	mov    -0x14(%ebp),%ecx
 804c8bc:	85 c0                	test   %eax,%eax
 804c8be:	78 06                	js     0x804c8c6
 804c8c0:	29 c6                	sub    %eax,%esi
 804c8c2:	01 c1                	add    %eax,%ecx
 804c8c4:	eb d3                	jmp    0x804c899
 804c8c6:	66 83 0f 08          	orw    $0x8,(%edi)
 804c8ca:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804c8d0:	65 8b 00             	mov    %gs:(%eax),%eax
 804c8d3:	83 f8 0b             	cmp    $0xb,%eax
 804c8d6:	74 05                	je     0x804c8dd
 804c8d8:	83 f8 04             	cmp    $0x4,%eax
 804c8db:	75 3c                	jne    0x804c919
 804c8dd:	8b 57 08             	mov    0x8(%edi),%edx
 804c8e0:	8b 47 0c             	mov    0xc(%edi),%eax
 804c8e3:	29 d0                	sub    %edx,%eax
 804c8e5:	74 2f                	je     0x804c916
 804c8e7:	39 f0                	cmp    %esi,%eax
 804c8e9:	77 03                	ja     0x804c8ee
 804c8eb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c8ee:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c8f1:	01 c8                	add    %ecx,%eax
 804c8f3:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c8f6:	8a 01                	mov    (%ecx),%al
 804c8f8:	88 02                	mov    %al,(%edx)
 804c8fa:	3c 0a                	cmp    $0xa,%al
 804c8fc:	75 07                	jne    0x804c905
 804c8fe:	66 f7 07 00 01       	testw  $0x100,(%edi)
 804c903:	75 07                	jne    0x804c90c
 804c905:	41                   	inc    %ecx
 804c906:	42                   	inc    %edx
 804c907:	3b 4d f0             	cmp    -0x10(%ebp),%ecx
 804c90a:	75 ea                	jne    0x804c8f6
 804c90c:	8b 47 08             	mov    0x8(%edi),%eax
 804c90f:	89 57 10             	mov    %edx,0x10(%edi)
 804c912:	29 d0                	sub    %edx,%eax
 804c914:	01 c6                	add    %eax,%esi
 804c916:	29 75 10             	sub    %esi,0x10(%ebp)
 804c919:	8b 45 10             	mov    0x10(%ebp),%eax
 804c91c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804c91f:	5b                   	pop    %ebx
 804c920:	5e                   	pop    %esi
 804c921:	5f                   	pop    %edi
 804c922:	5d                   	pop    %ebp
 804c923:	c3                   	ret    
 804c924:	55                   	push   %ebp
 804c925:	89 e5                	mov    %esp,%ebp
 804c927:	57                   	push   %edi
 804c928:	56                   	push   %esi
 804c929:	83 ec 14             	sub    $0x14,%esp
 804c92c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804c933:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804c936:	8b 75 0c             	mov    0xc(%ebp),%esi
 804c939:	8b 7d 10             	mov    0x10(%ebp),%edi
 804c93c:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 804c940:	79 15                	jns    0x804c957
 804c942:	f7 5d 14             	negl   0x14(%ebp)
 804c945:	85 ff                	test   %edi,%edi
 804c947:	79 0e                	jns    0x804c957
 804c949:	f7 de                	neg    %esi
 804c94b:	83 d7 00             	adc    $0x0,%edi
 804c94e:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 804c955:	f7 df                	neg    %edi
 804c957:	83 c8 ff             	or     $0xffffffff,%eax
 804c95a:	31 d2                	xor    %edx,%edx
 804c95c:	f7 75 14             	divl   0x14(%ebp)
 804c95f:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c962:	c6 01 00             	movb   $0x0,(%ecx)
 804c965:	8d 42 01             	lea    0x1(%edx),%eax
 804c968:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c96b:	3b 45 14             	cmp    0x14(%ebp),%eax
 804c96e:	75 0a                	jne    0x804c97a
 804c970:	ff 45 ec             	incl   -0x14(%ebp)
 804c973:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 804c97a:	89 75 f4             	mov    %esi,-0xc(%ebp)
 804c97d:	85 ff                	test   %edi,%edi
 804c97f:	74 34                	je     0x804c9b5
 804c981:	89 f8                	mov    %edi,%eax
 804c983:	31 d2                	xor    %edx,%edx
 804c985:	f7 75 14             	divl   0x14(%ebp)
 804c988:	89 c7                	mov    %eax,%edi
 804c98a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804c98d:	0f af c2             	imul   %edx,%eax
 804c990:	89 d6                	mov    %edx,%esi
 804c992:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804c995:	0f af 75 ec          	imul   -0x14(%ebp),%esi
 804c999:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c99c:	31 d2                	xor    %edx,%edx
 804c99e:	f7 75 14             	divl   0x14(%ebp)
 804c9a1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c9a4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804c9a7:	01 d0                	add    %edx,%eax
 804c9a9:	03 75 f4             	add    -0xc(%ebp),%esi
 804c9ac:	31 d2                	xor    %edx,%edx
 804c9ae:	f7 75 14             	divl   0x14(%ebp)
 804c9b1:	01 f0                	add    %esi,%eax
 804c9b3:	eb 08                	jmp    0x804c9bd
 804c9b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c9b8:	31 d2                	xor    %edx,%edx
 804c9ba:	f7 75 14             	divl   0x14(%ebp)
 804c9bd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c9c0:	88 d0                	mov    %dl,%al
 804c9c2:	49                   	dec    %ecx
 804c9c3:	03 45 18             	add    0x18(%ebp),%eax
 804c9c6:	83 fa 09             	cmp    $0x9,%edx
 804c9c9:	77 03                	ja     0x804c9ce
 804c9cb:	8d 42 30             	lea    0x30(%edx),%eax
 804c9ce:	88 01                	mov    %al,(%ecx)
 804c9d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c9d3:	09 f8                	or     %edi,%eax
 804c9d5:	75 a6                	jne    0x804c97d
 804c9d7:	89 c8                	mov    %ecx,%eax
 804c9d9:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804c9dd:	74 05                	je     0x804c9e4
 804c9df:	49                   	dec    %ecx
 804c9e0:	c6 40 ff 2d          	movb   $0x2d,-0x1(%eax)
 804c9e4:	83 c4 14             	add    $0x14,%esp
 804c9e7:	89 c8                	mov    %ecx,%eax
 804c9e9:	5e                   	pop    %esi
 804c9ea:	5f                   	pop    %edi
 804c9eb:	5d                   	pop    %ebp
 804c9ec:	c3                   	ret    
 804c9ed:	66 90                	xchg   %ax,%ax
 804c9ef:	90                   	nop
 804c9f0:	55                   	push   %ebp
 804c9f1:	89 e5                	mov    %esp,%ebp
 804c9f3:	57                   	push   %edi
 804c9f4:	56                   	push   %esi
 804c9f5:	8b 75 08             	mov    0x8(%ebp),%esi
 804c9f8:	8b 7e 34             	mov    0x34(%esi),%edi
 804c9fb:	85 ff                	test   %edi,%edi
 804c9fd:	75 2a                	jne    0x804ca29
 804c9ff:	65 8b 15 08 00 00 00 	mov    %gs:0x8,%edx
 804ca06:	39 56 40             	cmp    %edx,0x40(%esi)
 804ca09:	74 1b                	je     0x804ca26
 804ca0b:	89 f8                	mov    %edi,%eax
 804ca0d:	b9 01 00 00 00       	mov    $0x1,%ecx
 804ca12:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804ca19:	00 
 804ca1a:	74 01                	je     0x804ca1d
 804ca1c:	f0 0f b1 4e 38       	lock cmpxchg %ecx,0x38(%esi)
 804ca21:	75 63                	jne    0x804ca86
 804ca23:	89 56 40             	mov    %edx,0x40(%esi)
 804ca26:	ff 46 3c             	incl   0x3c(%esi)
 804ca29:	8b 06                	mov    (%esi),%eax
 804ca2b:	66 25 c0 00          	and    $0xc0,%ax
 804ca2f:	66 3d c0 00          	cmp    $0xc0,%ax
 804ca33:	75 13                	jne    0x804ca48
 804ca35:	ff 75 10             	pushl  0x10(%ebp)
 804ca38:	ff 75 0c             	pushl  0xc(%ebp)
 804ca3b:	56                   	push   %esi
 804ca3c:	e8 f9 00 00 00       	call   0x804cb3a
 804ca41:	83 c4 0c             	add    $0xc,%esp
 804ca44:	89 c2                	mov    %eax,%edx
 804ca46:	eb 14                	jmp    0x804ca5c
 804ca48:	68 80 00 00 00       	push   $0x80
 804ca4d:	56                   	push   %esi
 804ca4e:	e8 39 1e 00 00       	call   0x804e88c
 804ca53:	5a                   	pop    %edx
 804ca54:	85 c0                	test   %eax,%eax
 804ca56:	59                   	pop    %ecx
 804ca57:	74 dc                	je     0x804ca35
 804ca59:	83 ca ff             	or     $0xffffffff,%edx
 804ca5c:	85 ff                	test   %edi,%edi
 804ca5e:	75 1d                	jne    0x804ca7d
 804ca60:	ff 4e 3c             	decl   0x3c(%esi)
 804ca63:	75 18                	jne    0x804ca7d
 804ca65:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
 804ca6c:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804ca73:	00 
 804ca74:	74 01                	je     0x804ca77
 804ca76:	f0 83 6e 38 01       	lock subl $0x1,0x38(%esi)
 804ca7b:	75 13                	jne    0x804ca90
 804ca7d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804ca80:	89 d0                	mov    %edx,%eax
 804ca82:	5e                   	pop    %esi
 804ca83:	5f                   	pop    %edi
 804ca84:	5d                   	pop    %ebp
 804ca85:	c3                   	ret    
 804ca86:	8d 4e 38             	lea    0x38(%esi),%ecx
 804ca89:	e8 f2 ec ff ff       	call   0x804b780
 804ca8e:	eb 93                	jmp    0x804ca23
 804ca90:	8d 46 38             	lea    0x38(%esi),%eax
 804ca93:	e8 18 ed ff ff       	call   0x804b7b0
 804ca98:	eb e3                	jmp    0x804ca7d
 804ca9a:	66 90                	xchg   %ax,%ax
 804ca9c:	55                   	push   %ebp
 804ca9d:	89 e5                	mov    %esp,%ebp
 804ca9f:	57                   	push   %edi
 804caa0:	56                   	push   %esi
 804caa1:	89 c7                	mov    %eax,%edi
 804caa3:	83 ec 08             	sub    $0x8,%esp
 804caa6:	88 55 f7             	mov    %dl,-0x9(%ebp)
 804caa9:	8b 75 08             	mov    0x8(%ebp),%esi
 804caac:	8d 55 f7             	lea    -0x9(%ebp),%edx
 804caaf:	85 f6                	test   %esi,%esi
 804cab1:	74 18                	je     0x804cacb
 804cab3:	57                   	push   %edi
 804cab4:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804cab7:	6a 01                	push   $0x1
 804cab9:	52                   	push   %edx
 804caba:	e8 35 1c 00 00       	call   0x804e6f4
 804cabf:	83 c4 0c             	add    $0xc,%esp
 804cac2:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804cac5:	48                   	dec    %eax
 804cac6:	75 03                	jne    0x804cacb
 804cac8:	4e                   	dec    %esi
 804cac9:	eb e4                	jmp    0x804caaf
 804cacb:	8b 45 08             	mov    0x8(%ebp),%eax
 804cace:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804cad1:	29 f0                	sub    %esi,%eax
 804cad3:	5e                   	pop    %esi
 804cad4:	5f                   	pop    %edi
 804cad5:	5d                   	pop    %ebp
 804cad6:	c3                   	ret    
 804cad7:	55                   	push   %ebp
 804cad8:	89 e5                	mov    %esp,%ebp
 804cada:	57                   	push   %edi
 804cadb:	56                   	push   %esi
 804cadc:	51                   	push   %ecx
 804cadd:	f6 45 0c 80          	testb  $0x80,0xc(%ebp)
 804cae1:	74 34                	je     0x804cb17
 804cae3:	ff 75 14             	pushl  0x14(%ebp)
 804cae6:	e8 d5 10 00 00       	call   0x804dbc0
 804caeb:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804caee:	29 c1                	sub    %eax,%ecx
 804caf0:	5a                   	pop    %edx
 804caf1:	89 c6                	mov    %eax,%esi
 804caf3:	85 c9                	test   %ecx,%ecx
 804caf5:	7e 23                	jle    0x804cb1a
 804caf7:	8b 55 0c             	mov    0xc(%ebp),%edx
 804cafa:	8b 45 08             	mov    0x8(%ebp),%eax
 804cafd:	83 e2 7f             	and    $0x7f,%edx
 804cb00:	51                   	push   %ecx
 804cb01:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 804cb04:	e8 93 ff ff ff       	call   0x804ca9c
 804cb09:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804cb0c:	89 c7                	mov    %eax,%edi
 804cb0e:	39 cf                	cmp    %ecx,%edi
 804cb10:	58                   	pop    %eax
 804cb11:	89 f8                	mov    %edi,%eax
 804cb13:	75 1e                	jne    0x804cb33
 804cb15:	eb 05                	jmp    0x804cb1c
 804cb17:	8b 75 10             	mov    0x10(%ebp),%esi
 804cb1a:	31 ff                	xor    %edi,%edi
 804cb1c:	31 c0                	xor    %eax,%eax
 804cb1e:	85 f6                	test   %esi,%esi
 804cb20:	7e 0f                	jle    0x804cb31
 804cb22:	ff 75 08             	pushl  0x8(%ebp)
 804cb25:	56                   	push   %esi
 804cb26:	ff 75 14             	pushl  0x14(%ebp)
 804cb29:	e8 c6 1b 00 00       	call   0x804e6f4
 804cb2e:	83 c4 0c             	add    $0xc,%esp
 804cb31:	01 f8                	add    %edi,%eax
 804cb33:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804cb36:	5e                   	pop    %esi
 804cb37:	5f                   	pop    %edi
 804cb38:	5d                   	pop    %ebp
 804cb39:	c3                   	ret    
 804cb3a:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804cb3e:	83 e4 f8             	and    $0xfffffff8,%esp
 804cb41:	ff 71 fc             	pushl  -0x4(%ecx)
 804cb44:	55                   	push   %ebp
 804cb45:	89 e5                	mov    %esp,%ebp
 804cb47:	57                   	push   %edi
 804cb48:	56                   	push   %esi
 804cb49:	53                   	push   %ebx
 804cb4a:	51                   	push   %ecx
 804cb4b:	8d bd 34 ff ff ff    	lea    -0xcc(%ebp),%edi
 804cb51:	81 ec 60 01 00 00    	sub    $0x160,%esp
 804cb57:	e8 1b c1 ff ff       	call   0x8048c77
 804cb5c:	81 c3 2c 55 00 00    	add    $0x552c,%ebx
 804cb62:	8b 51 08             	mov    0x8(%ecx),%edx
 804cb65:	8b 01                	mov    (%ecx),%eax
 804cb67:	8b 71 04             	mov    0x4(%ecx),%esi
 804cb6a:	89 95 a4 fe ff ff    	mov    %edx,-0x15c(%ebp)
 804cb70:	56                   	push   %esi
 804cb71:	89 85 a0 fe ff ff    	mov    %eax,-0x160(%ebp)
 804cb77:	57                   	push   %edi
 804cb78:	e8 3f 06 00 00       	call   0x804d1bc
 804cb7d:	59                   	pop    %ecx
 804cb7e:	85 c0                	test   %eax,%eax
 804cb80:	5a                   	pop    %edx
 804cb81:	8b 95 a4 fe ff ff    	mov    -0x15c(%ebp),%edx
 804cb87:	79 34                	jns    0x804cbbd
 804cb89:	8b b5 34 ff ff ff    	mov    -0xcc(%ebp),%esi
 804cb8f:	56                   	push   %esi
 804cb90:	e8 2b 10 00 00       	call   0x804dbc0
 804cb95:	5a                   	pop    %edx
 804cb96:	c7 85 98 fe ff ff ff 	movl   $0xffffffff,-0x168(%ebp)
 804cb9d:	ff ff ff 
 804cba0:	85 c0                	test   %eax,%eax
 804cba2:	0f 84 00 06 00 00    	je     0x804d1a8
 804cba8:	ff b5 a0 fe ff ff    	pushl  -0x160(%ebp)
 804cbae:	50                   	push   %eax
 804cbaf:	56                   	push   %esi
 804cbb0:	e8 3f 1b 00 00       	call   0x804e6f4
 804cbb5:	83 c4 0c             	add    $0xc,%esp
 804cbb8:	e9 eb 05 00 00       	jmp    0x804d1a8
 804cbbd:	52                   	push   %edx
 804cbbe:	57                   	push   %edi
 804cbbf:	e8 68 06 00 00       	call   0x804d22c
 804cbc4:	8d 83 c0 ec ff ff    	lea    -0x1340(%ebx),%eax
 804cbca:	59                   	pop    %ecx
 804cbcb:	89 f2                	mov    %esi,%edx
 804cbcd:	5f                   	pop    %edi
 804cbce:	c7 85 98 fe ff ff 00 	movl   $0x0,-0x168(%ebp)
 804cbd5:	00 00 00 
 804cbd8:	89 85 90 fe ff ff    	mov    %eax,-0x170(%ebp)
 804cbde:	8a 06                	mov    (%esi),%al
 804cbe0:	3c 25                	cmp    $0x25,%al
 804cbe2:	74 07                	je     0x804cbeb
 804cbe4:	84 c0                	test   %al,%al
 804cbe6:	74 03                	je     0x804cbeb
 804cbe8:	46                   	inc    %esi
 804cbe9:	eb f3                	jmp    0x804cbde
 804cbeb:	39 d6                	cmp    %edx,%esi
 804cbed:	74 28                	je     0x804cc17
 804cbef:	89 f7                	mov    %esi,%edi
 804cbf1:	31 c0                	xor    %eax,%eax
 804cbf3:	29 d7                	sub    %edx,%edi
 804cbf5:	85 ff                	test   %edi,%edi
 804cbf7:	7e 10                	jle    0x804cc09
 804cbf9:	ff b5 a0 fe ff ff    	pushl  -0x160(%ebp)
 804cbff:	57                   	push   %edi
 804cc00:	52                   	push   %edx
 804cc01:	e8 ee 1a 00 00       	call   0x804e6f4
 804cc06:	83 c4 0c             	add    $0xc,%esp
 804cc09:	39 f8                	cmp    %edi,%eax
 804cc0b:	0f 85 8d 05 00 00    	jne    0x804d19e
 804cc11:	01 85 98 fe ff ff    	add    %eax,-0x168(%ebp)
 804cc17:	80 3e 00             	cmpb   $0x0,(%esi)
 804cc1a:	0f 84 88 05 00 00    	je     0x804d1a8
 804cc20:	80 7e 01 25          	cmpb   $0x25,0x1(%esi)
 804cc24:	8d 56 01             	lea    0x1(%esi),%edx
 804cc27:	0f 84 69 05 00 00    	je     0x804d196
 804cc2d:	8d b5 34 ff ff ff    	lea    -0xcc(%ebp),%esi
 804cc33:	89 95 34 ff ff ff    	mov    %edx,-0xcc(%ebp)
 804cc39:	56                   	push   %esi
 804cc3a:	c7 85 a8 fe ff ff 00 	movl   $0x0,-0x158(%ebp)
 804cc41:	00 00 00 
 804cc44:	e8 53 07 00 00       	call   0x804d39c
 804cc49:	56                   	push   %esi
 804cc4a:	e8 1d 06 00 00       	call   0x804d26c
 804cc4f:	5f                   	pop    %edi
 804cc50:	0f b6 85 5a ff ff ff 	movzbl -0xa6(%ebp),%eax
 804cc57:	5a                   	pop    %edx
 804cc58:	89 85 9c fe ff ff    	mov    %eax,-0x164(%ebp)
 804cc5e:	83 bd 4c ff ff ff 00 	cmpl   $0x0,-0xb4(%ebp)
 804cc65:	8d 4d 84             	lea    -0x7c(%ebp),%ecx
 804cc68:	7e 07                	jle    0x804cc71
 804cc6a:	6b c0 0c             	imul   $0xc,%eax,%eax
 804cc6d:	8d 4c 01 f4          	lea    -0xc(%ecx,%eax,1),%ecx
 804cc71:	8b b5 50 ff ff ff    	mov    -0xb0(%ebp),%esi
 804cc77:	31 d2                	xor    %edx,%edx
 804cc79:	31 c0                	xor    %eax,%eax
 804cc7b:	89 cf                	mov    %ecx,%edi
 804cc7d:	83 c1 0c             	add    $0xc,%ecx
 804cc80:	39 f0                	cmp    %esi,%eax
 804cc82:	7d 05                	jge    0x804cc89
 804cc84:	40                   	inc    %eax
 804cc85:	89 fa                	mov    %edi,%edx
 804cc87:	eb f2                	jmp    0x804cc7b
 804cc89:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804cc8f:	85 c0                	test   %eax,%eax
 804cc91:	75 28                	jne    0x804ccbb
 804cc93:	8b b5 98 fe ff ff    	mov    -0x168(%ebp),%esi
 804cc99:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804cc9f:	89 f7                	mov    %esi,%edi
 804cca1:	25 00 0f 00 00       	and    $0xf00,%eax
 804cca6:	c1 ff 1f             	sar    $0x1f,%edi
 804cca9:	57                   	push   %edi
 804ccaa:	56                   	push   %esi
 804ccab:	50                   	push   %eax
 804ccac:	ff 32                	pushl  (%edx)
 804ccae:	e8 e1 1c 00 00       	call   0x804e994
 804ccb3:	83 c4 10             	add    $0x10,%esp
 804ccb6:	e9 ce 04 00 00       	jmp    0x804d189
 804ccbb:	83 f8 07             	cmp    $0x7,%eax
 804ccbe:	0f 87 a9 01 00 00    	ja     0x804ce6d
 804ccc4:	0f b6 8c 03 cb ec ff 	movzbl -0x1335(%ebx,%eax,1),%ecx
 804cccb:	ff 
 804cccc:	be 57 00 00 00       	mov    $0x57,%esi
 804ccd1:	89 8d a4 fe ff ff    	mov    %ecx,-0x15c(%ebp)
 804ccd7:	83 f9 0a             	cmp    $0xa,%ecx
 804ccda:	75 21                	jne    0x804ccfd
 804ccdc:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
 804cce2:	89 fe                	mov    %edi,%esi
 804cce4:	83 e6 20             	and    $0x20,%esi
 804cce7:	83 fe 01             	cmp    $0x1,%esi
 804ccea:	19 f6                	sbb    %esi,%esi
 804ccec:	83 e6 2b             	and    $0x2b,%esi
 804ccef:	83 c6 2c             	add    $0x2c,%esi
 804ccf2:	83 e7 40             	and    $0x40,%edi
 804ccf5:	74 06                	je     0x804ccfd
 804ccf7:	81 ce 80 00 00 00    	or     $0x80,%esi
 804ccfd:	83 f8 05             	cmp    $0x5,%eax
 804cd00:	77 18                	ja     0x804cd1a
 804cd02:	83 f8 03             	cmp    $0x3,%eax
 804cd05:	74 0c                	je     0x804cd13
 804cd07:	bf 06 00 00 00       	mov    $0x6,%edi
 804cd0c:	83 f8 01             	cmp    $0x1,%eax
 804cd0f:	75 0f                	jne    0x804cd20
 804cd11:	eb 12                	jmp    0x804cd25
 804cd13:	be 37 00 00 00       	mov    $0x37,%esi
 804cd18:	eb 06                	jmp    0x804cd20
 804cd1a:	f7 9d a4 fe ff ff    	negl   -0x15c(%ebp)
 804cd20:	bf 0b 00 00 00       	mov    $0xb,%edi
 804cd25:	c6 85 94 fe ff ff 20 	movb   $0x20,-0x16c(%ebp)
 804cd2c:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%ebp)
 804cd33:	79 0c                	jns    0x804cd41
 804cd35:	8a 8d 48 ff ff ff    	mov    -0xb8(%ebp),%cl
 804cd3b:	88 8d 94 fe ff ff    	mov    %cl,-0x16c(%ebp)
 804cd41:	48                   	dec    %eax
 804cd42:	74 14                	je     0x804cd58
 804cd44:	8b 85 9c fe ff ff    	mov    -0x164(%ebp),%eax
 804cd4a:	8b 84 85 58 ff ff ff 	mov    -0xa8(%ebp,%eax,4),%eax
 804cd51:	25 00 0f 00 00       	and    $0xf00,%eax
 804cd56:	eb 05                	jmp    0x804cd5d
 804cd58:	b8 00 04 00 00       	mov    $0x400,%eax
 804cd5d:	ff b5 a4 fe ff ff    	pushl  -0x15c(%ebp)
 804cd63:	52                   	push   %edx
 804cd64:	50                   	push   %eax
 804cd65:	e8 ca 1b 00 00       	call   0x804e934
 804cd6a:	56                   	push   %esi
 804cd6b:	ff b5 a4 fe ff ff    	pushl  -0x15c(%ebp)
 804cd71:	52                   	push   %edx
 804cd72:	50                   	push   %eax
 804cd73:	8d 85 33 ff ff ff    	lea    -0xcd(%ebp),%eax
 804cd79:	50                   	push   %eax
 804cd7a:	e8 a5 fb ff ff       	call   0x804c924
 804cd7f:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%ebp)
 804cd85:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804cd8b:	83 c4 20             	add    $0x20,%esp
 804cd8e:	83 f8 05             	cmp    $0x5,%eax
 804cd91:	76 38                	jbe    0x804cdcb
 804cd93:	8b 8d a4 fe ff ff    	mov    -0x15c(%ebp),%ecx
 804cd99:	80 39 2d             	cmpb   $0x2d,(%ecx)
 804cd9c:	75 14                	jne    0x804cdb2
 804cd9e:	83 8d 44 ff ff ff 02 	orl    $0x2,-0xbc(%ebp)
 804cda5:	ff 85 a4 fe ff ff    	incl   -0x15c(%ebp)
 804cdab:	bf 02 00 00 00       	mov    $0x2,%edi
 804cdb0:	eb 19                	jmp    0x804cdcb
 804cdb2:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804cdb8:	f6 c2 02             	test   $0x2,%dl
 804cdbb:	75 0c                	jne    0x804cdc9
 804cdbd:	80 e2 01             	and    $0x1,%dl
 804cdc0:	74 09                	je     0x804cdcb
 804cdc2:	bf 04 00 00 00       	mov    $0x4,%edi
 804cdc7:	eb 02                	jmp    0x804cdcb
 804cdc9:	31 ff                	xor    %edi,%edi
 804cdcb:	8d b5 33 ff ff ff    	lea    -0xcd(%ebp),%esi
 804cdd1:	8b 8d 38 ff ff ff    	mov    -0xc8(%ebp),%ecx
 804cdd7:	2b b5 a4 fe ff ff    	sub    -0x15c(%ebp),%esi
 804cddd:	85 c9                	test   %ecx,%ecx
 804cddf:	79 05                	jns    0x804cde6
 804cde1:	b9 01 00 00 00       	mov    $0x1,%ecx
 804cde6:	f6 85 44 ff ff ff 10 	testb  $0x10,-0xbc(%ebp)
 804cded:	74 36                	je     0x804ce25
 804cdef:	83 f8 02             	cmp    $0x2,%eax
 804cdf2:	76 1e                	jbe    0x804ce12
 804cdf4:	83 f8 03             	cmp    $0x3,%eax
 804cdf7:	74 20                	je     0x804ce19
 804cdf9:	83 f8 04             	cmp    $0x4,%eax
 804cdfc:	75 27                	jne    0x804ce25
 804cdfe:	39 f1                	cmp    %esi,%ecx
 804ce00:	77 23                	ja     0x804ce25
 804ce02:	8b 95 a4 fe ff ff    	mov    -0x15c(%ebp),%edx
 804ce08:	80 3a 30             	cmpb   $0x30,(%edx)
 804ce0b:	74 13                	je     0x804ce20
 804ce0d:	8d 4e 01             	lea    0x1(%esi),%ecx
 804ce10:	eb 13                	jmp    0x804ce25
 804ce12:	bf 06 00 00 00       	mov    $0x6,%edi
 804ce17:	eb 0c                	jmp    0x804ce25
 804ce19:	bf 09 00 00 00       	mov    $0x9,%edi
 804ce1e:	eb 05                	jmp    0x804ce25
 804ce20:	b9 01 00 00 00       	mov    $0x1,%ecx
 804ce25:	8b 95 a4 fe ff ff    	mov    -0x15c(%ebp),%edx
 804ce2b:	80 3a 30             	cmpb   $0x30,(%edx)
 804ce2e:	75 2e                	jne    0x804ce5e
 804ce30:	83 ff 05             	cmp    $0x5,%edi
 804ce33:	7e 05                	jle    0x804ce3a
 804ce35:	bf 0b 00 00 00       	mov    $0xb,%edi
 804ce3a:	48                   	dec    %eax
 804ce3b:	74 0b                	je     0x804ce48
 804ce3d:	85 c9                	test   %ecx,%ecx
 804ce3f:	75 1d                	jne    0x804ce5e
 804ce41:	31 f6                	xor    %esi,%esi
 804ce43:	e9 0c 01 00 00       	jmp    0x804cf54
 804ce48:	8d 83 b0 ec ff ff    	lea    -0x1350(%ebx),%eax
 804ce4e:	be 05 00 00 00       	mov    $0x5,%esi
 804ce53:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%ebp)
 804ce59:	e9 f6 00 00 00       	jmp    0x804cf54
 804ce5e:	39 f1                	cmp    %esi,%ecx
 804ce60:	0f 86 ee 00 00 00    	jbe    0x804cf54
 804ce66:	29 f1                	sub    %esi,%ecx
 804ce68:	e9 7f 01 00 00       	jmp    0x804cfec
 804ce6d:	83 f8 0f             	cmp    $0xf,%eax
 804ce70:	77 44                	ja     0x804ceb6
 804ce72:	f6 85 45 ff ff ff 08 	testb  $0x8,-0xbb(%ebp)
 804ce79:	74 04                	je     0x804ce7f
 804ce7b:	db 2a                	fldt   (%edx)
 804ce7d:	eb 02                	jmp    0x804ce81
 804ce7f:	dd 02                	fldl   (%edx)
 804ce81:	8d 83 4f aa ff ff    	lea    -0x55b1(%ebx),%eax
 804ce87:	50                   	push   %eax
 804ce88:	8d 85 38 ff ff ff    	lea    -0xc8(%ebp),%eax
 804ce8e:	50                   	push   %eax
 804ce8f:	83 ec 0c             	sub    $0xc,%esp
 804ce92:	db 3c 24             	fstpt  (%esp)
 804ce95:	ff b5 a0 fe ff ff    	pushl  -0x160(%ebp)
 804ce9b:	e8 34 1b 00 00       	call   0x804e9d4
 804cea0:	83 c4 18             	add    $0x18,%esp
 804cea3:	85 c0                	test   %eax,%eax
 804cea5:	0f 88 f3 02 00 00    	js     0x804d19e
 804ceab:	01 85 98 fe ff ff    	add    %eax,-0x168(%ebp)
 804ceb1:	e9 d3 02 00 00       	jmp    0x804d189
 804ceb6:	83 f8 11             	cmp    $0x11,%eax
 804ceb9:	0f 87 9c 00 00 00    	ja     0x804cf5b
 804cebf:	c7 85 ac fe ff ff 00 	movl   $0x0,-0x154(%ebp)
 804cec6:	00 00 00 
 804cec9:	75 4c                	jne    0x804cf17
 804cecb:	8b 02                	mov    (%edx),%eax
 804cecd:	89 85 a8 fe ff ff    	mov    %eax,-0x158(%ebp)
 804ced3:	85 c0                	test   %eax,%eax
 804ced5:	0f 84 b6 00 00 00    	je     0x804cf91
 804cedb:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
 804cee1:	85 c0                	test   %eax,%eax
 804cee3:	79 03                	jns    0x804cee8
 804cee5:	83 c8 ff             	or     $0xffffffff,%eax
 804cee8:	8d 95 ac fe ff ff    	lea    -0x154(%ebp),%edx
 804ceee:	52                   	push   %edx
 804ceef:	50                   	push   %eax
 804cef0:	8d 85 a8 fe ff ff    	lea    -0x158(%ebp),%eax
 804cef6:	50                   	push   %eax
 804cef7:	50                   	push   %eax
 804cef8:	e8 ff 16 00 00       	call   0x804e5fc
 804cefd:	83 c4 10             	add    $0x10,%esp
 804cf00:	89 c6                	mov    %eax,%esi
 804cf02:	83 f8 ff             	cmp    $0xffffffff,%eax
 804cf05:	0f 84 93 02 00 00    	je     0x804d19e
 804cf0b:	c7 85 a4 fe ff ff 00 	movl   $0x0,-0x15c(%ebp)
 804cf12:	00 00 00 
 804cf15:	eb 31                	jmp    0x804cf48
 804cf17:	8d 85 ac fe ff ff    	lea    -0x154(%ebp),%eax
 804cf1d:	8d bd b4 fe ff ff    	lea    -0x14c(%ebp),%edi
 804cf23:	50                   	push   %eax
 804cf24:	ff 32                	pushl  (%edx)
 804cf26:	57                   	push   %edi
 804cf27:	e8 94 16 00 00       	call   0x804e5c0
 804cf2c:	83 c4 0c             	add    $0xc,%esp
 804cf2f:	89 c6                	mov    %eax,%esi
 804cf31:	83 f8 ff             	cmp    $0xffffffff,%eax
 804cf34:	0f 84 64 02 00 00    	je     0x804d19e
 804cf3a:	c6 84 05 b4 fe ff ff 	movb   $0x0,-0x14c(%ebp,%eax,1)
 804cf41:	00 
 804cf42:	89 bd a4 fe ff ff    	mov    %edi,-0x15c(%ebp)
 804cf48:	c6 85 94 fe ff ff 20 	movb   $0x20,-0x16c(%ebp)
 804cf4f:	bf 0b 00 00 00       	mov    $0xb,%edi
 804cf54:	31 c9                	xor    %ecx,%ecx
 804cf56:	e9 91 00 00 00       	jmp    0x804cfec
 804cf5b:	83 f8 13             	cmp    $0x13,%eax
 804cf5e:	0f 87 3a 02 00 00    	ja     0x804d19e
 804cf64:	8b 02                	mov    (%edx),%eax
 804cf66:	75 58                	jne    0x804cfc0
 804cf68:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%ebp)
 804cf6e:	85 c0                	test   %eax,%eax
 804cf70:	74 1f                	je     0x804cf91
 804cf72:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
 804cf78:	85 c0                	test   %eax,%eax
 804cf7a:	79 03                	jns    0x804cf7f
 804cf7c:	83 c8 ff             	or     $0xffffffff,%eax
 804cf7f:	50                   	push   %eax
 804cf80:	ff b5 a4 fe ff ff    	pushl  -0x15c(%ebp)
 804cf86:	e8 5d 0b 00 00       	call   0x804dae8
 804cf8b:	59                   	pop    %ecx
 804cf8c:	5e                   	pop    %esi
 804cf8d:	89 c6                	mov    %eax,%esi
 804cf8f:	eb b7                	jmp    0x804cf48
 804cf91:	8d 83 b6 ec ff ff    	lea    -0x134a(%ebx),%eax
 804cf97:	be 06 00 00 00       	mov    $0x6,%esi
 804cf9c:	83 bd 38 ff ff ff 05 	cmpl   $0x5,-0xc8(%ebp)
 804cfa3:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%ebp)
 804cfa9:	c6 85 94 fe ff ff 20 	movb   $0x20,-0x16c(%ebp)
 804cfb0:	bf 0b 00 00 00       	mov    $0xb,%edi
 804cfb5:	b9 00 00 00 00       	mov    $0x0,%ecx
 804cfba:	77 30                	ja     0x804cfec
 804cfbc:	31 f6                	xor    %esi,%esi
 804cfbe:	eb 2c                	jmp    0x804cfec
 804cfc0:	88 85 b4 fe ff ff    	mov    %al,-0x14c(%ebp)
 804cfc6:	8d 85 b4 fe ff ff    	lea    -0x14c(%ebp),%eax
 804cfcc:	c6 85 b5 fe ff ff 00 	movb   $0x0,-0x14b(%ebp)
 804cfd3:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%ebp)
 804cfd9:	c6 85 94 fe ff ff 20 	movb   $0x20,-0x16c(%ebp)
 804cfe0:	bf 0b 00 00 00       	mov    $0xb,%edi
 804cfe5:	31 c9                	xor    %ecx,%ecx
 804cfe7:	be 01 00 00 00       	mov    $0x1,%esi
 804cfec:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 804cfef:	83 ff 0b             	cmp    $0xb,%edi
 804cff2:	74 0c                	je     0x804d000
 804cff4:	31 d2                	xor    %edx,%edx
 804cff6:	83 ff 05             	cmp    $0x5,%edi
 804cff9:	0f 9f c2             	setg   %dl
 804cffc:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
 804d000:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
 804d006:	c7 85 9c fe ff ff 00 	movl   $0x0,-0x164(%ebp)
 804d00d:	00 00 00 
 804d010:	39 c2                	cmp    %eax,%edx
 804d012:	76 08                	jbe    0x804d01c
 804d014:	29 c2                	sub    %eax,%edx
 804d016:	89 95 9c fe ff ff    	mov    %edx,-0x164(%ebp)
 804d01c:	03 85 98 fe ff ff    	add    -0x168(%ebp),%eax
 804d022:	03 85 9c fe ff ff    	add    -0x164(%ebp),%eax
 804d028:	80 bd 94 fe ff ff 30 	cmpb   $0x30,-0x16c(%ebp)
 804d02f:	89 85 98 fe ff ff    	mov    %eax,-0x168(%ebp)
 804d035:	75 10                	jne    0x804d047
 804d037:	03 8d 9c fe ff ff    	add    -0x164(%ebp),%ecx
 804d03d:	c7 85 9c fe ff ff 00 	movl   $0x0,-0x164(%ebp)
 804d044:	00 00 00 
 804d047:	f6 85 44 ff ff ff 08 	testb  $0x8,-0xbc(%ebp)
 804d04e:	75 39                	jne    0x804d089
 804d050:	ff b5 9c fe ff ff    	pushl  -0x164(%ebp)
 804d056:	ba 20 00 00 00       	mov    $0x20,%edx
 804d05b:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
 804d061:	89 8d 94 fe ff ff    	mov    %ecx,-0x16c(%ebp)
 804d067:	e8 30 fa ff ff       	call   0x804ca9c
 804d06c:	5a                   	pop    %edx
 804d06d:	3b 85 9c fe ff ff    	cmp    -0x164(%ebp),%eax
 804d073:	0f 85 25 01 00 00    	jne    0x804d19e
 804d079:	c7 85 9c fe ff ff 00 	movl   $0x0,-0x164(%ebp)
 804d080:	00 00 00 
 804d083:	8b 8d 94 fe ff ff    	mov    -0x16c(%ebp),%ecx
 804d089:	ff b5 a0 fe ff ff    	pushl  -0x160(%ebp)
 804d08f:	03 bd 90 fe ff ff    	add    -0x170(%ebp),%edi
 804d095:	89 8d 94 fe ff ff    	mov    %ecx,-0x16c(%ebp)
 804d09b:	57                   	push   %edi
 804d09c:	e8 6b 09 00 00       	call   0x804da0c
 804d0a1:	8b 8d 94 fe ff ff    	mov    -0x16c(%ebp),%ecx
 804d0a7:	ba 30 00 00 00       	mov    $0x30,%edx
 804d0ac:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
 804d0b2:	51                   	push   %ecx
 804d0b3:	e8 e4 f9 ff ff       	call   0x804ca9c
 804d0b8:	8b 8d 94 fe ff ff    	mov    -0x16c(%ebp),%ecx
 804d0be:	83 c4 0c             	add    $0xc,%esp
 804d0c1:	39 c8                	cmp    %ecx,%eax
 804d0c3:	0f 85 d5 00 00 00    	jne    0x804d19e
 804d0c9:	83 bd a8 fe ff ff 00 	cmpl   $0x0,-0x158(%ebp)
 804d0d0:	75 47                	jne    0x804d119
 804d0d2:	85 f6                	test   %esi,%esi
 804d0d4:	75 25                	jne    0x804d0fb
 804d0d6:	8b bd 9c fe ff ff    	mov    -0x164(%ebp),%edi
 804d0dc:	ba 20 00 00 00       	mov    $0x20,%edx
 804d0e1:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
 804d0e7:	57                   	push   %edi
 804d0e8:	e8 af f9 ff ff       	call   0x804ca9c
 804d0ed:	5e                   	pop    %esi
 804d0ee:	39 f8                	cmp    %edi,%eax
 804d0f0:	0f 84 93 00 00 00    	je     0x804d189
 804d0f6:	e9 a3 00 00 00       	jmp    0x804d19e
 804d0fb:	ff b5 a0 fe ff ff    	pushl  -0x160(%ebp)
 804d101:	56                   	push   %esi
 804d102:	ff b5 a4 fe ff ff    	pushl  -0x15c(%ebp)
 804d108:	e8 e7 15 00 00       	call   0x804e6f4
 804d10d:	83 c4 0c             	add    $0xc,%esp
 804d110:	39 f0                	cmp    %esi,%eax
 804d112:	74 c2                	je     0x804d0d6
 804d114:	e9 85 00 00 00       	jmp    0x804d19e
 804d119:	8d 85 ac fe ff ff    	lea    -0x154(%ebp),%eax
 804d11f:	c7 85 ac fe ff ff 00 	movl   $0x0,-0x154(%ebp)
 804d126:	00 00 00 
 804d129:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%ebp)
 804d12f:	85 f6                	test   %esi,%esi
 804d131:	74 a3                	je     0x804d0d6
 804d133:	89 f0                	mov    %esi,%eax
 804d135:	81 fe 80 00 00 00    	cmp    $0x80,%esi
 804d13b:	76 05                	jbe    0x804d142
 804d13d:	b8 80 00 00 00       	mov    $0x80,%eax
 804d142:	ff b5 a4 fe ff ff    	pushl  -0x15c(%ebp)
 804d148:	8d 95 b4 fe ff ff    	lea    -0x14c(%ebp),%edx
 804d14e:	50                   	push   %eax
 804d14f:	8d 85 a8 fe ff ff    	lea    -0x158(%ebp),%eax
 804d155:	89 95 94 fe ff ff    	mov    %edx,-0x16c(%ebp)
 804d15b:	50                   	push   %eax
 804d15c:	52                   	push   %edx
 804d15d:	e8 9a 14 00 00       	call   0x804e5fc
 804d162:	83 c4 10             	add    $0x10,%esp
 804d165:	89 c7                	mov    %eax,%edi
 804d167:	85 c0                	test   %eax,%eax
 804d169:	8b 95 94 fe ff ff    	mov    -0x16c(%ebp),%edx
 804d16f:	74 14                	je     0x804d185
 804d171:	ff b5 a0 fe ff ff    	pushl  -0x160(%ebp)
 804d177:	50                   	push   %eax
 804d178:	52                   	push   %edx
 804d179:	e8 76 15 00 00       	call   0x804e6f4
 804d17e:	83 c4 0c             	add    $0xc,%esp
 804d181:	39 f8                	cmp    %edi,%eax
 804d183:	75 19                	jne    0x804d19e
 804d185:	29 fe                	sub    %edi,%esi
 804d187:	eb a6                	jmp    0x804d12f
 804d189:	8b b5 34 ff ff ff    	mov    -0xcc(%ebp),%esi
 804d18f:	89 f2                	mov    %esi,%edx
 804d191:	e9 48 fa ff ff       	jmp    0x804cbde
 804d196:	83 c6 02             	add    $0x2,%esi
 804d199:	e9 40 fa ff ff       	jmp    0x804cbde
 804d19e:	c7 85 98 fe ff ff ff 	movl   $0xffffffff,-0x168(%ebp)
 804d1a5:	ff ff ff 
 804d1a8:	8b 85 98 fe ff ff    	mov    -0x168(%ebp),%eax
 804d1ae:	8d 65 f0             	lea    -0x10(%ebp),%esp
 804d1b1:	59                   	pop    %ecx
 804d1b2:	5b                   	pop    %ebx
 804d1b3:	5e                   	pop    %esi
 804d1b4:	5f                   	pop    %edi
 804d1b5:	5d                   	pop    %ebp
 804d1b6:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804d1b9:	c3                   	ret    
 804d1ba:	66 90                	xchg   %ax,%ax
 804d1bc:	55                   	push   %ebp
 804d1bd:	b9 2f 00 00 00       	mov    $0x2f,%ecx
 804d1c2:	89 e5                	mov    %esp,%ebp
 804d1c4:	57                   	push   %edi
 804d1c5:	56                   	push   %esi
 804d1c6:	31 c0                	xor    %eax,%eax
 804d1c8:	8b 75 08             	mov    0x8(%ebp),%esi
 804d1cb:	89 f7                	mov    %esi,%edi
 804d1cd:	f3 ab                	rep stos %eax,%es:(%edi)
 804d1cf:	ff 4e 18             	decl   0x18(%esi)
 804d1d2:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d1d5:	89 06                	mov    %eax,(%esi)
 804d1d7:	8d 56 28             	lea    0x28(%esi),%edx
 804d1da:	31 c0                	xor    %eax,%eax
 804d1dc:	c7 04 02 08 00 00 00 	movl   $0x8,(%edx,%eax,1)
 804d1e3:	83 c0 04             	add    $0x4,%eax
 804d1e6:	83 f8 24             	cmp    $0x24,%eax
 804d1e9:	75 f1                	jne    0x804d1dc
 804d1eb:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d1ee:	8a 10                	mov    (%eax),%dl
 804d1f0:	84 d2                	test   %dl,%dl
 804d1f2:	74 24                	je     0x804d218
 804d1f4:	80 fa 25             	cmp    $0x25,%dl
 804d1f7:	75 1c                	jne    0x804d215
 804d1f9:	8d 50 01             	lea    0x1(%eax),%edx
 804d1fc:	80 78 01 25          	cmpb   $0x25,0x1(%eax)
 804d200:	74 11                	je     0x804d213
 804d202:	89 16                	mov    %edx,(%esi)
 804d204:	56                   	push   %esi
 804d205:	e8 92 01 00 00       	call   0x804d39c
 804d20a:	5a                   	pop    %edx
 804d20b:	85 c0                	test   %eax,%eax
 804d20d:	78 12                	js     0x804d221
 804d20f:	8b 06                	mov    (%esi),%eax
 804d211:	eb db                	jmp    0x804d1ee
 804d213:	89 d0                	mov    %edx,%eax
 804d215:	40                   	inc    %eax
 804d216:	eb d6                	jmp    0x804d1ee
 804d218:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d21b:	89 06                	mov    %eax,(%esi)
 804d21d:	31 c0                	xor    %eax,%eax
 804d21f:	eb 03                	jmp    0x804d224
 804d221:	83 c8 ff             	or     $0xffffffff,%eax
 804d224:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804d227:	5e                   	pop    %esi
 804d228:	5f                   	pop    %edi
 804d229:	5d                   	pop    %ebp
 804d22a:	c3                   	ret    
 804d22b:	90                   	nop
 804d22c:	55                   	push   %ebp
 804d22d:	89 e5                	mov    %esp,%ebp
 804d22f:	57                   	push   %edi
 804d230:	56                   	push   %esi
 804d231:	8b 75 08             	mov    0x8(%ebp),%esi
 804d234:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d237:	8b 7e 18             	mov    0x18(%esi),%edi
 804d23a:	89 46 4c             	mov    %eax,0x4c(%esi)
 804d23d:	85 ff                	test   %edi,%edi
 804d23f:	7e 22                	jle    0x804d263
 804d241:	89 7e 1c             	mov    %edi,0x1c(%esi)
 804d244:	c7 46 18 00 00 00 00 	movl   $0x0,0x18(%esi)
 804d24b:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
 804d252:	c7 46 08 00 00 00 00 	movl   $0x0,0x8(%esi)
 804d259:	56                   	push   %esi
 804d25a:	e8 0d 00 00 00       	call   0x804d26c
 804d25f:	89 7e 18             	mov    %edi,0x18(%esi)
 804d262:	58                   	pop    %eax
 804d263:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804d266:	5e                   	pop    %esi
 804d267:	5f                   	pop    %edi
 804d268:	5d                   	pop    %ebp
 804d269:	c3                   	ret    
 804d26a:	66 90                	xchg   %ax,%ax
 804d26c:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804d270:	83 e4 f0             	and    $0xfffffff0,%esp
 804d273:	ff 71 fc             	pushl  -0x4(%ecx)
 804d276:	55                   	push   %ebp
 804d277:	89 e5                	mov    %esp,%ebp
 804d279:	57                   	push   %edi
 804d27a:	56                   	push   %esi
 804d27b:	51                   	push   %ecx
 804d27c:	83 ec 1c             	sub    $0x1c,%esp
 804d27f:	8b 09                	mov    (%ecx),%ecx
 804d281:	8d 71 50             	lea    0x50(%ecx),%esi
 804d284:	83 79 18 00          	cmpl   $0x0,0x18(%ecx)
 804d288:	0f 85 b5 00 00 00    	jne    0x804d343
 804d28e:	81 79 08 00 00 00 80 	cmpl   $0x80000000,0x8(%ecx)
 804d295:	75 11                	jne    0x804d2a8
 804d297:	8b 41 4c             	mov    0x4c(%ecx),%eax
 804d29a:	8d 50 04             	lea    0x4(%eax),%edx
 804d29d:	8b 00                	mov    (%eax),%eax
 804d29f:	89 51 4c             	mov    %edx,0x4c(%ecx)
 804d2a2:	89 41 50             	mov    %eax,0x50(%ecx)
 804d2a5:	89 41 08             	mov    %eax,0x8(%ecx)
 804d2a8:	81 79 04 00 00 00 80 	cmpl   $0x80000000,0x4(%ecx)
 804d2af:	75 11                	jne    0x804d2c2
 804d2b1:	8b 41 4c             	mov    0x4c(%ecx),%eax
 804d2b4:	8d 50 04             	lea    0x4(%eax),%edx
 804d2b7:	8b 00                	mov    (%eax),%eax
 804d2b9:	89 51 4c             	mov    %edx,0x4c(%ecx)
 804d2bc:	89 41 50             	mov    %eax,0x50(%ecx)
 804d2bf:	89 41 04             	mov    %eax,0x4(%ecx)
 804d2c2:	31 ff                	xor    %edi,%edi
 804d2c4:	3b 79 1c             	cmp    0x1c(%ecx),%edi
 804d2c7:	0f 8d a4 00 00 00    	jge    0x804d371
 804d2cd:	47                   	inc    %edi
 804d2ce:	8b 54 b9 24          	mov    0x24(%ecx,%edi,4),%edx
 804d2d2:	83 fa 08             	cmp    $0x8,%edx
 804d2d5:	74 ed                	je     0x804d2c4
 804d2d7:	8b 41 4c             	mov    0x4c(%ecx),%eax
 804d2da:	7f 1b                	jg     0x804d2f7
 804d2dc:	83 fa 02             	cmp    $0x2,%edx
 804d2df:	74 53                	je     0x804d334
 804d2e1:	7e 51                	jle    0x804d334
 804d2e3:	83 fa 07             	cmp    $0x7,%edx
 804d2e6:	75 4c                	jne    0x804d334
 804d2e8:	dd 00                	fldl   (%eax)
 804d2ea:	8d 50 08             	lea    0x8(%eax),%edx
 804d2ed:	dd 55 d8             	fstl   -0x28(%ebp)
 804d2f0:	89 51 4c             	mov    %edx,0x4c(%ecx)
 804d2f3:	dd 1e                	fstpl  (%esi)
 804d2f5:	eb 47                	jmp    0x804d33e
 804d2f7:	81 fa 00 04 00 00    	cmp    $0x400,%edx
 804d2fd:	74 35                	je     0x804d334
 804d2ff:	7e 33                	jle    0x804d334
 804d301:	81 fa 00 08 00 00    	cmp    $0x800,%edx
 804d307:	74 19                	je     0x804d322
 804d309:	81 fa 07 08 00 00    	cmp    $0x807,%edx
 804d30f:	75 23                	jne    0x804d334
 804d311:	db 28                	fldt   (%eax)
 804d313:	8d 50 0c             	lea    0xc(%eax),%edx
 804d316:	d9 c0                	fld    %st(0)
 804d318:	db 7d d8             	fstpt  -0x28(%ebp)
 804d31b:	89 51 4c             	mov    %edx,0x4c(%ecx)
 804d31e:	db 3e                	fstpt  (%esi)
 804d320:	eb 1c                	jmp    0x804d33e
 804d322:	8d 50 08             	lea    0x8(%eax),%edx
 804d325:	89 51 4c             	mov    %edx,0x4c(%ecx)
 804d328:	8b 50 04             	mov    0x4(%eax),%edx
 804d32b:	8b 00                	mov    (%eax),%eax
 804d32d:	89 56 04             	mov    %edx,0x4(%esi)
 804d330:	89 06                	mov    %eax,(%esi)
 804d332:	eb 0a                	jmp    0x804d33e
 804d334:	8d 50 04             	lea    0x4(%eax),%edx
 804d337:	89 51 4c             	mov    %edx,0x4c(%ecx)
 804d33a:	8b 00                	mov    (%eax),%eax
 804d33c:	89 06                	mov    %eax,(%esi)
 804d33e:	83 c6 0c             	add    $0xc,%esi
 804d341:	eb 81                	jmp    0x804d2c4
 804d343:	81 79 08 00 00 00 80 	cmpl   $0x80000000,0x8(%ecx)
 804d34a:	75 0e                	jne    0x804d35a
 804d34c:	0f b6 41 24          	movzbl 0x24(%ecx),%eax
 804d350:	6b c0 0c             	imul   $0xc,%eax,%eax
 804d353:	8b 44 06 f4          	mov    -0xc(%esi,%eax,1),%eax
 804d357:	89 41 08             	mov    %eax,0x8(%ecx)
 804d35a:	81 79 04 00 00 00 80 	cmpl   $0x80000000,0x4(%ecx)
 804d361:	75 0e                	jne    0x804d371
 804d363:	0f b6 41 25          	movzbl 0x25(%ecx),%eax
 804d367:	6b c0 0c             	imul   $0xc,%eax,%eax
 804d36a:	8b 44 06 f4          	mov    -0xc(%esi,%eax,1),%eax
 804d36e:	89 41 04             	mov    %eax,0x4(%ecx)
 804d371:	8b 41 08             	mov    0x8(%ecx),%eax
 804d374:	85 c0                	test   %eax,%eax
 804d376:	79 18                	jns    0x804d390
 804d378:	f7 d8                	neg    %eax
 804d37a:	89 41 08             	mov    %eax,0x8(%ecx)
 804d37d:	8b 41 10             	mov    0x10(%ecx),%eax
 804d380:	83 e0 fe             	and    $0xfffffffe,%eax
 804d383:	c7 41 14 20 00 00 00 	movl   $0x20,0x14(%ecx)
 804d38a:	83 c8 08             	or     $0x8,%eax
 804d38d:	89 41 10             	mov    %eax,0x10(%ecx)
 804d390:	83 c4 1c             	add    $0x1c,%esp
 804d393:	59                   	pop    %ecx
 804d394:	5e                   	pop    %esi
 804d395:	5f                   	pop    %edi
 804d396:	5d                   	pop    %ebp
 804d397:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804d39a:	c3                   	ret    
 804d39b:	90                   	nop
 804d39c:	55                   	push   %ebp
 804d39d:	89 e5                	mov    %esp,%ebp
 804d39f:	57                   	push   %edi
 804d3a0:	56                   	push   %esi
 804d3a1:	53                   	push   %ebx
 804d3a2:	83 ec 55             	sub    $0x55,%esp
 804d3a5:	e8 cd b8 ff ff       	call   0x8048c77
 804d3aa:	81 c3 de 4c 00 00    	add    $0x4cde,%ebx
 804d3b0:	8b 7d 08             	mov    0x8(%ebp),%edi
 804d3b3:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 804d3ba:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
 804d3c1:	c7 45 bc 08 00 00 00 	movl   $0x8,-0x44(%ebp)
 804d3c8:	8b 47 18             	mov    0x18(%edi),%eax
 804d3cb:	c7 45 c0 08 00 00 00 	movl   $0x8,-0x40(%ebp)
 804d3d2:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804d3d5:	8b 47 10             	mov    0x10(%edi),%eax
 804d3d8:	25 80 00 00 00       	and    $0x80,%eax
 804d3dd:	8b 37                	mov    (%edi),%esi
 804d3df:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804d3e2:	74 2c                	je     0x804d410
 804d3e4:	31 c0                	xor    %eax,%eax
 804d3e6:	8b 54 86 fc          	mov    -0x4(%esi,%eax,4),%edx
 804d3ea:	88 54 05 d4          	mov    %dl,-0x2c(%ebp,%eax,1)
 804d3ee:	0f b6 ca             	movzbl %dl,%ecx
 804d3f1:	3b 4c 86 fc          	cmp    -0x4(%esi,%eax,4),%ecx
 804d3f5:	74 08                	je     0x804d3ff
 804d3f7:	83 c8 ff             	or     $0xffffffff,%eax
 804d3fa:	e9 69 03 00 00       	jmp    0x804d768
 804d3ff:	40                   	inc    %eax
 804d400:	84 d2                	test   %dl,%dl
 804d402:	74 05                	je     0x804d409
 804d404:	83 f8 20             	cmp    $0x20,%eax
 804d407:	75 dd                	jne    0x804d3e6
 804d409:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
 804d40d:	8d 75 d5             	lea    -0x2b(%ebp),%esi
 804d410:	8b 83 40 01 00 00    	mov    0x140(%ebx),%eax
 804d416:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
 804d41d:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804d420:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
 804d427:	8a 06                	mov    (%esi),%al
 804d429:	89 75 b8             	mov    %esi,-0x48(%ebp)
 804d42c:	88 45 a4             	mov    %al,-0x5c(%ebp)
 804d42f:	3c 2a                	cmp    $0x2a,%al
 804d431:	75 13                	jne    0x804d446
 804d433:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804d436:	f7 d8                	neg    %eax
 804d438:	c7 44 85 bc 00 00 00 	movl   $0x0,-0x44(%ebp,%eax,4)
 804d43f:	00 
 804d440:	8d 46 01             	lea    0x1(%esi),%eax
 804d443:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804d446:	31 d2                	xor    %edx,%edx
 804d448:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d44b:	0f b6 08             	movzbl (%eax),%ecx
 804d44e:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804d451:	88 4d 9f             	mov    %cl,-0x61(%ebp)
 804d454:	f6 04 48 08          	testb  $0x8,(%eax,%ecx,2)
 804d458:	74 28                	je     0x804d482
 804d45a:	81 fa cb cc cc 0c    	cmp    $0xccccccb,%edx
 804d460:	7e 0d                	jle    0x804d46f
 804d462:	81 fa cc cc cc 0c    	cmp    $0xccccccc,%edx
 804d468:	75 0e                	jne    0x804d478
 804d46a:	83 f9 37             	cmp    $0x37,%ecx
 804d46d:	7f 09                	jg     0x804d478
 804d46f:	6b d2 0a             	imul   $0xa,%edx,%edx
 804d472:	8d 54 0a d0          	lea    -0x30(%edx,%ecx,1),%edx
 804d476:	eb 05                	jmp    0x804d47d
 804d478:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
 804d47d:	ff 45 b8             	incl   -0x48(%ebp)
 804d480:	eb c6                	jmp    0x804d448
 804d482:	80 7e ff 25          	cmpb   $0x25,-0x1(%esi)
 804d486:	0f 85 89 00 00 00    	jne    0x804d515
 804d48c:	80 7d 9f 24          	cmpb   $0x24,-0x61(%ebp)
 804d490:	75 1f                	jne    0x804d4b1
 804d492:	85 d2                	test   %edx,%edx
 804d494:	7e 1b                	jle    0x804d4b1
 804d496:	8b 75 b8             	mov    -0x48(%ebp),%esi
 804d499:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804d49c:	46                   	inc    %esi
 804d49d:	85 c0                	test   %eax,%eax
 804d49f:	0f 84 52 ff ff ff    	je     0x804d3f7
 804d4a5:	89 55 d0             	mov    %edx,-0x30(%ebp)
 804d4a8:	39 d0                	cmp    %edx,%eax
 804d4aa:	7d 21                	jge    0x804d4cd
 804d4ac:	89 55 b4             	mov    %edx,-0x4c(%ebp)
 804d4af:	eb 1c                	jmp    0x804d4cd
 804d4b1:	83 7d b4 00          	cmpl   $0x0,-0x4c(%ebp)
 804d4b5:	0f 8f 3c ff ff ff    	jg     0x804d3f7
 804d4bb:	39 75 b8             	cmp    %esi,-0x48(%ebp)
 804d4be:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804d4c5:	76 06                	jbe    0x804d4cd
 804d4c7:	80 7d a4 30          	cmpb   $0x30,-0x5c(%ebp)
 804d4cb:	75 48                	jne    0x804d515
 804d4cd:	89 75 b8             	mov    %esi,-0x48(%ebp)
 804d4d0:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d4d3:	ba 01 00 00 00       	mov    $0x1,%edx
 804d4d8:	8d b3 50 ed ff ff    	lea    -0x12b0(%ebx),%esi
 804d4de:	8a 08                	mov    (%eax),%cl
 804d4e0:	46                   	inc    %esi
 804d4e1:	3a 4e ff             	cmp    -0x1(%esi),%cl
 804d4e4:	75 08                	jne    0x804d4ee
 804d4e6:	ff 45 b8             	incl   -0x48(%ebp)
 804d4e9:	09 55 b0             	or     %edx,-0x50(%ebp)
 804d4ec:	eb e2                	jmp    0x804d4d0
 804d4ee:	01 d2                	add    %edx,%edx
 804d4f0:	80 3e 00             	cmpb   $0x0,(%esi)
 804d4f3:	75 eb                	jne    0x804d4e0
 804d4f5:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804d4f8:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d4fb:	83 e2 0a             	and    $0xa,%edx
 804d4fe:	d1 fa                	sar    %edx
 804d500:	f7 d2                	not    %edx
 804d502:	21 55 b0             	and    %edx,-0x50(%ebp)
 804d505:	80 78 ff 25          	cmpb   $0x25,-0x1(%eax)
 804d509:	74 08                	je     0x804d513
 804d50b:	8b 75 b8             	mov    -0x48(%ebp),%esi
 804d50e:	e9 14 ff ff ff       	jmp    0x804d427
 804d513:	31 d2                	xor    %edx,%edx
 804d515:	80 3e 2a             	cmpb   $0x2a,(%esi)
 804d518:	75 3a                	jne    0x804d554
 804d51a:	83 7d b4 00          	cmpl   $0x0,-0x4c(%ebp)
 804d51e:	74 25                	je     0x804d545
 804d520:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d523:	8d 48 01             	lea    0x1(%eax),%ecx
 804d526:	80 38 24             	cmpb   $0x24,(%eax)
 804d529:	0f 85 c8 fe ff ff    	jne    0x804d3f7
 804d52f:	85 d2                	test   %edx,%edx
 804d531:	0f 8e c0 fe ff ff    	jle    0x804d3f7
 804d537:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804d53a:	89 4d b8             	mov    %ecx,-0x48(%ebp)
 804d53d:	f7 d8                	neg    %eax
 804d53f:	89 54 85 c8          	mov    %edx,-0x38(%ebp,%eax,4)
 804d543:	eb 0a                	jmp    0x804d54f
 804d545:	46                   	inc    %esi
 804d546:	39 75 b8             	cmp    %esi,-0x48(%ebp)
 804d549:	0f 85 a8 fe ff ff    	jne    0x804d3f7
 804d54f:	ba 00 00 00 80       	mov    $0x80000000,%edx
 804d554:	83 7d ac 00          	cmpl   $0x0,-0x54(%ebp)
 804d558:	75 1d                	jne    0x804d577
 804d55a:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d55d:	80 38 2e             	cmpb   $0x2e,(%eax)
 804d560:	75 0f                	jne    0x804d571
 804d562:	ff 45 b8             	incl   -0x48(%ebp)
 804d565:	89 55 a8             	mov    %edx,-0x58(%ebp)
 804d568:	c7 45 ac ff ff ff ff 	movl   $0xffffffff,-0x54(%ebp)
 804d56f:	eb 9a                	jmp    0x804d50b
 804d571:	89 55 a8             	mov    %edx,-0x58(%ebp)
 804d574:	83 ca ff             	or     $0xffffffff,%edx
 804d577:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d57a:	8d 8b 00 ed ff ff    	lea    -0x1300(%ebx),%ecx
 804d580:	0f b6 30             	movzbl (%eax),%esi
 804d583:	89 f0                	mov    %esi,%eax
 804d585:	3a 01                	cmp    (%ecx),%al
 804d587:	75 05                	jne    0x804d58e
 804d589:	ff 45 b8             	incl   -0x48(%ebp)
 804d58c:	eb 06                	jmp    0x804d594
 804d58e:	41                   	inc    %ecx
 804d58f:	80 39 00             	cmpb   $0x0,(%ecx)
 804d592:	75 ef                	jne    0x804d583
 804d594:	8d b3 00 ed ff ff    	lea    -0x1300(%ebx),%esi
 804d59a:	89 c8                	mov    %ecx,%eax
 804d59c:	29 f0                	sub    %esi,%eax
 804d59e:	89 c6                	mov    %eax,%esi
 804d5a0:	4e                   	dec    %esi
 804d5a1:	7f 0f                	jg     0x804d5b2
 804d5a3:	8b 75 b8             	mov    -0x48(%ebp),%esi
 804d5a6:	8a 01                	mov    (%ecx),%al
 804d5a8:	38 06                	cmp    %al,(%esi)
 804d5aa:	75 06                	jne    0x804d5b2
 804d5ac:	ff 45 b8             	incl   -0x48(%ebp)
 804d5af:	83 c1 09             	add    $0x9,%ecx
 804d5b2:	0f b6 41 09          	movzbl 0x9(%ecx),%eax
 804d5b6:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804d5b9:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d5bc:	c1 65 ac 08          	shll   $0x8,-0x54(%ebp)
 804d5c0:	0f b6 30             	movzbl (%eax),%esi
 804d5c3:	89 f0                	mov    %esi,%eax
 804d5c5:	84 c0                	test   %al,%al
 804d5c7:	0f 84 2a fe ff ff    	je     0x804d3f7
 804d5cd:	8d 8b 38 ed ff ff    	lea    -0x12c8(%ebx),%ecx
 804d5d3:	89 f0                	mov    %esi,%eax
 804d5d5:	3a 01                	cmp    (%ecx),%al
 804d5d7:	75 52                	jne    0x804d62b
 804d5d9:	8d b3 38 ed ff ff    	lea    -0x12c8(%ebx),%esi
 804d5df:	29 f1                	sub    %esi,%ecx
 804d5e1:	83 f9 11             	cmp    $0x11,%ecx
 804d5e4:	7e 0c                	jle    0x804d5f2
 804d5e6:	f7 45 ac 00 04 00 00 	testl  $0x400,-0x54(%ebp)
 804d5ed:	74 03                	je     0x804d5f2
 804d5ef:	83 e9 02             	sub    $0x2,%ecx
 804d5f2:	89 4f 20             	mov    %ecx,0x20(%edi)
 804d5f5:	8d b3 f3 ec ff ff    	lea    -0x130d(%ebx),%esi
 804d5fb:	46                   	inc    %esi
 804d5fc:	0f b6 06             	movzbl (%esi),%eax
 804d5ff:	39 c1                	cmp    %eax,%ecx
 804d601:	7f f8                	jg     0x804d5fb
 804d603:	8d 8b f4 ec ff ff    	lea    -0x130c(%ebx),%ecx
 804d609:	29 ce                	sub    %ecx,%esi
 804d60b:	0f bf 8c 73 e4 ec ff 	movswl -0x131c(%ebx,%esi,2),%ecx
 804d612:	ff 
 804d613:	0f bf b4 73 d4 ec ff 	movswl -0x132c(%ebx,%esi,2),%esi
 804d61a:	ff 
 804d61b:	0b 4d ac             	or     -0x54(%ebp),%ecx
 804d61e:	21 f1                	and    %esi,%ecx
 804d620:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
 804d623:	8d 8b 38 ed ff ff    	lea    -0x12c8(%ebx),%ecx
 804d629:	eb 06                	jmp    0x804d631
 804d62b:	41                   	inc    %ecx
 804d62c:	80 39 00             	cmpb   $0x0,(%ecx)
 804d62f:	75 a2                	jne    0x804d5d3
 804d631:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d634:	0f b6 30             	movzbl (%eax),%esi
 804d637:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804d63a:	89 57 04             	mov    %edx,0x4(%edi)
 804d63d:	89 47 08             	mov    %eax,0x8(%edi)
 804d640:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804d643:	89 c2                	mov    %eax,%edx
 804d645:	89 77 0c             	mov    %esi,0xc(%edi)
 804d648:	83 e2 04             	and    $0x4,%edx
 804d64b:	8b 75 ac             	mov    -0x54(%ebp),%esi
 804d64e:	83 fa 01             	cmp    $0x1,%edx
 804d651:	c7 47 1c 01 00 00 00 	movl   $0x1,0x1c(%edi)
 804d658:	19 d2                	sbb    %edx,%edx
 804d65a:	81 e6 00 0f 00 00    	and    $0xf00,%esi
 804d660:	83 e2 f0             	and    $0xfffffff0,%edx
 804d663:	89 75 ac             	mov    %esi,-0x54(%ebp)
 804d666:	83 c2 30             	add    $0x30,%edx
 804d669:	89 57 14             	mov    %edx,0x14(%edi)
 804d66c:	89 c2                	mov    %eax,%edx
 804d66e:	83 e2 fb             	and    $0xfffffffb,%edx
 804d671:	09 55 ac             	or     %edx,-0x54(%ebp)
 804d674:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804d677:	89 47 10             	mov    %eax,0x10(%edi)
 804d67a:	80 39 00             	cmpb   $0x0,(%ecx)
 804d67d:	0f 84 74 fd ff ff    	je     0x804d3f7
 804d683:	83 7d b4 00          	cmpl   $0x0,-0x4c(%ebp)
 804d687:	0f 8e a7 00 00 00    	jle    0x804d734
 804d68d:	8d 83 20 ed ff ff    	lea    -0x12e0(%ebx),%eax
 804d693:	31 d2                	xor    %edx,%edx
 804d695:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804d698:	8b 4c 95 c8          	mov    -0x38(%ebp,%edx,4),%ecx
 804d69c:	88 4c 17 24          	mov    %cl,0x24(%edi,%edx,1)
 804d6a0:	0f b6 c9             	movzbl %cl,%ecx
 804d6a3:	3b 4d b4             	cmp    -0x4c(%ebp),%ecx
 804d6a6:	7e 0c                	jle    0x804d6b4
 804d6a8:	83 f9 09             	cmp    $0x9,%ecx
 804d6ab:	0f 8f 46 fd ff ff    	jg     0x804d3f7
 804d6b1:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
 804d6b4:	8d 74 8f fc          	lea    -0x4(%edi,%ecx,4),%esi
 804d6b8:	8b 44 95 bc          	mov    -0x44(%ebp,%edx,4),%eax
 804d6bc:	89 75 a4             	mov    %esi,-0x5c(%ebp)
 804d6bf:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804d6c2:	8b 76 28             	mov    0x28(%esi),%esi
 804d6c5:	83 f8 08             	cmp    $0x8,%eax
 804d6c8:	74 5e                	je     0x804d728
 804d6ca:	39 c6                	cmp    %eax,%esi
 804d6cc:	74 51                	je     0x804d71f
 804d6ce:	83 fe 08             	cmp    $0x8,%esi
 804d6d1:	74 4c                	je     0x804d71f
 804d6d3:	8d 8b 38 ed ff ff    	lea    -0x12c8(%ebx),%ecx
 804d6d9:	83 e9 02             	sub    $0x2,%ecx
 804d6dc:	0f bf 01             	movswl (%ecx),%eax
 804d6df:	39 f0                	cmp    %esi,%eax
 804d6e1:	75 14                	jne    0x804d6f7
 804d6e3:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804d6e6:	29 c1                	sub    %eax,%ecx
 804d6e8:	d1 f9                	sar    %ecx
 804d6ea:	0f b6 b4 0b 14 ed ff 	movzbl -0x12ec(%ebx,%ecx,1),%esi
 804d6f1:	ff 
 804d6f2:	8d 48 18             	lea    0x18(%eax),%ecx
 804d6f5:	eb 0c                	jmp    0x804d703
 804d6f7:	3b 4d b0             	cmp    -0x50(%ebp),%ecx
 804d6fa:	77 dd                	ja     0x804d6d9
 804d6fc:	eb e5                	jmp    0x804d6e3
 804d6fe:	3b 4d b0             	cmp    -0x50(%ebp),%ecx
 804d701:	76 0b                	jbe    0x804d70e
 804d703:	83 e9 02             	sub    $0x2,%ecx
 804d706:	0f bf 01             	movswl (%ecx),%eax
 804d709:	3b 45 a8             	cmp    -0x58(%ebp),%eax
 804d70c:	75 f0                	jne    0x804d6fe
 804d70e:	2b 4d b0             	sub    -0x50(%ebp),%ecx
 804d711:	d1 f9                	sar    %ecx
 804d713:	0f b6 8c 0b 14 ed ff 	movzbl -0x12ec(%ebx,%ecx,1),%ecx
 804d71a:	ff 
 804d71b:	39 ce                	cmp    %ecx,%esi
 804d71d:	7f 09                	jg     0x804d728
 804d71f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804d722:	8b 75 a8             	mov    -0x58(%ebp),%esi
 804d725:	89 70 28             	mov    %esi,0x28(%eax)
 804d728:	42                   	inc    %edx
 804d729:	83 fa 03             	cmp    $0x3,%edx
 804d72c:	0f 85 66 ff ff ff    	jne    0x804d698
 804d732:	eb 0a                	jmp    0x804d73e
 804d734:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 804d737:	c6 47 26 01          	movb   $0x1,0x26(%edi)
 804d73b:	89 57 28             	mov    %edx,0x28(%edi)
 804d73e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804d741:	f6 45 ac 80          	testb  $0x80,-0x54(%ebp)
 804d745:	89 47 18             	mov    %eax,0x18(%edi)
 804d748:	75 08                	jne    0x804d752
 804d74a:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d74d:	40                   	inc    %eax
 804d74e:	89 07                	mov    %eax,(%edi)
 804d750:	eb 11                	jmp    0x804d763
 804d752:	8d 45 f4             	lea    -0xc(%ebp),%eax
 804d755:	8b 55 b8             	mov    -0x48(%ebp),%edx
 804d758:	29 c2                	sub    %eax,%edx
 804d75a:	8d 04 95 80 00 00 00 	lea    0x80(,%edx,4),%eax
 804d761:	01 07                	add    %eax,(%edi)
 804d763:	b8 03 00 00 00       	mov    $0x3,%eax
 804d768:	83 c4 55             	add    $0x55,%esp
 804d76b:	5b                   	pop    %ebx
 804d76c:	5e                   	pop    %esi
 804d76d:	5f                   	pop    %edi
 804d76e:	5d                   	pop    %ebp
 804d76f:	c3                   	ret    
 804d770:	55                   	push   %ebp
 804d771:	89 e5                	mov    %esp,%ebp
 804d773:	56                   	push   %esi
 804d774:	8b 75 08             	mov    0x8(%ebp),%esi
 804d777:	83 7e 34 00          	cmpl   $0x0,0x34(%esi)
 804d77b:	74 1f                	je     0x804d79c
 804d77d:	8b 46 10             	mov    0x10(%esi),%eax
 804d780:	3b 46 18             	cmp    0x18(%esi),%eax
 804d783:	73 0b                	jae    0x804d790
 804d785:	8d 50 01             	lea    0x1(%eax),%edx
 804d788:	89 56 10             	mov    %edx,0x10(%esi)
 804d78b:	0f b6 00             	movzbl (%eax),%eax
 804d78e:	eb 7b                	jmp    0x804d80b
 804d790:	89 75 08             	mov    %esi,0x8(%ebp)
 804d793:	8b 75 fc             	mov    -0x4(%ebp),%esi
 804d796:	c9                   	leave  
 804d797:	e9 18 01 00 00       	jmp    0x804d8b4
 804d79c:	65 8b 15 08 00 00 00 	mov    %gs:0x8,%edx
 804d7a3:	39 56 40             	cmp    %edx,0x40(%esi)
 804d7a6:	74 1b                	je     0x804d7c3
 804d7a8:	31 c0                	xor    %eax,%eax
 804d7aa:	b9 01 00 00 00       	mov    $0x1,%ecx
 804d7af:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804d7b6:	00 
 804d7b7:	74 01                	je     0x804d7ba
 804d7b9:	f0 0f b1 4e 38       	lock cmpxchg %ecx,0x38(%esi)
 804d7be:	75 50                	jne    0x804d810
 804d7c0:	89 56 40             	mov    %edx,0x40(%esi)
 804d7c3:	8b 46 10             	mov    0x10(%esi),%eax
 804d7c6:	ff 46 3c             	incl   0x3c(%esi)
 804d7c9:	3b 46 18             	cmp    0x18(%esi),%eax
 804d7cc:	73 0b                	jae    0x804d7d9
 804d7ce:	8d 50 01             	lea    0x1(%eax),%edx
 804d7d1:	89 56 10             	mov    %edx,0x10(%esi)
 804d7d4:	0f b6 10             	movzbl (%eax),%edx
 804d7d7:	eb 09                	jmp    0x804d7e2
 804d7d9:	56                   	push   %esi
 804d7da:	e8 d5 00 00 00       	call   0x804d8b4
 804d7df:	89 c2                	mov    %eax,%edx
 804d7e1:	58                   	pop    %eax
 804d7e2:	8b 46 3c             	mov    0x3c(%esi),%eax
 804d7e5:	8d 48 ff             	lea    -0x1(%eax),%ecx
 804d7e8:	89 d0                	mov    %edx,%eax
 804d7ea:	89 4e 3c             	mov    %ecx,0x3c(%esi)
 804d7ed:	85 c9                	test   %ecx,%ecx
 804d7ef:	75 1a                	jne    0x804d80b
 804d7f1:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
 804d7f8:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804d7ff:	00 
 804d800:	74 01                	je     0x804d803
 804d802:	f0 83 6e 38 01       	lock subl $0x1,0x38(%esi)
 804d807:	75 11                	jne    0x804d81a
 804d809:	89 d0                	mov    %edx,%eax
 804d80b:	8b 75 fc             	mov    -0x4(%ebp),%esi
 804d80e:	c9                   	leave  
 804d80f:	c3                   	ret    
 804d810:	8d 4e 38             	lea    0x38(%esi),%ecx
 804d813:	e8 68 df ff ff       	call   0x804b780
 804d818:	eb a6                	jmp    0x804d7c0
 804d81a:	8d 46 38             	lea    0x38(%esi),%eax
 804d81d:	e8 8e df ff ff       	call   0x804b7b0
 804d822:	eb e5                	jmp    0x804d809
 804d824:	55                   	push   %ebp
 804d825:	89 e5                	mov    %esp,%ebp
 804d827:	57                   	push   %edi
 804d828:	56                   	push   %esi
 804d829:	8b 75 10             	mov    0x10(%ebp),%esi
 804d82c:	8b 7e 34             	mov    0x34(%esi),%edi
 804d82f:	85 ff                	test   %edi,%edi
 804d831:	75 2a                	jne    0x804d85d
 804d833:	65 8b 15 08 00 00 00 	mov    %gs:0x8,%edx
 804d83a:	39 56 40             	cmp    %edx,0x40(%esi)
 804d83d:	74 1b                	je     0x804d85a
 804d83f:	89 f8                	mov    %edi,%eax
 804d841:	b9 01 00 00 00       	mov    $0x1,%ecx
 804d846:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804d84d:	00 
 804d84e:	74 01                	je     0x804d851
 804d850:	f0 0f b1 4e 38       	lock cmpxchg %ecx,0x38(%esi)
 804d855:	75 49                	jne    0x804d8a0
 804d857:	89 56 40             	mov    %edx,0x40(%esi)
 804d85a:	ff 46 3c             	incl   0x3c(%esi)
 804d85d:	56                   	push   %esi
 804d85e:	ff 75 0c             	pushl  0xc(%ebp)
 804d861:	ff 75 08             	pushl  0x8(%ebp)
 804d864:	e8 2f 01 00 00       	call   0x804d998
 804d869:	83 c4 0c             	add    $0xc,%esp
 804d86c:	89 c1                	mov    %eax,%ecx
 804d86e:	85 ff                	test   %edi,%edi
 804d870:	75 25                	jne    0x804d897
 804d872:	8b 46 3c             	mov    0x3c(%esi),%eax
 804d875:	8d 50 ff             	lea    -0x1(%eax),%edx
 804d878:	89 56 3c             	mov    %edx,0x3c(%esi)
 804d87b:	85 d2                	test   %edx,%edx
 804d87d:	75 18                	jne    0x804d897
 804d87f:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
 804d886:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804d88d:	00 
 804d88e:	74 01                	je     0x804d891
 804d890:	f0 83 6e 38 01       	lock subl $0x1,0x38(%esi)
 804d895:	75 13                	jne    0x804d8aa
 804d897:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804d89a:	89 c8                	mov    %ecx,%eax
 804d89c:	5e                   	pop    %esi
 804d89d:	5f                   	pop    %edi
 804d89e:	5d                   	pop    %ebp
 804d89f:	c3                   	ret    
 804d8a0:	8d 4e 38             	lea    0x38(%esi),%ecx
 804d8a3:	e8 d8 de ff ff       	call   0x804b780
 804d8a8:	eb ad                	jmp    0x804d857
 804d8aa:	8d 46 38             	lea    0x38(%esi),%eax
 804d8ad:	e8 fe de ff ff       	call   0x804b7b0
 804d8b2:	eb e3                	jmp    0x804d897
 804d8b4:	55                   	push   %ebp
 804d8b5:	89 e5                	mov    %esp,%ebp
 804d8b7:	56                   	push   %esi
 804d8b8:	53                   	push   %ebx
 804d8b9:	56                   	push   %esi
 804d8ba:	8b 75 08             	mov    0x8(%ebp),%esi
 804d8bd:	e8 b5 b3 ff ff       	call   0x8048c77
 804d8c2:	81 c3 c6 47 00 00    	add    $0x47c6,%ebx
 804d8c8:	8b 46 10             	mov    0x10(%esi),%eax
 804d8cb:	3b 46 18             	cmp    0x18(%esi),%eax
 804d8ce:	0f 82 95 00 00 00    	jb     0x804d969
 804d8d4:	8b 06                	mov    (%esi),%eax
 804d8d6:	66 25 83 00          	and    $0x83,%ax
 804d8da:	66 3d 80 00          	cmp    $0x80,%ax
 804d8de:	76 25                	jbe    0x804d905
 804d8e0:	8b 06                	mov    (%esi),%eax
 804d8e2:	a8 02                	test   $0x2,%al
 804d8e4:	74 32                	je     0x804d918
 804d8e6:	8d 50 ff             	lea    -0x1(%eax),%edx
 804d8e9:	83 e0 01             	and    $0x1,%eax
 804d8ec:	83 c0 08             	add    $0x8,%eax
 804d8ef:	66 89 16             	mov    %dx,(%esi)
 804d8f2:	8b 44 86 04          	mov    0x4(%esi,%eax,4),%eax
 804d8f6:	c7 46 28 00 00 00 00 	movl   $0x0,0x28(%esi)
 804d8fd:	0f b6 c0             	movzbl %al,%eax
 804d900:	e9 8b 00 00 00       	jmp    0x804d990
 804d905:	68 80 00 00 00       	push   $0x80
 804d90a:	56                   	push   %esi
 804d90b:	e8 0c 0f 00 00       	call   0x804e81c
 804d910:	5a                   	pop    %edx
 804d911:	85 c0                	test   %eax,%eax
 804d913:	59                   	pop    %ecx
 804d914:	74 ca                	je     0x804d8e0
 804d916:	eb 75                	jmp    0x804d98d
 804d918:	8b 56 10             	mov    0x10(%esi),%edx
 804d91b:	39 56 14             	cmp    %edx,0x14(%esi)
 804d91e:	74 0b                	je     0x804d92b
 804d920:	8d 42 01             	lea    0x1(%edx),%eax
 804d923:	89 46 10             	mov    %eax,0x10(%esi)
 804d926:	0f b6 02             	movzbl (%edx),%eax
 804d929:	eb 65                	jmp    0x804d990
 804d92b:	83 7e 04 fe          	cmpl   $0xfffffffe,0x4(%esi)
 804d92f:	75 08                	jne    0x804d939
 804d931:	83 c8 04             	or     $0x4,%eax
 804d934:	66 89 06             	mov    %ax,(%esi)
 804d937:	eb 54                	jmp    0x804d98d
 804d939:	f6 c4 03             	test   $0x3,%ah
 804d93c:	74 0c                	je     0x804d94a
 804d93e:	ff b3 bc ff ff ff    	pushl  -0x44(%ebx)
 804d944:	e8 45 be ff ff       	call   0x804978e
 804d949:	59                   	pop    %ecx
 804d94a:	8b 46 08             	mov    0x8(%esi),%eax
 804d94d:	39 46 0c             	cmp    %eax,0xc(%esi)
 804d950:	74 22                	je     0x804d974
 804d952:	89 46 18             	mov    %eax,0x18(%esi)
 804d955:	56                   	push   %esi
 804d956:	e8 99 0e 00 00       	call   0x804e7f4
 804d95b:	5a                   	pop    %edx
 804d95c:	85 c0                	test   %eax,%eax
 804d95e:	74 2d                	je     0x804d98d
 804d960:	8b 46 14             	mov    0x14(%esi),%eax
 804d963:	89 46 18             	mov    %eax,0x18(%esi)
 804d966:	8b 46 10             	mov    0x10(%esi),%eax
 804d969:	8d 50 01             	lea    0x1(%eax),%edx
 804d96c:	89 56 10             	mov    %edx,0x10(%esi)
 804d96f:	0f b6 00             	movzbl (%eax),%eax
 804d972:	eb 1c                	jmp    0x804d990
 804d974:	8d 45 f7             	lea    -0x9(%ebp),%eax
 804d977:	6a 01                	push   $0x1
 804d979:	50                   	push   %eax
 804d97a:	56                   	push   %esi
 804d97b:	e8 30 0d 00 00       	call   0x804e6b0
 804d980:	83 c4 0c             	add    $0xc,%esp
 804d983:	85 c0                	test   %eax,%eax
 804d985:	74 06                	je     0x804d98d
 804d987:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 804d98b:	eb 03                	jmp    0x804d990
 804d98d:	83 c8 ff             	or     $0xffffffff,%eax
 804d990:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804d993:	5b                   	pop    %ebx
 804d994:	5e                   	pop    %esi
 804d995:	5d                   	pop    %ebp
 804d996:	c3                   	ret    
 804d997:	90                   	nop
 804d998:	55                   	push   %ebp
 804d999:	89 e5                	mov    %esp,%ebp
 804d99b:	57                   	push   %edi
 804d99c:	56                   	push   %esi
 804d99d:	83 ec 08             	sub    $0x8,%esp
 804d9a0:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d9a3:	8b 7d 10             	mov    0x10(%ebp),%edi
 804d9a6:	85 c0                	test   %eax,%eax
 804d9a8:	7e 24                	jle    0x804d9ce
 804d9aa:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804d9ad:	01 c8                	add    %ecx,%eax
 804d9af:	8d 71 01             	lea    0x1(%ecx),%esi
 804d9b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d9b5:	eb 35                	jmp    0x804d9ec
 804d9b7:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804d9ba:	57                   	push   %edi
 804d9bb:	e8 f4 fe ff ff       	call   0x804d8b4
 804d9c0:	5a                   	pop    %edx
 804d9c1:	83 f8 ff             	cmp    $0xffffffff,%eax
 804d9c4:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804d9c7:	75 2d                	jne    0x804d9f6
 804d9c9:	f6 07 08             	testb  $0x8,(%edi)
 804d9cc:	74 2c                	je     0x804d9fa
 804d9ce:	31 c0                	xor    %eax,%eax
 804d9d0:	eb 33                	jmp    0x804da05
 804d9d2:	8b 47 10             	mov    0x10(%edi),%eax
 804d9d5:	3b 47 18             	cmp    0x18(%edi),%eax
 804d9d8:	73 dd                	jae    0x804d9b7
 804d9da:	8d 48 01             	lea    0x1(%eax),%ecx
 804d9dd:	89 f2                	mov    %esi,%edx
 804d9df:	89 4f 10             	mov    %ecx,0x10(%edi)
 804d9e2:	8a 00                	mov    (%eax),%al
 804d9e4:	88 46 ff             	mov    %al,-0x1(%esi)
 804d9e7:	3c 0a                	cmp    $0xa,%al
 804d9e9:	74 0f                	je     0x804d9fa
 804d9eb:	46                   	inc    %esi
 804d9ec:	8d 56 ff             	lea    -0x1(%esi),%edx
 804d9ef:	3b 75 f4             	cmp    -0xc(%ebp),%esi
 804d9f2:	75 de                	jne    0x804d9d2
 804d9f4:	eb 04                	jmp    0x804d9fa
 804d9f6:	89 f2                	mov    %esi,%edx
 804d9f8:	eb ea                	jmp    0x804d9e4
 804d9fa:	3b 55 08             	cmp    0x8(%ebp),%edx
 804d9fd:	76 cf                	jbe    0x804d9ce
 804d9ff:	c6 02 00             	movb   $0x0,(%edx)
 804da02:	8b 45 08             	mov    0x8(%ebp),%eax
 804da05:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804da08:	5e                   	pop    %esi
 804da09:	5f                   	pop    %edi
 804da0a:	5d                   	pop    %ebp
 804da0b:	c3                   	ret    
 804da0c:	55                   	push   %ebp
 804da0d:	89 e5                	mov    %esp,%ebp
 804da0f:	57                   	push   %edi
 804da10:	56                   	push   %esi
 804da11:	8b 75 08             	mov    0x8(%ebp),%esi
 804da14:	56                   	push   %esi
 804da15:	e8 a6 01 00 00       	call   0x804dbc0
 804da1a:	5a                   	pop    %edx
 804da1b:	89 c7                	mov    %eax,%edi
 804da1d:	ff 75 0c             	pushl  0xc(%ebp)
 804da20:	50                   	push   %eax
 804da21:	6a 01                	push   $0x1
 804da23:	56                   	push   %esi
 804da24:	e8 13 00 00 00       	call   0x804da3c
 804da29:	83 c4 10             	add    $0x10,%esp
 804da2c:	39 f8                	cmp    %edi,%eax
 804da2e:	74 03                	je     0x804da33
 804da30:	83 c8 ff             	or     $0xffffffff,%eax
 804da33:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804da36:	5e                   	pop    %esi
 804da37:	5f                   	pop    %edi
 804da38:	5d                   	pop    %ebp
 804da39:	c3                   	ret    
 804da3a:	66 90                	xchg   %ax,%ax
 804da3c:	55                   	push   %ebp
 804da3d:	89 e5                	mov    %esp,%ebp
 804da3f:	57                   	push   %edi
 804da40:	56                   	push   %esi
 804da41:	53                   	push   %ebx
 804da42:	8b 75 14             	mov    0x14(%ebp),%esi
 804da45:	e8 2d b2 ff ff       	call   0x8048c77
 804da4a:	81 c3 3e 46 00 00    	add    $0x463e,%ebx
 804da50:	8b 7d 10             	mov    0x10(%ebp),%edi
 804da53:	8b 06                	mov    (%esi),%eax
 804da55:	66 25 c0 00          	and    $0xc0,%ax
 804da59:	66 3d c0 00          	cmp    $0xc0,%ax
 804da5d:	75 0c                	jne    0x804da6b
 804da5f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804da63:	74 4e                	je     0x804dab3
 804da65:	85 ff                	test   %edi,%edi
 804da67:	75 15                	jne    0x804da7e
 804da69:	eb 48                	jmp    0x804dab3
 804da6b:	68 80 00 00 00       	push   $0x80
 804da70:	56                   	push   %esi
 804da71:	e8 16 0e 00 00       	call   0x804e88c
 804da76:	5a                   	pop    %edx
 804da77:	85 c0                	test   %eax,%eax
 804da79:	59                   	pop    %ecx
 804da7a:	74 e3                	je     0x804da5f
 804da7c:	eb 35                	jmp    0x804dab3
 804da7e:	83 c8 ff             	or     $0xffffffff,%eax
 804da81:	31 d2                	xor    %edx,%edx
 804da83:	f7 75 0c             	divl   0xc(%ebp)
 804da86:	39 c7                	cmp    %eax,%edi
 804da88:	77 18                	ja     0x804daa2
 804da8a:	0f af 7d 0c          	imul   0xc(%ebp),%edi
 804da8e:	56                   	push   %esi
 804da8f:	57                   	push   %edi
 804da90:	ff 75 08             	pushl  0x8(%ebp)
 804da93:	e8 5c 0c 00 00       	call   0x804e6f4
 804da98:	31 d2                	xor    %edx,%edx
 804da9a:	f7 75 0c             	divl   0xc(%ebp)
 804da9d:	83 c4 0c             	add    $0xc,%esp
 804daa0:	eb 13                	jmp    0x804dab5
 804daa2:	66 83 0e 08          	orw    $0x8,(%esi)
 804daa6:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804daac:	65 c7 00 16 00 00 00 	movl   $0x16,%gs:(%eax)
 804dab3:	31 c0                	xor    %eax,%eax
 804dab5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804dab8:	5b                   	pop    %ebx
 804dab9:	5e                   	pop    %esi
 804daba:	5f                   	pop    %edi
 804dabb:	5d                   	pop    %ebp
 804dabc:	c3                   	ret    
 804dabd:	66 90                	xchg   %ax,%ax
 804dabf:	90                   	nop
 804dac0:	55                   	push   %ebp
 804dac1:	89 e5                	mov    %esp,%ebp
 804dac3:	57                   	push   %edi
 804dac4:	56                   	push   %esi
 804dac5:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804dac8:	8b 75 0c             	mov    0xc(%ebp),%esi
 804dacb:	8b 45 08             	mov    0x8(%ebp),%eax
 804dace:	89 c7                	mov    %eax,%edi
 804dad0:	39 f0                	cmp    %esi,%eax
 804dad2:	74 0e                	je     0x804dae2
 804dad4:	72 09                	jb     0x804dadf
 804dad6:	8d 74 0e ff          	lea    -0x1(%esi,%ecx,1),%esi
 804dada:	8d 7c 08 ff          	lea    -0x1(%eax,%ecx,1),%edi
 804dade:	fd                   	std    
 804dadf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804dae1:	fc                   	cld    
 804dae2:	5e                   	pop    %esi
 804dae3:	5f                   	pop    %edi
 804dae4:	5d                   	pop    %ebp
 804dae5:	c3                   	ret    
 804dae6:	66 90                	xchg   %ax,%ax
 804dae8:	55                   	push   %ebp
 804dae9:	89 e5                	mov    %esp,%ebp
 804daeb:	8b 45 0c             	mov    0xc(%ebp),%eax
 804daee:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804daf1:	8d 50 01             	lea    0x1(%eax),%edx
 804daf4:	8d 41 ff             	lea    -0x1(%ecx),%eax
 804daf7:	40                   	inc    %eax
 804daf8:	4a                   	dec    %edx
 804daf9:	74 05                	je     0x804db00
 804dafb:	80 38 00             	cmpb   $0x0,(%eax)
 804dafe:	75 f7                	jne    0x804daf7
 804db00:	29 c8                	sub    %ecx,%eax
 804db02:	5d                   	pop    %ebp
 804db03:	c3                   	ret    
 804db04:	55                   	push   %ebp
 804db05:	89 e5                	mov    %esp,%ebp
 804db07:	57                   	push   %edi
 804db08:	56                   	push   %esi
 804db09:	8b 7d 0c             	mov    0xc(%ebp),%edi
 804db0c:	8b 75 08             	mov    0x8(%ebp),%esi
 804db0f:	ac                   	lods   %ds:(%esi),%al
 804db10:	ae                   	scas   %es:(%edi),%al
 804db11:	75 08                	jne    0x804db1b
 804db13:	84 c0                	test   %al,%al
 804db15:	75 f8                	jne    0x804db0f
 804db17:	31 c0                	xor    %eax,%eax
 804db19:	eb 04                	jmp    0x804db1f
 804db1b:	19 c0                	sbb    %eax,%eax
 804db1d:	0c 01                	or     $0x1,%al
 804db1f:	5e                   	pop    %esi
 804db20:	5f                   	pop    %edi
 804db21:	5d                   	pop    %ebp
 804db22:	c3                   	ret    
 804db23:	90                   	nop
 804db24:	55                   	push   %ebp
 804db25:	89 e5                	mov    %esp,%ebp
 804db27:	56                   	push   %esi
 804db28:	8b 45 0c             	mov    0xc(%ebp),%eax
 804db2b:	8b 75 08             	mov    0x8(%ebp),%esi
 804db2e:	88 c4                	mov    %al,%ah
 804db30:	ac                   	lods   %ds:(%esi),%al
 804db31:	38 e0                	cmp    %ah,%al
 804db33:	74 04                	je     0x804db39
 804db35:	84 c0                	test   %al,%al
 804db37:	75 f7                	jne    0x804db30
 804db39:	8d 46 ff             	lea    -0x1(%esi),%eax
 804db3c:	5e                   	pop    %esi
 804db3d:	5d                   	pop    %ebp
 804db3e:	c3                   	ret    
 804db3f:	90                   	nop
 804db40:	55                   	push   %ebp
 804db41:	89 e5                	mov    %esp,%ebp
 804db43:	57                   	push   %edi
 804db44:	56                   	push   %esi
 804db45:	8b 55 10             	mov    0x10(%ebp),%edx
 804db48:	8b 45 08             	mov    0x8(%ebp),%eax
 804db4b:	89 d1                	mov    %edx,%ecx
 804db4d:	89 c7                	mov    %eax,%edi
 804db4f:	c1 e9 02             	shr    $0x2,%ecx
 804db52:	8b 75 0c             	mov    0xc(%ebp),%esi
 804db55:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804db57:	89 d1                	mov    %edx,%ecx
 804db59:	83 e1 03             	and    $0x3,%ecx
 804db5c:	74 02                	je     0x804db60
 804db5e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804db60:	5e                   	pop    %esi
 804db61:	5f                   	pop    %edi
 804db62:	5d                   	pop    %ebp
 804db63:	c3                   	ret    
 804db64:	55                   	push   %ebp
 804db65:	89 e5                	mov    %esp,%ebp
 804db67:	57                   	push   %edi
 804db68:	56                   	push   %esi
 804db69:	8b 7d 0c             	mov    0xc(%ebp),%edi
 804db6c:	8b 75 08             	mov    0x8(%ebp),%esi
 804db6f:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804db72:	41                   	inc    %ecx
 804db73:	49                   	dec    %ecx
 804db74:	74 08                	je     0x804db7e
 804db76:	ac                   	lods   %ds:(%esi),%al
 804db77:	ae                   	scas   %es:(%edi),%al
 804db78:	75 08                	jne    0x804db82
 804db7a:	84 c0                	test   %al,%al
 804db7c:	75 f5                	jne    0x804db73
 804db7e:	31 c0                	xor    %eax,%eax
 804db80:	eb 04                	jmp    0x804db86
 804db82:	19 c0                	sbb    %eax,%eax
 804db84:	0c 01                	or     $0x1,%al
 804db86:	5e                   	pop    %esi
 804db87:	5f                   	pop    %edi
 804db88:	5d                   	pop    %ebp
 804db89:	c3                   	ret    
 804db8a:	66 90                	xchg   %ax,%ax
 804db8c:	55                   	push   %ebp
 804db8d:	89 e5                	mov    %esp,%ebp
 804db8f:	57                   	push   %edi
 804db90:	56                   	push   %esi
 804db91:	8b 55 08             	mov    0x8(%ebp),%edx
 804db94:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804db97:	89 d7                	mov    %edx,%edi
 804db99:	8b 45 0c             	mov    0xc(%ebp),%eax
 804db9c:	89 ce                	mov    %ecx,%esi
 804db9e:	c1 e9 02             	shr    $0x2,%ecx
 804dba1:	74 0b                	je     0x804dbae
 804dba3:	0f b6 c0             	movzbl %al,%eax
 804dba6:	69 c0 01 01 01 01    	imul   $0x1010101,%eax,%eax
 804dbac:	f3 ab                	rep stos %eax,%es:(%edi)
 804dbae:	83 e6 03             	and    $0x3,%esi
 804dbb1:	74 04                	je     0x804dbb7
 804dbb3:	aa                   	stos   %al,%es:(%edi)
 804dbb4:	4e                   	dec    %esi
 804dbb5:	75 fc                	jne    0x804dbb3
 804dbb7:	5e                   	pop    %esi
 804dbb8:	89 d0                	mov    %edx,%eax
 804dbba:	5f                   	pop    %edi
 804dbbb:	5d                   	pop    %ebp
 804dbbc:	c3                   	ret    
 804dbbd:	66 90                	xchg   %ax,%ax
 804dbbf:	90                   	nop
 804dbc0:	55                   	push   %ebp
 804dbc1:	83 c9 ff             	or     $0xffffffff,%ecx
 804dbc4:	89 e5                	mov    %esp,%ebp
 804dbc6:	31 c0                	xor    %eax,%eax
 804dbc8:	57                   	push   %edi
 804dbc9:	8b 7d 08             	mov    0x8(%ebp),%edi
 804dbcc:	f2 ae                	repnz scas %es:(%edi),%al
 804dbce:	f7 d1                	not    %ecx
 804dbd0:	8d 41 ff             	lea    -0x1(%ecx),%eax
 804dbd3:	5f                   	pop    %edi
 804dbd4:	5d                   	pop    %ebp
 804dbd5:	c3                   	ret    
 804dbd6:	66 90                	xchg   %ax,%ax
 804dbd8:	55                   	push   %ebp
 804dbd9:	89 e5                	mov    %esp,%ebp
 804dbdb:	56                   	push   %esi
 804dbdc:	8b 45 0c             	mov    0xc(%ebp),%eax
 804dbdf:	8b 75 08             	mov    0x8(%ebp),%esi
 804dbe2:	88 c4                	mov    %al,%ah
 804dbe4:	ac                   	lods   %ds:(%esi),%al
 804dbe5:	38 e0                	cmp    %ah,%al
 804dbe7:	74 09                	je     0x804dbf2
 804dbe9:	84 c0                	test   %al,%al
 804dbeb:	75 f7                	jne    0x804dbe4
 804dbed:	be 01 00 00 00       	mov    $0x1,%esi
 804dbf2:	8d 46 ff             	lea    -0x1(%esi),%eax
 804dbf5:	5e                   	pop    %esi
 804dbf6:	5d                   	pop    %ebp
 804dbf7:	c3                   	ret    
 804dbf8:	55                   	push   %ebp
 804dbf9:	89 e5                	mov    %esp,%ebp
 804dbfb:	56                   	push   %esi
 804dbfc:	31 f6                	xor    %esi,%esi
 804dbfe:	8b 45 08             	mov    0x8(%ebp),%eax
 804dc01:	0f b6 04 30          	movzbl (%eax,%esi,1),%eax
 804dc05:	84 c0                	test   %al,%al
 804dc07:	74 12                	je     0x804dc1b
 804dc09:	50                   	push   %eax
 804dc0a:	ff 75 0c             	pushl  0xc(%ebp)
 804dc0d:	e8 c6 ff ff ff       	call   0x804dbd8
 804dc12:	5a                   	pop    %edx
 804dc13:	85 c0                	test   %eax,%eax
 804dc15:	59                   	pop    %ecx
 804dc16:	75 03                	jne    0x804dc1b
 804dc18:	46                   	inc    %esi
 804dc19:	eb e3                	jmp    0x804dbfe
 804dc1b:	89 f0                	mov    %esi,%eax
 804dc1d:	8b 75 fc             	mov    -0x4(%ebp),%esi
 804dc20:	c9                   	leave  
 804dc21:	c3                   	ret    
 804dc22:	66 90                	xchg   %ax,%ax
 804dc24:	55                   	push   %ebp
 804dc25:	31 c0                	xor    %eax,%eax
 804dc27:	89 e5                	mov    %esp,%ebp
 804dc29:	56                   	push   %esi
 804dc2a:	8b 55 08             	mov    0x8(%ebp),%edx
 804dc2d:	8a 14 02             	mov    (%edx,%eax,1),%dl
 804dc30:	84 d2                	test   %dl,%dl
 804dc32:	74 13                	je     0x804dc47
 804dc34:	8b 75 0c             	mov    0xc(%ebp),%esi
 804dc37:	8a 0e                	mov    (%esi),%cl
 804dc39:	84 c9                	test   %cl,%cl
 804dc3b:	74 0a                	je     0x804dc47
 804dc3d:	38 ca                	cmp    %cl,%dl
 804dc3f:	74 03                	je     0x804dc44
 804dc41:	46                   	inc    %esi
 804dc42:	eb f3                	jmp    0x804dc37
 804dc44:	40                   	inc    %eax
 804dc45:	eb e3                	jmp    0x804dc2a
 804dc47:	5e                   	pop    %esi
 804dc48:	5d                   	pop    %ebp
 804dc49:	c3                   	ret    
 804dc4a:	66 90                	xchg   %ax,%ax
 804dc4c:	55                   	push   %ebp
 804dc4d:	89 e5                	mov    %esp,%ebp
 804dc4f:	57                   	push   %edi
 804dc50:	56                   	push   %esi
 804dc51:	53                   	push   %ebx
 804dc52:	83 ec 24             	sub    $0x24,%esp
 804dc55:	e8 1d b0 ff ff       	call   0x8048c77
 804dc5a:	81 c3 2e 44 00 00    	add    $0x442e,%ebx
 804dc60:	8b 75 08             	mov    0x8(%ebp),%esi
 804dc63:	8b 7d 0c             	mov    0xc(%ebp),%edi
 804dc66:	85 f6                	test   %esi,%esi
 804dc68:	75 0c                	jne    0x804dc76
 804dc6a:	57                   	push   %edi
 804dc6b:	e8 e8 bf ff ff       	call   0x8049c58
 804dc70:	5a                   	pop    %edx
 804dc71:	e9 e3 02 00 00       	jmp    0x804df59
 804dc76:	85 ff                	test   %edi,%edi
 804dc78:	75 09                	jne    0x804dc83
 804dc7a:	56                   	push   %esi
 804dc7b:	e8 d1 ca ff ff       	call   0x804a751
 804dc80:	58                   	pop    %eax
 804dc81:	eb 35                	jmp    0x804dcb8
 804dc83:	ff b3 d4 ff ff ff    	pushl  -0x2c(%ebx)
 804dc89:	ff b3 b4 ff ff ff    	pushl  -0x4c(%ebx)
 804dc8f:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804dc92:	50                   	push   %eax
 804dc93:	e8 04 de ff ff       	call   0x804ba9c
 804dc98:	ff b3 d4 ff ff ff    	pushl  -0x2c(%ebx)
 804dc9e:	e8 eb dd ff ff       	call   0x804ba8e
 804dca3:	83 c4 10             	add    $0x10,%esp
 804dca6:	83 ff df             	cmp    $0xffffffdf,%edi
 804dca9:	76 14                	jbe    0x804dcbf
 804dcab:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804dcb1:	65 c7 00 0c 00 00 00 	movl   $0xc,%gs:(%eax)
 804dcb8:	31 c0                	xor    %eax,%eax
 804dcba:	e9 9a 02 00 00       	jmp    0x804df59
 804dcbf:	8d 57 0b             	lea    0xb(%edi),%edx
 804dcc2:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
 804dcc9:	83 fa 0f             	cmp    $0xf,%edx
 804dccc:	76 06                	jbe    0x804dcd4
 804dcce:	83 e2 f8             	and    $0xfffffff8,%edx
 804dcd1:	89 55 dc             	mov    %edx,-0x24(%ebp)
 804dcd4:	8d 46 f8             	lea    -0x8(%esi),%eax
 804dcd7:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804dcda:	8b 46 fc             	mov    -0x4(%esi),%eax
 804dcdd:	89 c1                	mov    %eax,%ecx
 804dcdf:	83 e1 fc             	and    $0xfffffffc,%ecx
 804dce2:	a8 02                	test   $0x2,%al
 804dce4:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 804dce7:	0f 85 86 01 00 00    	jne    0x804de73
 804dced:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 804dcf0:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
 804dcf3:	0f 83 27 01 00 00    	jae    0x804de20
 804dcf9:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804dcfc:	8b 8b b0 ff ff ff    	mov    -0x50(%ebx),%ecx
 804dd02:	03 55 e0             	add    -0x20(%ebp),%edx
 804dd05:	3b 51 2c             	cmp    0x2c(%ecx),%edx
 804dd08:	8b 7a 04             	mov    0x4(%edx),%edi
 804dd0b:	75 36                	jne    0x804dd43
 804dd0d:	83 e7 fc             	and    $0xfffffffc,%edi
 804dd10:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 804dd13:	03 7d e0             	add    -0x20(%ebp),%edi
 804dd16:	83 c1 10             	add    $0x10,%ecx
 804dd19:	39 cf                	cmp    %ecx,%edi
 804dd1b:	72 68                	jb     0x804dd85
 804dd1d:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 804dd20:	83 e0 01             	and    $0x1,%eax
 804dd23:	09 c8                	or     %ecx,%eax
 804dd25:	8b 93 b0 ff ff ff    	mov    -0x50(%ebx),%edx
 804dd2b:	89 46 fc             	mov    %eax,-0x4(%esi)
 804dd2e:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804dd31:	01 c8                	add    %ecx,%eax
 804dd33:	29 cf                	sub    %ecx,%edi
 804dd35:	83 cf 01             	or     $0x1,%edi
 804dd38:	89 42 2c             	mov    %eax,0x2c(%edx)
 804dd3b:	89 78 04             	mov    %edi,0x4(%eax)
 804dd3e:	e9 07 02 00 00       	jmp    0x804df4a
 804dd43:	89 f8                	mov    %edi,%eax
 804dd45:	83 e0 fe             	and    $0xfffffffe,%eax
 804dd48:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
 804dd4d:	75 36                	jne    0x804dd85
 804dd4f:	83 e7 fc             	and    $0xfffffffc,%edi
 804dd52:	03 7d e0             	add    -0x20(%ebp),%edi
 804dd55:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 804dd58:	3b 7d dc             	cmp    -0x24(%ebp),%edi
 804dd5b:	72 28                	jb     0x804dd85
 804dd5d:	8b 4a 08             	mov    0x8(%edx),%ecx
 804dd60:	8b 42 0c             	mov    0xc(%edx),%eax
 804dd63:	8b 79 0c             	mov    0xc(%ecx),%edi
 804dd66:	39 d7                	cmp    %edx,%edi
 804dd68:	75 05                	jne    0x804dd6f
 804dd6a:	39 78 08             	cmp    %edi,0x8(%eax)
 804dd6d:	74 05                	je     0x804dd74
 804dd6f:	e8 6c cb ff ff       	call   0x804a8e0
 804dd74:	89 41 0c             	mov    %eax,0xc(%ecx)
 804dd77:	89 48 08             	mov    %ecx,0x8(%eax)
 804dd7a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804dd7d:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804dd80:	e9 9b 00 00 00       	jmp    0x804de20
 804dd85:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804dd88:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804dd8b:	83 e8 07             	sub    $0x7,%eax
 804dd8e:	50                   	push   %eax
 804dd8f:	e8 c4 be ff ff       	call   0x8049c58
 804dd94:	89 c7                	mov    %eax,%edi
 804dd96:	58                   	pop    %eax
 804dd97:	85 ff                	test   %edi,%edi
 804dd99:	0f 84 a9 01 00 00    	je     0x804df48
 804dd9f:	8d 4f f8             	lea    -0x8(%edi),%ecx
 804dda2:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804dda5:	8b 47 fc             	mov    -0x4(%edi),%eax
 804dda8:	39 ca                	cmp    %ecx,%edx
 804ddaa:	75 08                	jne    0x804ddb4
 804ddac:	83 e0 fc             	and    $0xfffffffc,%eax
 804ddaf:	01 45 e0             	add    %eax,-0x20(%ebp)
 804ddb2:	eb 6c                	jmp    0x804de20
 804ddb4:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804ddb7:	83 ea 04             	sub    $0x4,%edx
 804ddba:	89 d0                	mov    %edx,%eax
 804ddbc:	c1 e8 02             	shr    $0x2,%eax
 804ddbf:	83 f8 09             	cmp    $0x9,%eax
 804ddc2:	76 0d                	jbe    0x804ddd1
 804ddc4:	52                   	push   %edx
 804ddc5:	56                   	push   %esi
 804ddc6:	57                   	push   %edi
 804ddc7:	e8 74 fd ff ff       	call   0x804db40
 804ddcc:	83 c4 0c             	add    $0xc,%esp
 804ddcf:	eb 43                	jmp    0x804de14
 804ddd1:	8b 16                	mov    (%esi),%edx
 804ddd3:	83 f8 04             	cmp    $0x4,%eax
 804ddd6:	89 17                	mov    %edx,(%edi)
 804ddd8:	8b 56 04             	mov    0x4(%esi),%edx
 804dddb:	89 57 04             	mov    %edx,0x4(%edi)
 804ddde:	8b 56 08             	mov    0x8(%esi),%edx
 804dde1:	89 57 08             	mov    %edx,0x8(%edi)
 804dde4:	76 2e                	jbe    0x804de14
 804dde6:	8b 56 0c             	mov    0xc(%esi),%edx
 804dde9:	83 f8 06             	cmp    $0x6,%eax
 804ddec:	89 57 0c             	mov    %edx,0xc(%edi)
 804ddef:	8b 56 10             	mov    0x10(%esi),%edx
 804ddf2:	89 57 10             	mov    %edx,0x10(%edi)
 804ddf5:	76 1d                	jbe    0x804de14
 804ddf7:	8b 56 14             	mov    0x14(%esi),%edx
 804ddfa:	83 f8 09             	cmp    $0x9,%eax
 804ddfd:	89 57 14             	mov    %edx,0x14(%edi)
 804de00:	8b 56 18             	mov    0x18(%esi),%edx
 804de03:	89 57 18             	mov    %edx,0x18(%edi)
 804de06:	75 0c                	jne    0x804de14
 804de08:	8b 46 1c             	mov    0x1c(%esi),%eax
 804de0b:	89 47 1c             	mov    %eax,0x1c(%edi)
 804de0e:	8b 46 20             	mov    0x20(%esi),%eax
 804de11:	89 47 20             	mov    %eax,0x20(%edi)
 804de14:	56                   	push   %esi
 804de15:	e8 37 c9 ff ff       	call   0x804a751
 804de1a:	58                   	pop    %eax
 804de1b:	e9 24 01 00 00       	jmp    0x804df44
 804de20:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 804de23:	8b 56 fc             	mov    -0x4(%esi),%edx
 804de26:	89 c8                	mov    %ecx,%eax
 804de28:	2b 45 dc             	sub    -0x24(%ebp),%eax
 804de2b:	83 f8 0f             	cmp    $0xf,%eax
 804de2e:	77 17                	ja     0x804de47
 804de30:	83 e2 01             	and    $0x1,%edx
 804de33:	89 c8                	mov    %ecx,%eax
 804de35:	09 ca                	or     %ecx,%edx
 804de37:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 804de3a:	89 56 fc             	mov    %edx,-0x4(%esi)
 804de3d:	83 4c 01 04 01       	orl    $0x1,0x4(%ecx,%eax,1)
 804de42:	e9 03 01 00 00       	jmp    0x804df4a
 804de47:	8b 7d dc             	mov    -0x24(%ebp),%edi
 804de4a:	83 e2 01             	and    $0x1,%edx
 804de4d:	09 fa                	or     %edi,%edx
 804de4f:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 804de52:	89 56 fc             	mov    %edx,-0x4(%esi)
 804de55:	01 f9                	add    %edi,%ecx
 804de57:	89 c2                	mov    %eax,%edx
 804de59:	83 ca 01             	or     $0x1,%edx
 804de5c:	89 51 04             	mov    %edx,0x4(%ecx)
 804de5f:	83 4c 01 04 01       	orl    $0x1,0x4(%ecx,%eax,1)
 804de64:	83 c1 08             	add    $0x8,%ecx
 804de67:	51                   	push   %ecx
 804de68:	e8 e4 c8 ff ff       	call   0x804a751
 804de6d:	5f                   	pop    %edi
 804de6e:	e9 d7 00 00 00       	jmp    0x804df4a
 804de73:	8b bb b0 ff ff ff    	mov    -0x50(%ebx),%edi
 804de79:	8b 4e f8             	mov    -0x8(%esi),%ecx
 804de7c:	8b 87 5c 03 00 00    	mov    0x35c(%edi),%eax
 804de82:	48                   	dec    %eax
 804de83:	8d 54 01 04          	lea    0x4(%ecx,%eax,1),%edx
 804de87:	03 55 dc             	add    -0x24(%ebp),%edx
 804de8a:	f7 d0                	not    %eax
 804de8c:	21 c2                	and    %eax,%edx
 804de8e:	89 d0                	mov    %edx,%eax
 804de90:	29 c8                	sub    %ecx,%eax
 804de92:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804de95:	39 45 e0             	cmp    %eax,-0x20(%ebp)
 804de98:	0f 84 ac 00 00 00    	je     0x804df4a
 804de9e:	6a 01                	push   $0x1
 804dea0:	89 55 d0             	mov    %edx,-0x30(%ebp)
 804dea3:	52                   	push   %edx
 804dea4:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804dea7:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
 804deaa:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804dead:	29 ca                	sub    %ecx,%edx
 804deaf:	50                   	push   %eax
 804deb0:	89 4d d8             	mov    %ecx,-0x28(%ebp)
 804deb3:	52                   	push   %edx
 804deb4:	e8 a3 05 00 00       	call   0x804e45c
 804deb9:	83 c4 10             	add    $0x10,%esp
 804debc:	83 f8 ff             	cmp    $0xffffffff,%eax
 804debf:	74 4e                	je     0x804df0f
 804dec1:	8b 55 d0             	mov    -0x30(%ebp),%edx
 804dec4:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 804dec7:	2b 55 e0             	sub    -0x20(%ebp),%edx
 804deca:	8d 34 08             	lea    (%eax,%ecx,1),%esi
 804decd:	03 97 64 03 00 00    	add    0x364(%edi),%edx
 804ded3:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804ded6:	83 c8 02             	or     $0x2,%eax
 804ded9:	3b 97 70 03 00 00    	cmp    0x370(%edi),%edx
 804dedf:	89 46 04             	mov    %eax,0x4(%esi)
 804dee2:	89 97 64 03 00 00    	mov    %edx,0x364(%edi)
 804dee8:	76 06                	jbe    0x804def0
 804deea:	89 97 70 03 00 00    	mov    %edx,0x370(%edi)
 804def0:	8b 83 b0 ff ff ff    	mov    -0x50(%ebx),%eax
 804def6:	03 90 68 03 00 00    	add    0x368(%eax),%edx
 804defc:	3b 90 74 03 00 00    	cmp    0x374(%eax),%edx
 804df02:	76 06                	jbe    0x804df0a
 804df04:	89 90 74 03 00 00    	mov    %edx,0x374(%eax)
 804df0a:	83 c6 08             	add    $0x8,%esi
 804df0d:	eb 3b                	jmp    0x804df4a
 804df0f:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804df12:	83 c0 04             	add    $0x4,%eax
 804df15:	39 45 e0             	cmp    %eax,-0x20(%ebp)
 804df18:	73 30                	jae    0x804df4a
 804df1a:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804df1d:	83 e8 07             	sub    $0x7,%eax
 804df20:	50                   	push   %eax
 804df21:	e8 32 bd ff ff       	call   0x8049c58
 804df26:	59                   	pop    %ecx
 804df27:	89 c7                	mov    %eax,%edi
 804df29:	85 c0                	test   %eax,%eax
 804df2b:	74 1b                	je     0x804df48
 804df2d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804df30:	83 e8 08             	sub    $0x8,%eax
 804df33:	50                   	push   %eax
 804df34:	56                   	push   %esi
 804df35:	57                   	push   %edi
 804df36:	e8 05 fc ff ff       	call   0x804db40
 804df3b:	56                   	push   %esi
 804df3c:	e8 10 c8 ff ff       	call   0x804a751
 804df41:	83 c4 10             	add    $0x10,%esp
 804df44:	89 fe                	mov    %edi,%esi
 804df46:	eb 02                	jmp    0x804df4a
 804df48:	31 f6                	xor    %esi,%esi
 804df4a:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804df4d:	6a 01                	push   $0x1
 804df4f:	50                   	push   %eax
 804df50:	e8 5a db ff ff       	call   0x804baaf
 804df55:	58                   	pop    %eax
 804df56:	89 f0                	mov    %esi,%eax
 804df58:	5a                   	pop    %edx
 804df59:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804df5c:	5b                   	pop    %ebx
 804df5d:	5e                   	pop    %esi
 804df5e:	5f                   	pop    %edi
 804df5f:	5d                   	pop    %ebp
 804df60:	c3                   	ret    
 804df61:	66 90                	xchg   %ax,%ax
 804df63:	90                   	nop
 804df64:	55                   	push   %ebp
 804df65:	89 e5                	mov    %esp,%ebp
 804df67:	57                   	push   %edi
 804df68:	56                   	push   %esi
 804df69:	53                   	push   %ebx
 804df6a:	e8 08 ad ff ff       	call   0x8048c77
 804df6f:	81 c3 19 41 00 00    	add    $0x4119,%ebx
 804df75:	51                   	push   %ecx
 804df76:	8b 83 a8 ff ff ff    	mov    -0x58(%ebx),%eax
 804df7c:	8b 38                	mov    (%eax),%edi
 804df7e:	85 ff                	test   %edi,%edi
 804df80:	74 39                	je     0x804dfbb
 804df82:	ff 75 08             	pushl  0x8(%ebp)
 804df85:	e8 36 fc ff ff       	call   0x804dbc0
 804df8a:	5a                   	pop    %edx
 804df8b:	89 c1                	mov    %eax,%ecx
 804df8d:	8b 37                	mov    (%edi),%esi
 804df8f:	85 f6                	test   %esi,%esi
 804df91:	74 2a                	je     0x804dfbd
 804df93:	51                   	push   %ecx
 804df94:	56                   	push   %esi
 804df95:	ff 75 08             	pushl  0x8(%ebp)
 804df98:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 804df9b:	e8 4e 11 00 00       	call   0x804f0ee
 804dfa0:	83 c4 0c             	add    $0xc,%esp
 804dfa3:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804dfa6:	85 c0                	test   %eax,%eax
 804dfa8:	75 0c                	jne    0x804dfb6
 804dfaa:	80 3c 0e 3d          	cmpb   $0x3d,(%esi,%ecx,1)
 804dfae:	75 06                	jne    0x804dfb6
 804dfb0:	8d 74 0e 01          	lea    0x1(%esi,%ecx,1),%esi
 804dfb4:	eb 07                	jmp    0x804dfbd
 804dfb6:	83 c7 04             	add    $0x4,%edi
 804dfb9:	eb d2                	jmp    0x804df8d
 804dfbb:	31 f6                	xor    %esi,%esi
 804dfbd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804dfc0:	89 f0                	mov    %esi,%eax
 804dfc2:	5b                   	pop    %ebx
 804dfc3:	5e                   	pop    %esi
 804dfc4:	5f                   	pop    %edi
 804dfc5:	5d                   	pop    %ebp
 804dfc6:	c3                   	ret    
 804dfc7:	90                   	nop
 804dfc8:	55                   	push   %ebp
 804dfc9:	89 e5                	mov    %esp,%ebp
 804dfcb:	57                   	push   %edi
 804dfcc:	56                   	push   %esi
 804dfcd:	53                   	push   %ebx
 804dfce:	83 ec 10             	sub    $0x10,%esp
 804dfd1:	e8 a1 ac ff ff       	call   0x8048c77
 804dfd6:	81 c3 b2 40 00 00    	add    $0x40b2,%ebx
 804dfdc:	8b bb e4 ff ff ff    	mov    -0x1c(%ebx),%edi
 804dfe2:	8d 75 e4             	lea    -0x1c(%ebp),%esi
 804dfe5:	57                   	push   %edi
 804dfe6:	ff b3 b4 ff ff ff    	pushl  -0x4c(%ebx)
 804dfec:	56                   	push   %esi
 804dfed:	e8 aa da ff ff       	call   0x804ba9c
 804dff2:	57                   	push   %edi
 804dff3:	e8 96 da ff ff       	call   0x804ba8e
 804dff8:	8b 93 20 04 00 00    	mov    0x420(%ebx),%edx
 804dffe:	83 c4 10             	add    $0x10,%esp
 804e001:	89 d0                	mov    %edx,%eax
 804e003:	85 c0                	test   %eax,%eax
 804e005:	74 06                	je     0x804e00d
 804e007:	ff 75 08             	pushl  0x8(%ebp)
 804e00a:	ff d2                	call   *%edx
 804e00c:	5f                   	pop    %edi
 804e00d:	6a 01                	push   $0x1
 804e00f:	56                   	push   %esi
 804e010:	e8 9a da ff ff       	call   0x804baaf
 804e015:	e8 e2 da ff ff       	call   0x804bafc
 804e01a:	8d 83 68 74 ff ff    	lea    -0x8b98(%ebx),%eax
 804e020:	5a                   	pop    %edx
 804e021:	85 c0                	test   %eax,%eax
 804e023:	59                   	pop    %ecx
 804e024:	74 05                	je     0x804e02b
 804e026:	e8 c5 b4 ff ff       	call   0x80494f0
 804e02b:	ff 75 08             	pushl  0x8(%ebp)
 804e02e:	e8 95 e3 ff ff       	call   0x804c3c8
 804e033:	66 90                	xchg   %ax,%ax
 804e035:	66 90                	xchg   %ax,%ax
 804e037:	66 90                	xchg   %ax,%ax
 804e039:	66 90                	xchg   %ax,%ax
 804e03b:	66 90                	xchg   %ax,%ax
 804e03d:	66 90                	xchg   %ax,%ax
 804e03f:	90                   	nop
 804e040:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804e047:	00 
 804e048:	75 1d                	jne    0x804e067
 804e04a:	53                   	push   %ebx
 804e04b:	8b 54 24 10          	mov    0x10(%esp),%edx
 804e04f:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 804e053:	8b 5c 24 08          	mov    0x8(%esp),%ebx
 804e057:	b8 04 00 00 00       	mov    $0x4,%eax
 804e05c:	cd 80                	int    $0x80
 804e05e:	5b                   	pop    %ebx
 804e05f:	3d 01 f0 ff ff       	cmp    $0xfffff001,%eax
 804e064:	73 2d                	jae    0x804e093
 804e066:	c3                   	ret    
 804e067:	e8 24 d9 ff ff       	call   0x804b990
 804e06c:	50                   	push   %eax
 804e06d:	53                   	push   %ebx
 804e06e:	8b 54 24 14          	mov    0x14(%esp),%edx
 804e072:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 804e076:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
 804e07a:	b8 04 00 00 00       	mov    $0x4,%eax
 804e07f:	cd 80                	int    $0x80
 804e081:	5b                   	pop    %ebx
 804e082:	87 04 24             	xchg   %eax,(%esp)
 804e085:	e8 62 d9 ff ff       	call   0x804b9ec
 804e08a:	58                   	pop    %eax
 804e08b:	3d 01 f0 ff ff       	cmp    $0xfffff001,%eax
 804e090:	73 01                	jae    0x804e093
 804e092:	c3                   	ret    
 804e093:	e8 b6 ac ff ff       	call   0x8048d4e
 804e098:	81 c1 f0 3f 00 00    	add    $0x3ff0,%ecx
 804e09e:	c7 c1 fc ff ff ff    	mov    $0xfffffffc,%ecx
 804e0a4:	31 d2                	xor    %edx,%edx
 804e0a6:	29 c2                	sub    %eax,%edx
 804e0a8:	65 89 11             	mov    %edx,%gs:(%ecx)
 804e0ab:	83 c8 ff             	or     $0xffffffff,%eax
 804e0ae:	eb e2                	jmp    0x804e092
 804e0b0:	55                   	push   %ebp
 804e0b1:	89 e5                	mov    %esp,%ebp
 804e0b3:	57                   	push   %edi
 804e0b4:	56                   	push   %esi
 804e0b5:	53                   	push   %ebx
 804e0b6:	83 ec 28             	sub    $0x28,%esp
 804e0b9:	e8 b9 ab ff ff       	call   0x8048c77
 804e0be:	81 c3 ca 3f 00 00    	add    $0x3fca,%ebx
 804e0c4:	8b 83 d0 ff ff ff    	mov    -0x30(%ebx),%eax
 804e0ca:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804e0cd:	8b 00                	mov    (%eax),%eax
 804e0cf:	85 c0                	test   %eax,%eax
 804e0d1:	74 3a                	je     0x804e10d
 804e0d3:	8b 93 f8 ff ff ff    	mov    -0x8(%ebx),%edx
 804e0d9:	8b 12                	mov    (%edx),%edx
 804e0db:	c1 e2 05             	shl    $0x5,%edx
 804e0de:	01 c2                	add    %eax,%edx
 804e0e0:	39 d0                	cmp    %edx,%eax
 804e0e2:	73 29                	jae    0x804e10d
 804e0e4:	83 38 07             	cmpl   $0x7,(%eax)
 804e0e7:	75 1f                	jne    0x804e108
 804e0e9:	8b 78 14             	mov    0x14(%eax),%edi
 804e0ec:	8b 70 1c             	mov    0x1c(%eax),%esi
 804e0ef:	89 7d e0             	mov    %edi,-0x20(%ebp)
 804e0f2:	8b 78 10             	mov    0x10(%eax),%edi
 804e0f5:	89 7d dc             	mov    %edi,-0x24(%ebp)
 804e0f8:	8b 78 08             	mov    0x8(%eax),%edi
 804e0fb:	89 7d d8             	mov    %edi,-0x28(%ebp)
 804e0fe:	39 f1                	cmp    %esi,%ecx
 804e100:	89 cf                	mov    %ecx,%edi
 804e102:	73 22                	jae    0x804e126
 804e104:	89 f7                	mov    %esi,%edi
 804e106:	eb 1e                	jmp    0x804e126
 804e108:	83 c0 20             	add    $0x20,%eax
 804e10b:	eb d3                	jmp    0x804e0e0
 804e10d:	89 cf                	mov    %ecx,%edi
 804e10f:	31 f6                	xor    %esi,%esi
 804e111:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804e118:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 804e11f:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804e126:	8b 83 b8 ff ff ff    	mov    -0x48(%ebx),%eax
 804e12c:	31 d2                	xor    %edx,%edx
 804e12e:	8b 00                	mov    (%eax),%eax
 804e130:	8d 44 01 ff          	lea    -0x1(%ecx,%eax,1),%eax
 804e134:	03 45 e0             	add    -0x20(%ebp),%eax
 804e137:	f7 f1                	div    %ecx
 804e139:	0f af c8             	imul   %eax,%ecx
 804e13c:	8b 45 08             	mov    0x8(%ebp),%eax
 804e13f:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 804e142:	01 f8                	add    %edi,%eax
 804e144:	01 c8                	add    %ecx,%eax
 804e146:	50                   	push   %eax
 804e147:	e8 8c e0 ff ff       	call   0x804c1d8
 804e14c:	c7 83 60 07 00 00 3e 	movl   $0x3e,0x760(%ebx)
 804e153:	00 00 00 
 804e156:	8d 44 38 ff          	lea    -0x1(%eax,%edi,1),%eax
 804e15a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804e15d:	89 f8                	mov    %edi,%eax
 804e15f:	f7 d8                	neg    %eax
 804e161:	21 45 d4             	and    %eax,-0x2c(%ebp)
 804e164:	58                   	pop    %eax
 804e165:	31 c0                	xor    %eax,%eax
 804e167:	85 f6                	test   %esi,%esi
 804e169:	74 03                	je     0x804e16e
 804e16b:	8d 46 ff             	lea    -0x1(%esi),%eax
 804e16e:	03 45 e0             	add    -0x20(%ebp),%eax
 804e171:	89 f1                	mov    %esi,%ecx
 804e173:	85 f6                	test   %esi,%esi
 804e175:	75 05                	jne    0x804e17c
 804e177:	b9 01 00 00 00       	mov    $0x1,%ecx
 804e17c:	31 d2                	xor    %edx,%edx
 804e17e:	f7 f1                	div    %ecx
 804e180:	89 f2                	mov    %esi,%edx
 804e182:	85 f6                	test   %esi,%esi
 804e184:	75 05                	jne    0x804e18b
 804e186:	ba 01 00 00 00       	mov    $0x1,%edx
 804e18b:	0f af c2             	imul   %edx,%eax
 804e18e:	8b 4d d0             	mov    -0x30(%ebp),%ecx
 804e191:	29 c1                	sub    %eax,%ecx
 804e193:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804e196:	01 c8                	add    %ecx,%eax
 804e198:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804e19b:	89 83 70 07 00 00    	mov    %eax,0x770(%ebx)
 804e1a1:	31 c0                	xor    %eax,%eax
 804e1a3:	85 f6                	test   %esi,%esi
 804e1a5:	74 03                	je     0x804e1aa
 804e1a7:	8d 46 ff             	lea    -0x1(%esi),%eax
 804e1aa:	03 45 e0             	add    -0x20(%ebp),%eax
 804e1ad:	89 f1                	mov    %esi,%ecx
 804e1af:	85 f6                	test   %esi,%esi
 804e1b1:	75 05                	jne    0x804e1b8
 804e1b3:	b9 01 00 00 00       	mov    $0x1,%ecx
 804e1b8:	31 d2                	xor    %edx,%edx
 804e1ba:	f7 f1                	div    %ecx
 804e1bc:	89 f2                	mov    %esi,%edx
 804e1be:	85 f6                	test   %esi,%esi
 804e1c0:	75 05                	jne    0x804e1c7
 804e1c2:	ba 01 00 00 00       	mov    $0x1,%edx
 804e1c7:	0f af c2             	imul   %edx,%eax
 804e1ca:	ff 75 dc             	pushl  -0x24(%ebp)
 804e1cd:	ff 75 d8             	pushl  -0x28(%ebp)
 804e1d0:	ff 75 cc             	pushl  -0x34(%ebp)
 804e1d3:	89 83 4c 04 00 00    	mov    %eax,0x44c(%ebx)
 804e1d9:	c6 83 74 07 00 00 01 	movb   $0x1,0x774(%ebx)
 804e1e0:	e8 5b f9 ff ff       	call   0x804db40
 804e1e5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804e1e8:	03 45 d0             	add    -0x30(%ebp),%eax
 804e1eb:	8d 93 68 07 00 00    	lea    0x768(%ebx),%edx
 804e1f1:	89 50 04             	mov    %edx,0x4(%eax)
 804e1f4:	89 00                	mov    %eax,(%eax)
 804e1f6:	89 40 08             	mov    %eax,0x8(%eax)
 804e1f9:	8d 55 e4             	lea    -0x1c(%ebp),%edx
 804e1fc:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804e1ff:	c7 45 e4 ff ff ff ff 	movl   $0xffffffff,-0x1c(%ebp)
 804e206:	c7 45 ec ff ff 0f 00 	movl   $0xfffff,-0x14(%ebp)
 804e20d:	c7 45 f0 51 00 00 00 	movl   $0x51,-0x10(%ebp)
 804e214:	b8 f3 00 00 00       	mov    $0xf3,%eax
 804e219:	87 d3                	xchg   %edx,%ebx
 804e21b:	cd 80                	int    $0x80
 804e21d:	87 d3                	xchg   %edx,%ebx
 804e21f:	83 c4 0c             	add    $0xc,%esp
 804e222:	85 c0                	test   %eax,%eax
 804e224:	75 72                	jne    0x804e298
 804e226:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804e229:	8d 04 c5 03 00 00 00 	lea    0x3(,%eax,8),%eax
 804e230:	8e e8                	mov    %eax,%gs
 804e232:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804e235:	8d 93 58 04 00 00    	lea    0x458(%ebx),%edx
 804e23b:	89 83 40 04 00 00    	mov    %eax,0x440(%ebx)
 804e241:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804e244:	89 83 38 04 00 00    	mov    %eax,0x438(%ebx)
 804e24a:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804e24d:	89 83 3c 04 00 00    	mov    %eax,0x43c(%ebx)
 804e253:	8b 83 ac ff ff ff    	mov    -0x54(%ebx),%eax
 804e259:	89 b3 44 04 00 00    	mov    %esi,0x444(%ebx)
 804e25f:	c7 83 50 04 00 00 01 	movl   $0x1,0x450(%ebx)
 804e266:	00 00 00 
 804e269:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804e26f:	8b 83 c8 ff ff ff    	mov    -0x38(%ebx),%eax
 804e275:	c7 83 58 04 00 00 40 	movl   $0x40,0x458(%ebx)
 804e27c:	00 00 00 
 804e27f:	89 10                	mov    %edx,(%eax)
 804e281:	8d 83 24 04 00 00    	lea    0x424(%ebx),%eax
 804e287:	89 83 74 04 00 00    	mov    %eax,0x474(%ebx)
 804e28d:	31 c0                	xor    %eax,%eax
 804e28f:	85 f6                	test   %esi,%esi
 804e291:	74 0a                	je     0x804e29d
 804e293:	8d 46 ff             	lea    -0x1(%esi),%eax
 804e296:	eb 05                	jmp    0x804e29d
 804e298:	e8 43 c6 ff ff       	call   0x804a8e0
 804e29d:	03 45 e0             	add    -0x20(%ebp),%eax
 804e2a0:	89 f1                	mov    %esi,%ecx
 804e2a2:	85 f6                	test   %esi,%esi
 804e2a4:	75 05                	jne    0x804e2ab
 804e2a6:	b9 01 00 00 00       	mov    $0x1,%ecx
 804e2ab:	31 d2                	xor    %edx,%edx
 804e2ad:	f7 f1                	div    %ecx
 804e2af:	85 f6                	test   %esi,%esi
 804e2b1:	75 04                	jne    0x804e2b7
 804e2b3:	66 be 01 00          	mov    $0x1,%si
 804e2b7:	0f af f0             	imul   %eax,%esi
 804e2ba:	8b 83 b8 ff ff ff    	mov    -0x48(%ebx),%eax
 804e2c0:	03 75 08             	add    0x8(%ebp),%esi
 804e2c3:	8b 10                	mov    (%eax),%edx
 804e2c5:	8d 4c 16 0f          	lea    0xf(%esi,%edx,1),%ecx
 804e2c9:	83 e1 f0             	and    $0xfffffff0,%ecx
 804e2cc:	83 ff 10             	cmp    $0x10,%edi
 804e2cf:	89 08                	mov    %ecx,(%eax)
 804e2d1:	8b 83 98 ff ff ff    	mov    -0x68(%ebx),%eax
 804e2d7:	89 30                	mov    %esi,(%eax)
 804e2d9:	89 f8                	mov    %edi,%eax
 804e2db:	73 05                	jae    0x804e2e2
 804e2dd:	b8 10 00 00 00       	mov    $0x10,%eax
 804e2e2:	8b 93 a4 ff ff ff    	mov    -0x5c(%ebx),%edx
 804e2e8:	89 02                	mov    %eax,(%edx)
 804e2ea:	8b 83 ec ff ff ff    	mov    -0x14(%ebx),%eax
 804e2f0:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804e2f6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804e2f9:	5b                   	pop    %ebx
 804e2fa:	5e                   	pop    %esi
 804e2fb:	5f                   	pop    %edi
 804e2fc:	5d                   	pop    %ebp
 804e2fd:	c3                   	ret    
 804e2fe:	e8 4b aa ff ff       	call   0x8048d4e
 804e303:	81 c1 85 3d 00 00    	add    $0x3d85,%ecx
 804e309:	55                   	push   %ebp
 804e30a:	8b 81 ac ff ff ff    	mov    -0x54(%ecx),%eax
 804e310:	8d 91 58 04 00 00    	lea    0x458(%ecx),%edx
 804e316:	89 e5                	mov    %esp,%ebp
 804e318:	c7 81 58 04 00 00 40 	movl   $0x40,0x458(%ecx)
 804e31f:	00 00 00 
 804e322:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804e328:	8b 81 c8 ff ff ff    	mov    -0x38(%ecx),%eax
 804e32e:	89 10                	mov    %edx,(%eax)
 804e330:	8b 91 b8 ff ff ff    	mov    -0x48(%ecx),%edx
 804e336:	8b 02                	mov    (%edx),%eax
 804e338:	05 6f 04 00 00       	add    $0x46f,%eax
 804e33d:	83 e0 f0             	and    $0xfffffff0,%eax
 804e340:	89 02                	mov    %eax,(%edx)
 804e342:	8b 81 98 ff ff ff    	mov    -0x68(%ecx),%eax
 804e348:	c7 00 60 04 00 00    	movl   $0x460,(%eax)
 804e34e:	8b 81 a4 ff ff ff    	mov    -0x5c(%ecx),%eax
 804e354:	c7 00 10 00 00 00    	movl   $0x10,(%eax)
 804e35a:	8b 81 ec ff ff ff    	mov    -0x14(%ecx),%eax
 804e360:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804e366:	31 c0                	xor    %eax,%eax
 804e368:	5d                   	pop    %ebp
 804e369:	c3                   	ret    
 804e36a:	55                   	push   %ebp
 804e36b:	89 e5                	mov    %esp,%ebp
 804e36d:	53                   	push   %ebx
 804e36e:	e8 04 a9 ff ff       	call   0x8048c77
 804e373:	81 c3 15 3d 00 00    	add    $0x3d15,%ebx
 804e379:	6a 10                	push   $0x10
 804e37b:	68 60 04 00 00       	push   $0x460
 804e380:	e8 2b fd ff ff       	call   0x804e0b0
 804e385:	5a                   	pop    %edx
 804e386:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804e389:	59                   	pop    %ecx
 804e38a:	c9                   	leave  
 804e38b:	c3                   	ret    
 804e38c:	55                   	push   %ebp
 804e38d:	89 e5                	mov    %esp,%ebp
 804e38f:	56                   	push   %esi
 804e390:	65 8b 15 08 00 00 00 	mov    %gs:0x8,%edx
 804e397:	8b 45 08             	mov    0x8(%ebp),%eax
 804e39a:	2b 50 28             	sub    0x28(%eax),%edx
 804e39d:	65 8b 0d 04 00 00 00 	mov    %gs:0x4,%ecx
 804e3a4:	8b 70 2c             	mov    0x2c(%eax),%esi
 804e3a7:	8d 0c f1             	lea    (%ecx,%esi,8),%ecx
 804e3aa:	89 11                	mov    %edx,(%ecx)
 804e3ac:	c6 41 04 01          	movb   $0x1,0x4(%ecx)
 804e3b0:	8b 48 18             	mov    0x18(%eax),%ecx
 804e3b3:	8b 70 1c             	mov    0x1c(%eax),%esi
 804e3b6:	51                   	push   %ecx
 804e3b7:	29 ce                	sub    %ecx,%esi
 804e3b9:	ff 70 14             	pushl  0x14(%eax)
 804e3bc:	52                   	push   %edx
 804e3bd:	e8 e2 0c 00 00       	call   0x804f0a4
 804e3c2:	56                   	push   %esi
 804e3c3:	6a 00                	push   $0x0
 804e3c5:	50                   	push   %eax
 804e3c6:	e8 c1 f7 ff ff       	call   0x804db8c
 804e3cb:	83 c4 18             	add    $0x18,%esp
 804e3ce:	8b 75 fc             	mov    -0x4(%ebp),%esi
 804e3d1:	c9                   	leave  
 804e3d2:	c3                   	ret    
 804e3d3:	55                   	push   %ebp
 804e3d4:	89 e5                	mov    %esp,%ebp
 804e3d6:	53                   	push   %ebx
 804e3d7:	e8 9b a8 ff ff       	call   0x8048c77
 804e3dc:	81 c3 ac 3c 00 00    	add    $0x3cac,%ebx
 804e3e2:	8b 48 1c             	mov    0x1c(%eax),%ecx
 804e3e5:	8b 93 d0 ff ff ff    	mov    -0x30(%ebx),%edx
 804e3eb:	89 0a                	mov    %ecx,(%edx)
 804e3ed:	8b 50 2c             	mov    0x2c(%eax),%edx
 804e3f0:	8b 83 f8 ff ff ff    	mov    -0x8(%ebx),%eax
 804e3f6:	89 10                	mov    %edx,(%eax)
 804e3f8:	5b                   	pop    %ebx
 804e3f9:	5d                   	pop    %ebp
 804e3fa:	c3                   	ret    
 804e3fb:	90                   	nop
 804e3fc:	55                   	push   %ebp
 804e3fd:	ba 2d 00 00 00       	mov    $0x2d,%edx
 804e402:	89 e5                	mov    %esp,%ebp
 804e404:	89 d0                	mov    %edx,%eax
 804e406:	53                   	push   %ebx
 804e407:	e8 6b a8 ff ff       	call   0x8048c77
 804e40c:	81 c3 7c 3c 00 00    	add    $0x3c7c,%ebx
 804e412:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804e415:	53                   	push   %ebx
 804e416:	89 cb                	mov    %ecx,%ebx
 804e418:	cd 80                	int    $0x80
 804e41a:	5b                   	pop    %ebx
 804e41b:	89 c2                	mov    %eax,%edx
 804e41d:	89 83 60 09 00 00    	mov    %eax,0x960(%ebx)
 804e423:	31 c0                	xor    %eax,%eax
 804e425:	39 ca                	cmp    %ecx,%edx
 804e427:	73 10                	jae    0x804e439
 804e429:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804e42f:	65 c7 00 0c 00 00 00 	movl   $0xc,%gs:(%eax)
 804e436:	83 c8 ff             	or     $0xffffffff,%eax
 804e439:	5b                   	pop    %ebx
 804e43a:	5d                   	pop    %ebp
 804e43b:	c3                   	ret    
 804e43c:	e8 0d a9 ff ff       	call   0x8048d4e
 804e441:	81 c1 47 3c 00 00    	add    $0x3c47,%ecx
 804e447:	f7 d8                	neg    %eax
 804e449:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804e44f:	55                   	push   %ebp
 804e450:	89 e5                	mov    %esp,%ebp
 804e452:	65 89 02             	mov    %eax,%gs:(%edx)
 804e455:	83 c8 ff             	or     $0xffffffff,%eax
 804e458:	5d                   	pop    %ebp
 804e459:	c3                   	ret    
 804e45a:	66 90                	xchg   %ax,%ax
 804e45c:	55                   	push   %ebp
 804e45d:	89 e5                	mov    %esp,%ebp
 804e45f:	57                   	push   %edi
 804e460:	56                   	push   %esi
 804e461:	53                   	push   %ebx
 804e462:	8b 55 10             	mov    0x10(%ebp),%edx
 804e465:	e8 0d a8 ff ff       	call   0x8048c77
 804e46a:	81 c3 1e 3c 00 00    	add    $0x3c1e,%ebx
 804e470:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804e473:	8b 45 08             	mov    0x8(%ebp),%eax
 804e476:	8b 75 14             	mov    0x14(%ebp),%esi
 804e479:	8b 7d 18             	mov    0x18(%ebp),%edi
 804e47c:	53                   	push   %ebx
 804e47d:	89 c3                	mov    %eax,%ebx
 804e47f:	b8 a3 00 00 00       	mov    $0xa3,%eax
 804e484:	cd 80                	int    $0x80
 804e486:	5b                   	pop    %ebx
 804e487:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804e48c:	76 0e                	jbe    0x804e49c
 804e48e:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804e494:	f7 d8                	neg    %eax
 804e496:	65 89 02             	mov    %eax,%gs:(%edx)
 804e499:	83 c8 ff             	or     $0xffffffff,%eax
 804e49c:	5b                   	pop    %ebx
 804e49d:	5e                   	pop    %esi
 804e49e:	5f                   	pop    %edi
 804e49f:	5d                   	pop    %ebp
 804e4a0:	c3                   	ret    
 804e4a1:	66 90                	xchg   %ax,%ax
 804e4a3:	90                   	nop
 804e4a4:	55                   	push   %ebp
 804e4a5:	89 e5                	mov    %esp,%ebp
 804e4a7:	57                   	push   %edi
 804e4a8:	56                   	push   %esi
 804e4a9:	53                   	push   %ebx
 804e4aa:	83 ec 10             	sub    $0x10,%esp
 804e4ad:	e8 c5 a7 ff ff       	call   0x8048c77
 804e4b2:	81 c3 d6 3b 00 00    	add    $0x3bd6,%ebx
 804e4b8:	8b 45 10             	mov    0x10(%ebp),%eax
 804e4bb:	8b 55 10             	mov    0x10(%ebp),%edx
 804e4be:	83 c0 12             	add    $0x12,%eax
 804e4c1:	83 e0 fc             	and    $0xfffffffc,%eax
 804e4c4:	29 c4                	sub    %eax,%esp
 804e4c6:	8b 45 08             	mov    0x8(%ebp),%eax
 804e4c9:	8d 4c 24 0f          	lea    0xf(%esp),%ecx
 804e4cd:	83 e1 f0             	and    $0xfffffff0,%ecx
 804e4d0:	53                   	push   %ebx
 804e4d1:	89 c3                	mov    %eax,%ebx
 804e4d3:	b8 dc 00 00 00       	mov    $0xdc,%eax
 804e4d8:	cd 80                	int    $0x80
 804e4da:	5b                   	pop    %ebx
 804e4db:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804e4e0:	76 10                	jbe    0x804e4f2
 804e4e2:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804e4e8:	f7 d8                	neg    %eax
 804e4ea:	65 89 02             	mov    %eax,%gs:(%edx)
 804e4ed:	e9 c0 00 00 00       	jmp    0x804e5b2
 804e4f2:	83 f8 ff             	cmp    $0xffffffff,%eax
 804e4f5:	0f 84 b7 00 00 00    	je     0x804e5b2
 804e4fb:	01 c8                	add    %ecx,%eax
 804e4fd:	89 ce                	mov    %ecx,%esi
 804e4ff:	8b 7d 0c             	mov    0xc(%ebp),%edi
 804e502:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,-0x14(%ebp)
 804e509:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
 804e510:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804e513:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 804e516:	73 32                	jae    0x804e54a
 804e518:	0f b7 46 10          	movzwl 0x10(%esi),%eax
 804e51c:	83 c0 03             	add    $0x3,%eax
 804e51f:	8b 55 0c             	mov    0xc(%ebp),%edx
 804e522:	83 e0 fc             	and    $0xfffffffc,%eax
 804e525:	03 55 10             	add    0x10(%ebp),%edx
 804e528:	8d 0c 07             	lea    (%edi,%eax,1),%ecx
 804e52b:	89 4d e8             	mov    %ecx,-0x18(%ebp)
 804e52e:	39 d1                	cmp    %edx,%ecx
 804e530:	76 2e                	jbe    0x804e560
 804e532:	6a 00                	push   $0x0
 804e534:	ff 75 f0             	pushl  -0x10(%ebp)
 804e537:	ff 75 ec             	pushl  -0x14(%ebp)
 804e53a:	ff 75 08             	pushl  0x8(%ebp)
 804e53d:	e8 2e 0e 00 00       	call   0x804f370
 804e542:	83 c4 10             	add    $0x10,%esp
 804e545:	3b 7d 0c             	cmp    0xc(%ebp),%edi
 804e548:	74 07                	je     0x804e551
 804e54a:	89 f8                	mov    %edi,%eax
 804e54c:	2b 45 0c             	sub    0xc(%ebp),%eax
 804e54f:	eb 64                	jmp    0x804e5b5
 804e551:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804e557:	65 c7 00 16 00 00 00 	movl   $0x16,%gs:(%eax)
 804e55e:	eb 52                	jmp    0x804e5b2
 804e560:	8b 56 08             	mov    0x8(%esi),%edx
 804e563:	8b 4e 0c             	mov    0xc(%esi),%ecx
 804e566:	89 55 ec             	mov    %edx,-0x14(%ebp)
 804e569:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 804e56c:	8b 16                	mov    (%esi),%edx
 804e56e:	8b 4e 04             	mov    0x4(%esi),%ecx
 804e571:	89 4f 04             	mov    %ecx,0x4(%edi)
 804e574:	89 17                	mov    %edx,(%edi)
 804e576:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804e579:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804e57c:	89 57 08             	mov    %edx,0x8(%edi)
 804e57f:	89 4f 0c             	mov    %ecx,0xc(%edi)
 804e582:	66 89 47 10          	mov    %ax,0x10(%edi)
 804e586:	83 c7 13             	add    $0x13,%edi
 804e589:	8a 46 12             	mov    0x12(%esi),%al
 804e58c:	88 47 ff             	mov    %al,-0x1(%edi)
 804e58f:	0f b7 46 10          	movzwl 0x10(%esi),%eax
 804e593:	83 e8 13             	sub    $0x13,%eax
 804e596:	50                   	push   %eax
 804e597:	8d 46 13             	lea    0x13(%esi),%eax
 804e59a:	50                   	push   %eax
 804e59b:	57                   	push   %edi
 804e59c:	e8 9f f5 ff ff       	call   0x804db40
 804e5a1:	83 c4 0c             	add    $0xc,%esp
 804e5a4:	0f b7 46 10          	movzwl 0x10(%esi),%eax
 804e5a8:	8b 7d e8             	mov    -0x18(%ebp),%edi
 804e5ab:	01 c6                	add    %eax,%esi
 804e5ad:	e9 61 ff ff ff       	jmp    0x804e513
 804e5b2:	83 c8 ff             	or     $0xffffffff,%eax
 804e5b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804e5b8:	5b                   	pop    %ebx
 804e5b9:	5e                   	pop    %esi
 804e5ba:	5f                   	pop    %edi
 804e5bb:	5d                   	pop    %ebp
 804e5bc:	c3                   	ret    
 804e5bd:	66 90                	xchg   %ax,%ax
 804e5bf:	90                   	nop
 804e5c0:	55                   	push   %ebp
 804e5c1:	89 e5                	mov    %esp,%ebp
 804e5c3:	83 ec 18             	sub    $0x18,%esp
 804e5c6:	8b 45 08             	mov    0x8(%ebp),%eax
 804e5c9:	8b 55 0c             	mov    0xc(%ebp),%edx
 804e5cc:	85 c0                	test   %eax,%eax
 804e5ce:	75 05                	jne    0x804e5d5
 804e5d0:	31 d2                	xor    %edx,%edx
 804e5d2:	8d 45 f0             	lea    -0x10(%ebp),%eax
 804e5d5:	ff 75 10             	pushl  0x10(%ebp)
 804e5d8:	8d 4d e8             	lea    -0x18(%ebp),%ecx
 804e5db:	89 55 e8             	mov    %edx,-0x18(%ebp)
 804e5de:	8d 55 ec             	lea    -0x14(%ebp),%edx
 804e5e1:	6a 10                	push   $0x10
 804e5e3:	89 4d ec             	mov    %ecx,-0x14(%ebp)
 804e5e6:	6a 01                	push   $0x1
 804e5e8:	52                   	push   %edx
 804e5e9:	50                   	push   %eax
 804e5ea:	e8 25 00 00 00       	call   0x804e614
 804e5ef:	83 c4 14             	add    $0x14,%esp
 804e5f2:	85 c0                	test   %eax,%eax
 804e5f4:	75 02                	jne    0x804e5f8
 804e5f6:	b0 01                	mov    $0x1,%al
 804e5f8:	c9                   	leave  
 804e5f9:	c3                   	ret    
 804e5fa:	66 90                	xchg   %ax,%ax
 804e5fc:	55                   	push   %ebp
 804e5fd:	89 e5                	mov    %esp,%ebp
 804e5ff:	ff 75 14             	pushl  0x14(%ebp)
 804e602:	ff 75 10             	pushl  0x10(%ebp)
 804e605:	6a ff                	push   $0xffffffff
 804e607:	ff 75 0c             	pushl  0xc(%ebp)
 804e60a:	ff 75 08             	pushl  0x8(%ebp)
 804e60d:	e8 02 00 00 00       	call   0x804e614
 804e612:	c9                   	leave  
 804e613:	c3                   	ret    
 804e614:	55                   	push   %ebp
 804e615:	89 e5                	mov    %esp,%ebp
 804e617:	57                   	push   %edi
 804e618:	56                   	push   %esi
 804e619:	53                   	push   %ebx
 804e61a:	83 ec 18             	sub    $0x18,%esp
 804e61d:	e8 55 a6 ff ff       	call   0x8048c77
 804e622:	81 c3 66 3a 00 00    	add    $0x3a66,%ebx
 804e628:	8b 55 08             	mov    0x8(%ebp),%edx
 804e62b:	8b 75 10             	mov    0x10(%ebp),%esi
 804e62e:	85 d2                	test   %edx,%edx
 804e630:	8b 45 14             	mov    0x14(%ebp),%eax
 804e633:	0f 94 c1             	sete   %cl
 804e636:	bf 01 00 00 00       	mov    $0x1,%edi
 804e63b:	3b 55 0c             	cmp    0xc(%ebp),%edx
 804e63e:	75 05                	jne    0x804e645
 804e640:	31 ff                	xor    %edi,%edi
 804e642:	8d 55 e4             	lea    -0x1c(%ebp),%edx
 804e645:	84 c9                	test   %cl,%cl
 804e647:	74 08                	je     0x804e651
 804e649:	31 ff                	xor    %edi,%edi
 804e64b:	83 c8 ff             	or     $0xffffffff,%eax
 804e64e:	8d 55 e4             	lea    -0x1c(%ebp),%edx
 804e651:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804e654:	39 f0                	cmp    %esi,%eax
 804e656:	76 03                	jbe    0x804e65b
 804e658:	89 75 e0             	mov    %esi,-0x20(%ebp)
 804e65b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804e65e:	8b 75 e0             	mov    -0x20(%ebp),%esi
 804e661:	8b 08                	mov    (%eax),%ecx
 804e663:	85 f6                	test   %esi,%esi
 804e665:	74 2f                	je     0x804e696
 804e667:	8b 01                	mov    (%ecx),%eax
 804e669:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804e66c:	83 f8 7f             	cmp    $0x7f,%eax
 804e66f:	76 12                	jbe    0x804e683
 804e671:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804e677:	65 c7 00 54 00 00 00 	movl   $0x54,%gs:(%eax)
 804e67e:	83 c8 ff             	or     $0xffffffff,%eax
 804e681:	eb 24                	jmp    0x804e6a7
 804e683:	8a 45 dc             	mov    -0x24(%ebp),%al
 804e686:	88 02                	mov    %al,(%edx)
 804e688:	84 c0                	test   %al,%al
 804e68a:	74 08                	je     0x804e694
 804e68c:	83 c1 04             	add    $0x4,%ecx
 804e68f:	01 fa                	add    %edi,%edx
 804e691:	4e                   	dec    %esi
 804e692:	eb cf                	jmp    0x804e663
 804e694:	31 c9                	xor    %ecx,%ecx
 804e696:	8d 7d e4             	lea    -0x1c(%ebp),%edi
 804e699:	39 fa                	cmp    %edi,%edx
 804e69b:	74 05                	je     0x804e6a2
 804e69d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804e6a0:	89 08                	mov    %ecx,(%eax)
 804e6a2:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804e6a5:	29 f0                	sub    %esi,%eax
 804e6a7:	83 c4 18             	add    $0x18,%esp
 804e6aa:	5b                   	pop    %ebx
 804e6ab:	5e                   	pop    %esi
 804e6ac:	5f                   	pop    %edi
 804e6ad:	5d                   	pop    %ebp
 804e6ae:	c3                   	ret    
 804e6af:	90                   	nop
 804e6b0:	55                   	push   %ebp
 804e6b1:	31 c0                	xor    %eax,%eax
 804e6b3:	89 e5                	mov    %esp,%ebp
 804e6b5:	56                   	push   %esi
 804e6b6:	8b 75 08             	mov    0x8(%ebp),%esi
 804e6b9:	8b 55 10             	mov    0x10(%ebp),%edx
 804e6bc:	f6 06 04             	testb  $0x4,(%esi)
 804e6bf:	75 2b                	jne    0x804e6ec
 804e6c1:	85 d2                	test   %edx,%edx
 804e6c3:	79 05                	jns    0x804e6ca
 804e6c5:	ba ff ff ff 7f       	mov    $0x7fffffff,%edx
 804e6ca:	52                   	push   %edx
 804e6cb:	ff 75 0c             	pushl  0xc(%ebp)
 804e6ce:	ff 76 04             	pushl  0x4(%esi)
 804e6d1:	e8 4a d2 ff ff       	call   0x804b920
 804e6d6:	83 c4 0c             	add    $0xc,%esp
 804e6d9:	83 f8 00             	cmp    $0x0,%eax
 804e6dc:	7f 0e                	jg     0x804e6ec
 804e6de:	75 06                	jne    0x804e6e6
 804e6e0:	66 83 0e 04          	orw    $0x4,(%esi)
 804e6e4:	eb 06                	jmp    0x804e6ec
 804e6e6:	66 83 0e 08          	orw    $0x8,(%esi)
 804e6ea:	31 c0                	xor    %eax,%eax
 804e6ec:	8b 75 fc             	mov    -0x4(%ebp),%esi
 804e6ef:	c9                   	leave  
 804e6f0:	c3                   	ret    
 804e6f1:	66 90                	xchg   %ax,%ax
 804e6f3:	90                   	nop
 804e6f4:	55                   	push   %ebp
 804e6f5:	89 e5                	mov    %esp,%ebp
 804e6f7:	57                   	push   %edi
 804e6f8:	56                   	push   %esi
 804e6f9:	83 ec 08             	sub    $0x8,%esp
 804e6fc:	8b 75 10             	mov    0x10(%ebp),%esi
 804e6ff:	8b 45 0c             	mov    0xc(%ebp),%eax
 804e702:	8b 7d 08             	mov    0x8(%ebp),%edi
 804e705:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804e708:	66 f7 06 00 02       	testw  $0x200,(%esi)
 804e70d:	74 17                	je     0x804e726
 804e70f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e712:	89 7d 0c             	mov    %edi,0xc(%ebp)
 804e715:	89 75 08             	mov    %esi,0x8(%ebp)
 804e718:	89 45 10             	mov    %eax,0x10(%ebp)
 804e71b:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804e71e:	5e                   	pop    %esi
 804e71f:	5f                   	pop    %edi
 804e720:	5d                   	pop    %ebp
 804e721:	e9 56 e1 ff ff       	jmp    0x804c87c
 804e726:	83 7e 04 fe          	cmpl   $0xfffffffe,0x4(%esi)
 804e72a:	8b 46 10             	mov    0x10(%esi),%eax
 804e72d:	8b 4e 0c             	mov    0xc(%esi),%ecx
 804e730:	75 23                	jne    0x804e755
 804e732:	89 ca                	mov    %ecx,%edx
 804e734:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804e737:	29 c2                	sub    %eax,%edx
 804e739:	39 d1                	cmp    %edx,%ecx
 804e73b:	76 02                	jbe    0x804e73f
 804e73d:	89 d1                	mov    %edx,%ecx
 804e73f:	51                   	push   %ecx
 804e740:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 804e743:	57                   	push   %edi
 804e744:	50                   	push   %eax
 804e745:	e8 f6 f3 ff ff       	call   0x804db40
 804e74a:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804e74d:	01 4e 10             	add    %ecx,0x10(%esi)
 804e750:	83 c4 0c             	add    $0xc,%esp
 804e753:	eb 21                	jmp    0x804e776
 804e755:	29 c1                	sub    %eax,%ecx
 804e757:	39 4d f4             	cmp    %ecx,-0xc(%ebp)
 804e75a:	77 76                	ja     0x804e7d2
 804e75c:	ff 75 f4             	pushl  -0xc(%ebp)
 804e75f:	57                   	push   %edi
 804e760:	50                   	push   %eax
 804e761:	e8 da f3 ff ff       	call   0x804db40
 804e766:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e769:	01 46 10             	add    %eax,0x10(%esi)
 804e76c:	83 c4 0c             	add    $0xc,%esp
 804e76f:	66 f7 06 00 01       	testw  $0x100,(%esi)
 804e774:	75 05                	jne    0x804e77b
 804e776:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e779:	eb 71                	jmp    0x804e7ec
 804e77b:	ff 75 f4             	pushl  -0xc(%ebp)
 804e77e:	6a 0a                	push   $0xa
 804e780:	57                   	push   %edi
 804e781:	e8 86 08 00 00       	call   0x804f00c
 804e786:	83 c4 0c             	add    $0xc,%esp
 804e789:	85 c0                	test   %eax,%eax
 804e78b:	74 e9                	je     0x804e776
 804e78d:	56                   	push   %esi
 804e78e:	e8 79 ae ff ff       	call   0x804960c
 804e793:	59                   	pop    %ecx
 804e794:	85 c0                	test   %eax,%eax
 804e796:	74 de                	je     0x804e776
 804e798:	89 c2                	mov    %eax,%edx
 804e79a:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804e79d:	76 03                	jbe    0x804e7a2
 804e79f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804e7a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e7a5:	89 d1                	mov    %edx,%ecx
 804e7a7:	29 d0                	sub    %edx,%eax
 804e7a9:	01 c7                	add    %eax,%edi
 804e7ab:	89 7d f0             	mov    %edi,-0x10(%ebp)
 804e7ae:	e3 09                	jecxz  0x804e7b9
 804e7b0:	b0 0a                	mov    $0xa,%al
 804e7b2:	f2 ae                	repnz scas %es:(%edi),%al
 804e7b4:	8d 7f ff             	lea    -0x1(%edi),%edi
 804e7b7:	74 02                	je     0x804e7bb
 804e7b9:	31 ff                	xor    %edi,%edi
 804e7bb:	85 ff                	test   %edi,%edi
 804e7bd:	74 b7                	je     0x804e776
 804e7bf:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804e7c2:	01 d0                	add    %edx,%eax
 804e7c4:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804e7c7:	29 f8                	sub    %edi,%eax
 804e7c9:	29 c2                	sub    %eax,%edx
 804e7cb:	29 46 10             	sub    %eax,0x10(%esi)
 804e7ce:	89 d0                	mov    %edx,%eax
 804e7d0:	eb 1a                	jmp    0x804e7ec
 804e7d2:	39 46 08             	cmp    %eax,0x8(%esi)
 804e7d5:	0f 84 34 ff ff ff    	je     0x804e70f
 804e7db:	56                   	push   %esi
 804e7dc:	e8 2b ae ff ff       	call   0x804960c
 804e7e1:	5a                   	pop    %edx
 804e7e2:	85 c0                	test   %eax,%eax
 804e7e4:	0f 84 25 ff ff ff    	je     0x804e70f
 804e7ea:	31 c0                	xor    %eax,%eax
 804e7ec:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804e7ef:	5e                   	pop    %esi
 804e7f0:	5f                   	pop    %edi
 804e7f1:	5d                   	pop    %ebp
 804e7f2:	c3                   	ret    
 804e7f3:	90                   	nop
 804e7f4:	55                   	push   %ebp
 804e7f5:	89 e5                	mov    %esp,%ebp
 804e7f7:	56                   	push   %esi
 804e7f8:	8b 75 08             	mov    0x8(%ebp),%esi
 804e7fb:	8b 56 08             	mov    0x8(%esi),%edx
 804e7fe:	8b 46 0c             	mov    0xc(%esi),%eax
 804e801:	29 d0                	sub    %edx,%eax
 804e803:	50                   	push   %eax
 804e804:	52                   	push   %edx
 804e805:	56                   	push   %esi
 804e806:	e8 a5 fe ff ff       	call   0x804e6b0
 804e80b:	8b 56 08             	mov    0x8(%esi),%edx
 804e80e:	89 56 10             	mov    %edx,0x10(%esi)
 804e811:	01 c2                	add    %eax,%edx
 804e813:	89 56 14             	mov    %edx,0x14(%esi)
 804e816:	8b 75 fc             	mov    -0x4(%ebp),%esi
 804e819:	c9                   	leave  
 804e81a:	c3                   	ret    
 804e81b:	90                   	nop
 804e81c:	55                   	push   %ebp
 804e81d:	89 e5                	mov    %esp,%ebp
 804e81f:	56                   	push   %esi
 804e820:	53                   	push   %ebx
 804e821:	e8 51 a4 ff ff       	call   0x8048c77
 804e826:	81 c3 62 38 00 00    	add    $0x3862,%ebx
 804e82c:	8b 75 08             	mov    0x8(%ebp),%esi
 804e82f:	8b 55 0c             	mov    0xc(%ebp),%edx
 804e832:	8b 06                	mov    (%esi),%eax
 804e834:	0f b7 c8             	movzwl %ax,%ecx
 804e837:	85 ca                	test   %ecx,%edx
 804e839:	75 1a                	jne    0x804e855
 804e83b:	66 a9 80 08          	test   $0x880,%ax
 804e83f:	74 0f                	je     0x804e850
 804e841:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804e847:	65 c7 00 09 00 00 00 	movl   $0x9,%gs:(%eax)
 804e84e:	eb 0d                	jmp    0x804e85d
 804e850:	09 d0                	or     %edx,%eax
 804e852:	66 89 06             	mov    %ax,(%esi)
 804e855:	8b 06                	mov    (%esi),%eax
 804e857:	a8 10                	test   $0x10,%al
 804e859:	74 0b                	je     0x804e866
 804e85b:	eb e4                	jmp    0x804e841
 804e85d:	66 83 0e 08          	orw    $0x8,(%esi)
 804e861:	83 c8 ff             	or     $0xffffffff,%eax
 804e864:	eb 1f                	jmp    0x804e885
 804e866:	a8 40                	test   $0x40,%al
 804e868:	74 15                	je     0x804e87f
 804e86a:	56                   	push   %esi
 804e86b:	e8 9c ad ff ff       	call   0x804960c
 804e870:	5a                   	pop    %edx
 804e871:	85 c0                	test   %eax,%eax
 804e873:	75 e8                	jne    0x804e85d
 804e875:	66 83 26 bf          	andw   $0xffbf,(%esi)
 804e879:	8b 46 08             	mov    0x8(%esi),%eax
 804e87c:	89 46 1c             	mov    %eax,0x1c(%esi)
 804e87f:	66 83 0e 01          	orw    $0x1,(%esi)
 804e883:	31 c0                	xor    %eax,%eax
 804e885:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804e888:	5b                   	pop    %ebx
 804e889:	5e                   	pop    %esi
 804e88a:	5d                   	pop    %ebp
 804e88b:	c3                   	ret    
 804e88c:	55                   	push   %ebp
 804e88d:	89 e5                	mov    %esp,%ebp
 804e88f:	56                   	push   %esi
 804e890:	53                   	push   %ebx
 804e891:	e8 e1 a3 ff ff       	call   0x8048c77
 804e896:	81 c3 f2 37 00 00    	add    $0x37f2,%ebx
 804e89c:	8b 75 08             	mov    0x8(%ebp),%esi
 804e89f:	8b 55 0c             	mov    0xc(%ebp),%edx
 804e8a2:	8b 06                	mov    (%esi),%eax
 804e8a4:	0f b7 c8             	movzwl %ax,%ecx
 804e8a7:	85 ca                	test   %ecx,%edx
 804e8a9:	75 1a                	jne    0x804e8c5
 804e8ab:	66 a9 80 08          	test   $0x880,%ax
 804e8af:	74 0f                	je     0x804e8c0
 804e8b1:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804e8b7:	65 c7 00 09 00 00 00 	movl   $0x9,%gs:(%eax)
 804e8be:	eb 38                	jmp    0x804e8f8
 804e8c0:	09 d0                	or     %edx,%eax
 804e8c2:	66 89 06             	mov    %ax,(%esi)
 804e8c5:	8b 06                	mov    (%esi),%eax
 804e8c7:	a8 20                	test   $0x20,%al
 804e8c9:	75 e6                	jne    0x804e8b1
 804e8cb:	a8 03                	test   $0x3,%al
 804e8cd:	74 46                	je     0x804e915
 804e8cf:	a8 04                	test   $0x4,%al
 804e8d1:	75 32                	jne    0x804e905
 804e8d3:	8b 4e 10             	mov    0x10(%esi),%ecx
 804e8d6:	39 4e 14             	cmp    %ecx,0x14(%esi)
 804e8d9:	74 26                	je     0x804e901
 804e8db:	66 25 00 04          	and    $0x400,%ax
 804e8df:	66 83 f8 01          	cmp    $0x1,%ax
 804e8e3:	19 c0                	sbb    %eax,%eax
 804e8e5:	83 c0 02             	add    $0x2,%eax
 804e8e8:	50                   	push   %eax
 804e8e9:	6a 00                	push   $0x0
 804e8eb:	56                   	push   %esi
 804e8ec:	e8 e7 0a 00 00       	call   0x804f3d8
 804e8f1:	83 c4 0c             	add    $0xc,%esp
 804e8f4:	85 c0                	test   %eax,%eax
 804e8f6:	74 0d                	je     0x804e905
 804e8f8:	66 83 0e 08          	orw    $0x8,(%esi)
 804e8fc:	83 c8 ff             	or     $0xffffffff,%eax
 804e8ff:	eb 2b                	jmp    0x804e92c
 804e901:	a8 02                	test   $0x2,%al
 804e903:	75 d6                	jne    0x804e8db
 804e905:	66 83 26 fc          	andw   $0xfffc,(%esi)
 804e909:	8b 46 08             	mov    0x8(%esi),%eax
 804e90c:	89 46 18             	mov    %eax,0x18(%esi)
 804e90f:	89 46 10             	mov    %eax,0x10(%esi)
 804e912:	89 46 14             	mov    %eax,0x14(%esi)
 804e915:	8b 16                	mov    (%esi),%edx
 804e917:	89 d0                	mov    %edx,%eax
 804e919:	83 c8 40             	or     $0x40,%eax
 804e91c:	66 89 06             	mov    %ax,(%esi)
 804e91f:	31 c0                	xor    %eax,%eax
 804e921:	80 e6 0b             	and    $0xb,%dh
 804e924:	75 06                	jne    0x804e92c
 804e926:	8b 56 0c             	mov    0xc(%esi),%edx
 804e929:	89 56 1c             	mov    %edx,0x1c(%esi)
 804e92c:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804e92f:	5b                   	pop    %ebx
 804e930:	5e                   	pop    %esi
 804e931:	5d                   	pop    %ebp
 804e932:	c3                   	ret    
 804e933:	90                   	nop
 804e934:	55                   	push   %ebp
 804e935:	89 e5                	mov    %esp,%ebp
 804e937:	51                   	push   %ecx
 804e938:	8d 4d 08             	lea    0x8(%ebp),%ecx
 804e93b:	8b 11                	mov    (%ecx),%edx
 804e93d:	8b 41 04             	mov    0x4(%ecx),%eax
 804e940:	83 79 08 00          	cmpl   $0x0,0x8(%ecx)
 804e944:	78 2a                	js     0x804e970
 804e946:	f6 c6 08             	test   $0x8,%dh
 804e949:	74 07                	je     0x804e952
 804e94b:	8b 50 04             	mov    0x4(%eax),%edx
 804e94e:	8b 00                	mov    (%eax),%eax
 804e950:	eb 3c                	jmp    0x804e98e
 804e952:	8b 00                	mov    (%eax),%eax
 804e954:	81 fa 00 01 00 00    	cmp    $0x100,%edx
 804e95a:	75 05                	jne    0x804e961
 804e95c:	0f b6 c0             	movzbl %al,%eax
 804e95f:	eb 0b                	jmp    0x804e96c
 804e961:	81 fa 00 02 00 00    	cmp    $0x200,%edx
 804e967:	75 03                	jne    0x804e96c
 804e969:	0f b7 c0             	movzwl %ax,%eax
 804e96c:	31 d2                	xor    %edx,%edx
 804e96e:	eb 1e                	jmp    0x804e98e
 804e970:	f6 c6 08             	test   $0x8,%dh
 804e973:	75 d6                	jne    0x804e94b
 804e975:	8b 00                	mov    (%eax),%eax
 804e977:	81 fa 00 01 00 00    	cmp    $0x100,%edx
 804e97d:	75 05                	jne    0x804e984
 804e97f:	0f be c0             	movsbl %al,%eax
 804e982:	eb 09                	jmp    0x804e98d
 804e984:	81 fa 00 02 00 00    	cmp    $0x200,%edx
 804e98a:	75 01                	jne    0x804e98d
 804e98c:	98                   	cwtl   
 804e98d:	99                   	cltd   
 804e98e:	59                   	pop    %ecx
 804e98f:	5d                   	pop    %ebp
 804e990:	c3                   	ret    
 804e991:	66 90                	xchg   %ax,%ax
 804e993:	90                   	nop
 804e994:	55                   	push   %ebp
 804e995:	89 e5                	mov    %esp,%ebp
 804e997:	56                   	push   %esi
 804e998:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804e99b:	8b 45 08             	mov    0x8(%ebp),%eax
 804e99e:	8b 55 10             	mov    0x10(%ebp),%edx
 804e9a1:	8b 75 14             	mov    0x14(%ebp),%esi
 804e9a4:	81 f9 00 01 00 00    	cmp    $0x100,%ecx
 804e9aa:	75 04                	jne    0x804e9b0
 804e9ac:	88 10                	mov    %dl,(%eax)
 804e9ae:	eb 1e                	jmp    0x804e9ce
 804e9b0:	81 f9 00 08 00 00    	cmp    $0x800,%ecx
 804e9b6:	75 07                	jne    0x804e9bf
 804e9b8:	89 10                	mov    %edx,(%eax)
 804e9ba:	89 70 04             	mov    %esi,0x4(%eax)
 804e9bd:	eb 0f                	jmp    0x804e9ce
 804e9bf:	81 f9 00 02 00 00    	cmp    $0x200,%ecx
 804e9c5:	75 05                	jne    0x804e9cc
 804e9c7:	66 89 10             	mov    %dx,(%eax)
 804e9ca:	eb 02                	jmp    0x804e9ce
 804e9cc:	89 10                	mov    %edx,(%eax)
 804e9ce:	5e                   	pop    %esi
 804e9cf:	5d                   	pop    %ebp
 804e9d0:	c3                   	ret    
 804e9d1:	66 90                	xchg   %ax,%ax
 804e9d3:	90                   	nop
 804e9d4:	55                   	push   %ebp
 804e9d5:	89 e5                	mov    %esp,%ebp
 804e9d7:	57                   	push   %edi
 804e9d8:	56                   	push   %esi
 804e9d9:	53                   	push   %ebx
 804e9da:	81 ec bc 00 00 00    	sub    $0xbc,%esp
 804e9e0:	e8 92 a2 ff ff       	call   0x8048c77
 804e9e5:	81 c3 a3 36 00 00    	add    $0x36a3,%ebx
 804e9eb:	8b 45 18             	mov    0x18(%ebp),%eax
 804e9ee:	c6 85 66 ff ff ff 65 	movb   $0x65,-0x9a(%ebp)
 804e9f5:	db 6d 0c             	fldt   0xc(%ebp)
 804e9f8:	8b 40 04             	mov    0x4(%eax),%eax
 804e9fb:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
 804ea01:	8b 45 18             	mov    0x18(%ebp),%eax
 804ea04:	8b 00                	mov    (%eax),%eax
 804ea06:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
 804ea0c:	8b 45 18             	mov    0x18(%ebp),%eax
 804ea0f:	8b 40 08             	mov    0x8(%eax),%eax
 804ea12:	88 c2                	mov    %al,%dl
 804ea14:	88 85 4c ff ff ff    	mov    %al,-0xb4(%ebp)
 804ea1a:	83 ca 20             	or     $0x20,%edx
 804ea1d:	80 fa 61             	cmp    $0x61,%dl
 804ea20:	75 09                	jne    0x804ea2b
 804ea22:	83 c0 06             	add    $0x6,%eax
 804ea25:	88 85 4c ff ff ff    	mov    %al,-0xb4(%ebp)
 804ea2b:	83 bd 50 ff ff ff 00 	cmpl   $0x0,-0xb0(%ebp)
 804ea32:	79 0a                	jns    0x804ea3e
 804ea34:	c7 85 50 ff ff ff 06 	movl   $0x6,-0xb0(%ebp)
 804ea3b:	00 00 00 
 804ea3e:	8b 45 18             	mov    0x18(%ebp),%eax
 804ea41:	c6 85 60 ff ff ff 00 	movb   $0x0,-0xa0(%ebp)
 804ea48:	8b 40 0c             	mov    0xc(%eax),%eax
 804ea4b:	a8 02                	test   $0x2,%al
 804ea4d:	74 09                	je     0x804ea58
 804ea4f:	c6 85 60 ff ff ff 2b 	movb   $0x2b,-0xa0(%ebp)
 804ea56:	eb 0b                	jmp    0x804ea63
 804ea58:	a8 01                	test   $0x1,%al
 804ea5a:	74 07                	je     0x804ea63
 804ea5c:	c6 85 60 ff ff ff 20 	movb   $0x20,-0xa0(%ebp)
 804ea63:	dd e0                	fucom  %st(0)
 804ea65:	df e0                	fnstsw %ax
 804ea67:	c6 85 61 ff ff ff 00 	movb   $0x0,-0x9f(%ebp)
 804ea6e:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
 804ea75:	9e                   	sahf   
 804ea76:	7a 0f                	jp     0x804ea87
 804ea78:	d9 ee                	fldz   
 804ea7a:	d9 c9                	fxch   %st(1)
 804ea7c:	dd e1                	fucom  %st(1)
 804ea7e:	df e0                	fnstsw %ax
 804ea80:	9e                   	sahf   
 804ea81:	d9 c1                	fld    %st(1)
 804ea83:	7a 30                	jp     0x804eab5
 804ea85:	eb 0b                	jmp    0x804ea92
 804ea87:	dd d8                	fstp   %st(0)
 804ea89:	c7 45 a8 08 00 00 00 	movl   $0x8,-0x58(%ebp)
 804ea90:	eb 54                	jmp    0x804eae6
 804ea92:	75 27                	jne    0x804eabb
 804ea94:	dd d8                	fstp   %st(0)
 804ea96:	d9 e8                	fld1   
 804ea98:	d8 f1                	fdiv   %st(1),%st
 804ea9a:	d9 ca                	fxch   %st(2)
 804ea9c:	dd ea                	fucomp %st(2)
 804ea9e:	df e0                	fnstsw %ax
 804eaa0:	dd d9                	fstp   %st(1)
 804eaa2:	9e                   	sahf   
 804eaa3:	0f 86 f6 00 00 00    	jbe    0x804eb9f
 804eaa9:	c6 85 60 ff ff ff 2d 	movb   $0x2d,-0xa0(%ebp)
 804eab0:	e9 ea 00 00 00       	jmp    0x804eb9f
 804eab5:	dd da                	fstp   %st(2)
 804eab7:	d9 c9                	fxch   %st(1)
 804eab9:	eb 04                	jmp    0x804eabf
 804eabb:	dd da                	fstp   %st(2)
 804eabd:	d9 c9                	fxch   %st(1)
 804eabf:	dd e9                	fucomp %st(1)
 804eac1:	df e0                	fnstsw %ax
 804eac3:	9e                   	sahf   
 804eac4:	76 09                	jbe    0x804eacf
 804eac6:	c6 85 60 ff ff ff 2d 	movb   $0x2d,-0xa0(%ebp)
 804eacd:	d9 e0                	fchs   
 804eacf:	d9 c0                	fld    %st(0)
 804ead1:	d8 8b 48 ee ff ff    	fmuls  -0x11b8(%ebx)
 804ead7:	d9 c9                	fxch   %st(1)
 804ead9:	dd e1                	fucom  %st(1)
 804eadb:	df e0                	fnstsw %ax
 804eadd:	dd d9                	fstp   %st(1)
 804eadf:	9e                   	sahf   
 804eae0:	7a 3a                	jp     0x804eb1c
 804eae2:	75 38                	jne    0x804eb1c
 804eae4:	dd d8                	fstp   %st(0)
 804eae6:	8b 45 18             	mov    0x18(%ebp),%eax
 804eae9:	c7 45 a0 70 00 00 00 	movl   $0x70,-0x60(%ebp)
 804eaf0:	c7 45 a4 03 00 00 00 	movl   $0x3,-0x5c(%ebp)
 804eaf7:	c7 40 10 20 00 00 00 	movl   $0x20,0x10(%eax)
 804eafe:	80 bd 4c ff ff ff 60 	cmpb   $0x60,-0xb4(%ebp)
 804eb05:	77 04                	ja     0x804eb0b
 804eb07:	83 45 a8 04          	addl   $0x4,-0x58(%ebp)
 804eb0b:	8d 83 34 ee ff ff    	lea    -0x11cc(%ebx),%eax
 804eb11:	8d 75 ac             	lea    -0x54(%ebp),%esi
 804eb14:	01 45 a8             	add    %eax,-0x58(%ebp)
 804eb17:	e9 1c 04 00 00       	jmp    0x804ef38
 804eb1c:	d9 c0                	fld    %st(0)
 804eb1e:	31 d2                	xor    %edx,%edx
 804eb20:	b9 00 10 00 00       	mov    $0x1000,%ecx
 804eb25:	bf 08 00 00 00       	mov    $0x8,%edi
 804eb2a:	d9 83 4c ee ff ff    	flds   -0x11b4(%ebx)
 804eb30:	eb 02                	jmp    0x804eb34
 804eb32:	d9 c9                	fxch   %st(1)
 804eb34:	dd e2                	fucom  %st(2)
 804eb36:	df e0                	fnstsw %ax
 804eb38:	9e                   	sahf   
 804eb39:	db ac 1a 28 ee ff ff 	fldt   -0x11d8(%edx,%ebx,1)
 804eb40:	76 17                	jbe    0x804eb59
 804eb42:	d8 ca                	fmul   %st(2),%st
 804eb44:	d9 83 50 ee ff ff    	flds   -0x11b0(%ebx)
 804eb4a:	dd e9                	fucomp %st(1)
 804eb4c:	df e0                	fnstsw %ax
 804eb4e:	9e                   	sahf   
 804eb4f:	76 19                	jbe    0x804eb6a
 804eb51:	dd da                	fstp   %st(2)
 804eb53:	d9 c9                	fxch   %st(1)
 804eb55:	29 cf                	sub    %ecx,%edi
 804eb57:	eb 0f                	jmp    0x804eb68
 804eb59:	d8 fa                	fdivr  %st(2),%st
 804eb5b:	dd e1                	fucom  %st(1)
 804eb5d:	df e0                	fnstsw %ax
 804eb5f:	9e                   	sahf   
 804eb60:	72 0e                	jb     0x804eb70
 804eb62:	dd da                	fstp   %st(2)
 804eb64:	d9 c9                	fxch   %st(1)
 804eb66:	01 cf                	add    %ecx,%edi
 804eb68:	eb 0a                	jmp    0x804eb74
 804eb6a:	dd d8                	fstp   %st(0)
 804eb6c:	d9 c9                	fxch   %st(1)
 804eb6e:	eb 04                	jmp    0x804eb74
 804eb70:	dd d8                	fstp   %st(0)
 804eb72:	d9 c9                	fxch   %st(1)
 804eb74:	d1 f9                	sar    %ecx
 804eb76:	83 ea 0c             	sub    $0xc,%edx
 804eb79:	81 fa 64 ff ff ff    	cmp    $0xffffff64,%edx
 804eb7f:	75 b1                	jne    0x804eb32
 804eb81:	dd d9                	fstp   %st(1)
 804eb83:	dd d9                	fstp   %st(1)
 804eb85:	d9 83 50 ee ff ff    	flds   -0x11b0(%ebx)
 804eb8b:	d9 c9                	fxch   %st(1)
 804eb8d:	dd e1                	fucom  %st(1)
 804eb8f:	df e0                	fnstsw %ax
 804eb91:	dd d9                	fstp   %st(1)
 804eb93:	9e                   	sahf   
 804eb94:	72 0c                	jb     0x804eba2
 804eb96:	d8 b3 54 ee ff ff    	fdivs  -0x11ac(%ebx)
 804eb9c:	47                   	inc    %edi
 804eb9d:	eb 03                	jmp    0x804eba2
 804eb9f:	83 cf ff             	or     $0xffffffff,%edi
 804eba2:	8d 45 93             	lea    -0x6d(%ebp),%eax
 804eba5:	d9 bd 5e ff ff ff    	fnstcw -0xa2(%ebp)
 804ebab:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804ebb1:	66 8b 85 5e ff ff ff 	mov    -0xa2(%ebp),%ax
 804ebb8:	80 cc 0c             	or     $0xc,%ah
 804ebbb:	8d 8d 78 ff ff ff    	lea    -0x88(%ebp),%ecx
 804ebc1:	d9 83 50 ee ff ff    	flds   -0x11b0(%ebx)
 804ebc7:	d9 c9                	fxch   %st(1)
 804ebc9:	66 89 85 5c ff ff ff 	mov    %ax,-0xa4(%ebp)
 804ebd0:	d9 c0                	fld    %st(0)
 804ebd2:	d9 ad 5c ff ff ff    	fldcw  -0xa4(%ebp)
 804ebd8:	df bd 54 ff ff ff    	fistpll -0xac(%ebp)
 804ebde:	d9 ad 5e ff ff ff    	fldcw  -0xa2(%ebp)
 804ebe4:	c7 85 48 ff ff ff 00 	movl   $0x0,-0xb8(%ebp)
 804ebeb:	00 00 00 
 804ebee:	8d 71 09             	lea    0x9(%ecx),%esi
 804ebf1:	89 b5 3c ff ff ff    	mov    %esi,-0xc4(%ebp)
 804ebf7:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 804ebfd:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804ec03:	df ad 44 ff ff ff    	fildll -0xbc(%ebp)
 804ec09:	de e9                	fsubrp %st,%st(1)
 804ec0b:	c7 85 44 ff ff ff 09 	movl   $0x9,-0xbc(%ebp)
 804ec12:	00 00 00 
 804ec15:	d8 c9                	fmul   %st(1),%st
 804ec17:	be 0a 00 00 00       	mov    $0xa,%esi
 804ec1c:	31 d2                	xor    %edx,%edx
 804ec1e:	f7 f6                	div    %esi
 804ec20:	83 c2 30             	add    $0x30,%edx
 804ec23:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
 804ec29:	ff 8d 44 ff ff ff    	decl   -0xbc(%ebp)
 804ec2f:	88 54 31 ff          	mov    %dl,-0x1(%ecx,%esi,1)
 804ec33:	75 e2                	jne    0x804ec17
 804ec35:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
 804ec3b:	8b 8d 3c ff ff ff    	mov    -0xc4(%ebp),%ecx
 804ec41:	39 c1                	cmp    %eax,%ecx
 804ec43:	75 8b                	jne    0x804ebd0
 804ec45:	dd d8                	fstp   %st(0)
 804ec47:	dd d8                	fstp   %st(0)
 804ec49:	80 bd 4c ff ff ff 60 	cmpb   $0x60,-0xb4(%ebp)
 804ec50:	77 0e                	ja     0x804ec60
 804ec52:	80 85 4c ff ff ff 20 	addb   $0x20,-0xb4(%ebp)
 804ec59:	c6 85 66 ff ff ff 45 	movb   $0x45,-0x9a(%ebp)
 804ec60:	80 bd 4c ff ff ff 67 	cmpb   $0x67,-0xb4(%ebp)
 804ec67:	0f 94 85 44 ff ff ff 	sete   -0xbc(%ebp)
 804ec6e:	75 18                	jne    0x804ec88
 804ec70:	83 bd 50 ff ff ff 00 	cmpl   $0x0,-0xb0(%ebp)
 804ec77:	7e 0f                	jle    0x804ec88
 804ec79:	8b 8d 50 ff ff ff    	mov    -0xb0(%ebp),%ecx
 804ec7f:	49                   	dec    %ecx
 804ec80:	89 8d 50 ff ff ff    	mov    %ecx,-0xb0(%ebp)
 804ec86:	eb 30                	jmp    0x804ecb8
 804ec88:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 804ec8e:	89 c1                	mov    %eax,%ecx
 804ec90:	80 bd 4c ff ff ff 66 	cmpb   $0x66,-0xb4(%ebp)
 804ec97:	75 1f                	jne    0x804ecb8
 804ec99:	8d 0c 38             	lea    (%eax,%edi,1),%ecx
 804ec9c:	83 f9 ff             	cmp    $0xffffffff,%ecx
 804ec9f:	7d 17                	jge    0x804ecb8
 804eca1:	8d bd 76 ff ff ff    	lea    -0x8a(%ebp),%edi
 804eca7:	b8 30 30 30 30       	mov    $0x30303030,%eax
 804ecac:	ab                   	stos   %eax,%es:(%edi)
 804ecad:	ab                   	stos   %eax,%es:(%edi)
 804ecae:	ab                   	stos   %eax,%es:(%edi)
 804ecaf:	ab                   	stos   %eax,%es:(%edi)
 804ecb0:	ab                   	stos   %eax,%es:(%edi)
 804ecb1:	aa                   	stos   %al,%es:(%edi)
 804ecb2:	83 cf ff             	or     $0xffffffff,%edi
 804ecb5:	83 c9 ff             	or     $0xffffffff,%ecx
 804ecb8:	c6 85 76 ff ff ff 00 	movb   $0x0,-0x8a(%ebp)
 804ecbf:	c6 85 77 ff ff ff 30 	movb   $0x30,-0x89(%ebp)
 804ecc6:	83 f9 14             	cmp    $0x14,%ecx
 804ecc9:	7f 13                	jg     0x804ecde
 804eccb:	8d 84 0d 79 ff ff ff 	lea    -0x87(%ebp,%ecx,1),%eax
 804ecd2:	31 d2                	xor    %edx,%edx
 804ecd4:	80 38 34             	cmpb   $0x34,(%eax)
 804ecd7:	0f 97 c2             	seta   %dl
 804ecda:	89 d6                	mov    %edx,%esi
 804ecdc:	eb 05                	jmp    0x804ece3
 804ecde:	31 f6                	xor    %esi,%esi
 804ece0:	8d 45 8d             	lea    -0x73(%ebp),%eax
 804ece3:	48                   	dec    %eax
 804ece4:	89 f2                	mov    %esi,%edx
 804ece6:	02 10                	add    (%eax),%dl
 804ece8:	88 10                	mov    %dl,(%eax)
 804ecea:	80 fa 39             	cmp    $0x39,%dl
 804eced:	77 f4                	ja     0x804ece3
 804ecef:	80 fa 30             	cmp    $0x30,%dl
 804ecf2:	74 ef                	je     0x804ece3
 804ecf4:	8d b5 77 ff ff ff    	lea    -0x89(%ebp),%esi
 804ecfa:	8d 95 78 ff ff ff    	lea    -0x88(%ebp),%edx
 804ed00:	39 f0                	cmp    %esi,%eax
 804ed02:	77 05                	ja     0x804ed09
 804ed04:	47                   	inc    %edi
 804ed05:	89 f0                	mov    %esi,%eax
 804ed07:	89 f2                	mov    %esi,%edx
 804ed09:	8d 70 01             	lea    0x1(%eax),%esi
 804ed0c:	c6 40 01 00          	movb   $0x0,0x1(%eax)
 804ed10:	80 bd 44 ff ff ff 00 	cmpb   $0x0,-0xbc(%ebp)
 804ed17:	74 1b                	je     0x804ed34
 804ed19:	39 cf                	cmp    %ecx,%edi
 804ed1b:	0f 8f d2 02 00 00    	jg     0x804eff3
 804ed21:	83 ff fc             	cmp    $0xfffffffc,%edi
 804ed24:	0f 8c c9 02 00 00    	jl     0x804eff3
 804ed2a:	29 f9                	sub    %edi,%ecx
 804ed2c:	89 8d 50 ff ff ff    	mov    %ecx,-0xb0(%ebp)
 804ed32:	eb 14                	jmp    0x804ed48
 804ed34:	8a 85 4c ff ff ff    	mov    -0xb4(%ebp),%al
 804ed3a:	88 85 44 ff ff ff    	mov    %al,-0xbc(%ebp)
 804ed40:	3c 66                	cmp    $0x66,%al
 804ed42:	0f 85 b2 02 00 00    	jne    0x804effa
 804ed48:	89 f8                	mov    %edi,%eax
 804ed4a:	85 ff                	test   %edi,%edi
 804ed4c:	79 07                	jns    0x804ed55
 804ed4e:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
 804ed52:	89 f8                	mov    %edi,%eax
 804ed54:	4a                   	dec    %edx
 804ed55:	c6 85 44 ff ff ff 66 	movb   $0x66,-0xbc(%ebp)
 804ed5c:	8d 8d 64 ff ff ff    	lea    -0x9c(%ebp),%ecx
 804ed62:	c7 45 a0 b0 00 00 00 	movl   $0xb0,-0x60(%ebp)
 804ed69:	89 4d a8             	mov    %ecx,-0x58(%ebp)
 804ed6c:	8d 4a 01             	lea    0x1(%edx),%ecx
 804ed6f:	29 ce                	sub    %ecx,%esi
 804ed71:	8a 12                	mov    (%edx),%dl
 804ed73:	88 95 64 ff ff ff    	mov    %dl,-0x9c(%ebp)
 804ed79:	c7 45 a4 01 00 00 00 	movl   $0x1,-0x5c(%ebp)
 804ed80:	89 8d 3c ff ff ff    	mov    %ecx,-0xc4(%ebp)
 804ed86:	c6 85 65 ff ff ff 00 	movb   $0x0,-0x9b(%ebp)
 804ed8d:	89 f2                	mov    %esi,%edx
 804ed8f:	85 c0                	test   %eax,%eax
 804ed91:	78 42                	js     0x804edd5
 804ed93:	c7 45 ac 70 00 00 00 	movl   $0x70,-0x54(%ebp)
 804ed9a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
 804ed9d:	39 f0                	cmp    %esi,%eax
 804ed9f:	7c 23                	jl     0x804edc4
 804eda1:	29 f0                	sub    %esi,%eax
 804eda3:	89 75 b0             	mov    %esi,-0x50(%ebp)
 804eda6:	85 c0                	test   %eax,%eax
 804eda8:	7e 30                	jle    0x804edda
 804edaa:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804edad:	8d 83 37 ee ff ff    	lea    -0x11c9(%ebx),%eax
 804edb3:	c7 45 b8 b0 00 00 00 	movl   $0xb0,-0x48(%ebp)
 804edba:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804edbd:	31 d2                	xor    %edx,%edx
 804edbf:	8d 75 c4             	lea    -0x3c(%ebp),%esi
 804edc2:	eb 20                	jmp    0x804ede4
 804edc4:	85 c0                	test   %eax,%eax
 804edc6:	74 19                	je     0x804ede1
 804edc8:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804edcb:	01 85 3c ff ff ff    	add    %eax,-0xc4(%ebp)
 804edd1:	29 c2                	sub    %eax,%edx
 804edd3:	eb 07                	jmp    0x804eddc
 804edd5:	8d 75 ac             	lea    -0x54(%ebp),%esi
 804edd8:	eb 0d                	jmp    0x804ede7
 804edda:	31 d2                	xor    %edx,%edx
 804eddc:	8d 75 b8             	lea    -0x48(%ebp),%esi
 804eddf:	eb 03                	jmp    0x804ede4
 804ede1:	8d 75 ac             	lea    -0x54(%ebp),%esi
 804ede4:	83 c8 ff             	or     $0xffffffff,%eax
 804ede7:	8b 4d 18             	mov    0x18(%ebp),%ecx
 804edea:	8b 49 0c             	mov    0xc(%ecx),%ecx
 804eded:	83 e1 10             	and    $0x10,%ecx
 804edf0:	89 8d 38 ff ff ff    	mov    %ecx,-0xc8(%ebp)
 804edf6:	75 16                	jne    0x804ee0e
 804edf8:	85 d2                	test   %edx,%edx
 804edfa:	75 12                	jne    0x804ee0e
 804edfc:	83 bd 50 ff ff ff 00 	cmpl   $0x0,-0xb0(%ebp)
 804ee03:	7e 22                	jle    0x804ee27
 804ee05:	80 bd 4c ff ff ff 67 	cmpb   $0x67,-0xb4(%ebp)
 804ee0c:	74 19                	je     0x804ee27
 804ee0e:	8d 8b 44 ee ff ff    	lea    -0x11bc(%ebx),%ecx
 804ee14:	c7 06 70 00 00 00    	movl   $0x70,(%esi)
 804ee1a:	c7 46 04 01 00 00 00 	movl   $0x1,0x4(%esi)
 804ee21:	89 4e 08             	mov    %ecx,0x8(%esi)
 804ee24:	83 c6 0c             	add    $0xc,%esi
 804ee27:	40                   	inc    %eax
 804ee28:	74 19                	je     0x804ee43
 804ee2a:	89 c1                	mov    %eax,%ecx
 804ee2c:	c7 06 b0 00 00 00    	movl   $0xb0,(%esi)
 804ee32:	f7 d9                	neg    %ecx
 804ee34:	89 4e 04             	mov    %ecx,0x4(%esi)
 804ee37:	8d 8b 37 ee ff ff    	lea    -0x11c9(%ebx),%ecx
 804ee3d:	89 4e 08             	mov    %ecx,0x8(%esi)
 804ee40:	83 c6 0c             	add    $0xc,%esi
 804ee43:	85 d2                	test   %edx,%edx
 804ee45:	74 15                	je     0x804ee5c
 804ee47:	8b 8d 3c ff ff ff    	mov    -0xc4(%ebp),%ecx
 804ee4d:	c7 06 70 00 00 00    	movl   $0x70,(%esi)
 804ee53:	89 56 04             	mov    %edx,0x4(%esi)
 804ee56:	89 4e 08             	mov    %ecx,0x8(%esi)
 804ee59:	83 c6 0c             	add    $0xc,%esi
 804ee5c:	80 bd 4c ff ff ff 67 	cmpb   $0x67,-0xb4(%ebp)
 804ee63:	75 09                	jne    0x804ee6e
 804ee65:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%ebp)
 804ee6c:	74 27                	je     0x804ee95
 804ee6e:	29 c2                	sub    %eax,%edx
 804ee70:	3b 95 50 ff ff ff    	cmp    -0xb0(%ebp),%edx
 804ee76:	7d 1d                	jge    0x804ee95
 804ee78:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 804ee7e:	c7 06 b0 00 00 00    	movl   $0xb0,(%esi)
 804ee84:	29 d0                	sub    %edx,%eax
 804ee86:	83 c6 0c             	add    $0xc,%esi
 804ee89:	89 46 f8             	mov    %eax,-0x8(%esi)
 804ee8c:	8d 83 37 ee ff ff    	lea    -0x11c9(%ebx),%eax
 804ee92:	89 46 fc             	mov    %eax,-0x4(%esi)
 804ee95:	80 bd 44 ff ff ff 66 	cmpb   $0x66,-0xbc(%ebp)
 804ee9c:	0f 84 96 00 00 00    	je     0x804ef38
 804eea2:	8a 85 66 ff ff ff    	mov    -0x9a(%ebp),%al
 804eea8:	c6 85 4c ff ff ff 2b 	movb   $0x2b,-0xb4(%ebp)
 804eeaf:	88 85 44 ff ff ff    	mov    %al,-0xbc(%ebp)
 804eeb5:	85 ff                	test   %edi,%edi
 804eeb7:	79 09                	jns    0x804eec2
 804eeb9:	f7 df                	neg    %edi
 804eebb:	c6 85 4c ff ff ff 2d 	movb   $0x2d,-0xb4(%ebp)
 804eec2:	c6 85 75 ff ff ff 00 	movb   $0x0,-0x8b(%ebp)
 804eec9:	c7 85 50 ff ff ff 02 	movl   $0x2,-0xb0(%ebp)
 804eed0:	00 00 00 
 804eed3:	8d 8d 75 ff ff ff    	lea    -0x8b(%ebp),%ecx
 804eed9:	8d 41 ff             	lea    -0x1(%ecx),%eax
 804eedc:	ff 85 50 ff ff ff    	incl   -0xb0(%ebp)
 804eee2:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
 804eee8:	89 f8                	mov    %edi,%eax
 804eeea:	99                   	cltd   
 804eeeb:	bf 0a 00 00 00       	mov    $0xa,%edi
 804eef0:	f7 ff                	idiv   %edi
 804eef2:	83 c2 30             	add    $0x30,%edx
 804eef5:	89 c7                	mov    %eax,%edi
 804eef7:	88 51 ff             	mov    %dl,-0x1(%ecx)
 804eefa:	83 bd 50 ff ff ff 03 	cmpl   $0x3,-0xb0(%ebp)
 804ef01:	75 08                	jne    0x804ef0b
 804ef03:	8b 8d 3c ff ff ff    	mov    -0xc4(%ebp),%ecx
 804ef09:	eb ce                	jmp    0x804eed9
 804ef0b:	85 c0                	test   %eax,%eax
 804ef0d:	75 f4                	jne    0x804ef03
 804ef0f:	8a 85 4c ff ff ff    	mov    -0xb4(%ebp),%al
 804ef15:	83 e9 03             	sub    $0x3,%ecx
 804ef18:	88 41 01             	mov    %al,0x1(%ecx)
 804ef1b:	8a 85 44 ff ff ff    	mov    -0xbc(%ebp),%al
 804ef21:	88 01                	mov    %al,(%ecx)
 804ef23:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 804ef29:	c7 06 70 00 00 00    	movl   $0x70,(%esi)
 804ef2f:	89 46 04             	mov    %eax,0x4(%esi)
 804ef32:	89 4e 08             	mov    %ecx,0x8(%esi)
 804ef35:	83 c6 0c             	add    $0xc,%esi
 804ef38:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 804ef3b:	8b 38                	mov    (%eax),%edi
 804ef3d:	83 c0 0c             	add    $0xc,%eax
 804ef40:	29 bd 40 ff ff ff    	sub    %edi,-0xc0(%ebp)
 804ef46:	39 f0                	cmp    %esi,%eax
 804ef48:	72 f1                	jb     0x804ef3b
 804ef4a:	31 c0                	xor    %eax,%eax
 804ef4c:	8b bd 40 ff ff ff    	mov    -0xc0(%ebp),%edi
 804ef52:	80 bd 60 ff ff ff 00 	cmpb   $0x0,-0xa0(%ebp)
 804ef59:	0f 95 c0             	setne  %al
 804ef5c:	29 c7                	sub    %eax,%edi
 804ef5e:	8d 95 60 ff ff ff    	lea    -0xa0(%ebp),%edx
 804ef64:	89 45 98             	mov    %eax,-0x68(%ebp)
 804ef67:	c7 45 94 a0 00 00 00 	movl   $0xa0,-0x6c(%ebp)
 804ef6e:	89 55 9c             	mov    %edx,-0x64(%ebp)
 804ef71:	89 f8                	mov    %edi,%eax
 804ef73:	85 ff                	test   %edi,%edi
 804ef75:	7e 37                	jle    0x804efae
 804ef77:	8b 7d 18             	mov    0x18(%ebp),%edi
 804ef7a:	f6 47 0c 08          	testb  $0x8,0xc(%edi)
 804ef7e:	74 17                	je     0x804ef97
 804ef80:	89 46 04             	mov    %eax,0x4(%esi)
 804ef83:	8d 83 37 ee ff ff    	lea    -0x11c9(%ebx),%eax
 804ef89:	c7 06 a0 00 00 00    	movl   $0xa0,(%esi)
 804ef8f:	89 46 08             	mov    %eax,0x8(%esi)
 804ef92:	83 c6 0c             	add    $0xc,%esi
 804ef95:	eb 17                	jmp    0x804efae
 804ef97:	8b 7d 18             	mov    0x18(%ebp),%edi
 804ef9a:	83 7f 10 30          	cmpl   $0x30,0x10(%edi)
 804ef9e:	75 05                	jne    0x804efa5
 804efa0:	01 45 a4             	add    %eax,-0x5c(%ebp)
 804efa3:	eb 09                	jmp    0x804efae
 804efa5:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
 804efab:	89 45 98             	mov    %eax,-0x68(%ebp)
 804efae:	8d 7d 94             	lea    -0x6c(%ebp),%edi
 804efb1:	31 d2                	xor    %edx,%edx
 804efb3:	8b 4f 04             	mov    0x4(%edi),%ecx
 804efb6:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
 804efbc:	ff 77 08             	pushl  0x8(%edi)
 804efbf:	51                   	push   %ecx
 804efc0:	89 8d 50 ff ff ff    	mov    %ecx,-0xb0(%ebp)
 804efc6:	ff 37                	pushl  (%edi)
 804efc8:	ff 75 08             	pushl  0x8(%ebp)
 804efcb:	ff 55 1c             	call   *0x1c(%ebp)
 804efce:	8b 8d 50 ff ff ff    	mov    -0xb0(%ebp),%ecx
 804efd4:	83 c4 10             	add    $0x10,%esp
 804efd7:	39 c8                	cmp    %ecx,%eax
 804efd9:	75 13                	jne    0x804efee
 804efdb:	8b 95 4c ff ff ff    	mov    -0xb4(%ebp),%edx
 804efe1:	83 c7 0c             	add    $0xc,%edi
 804efe4:	01 c2                	add    %eax,%edx
 804efe6:	39 f7                	cmp    %esi,%edi
 804efe8:	72 c9                	jb     0x804efb3
 804efea:	89 d0                	mov    %edx,%eax
 804efec:	eb 13                	jmp    0x804f001
 804efee:	83 c8 ff             	or     $0xffffffff,%eax
 804eff1:	eb 0e                	jmp    0x804f001
 804eff3:	c6 85 44 ff ff ff 67 	movb   $0x67,-0xbc(%ebp)
 804effa:	31 c0                	xor    %eax,%eax
 804effc:	e9 5b fd ff ff       	jmp    0x804ed5c
 804f001:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804f004:	5b                   	pop    %ebx
 804f005:	5e                   	pop    %esi
 804f006:	5f                   	pop    %edi
 804f007:	5d                   	pop    %ebp
 804f008:	c3                   	ret    
 804f009:	66 90                	xchg   %ax,%ax
 804f00b:	90                   	nop
 804f00c:	55                   	push   %ebp
 804f00d:	89 e5                	mov    %esp,%ebp
 804f00f:	57                   	push   %edi
 804f010:	56                   	push   %esi
 804f011:	51                   	push   %ecx
 804f012:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804f015:	8b 75 10             	mov    0x10(%ebp),%esi
 804f018:	8b 45 08             	mov    0x8(%ebp),%eax
 804f01b:	88 ca                	mov    %cl,%dl
 804f01d:	01 f0                	add    %esi,%eax
 804f01f:	85 f6                	test   %esi,%esi
 804f021:	74 0c                	je     0x804f02f
 804f023:	a8 03                	test   $0x3,%al
 804f025:	74 08                	je     0x804f02f
 804f027:	48                   	dec    %eax
 804f028:	38 10                	cmp    %dl,(%eax)
 804f02a:	74 73                	je     0x804f09f
 804f02c:	4e                   	dec    %esi
 804f02d:	eb f0                	jmp    0x804f01f
 804f02f:	0f b6 c9             	movzbl %cl,%ecx
 804f032:	89 cf                	mov    %ecx,%edi
 804f034:	29 c6                	sub    %eax,%esi
 804f036:	c1 e7 08             	shl    $0x8,%edi
 804f039:	89 75 f4             	mov    %esi,-0xc(%ebp)
 804f03c:	09 cf                	or     %ecx,%edi
 804f03e:	89 f9                	mov    %edi,%ecx
 804f040:	c1 e1 10             	shl    $0x10,%ecx
 804f043:	09 f9                	or     %edi,%ecx
 804f045:	8b 7d f4             	mov    -0xc(%ebp),%edi
 804f048:	8d 34 38             	lea    (%eax,%edi,1),%esi
 804f04b:	83 fe 03             	cmp    $0x3,%esi
 804f04e:	76 3d                	jbe    0x804f08d
 804f050:	83 e8 04             	sub    $0x4,%eax
 804f053:	8b 38                	mov    (%eax),%edi
 804f055:	31 cf                	xor    %ecx,%edi
 804f057:	89 fe                	mov    %edi,%esi
 804f059:	81 c7 ff fe fe 7e    	add    $0x7efefeff,%edi
 804f05f:	f7 d6                	not    %esi
 804f061:	31 fe                	xor    %edi,%esi
 804f063:	81 e6 00 01 01 81    	and    $0x81010100,%esi
 804f069:	74 da                	je     0x804f045
 804f06b:	38 50 03             	cmp    %dl,0x3(%eax)
 804f06e:	75 05                	jne    0x804f075
 804f070:	83 c0 03             	add    $0x3,%eax
 804f073:	eb 2a                	jmp    0x804f09f
 804f075:	38 50 02             	cmp    %dl,0x2(%eax)
 804f078:	75 05                	jne    0x804f07f
 804f07a:	83 c0 02             	add    $0x2,%eax
 804f07d:	eb 20                	jmp    0x804f09f
 804f07f:	38 50 01             	cmp    %dl,0x1(%eax)
 804f082:	75 03                	jne    0x804f087
 804f084:	40                   	inc    %eax
 804f085:	eb 18                	jmp    0x804f09f
 804f087:	38 10                	cmp    %dl,(%eax)
 804f089:	75 ba                	jne    0x804f045
 804f08b:	eb 12                	jmp    0x804f09f
 804f08d:	29 c6                	sub    %eax,%esi
 804f08f:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
 804f092:	85 c9                	test   %ecx,%ecx
 804f094:	74 07                	je     0x804f09d
 804f096:	48                   	dec    %eax
 804f097:	38 10                	cmp    %dl,(%eax)
 804f099:	75 f4                	jne    0x804f08f
 804f09b:	eb 02                	jmp    0x804f09f
 804f09d:	31 c0                	xor    %eax,%eax
 804f09f:	5a                   	pop    %edx
 804f0a0:	5e                   	pop    %esi
 804f0a1:	5f                   	pop    %edi
 804f0a2:	5d                   	pop    %ebp
 804f0a3:	c3                   	ret    
 804f0a4:	55                   	push   %ebp
 804f0a5:	89 e5                	mov    %esp,%ebp
 804f0a7:	57                   	push   %edi
 804f0a8:	56                   	push   %esi
 804f0a9:	8b 75 10             	mov    0x10(%ebp),%esi
 804f0ac:	8b 7d 08             	mov    0x8(%ebp),%edi
 804f0af:	56                   	push   %esi
 804f0b0:	ff 75 0c             	pushl  0xc(%ebp)
 804f0b3:	57                   	push   %edi
 804f0b4:	e8 87 ea ff ff       	call   0x804db40
 804f0b9:	8d 65 f8             	lea    -0x8(%ebp),%esp
 804f0bc:	8d 04 37             	lea    (%edi,%esi,1),%eax
 804f0bf:	5e                   	pop    %esi
 804f0c0:	5f                   	pop    %edi
 804f0c1:	5d                   	pop    %ebp
 804f0c2:	c3                   	ret    
 804f0c3:	90                   	nop
 804f0c4:	55                   	push   %ebp
 804f0c5:	89 e5                	mov    %esp,%ebp
 804f0c7:	56                   	push   %esi
 804f0c8:	83 ec 08             	sub    $0x8,%esp
 804f0cb:	be fc ff ff ff       	mov    $0xfffffffc,%esi
 804f0d0:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804f0d3:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804f0d6:	8d 55 f9             	lea    -0x7(%ebp),%edx
 804f0d9:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
 804f0dd:	0f b6 4c 16 ff       	movzbl -0x1(%esi,%edx,1),%ecx
 804f0e2:	42                   	inc    %edx
 804f0e3:	39 c8                	cmp    %ecx,%eax
 804f0e5:	74 f2                	je     0x804f0d9
 804f0e7:	5a                   	pop    %edx
 804f0e8:	29 c8                	sub    %ecx,%eax
 804f0ea:	59                   	pop    %ecx
 804f0eb:	5e                   	pop    %esi
 804f0ec:	5d                   	pop    %ebp
 804f0ed:	c3                   	ret    
 804f0ee:	55                   	push   %ebp
 804f0ef:	89 e5                	mov    %esp,%ebp
 804f0f1:	57                   	push   %edi
 804f0f2:	56                   	push   %esi
 804f0f3:	83 ec 2c             	sub    $0x2c,%esp
 804f0f6:	8b 55 08             	mov    0x8(%ebp),%edx
 804f0f9:	8b 7d 0c             	mov    0xc(%ebp),%edi
 804f0fc:	83 7d 10 0f          	cmpl   $0xf,0x10(%ebp)
 804f100:	0f 86 46 02 00 00    	jbe    0x804f34c
 804f106:	89 7d cc             	mov    %edi,-0x34(%ebp)
 804f109:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804f10f:	74 15                	je     0x804f126
 804f111:	0f b6 02             	movzbl (%edx),%eax
 804f114:	0f b6 0f             	movzbl (%edi),%ecx
 804f117:	42                   	inc    %edx
 804f118:	47                   	inc    %edi
 804f119:	29 c8                	sub    %ecx,%eax
 804f11b:	0f 85 48 02 00 00    	jne    0x804f369
 804f121:	ff 4d 10             	decl   0x10(%ebp)
 804f124:	eb e0                	jmp    0x804f106
 804f126:	89 d0                	mov    %edx,%eax
 804f128:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804f12b:	83 e0 03             	and    $0x3,%eax
 804f12e:	0f 85 a5 00 00 00    	jne    0x804f1d9
 804f134:	8b 45 10             	mov    0x10(%ebp),%eax
 804f137:	c1 e8 02             	shr    $0x2,%eax
 804f13a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804f13d:	83 e0 03             	and    $0x3,%eax
 804f140:	83 f8 01             	cmp    $0x1,%eax
 804f143:	74 32                	je     0x804f177
 804f145:	72 25                	jb     0x804f16c
 804f147:	83 f8 03             	cmp    $0x3,%eax
 804f14a:	8b 02                	mov    (%edx),%eax
 804f14c:	74 11                	je     0x804f15f
 804f14e:	8b 37                	mov    (%edi),%esi
 804f150:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f153:	83 ea 08             	sub    $0x8,%edx
 804f156:	83 ef 08             	sub    $0x8,%edi
 804f159:	83 45 f4 02          	addl   $0x2,-0xc(%ebp)
 804f15d:	eb 48                	jmp    0x804f1a7
 804f15f:	8b 0f                	mov    (%edi),%ecx
 804f161:	83 ea 04             	sub    $0x4,%edx
 804f164:	83 ef 04             	sub    $0x4,%edi
 804f167:	ff 45 f4             	incl   -0xc(%ebp)
 804f16a:	eb 2e                	jmp    0x804f19a
 804f16c:	8b 02                	mov    (%edx),%eax
 804f16e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f171:	8b 07                	mov    (%edi),%eax
 804f173:	89 c6                	mov    %eax,%esi
 804f175:	eb 18                	jmp    0x804f18f
 804f177:	ff 4d f4             	decl   -0xc(%ebp)
 804f17a:	8b 02                	mov    (%edx),%eax
 804f17c:	8b 0f                	mov    (%edi),%ecx
 804f17e:	83 c2 04             	add    $0x4,%edx
 804f181:	83 c7 04             	add    $0x4,%edi
 804f184:	8b 32                	mov    (%edx),%esi
 804f186:	39 c8                	cmp    %ecx,%eax
 804f188:	89 75 f0             	mov    %esi,-0x10(%ebp)
 804f18b:	8b 37                	mov    (%edi),%esi
 804f18d:	75 43                	jne    0x804f1d2
 804f18f:	8b 42 04             	mov    0x4(%edx),%eax
 804f192:	8b 4f 04             	mov    0x4(%edi),%ecx
 804f195:	39 75 f0             	cmp    %esi,-0x10(%ebp)
 804f198:	75 18                	jne    0x804f1b2
 804f19a:	8b 72 08             	mov    0x8(%edx),%esi
 804f19d:	39 c8                	cmp    %ecx,%eax
 804f19f:	89 75 f0             	mov    %esi,-0x10(%ebp)
 804f1a2:	8b 77 08             	mov    0x8(%edi),%esi
 804f1a5:	75 2b                	jne    0x804f1d2
 804f1a7:	8b 42 0c             	mov    0xc(%edx),%eax
 804f1aa:	8b 4f 0c             	mov    0xc(%edi),%ecx
 804f1ad:	39 75 f0             	cmp    %esi,-0x10(%ebp)
 804f1b0:	74 0a                	je     0x804f1bc
 804f1b2:	89 f2                	mov    %esi,%edx
 804f1b4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804f1b7:	e9 6f 01 00 00       	jmp    0x804f32b
 804f1bc:	83 6d f4 04          	subl   $0x4,-0xc(%ebp)
 804f1c0:	74 08                	je     0x804f1ca
 804f1c2:	83 c2 10             	add    $0x10,%edx
 804f1c5:	83 c7 10             	add    $0x10,%edi
 804f1c8:	eb ba                	jmp    0x804f184
 804f1ca:	39 c8                	cmp    %ecx,%eax
 804f1cc:	0f 84 60 01 00 00    	je     0x804f332
 804f1d2:	89 ca                	mov    %ecx,%edx
 804f1d4:	e9 52 01 00 00       	jmp    0x804f32b
 804f1d9:	8b 75 10             	mov    0x10(%ebp),%esi
 804f1dc:	c7 45 f4 20 00 00 00 	movl   $0x20,-0xc(%ebp)
 804f1e3:	c1 e0 03             	shl    $0x3,%eax
 804f1e6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804f1e9:	c1 ee 02             	shr    $0x2,%esi
 804f1ec:	29 45 f4             	sub    %eax,-0xc(%ebp)
 804f1ef:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f1f2:	89 f0                	mov    %esi,%eax
 804f1f4:	83 e0 03             	and    $0x3,%eax
 804f1f7:	83 e2 fc             	and    $0xfffffffc,%edx
 804f1fa:	89 75 dc             	mov    %esi,-0x24(%ebp)
 804f1fd:	83 f8 01             	cmp    $0x1,%eax
 804f200:	74 50                	je     0x804f252
 804f202:	72 3a                	jb     0x804f23e
 804f204:	83 f8 03             	cmp    $0x3,%eax
 804f207:	8b 02                	mov    (%edx),%eax
 804f209:	74 1d                	je     0x804f228
 804f20b:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804f20e:	8b 42 04             	mov    0x4(%edx),%eax
 804f211:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804f214:	8b 07                	mov    (%edi),%eax
 804f216:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804f219:	83 ea 04             	sub    $0x4,%edx
 804f21c:	83 ef 08             	sub    $0x8,%edi
 804f21f:	83 45 dc 02          	addl   $0x2,-0x24(%ebp)
 804f223:	e9 b0 00 00 00       	jmp    0x804f2d8
 804f228:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f22b:	8b 42 04             	mov    0x4(%edx),%eax
 804f22e:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804f231:	8b 07                	mov    (%edi),%eax
 804f233:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804f236:	83 ef 04             	sub    $0x4,%edi
 804f239:	ff 45 dc             	incl   -0x24(%ebp)
 804f23c:	eb 75                	jmp    0x804f2b3
 804f23e:	8b 02                	mov    (%edx),%eax
 804f240:	83 c2 04             	add    $0x4,%edx
 804f243:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804f246:	8b 02                	mov    (%edx),%eax
 804f248:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f24b:	8b 07                	mov    (%edi),%eax
 804f24d:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804f250:	eb 3c                	jmp    0x804f28e
 804f252:	8b 02                	mov    (%edx),%eax
 804f254:	ff 4d dc             	decl   -0x24(%ebp)
 804f257:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804f25a:	8b 42 04             	mov    0x4(%edx),%eax
 804f25d:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804f260:	8b 07                	mov    (%edi),%eax
 804f262:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804f265:	83 c2 08             	add    $0x8,%edx
 804f268:	83 c7 04             	add    $0x4,%edi
 804f26b:	8b 02                	mov    (%edx),%eax
 804f26d:	8a 4d f4             	mov    -0xc(%ebp),%cl
 804f270:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f273:	8b 07                	mov    (%edi),%eax
 804f275:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804f278:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f27b:	d3 e0                	shl    %cl,%eax
 804f27d:	8b 75 e8             	mov    -0x18(%ebp),%esi
 804f280:	8a 4d f0             	mov    -0x10(%ebp),%cl
 804f283:	d3 ee                	shr    %cl,%esi
 804f285:	09 f0                	or     %esi,%eax
 804f287:	8b 75 d8             	mov    -0x28(%ebp),%esi
 804f28a:	39 f0                	cmp    %esi,%eax
 804f28c:	75 6f                	jne    0x804f2fd
 804f28e:	8b 42 04             	mov    0x4(%edx),%eax
 804f291:	8a 4d f4             	mov    -0xc(%ebp),%cl
 804f294:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804f297:	8b 47 04             	mov    0x4(%edi),%eax
 804f29a:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804f29d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f2a0:	d3 e0                	shl    %cl,%eax
 804f2a2:	8b 75 ec             	mov    -0x14(%ebp),%esi
 804f2a5:	8a 4d f0             	mov    -0x10(%ebp),%cl
 804f2a8:	d3 ee                	shr    %cl,%esi
 804f2aa:	09 f0                	or     %esi,%eax
 804f2ac:	8b 75 d0             	mov    -0x30(%ebp),%esi
 804f2af:	39 f0                	cmp    %esi,%eax
 804f2b1:	75 4a                	jne    0x804f2fd
 804f2b3:	8b 42 08             	mov    0x8(%edx),%eax
 804f2b6:	8a 4d f4             	mov    -0xc(%ebp),%cl
 804f2b9:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804f2bc:	8b 47 08             	mov    0x8(%edi),%eax
 804f2bf:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804f2c2:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804f2c5:	d3 e0                	shl    %cl,%eax
 804f2c7:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 804f2ca:	8a 4d f0             	mov    -0x10(%ebp),%cl
 804f2cd:	d3 ee                	shr    %cl,%esi
 804f2cf:	09 f0                	or     %esi,%eax
 804f2d1:	8b 75 d8             	mov    -0x28(%ebp),%esi
 804f2d4:	39 f0                	cmp    %esi,%eax
 804f2d6:	75 25                	jne    0x804f2fd
 804f2d8:	8b 42 0c             	mov    0xc(%edx),%eax
 804f2db:	8a 4d f4             	mov    -0xc(%ebp),%cl
 804f2de:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804f2e1:	8b 47 0c             	mov    0xc(%edi),%eax
 804f2e4:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804f2e7:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f2ea:	d3 e0                	shl    %cl,%eax
 804f2ec:	8b 75 e0             	mov    -0x20(%ebp),%esi
 804f2ef:	8a 4d f0             	mov    -0x10(%ebp),%cl
 804f2f2:	d3 ee                	shr    %cl,%esi
 804f2f4:	09 f0                	or     %esi,%eax
 804f2f6:	8b 75 d0             	mov    -0x30(%ebp),%esi
 804f2f9:	39 f0                	cmp    %esi,%eax
 804f2fb:	74 04                	je     0x804f301
 804f2fd:	89 f2                	mov    %esi,%edx
 804f2ff:	eb 2a                	jmp    0x804f32b
 804f301:	83 6d dc 04          	subl   $0x4,-0x24(%ebp)
 804f305:	74 0b                	je     0x804f312
 804f307:	83 c2 10             	add    $0x10,%edx
 804f30a:	83 c7 10             	add    $0x10,%edi
 804f30d:	e9 59 ff ff ff       	jmp    0x804f26b
 804f312:	8a 4d f4             	mov    -0xc(%ebp),%cl
 804f315:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f318:	d3 e0                	shl    %cl,%eax
 804f31a:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804f31d:	8a 4d f0             	mov    -0x10(%ebp),%cl
 804f320:	d3 ea                	shr    %cl,%edx
 804f322:	09 d0                	or     %edx,%eax
 804f324:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804f327:	39 d0                	cmp    %edx,%eax
 804f329:	74 07                	je     0x804f332
 804f32b:	e8 94 fd ff ff       	call   0x804f0c4
 804f330:	eb 02                	jmp    0x804f334
 804f332:	31 c0                	xor    %eax,%eax
 804f334:	85 c0                	test   %eax,%eax
 804f336:	75 31                	jne    0x804f369
 804f338:	8b 45 10             	mov    0x10(%ebp),%eax
 804f33b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804f33e:	83 65 10 03          	andl   $0x3,0x10(%ebp)
 804f342:	83 e0 fc             	and    $0xfffffffc,%eax
 804f345:	8b 7d cc             	mov    -0x34(%ebp),%edi
 804f348:	01 c2                	add    %eax,%edx
 804f34a:	01 c7                	add    %eax,%edi
 804f34c:	8b 75 10             	mov    0x10(%ebp),%esi
 804f34f:	29 d7                	sub    %edx,%edi
 804f351:	01 d6                	add    %edx,%esi
 804f353:	39 f2                	cmp    %esi,%edx
 804f355:	74 10                	je     0x804f367
 804f357:	89 d1                	mov    %edx,%ecx
 804f359:	42                   	inc    %edx
 804f35a:	0f b6 01             	movzbl (%ecx),%eax
 804f35d:	0f b6 0c 0f          	movzbl (%edi,%ecx,1),%ecx
 804f361:	29 c8                	sub    %ecx,%eax
 804f363:	74 ee                	je     0x804f353
 804f365:	eb 02                	jmp    0x804f369
 804f367:	31 c0                	xor    %eax,%eax
 804f369:	83 c4 2c             	add    $0x2c,%esp
 804f36c:	5e                   	pop    %esi
 804f36d:	5f                   	pop    %edi
 804f36e:	5d                   	pop    %ebp
 804f36f:	c3                   	ret    
 804f370:	55                   	push   %ebp
 804f371:	89 e5                	mov    %esp,%ebp
 804f373:	57                   	push   %edi
 804f374:	56                   	push   %esi
 804f375:	53                   	push   %ebx
 804f376:	51                   	push   %ecx
 804f377:	8d 4d 08             	lea    0x8(%ebp),%ecx
 804f37a:	83 ec 0c             	sub    $0xc,%esp
 804f37d:	e8 f5 98 ff ff       	call   0x8048c77
 804f382:	81 c3 06 2d 00 00    	add    $0x2d06,%ebx
 804f388:	8b 71 08             	mov    0x8(%ecx),%esi
 804f38b:	8b 01                	mov    (%ecx),%eax
 804f38d:	89 75 e4             	mov    %esi,-0x1c(%ebp)
 804f390:	8b 51 04             	mov    0x4(%ecx),%edx
 804f393:	8b 79 0c             	mov    0xc(%ecx),%edi
 804f396:	8d 75 e8             	lea    -0x18(%ebp),%esi
 804f399:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 804f39c:	53                   	push   %ebx
 804f39d:	89 c3                	mov    %eax,%ebx
 804f39f:	b8 8c 00 00 00       	mov    $0x8c,%eax
 804f3a4:	cd 80                	int    $0x80
 804f3a6:	5b                   	pop    %ebx
 804f3a7:	89 c2                	mov    %eax,%edx
 804f3a9:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
 804f3ae:	76 10                	jbe    0x804f3c0
 804f3b0:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804f3b6:	f7 d8                	neg    %eax
 804f3b8:	65 89 02             	mov    %eax,%gs:(%edx)
 804f3bb:	83 c8 ff             	or     $0xffffffff,%eax
 804f3be:	eb 04                	jmp    0x804f3c4
 804f3c0:	85 d2                	test   %edx,%edx
 804f3c2:	74 03                	je     0x804f3c7
 804f3c4:	99                   	cltd   
 804f3c5:	eb 06                	jmp    0x804f3cd
 804f3c7:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f3ca:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804f3cd:	83 c4 0c             	add    $0xc,%esp
 804f3d0:	59                   	pop    %ecx
 804f3d1:	5b                   	pop    %ebx
 804f3d2:	5e                   	pop    %esi
 804f3d3:	5f                   	pop    %edi
 804f3d4:	5d                   	pop    %ebp
 804f3d5:	c3                   	ret    
 804f3d6:	66 90                	xchg   %ax,%ax
 804f3d8:	55                   	push   %ebp
 804f3d9:	89 e5                	mov    %esp,%ebp
 804f3db:	ff 75 10             	pushl  0x10(%ebp)
 804f3de:	8b 45 0c             	mov    0xc(%ebp),%eax
 804f3e1:	99                   	cltd   
 804f3e2:	52                   	push   %edx
 804f3e3:	50                   	push   %eax
 804f3e4:	ff 75 08             	pushl  0x8(%ebp)
 804f3e7:	e8 04 00 00 00       	call   0x804f3f0
 804f3ec:	c9                   	leave  
 804f3ed:	c3                   	ret    
 804f3ee:	66 90                	xchg   %ax,%ax
 804f3f0:	55                   	push   %ebp
 804f3f1:	89 e5                	mov    %esp,%ebp
 804f3f3:	57                   	push   %edi
 804f3f4:	56                   	push   %esi
 804f3f5:	53                   	push   %ebx
 804f3f6:	83 ec 0c             	sub    $0xc,%esp
 804f3f9:	e8 79 98 ff ff       	call   0x8048c77
 804f3fe:	81 c3 8a 2c 00 00    	add    $0x2c8a,%ebx
 804f404:	8b 45 0c             	mov    0xc(%ebp),%eax
 804f407:	8b 55 10             	mov    0x10(%ebp),%edx
 804f40a:	8b 75 08             	mov    0x8(%ebp),%esi
 804f40d:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804f410:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804f413:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
 804f417:	76 15                	jbe    0x804f42e
 804f419:	c7 c0 fc ff ff ff    	mov    $0xfffffffc,%eax
 804f41f:	83 ca ff             	or     $0xffffffff,%edx
 804f422:	65 c7 00 16 00 00 00 	movl   $0x16,%gs:(%eax)
 804f429:	e9 ba 00 00 00       	jmp    0x804f4e8
 804f42e:	8b 7e 34             	mov    0x34(%esi),%edi
 804f431:	85 ff                	test   %edi,%edi
 804f433:	75 2e                	jne    0x804f463
 804f435:	65 8b 15 08 00 00 00 	mov    %gs:0x8,%edx
 804f43c:	39 56 40             	cmp    %edx,0x40(%esi)
 804f43f:	74 1f                	je     0x804f460
 804f441:	89 f8                	mov    %edi,%eax
 804f443:	b9 01 00 00 00       	mov    $0x1,%ecx
 804f448:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804f44f:	00 
 804f450:	74 01                	je     0x804f453
 804f452:	f0 0f b1 4e 38       	lock cmpxchg %ecx,0x38(%esi)
 804f457:	0f 85 95 00 00 00    	jne    0x804f4f2
 804f45d:	89 56 40             	mov    %edx,0x40(%esi)
 804f460:	ff 46 3c             	incl   0x3c(%esi)
 804f463:	f6 06 40             	testb  $0x40,(%esi)
 804f466:	75 0b                	jne    0x804f473
 804f468:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
 804f46c:	8d 55 ec             	lea    -0x14(%ebp),%edx
 804f46f:	75 25                	jne    0x804f496
 804f471:	eb 10                	jmp    0x804f483
 804f473:	56                   	push   %esi
 804f474:	e8 93 a1 ff ff       	call   0x804960c
 804f479:	5a                   	pop    %edx
 804f47a:	85 c0                	test   %eax,%eax
 804f47c:	74 ea                	je     0x804f468
 804f47e:	83 ca ff             	or     $0xffffffff,%edx
 804f481:	eb 44                	jmp    0x804f4c7
 804f483:	52                   	push   %edx
 804f484:	89 55 e8             	mov    %edx,-0x18(%ebp)
 804f487:	56                   	push   %esi
 804f488:	e8 7f 00 00 00       	call   0x804f50c
 804f48d:	5a                   	pop    %edx
 804f48e:	85 c0                	test   %eax,%eax
 804f490:	59                   	pop    %ecx
 804f491:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804f494:	78 e8                	js     0x804f47e
 804f496:	ff 75 14             	pushl  0x14(%ebp)
 804f499:	52                   	push   %edx
 804f49a:	56                   	push   %esi
 804f49b:	e8 18 01 00 00       	call   0x804f5b8
 804f4a0:	83 c4 0c             	add    $0xc,%esp
 804f4a3:	85 c0                	test   %eax,%eax
 804f4a5:	78 d7                	js     0x804f47e
 804f4a7:	66 83 26 b8          	andw   $0xffb8,(%esi)
 804f4ab:	8b 46 08             	mov    0x8(%esi),%eax
 804f4ae:	89 46 10             	mov    %eax,0x10(%esi)
 804f4b1:	89 46 14             	mov    %eax,0x14(%esi)
 804f4b4:	89 46 18             	mov    %eax,0x18(%esi)
 804f4b7:	89 46 1c             	mov    %eax,0x1c(%esi)
 804f4ba:	c7 46 2c 00 00 00 00 	movl   $0x0,0x2c(%esi)
 804f4c1:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 804f4c5:	31 d2                	xor    %edx,%edx
 804f4c7:	85 ff                	test   %edi,%edi
 804f4c9:	75 1d                	jne    0x804f4e8
 804f4cb:	ff 4e 3c             	decl   0x3c(%esi)
 804f4ce:	75 18                	jne    0x804f4e8
 804f4d0:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
 804f4d7:	65 83 3d 0c 00 00 00 	cmpl   $0x0,%gs:0xc
 804f4de:	00 
 804f4df:	74 01                	je     0x804f4e2
 804f4e1:	f0 83 6e 38 01       	lock subl $0x1,0x38(%esi)
 804f4e6:	75 17                	jne    0x804f4ff
 804f4e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804f4eb:	89 d0                	mov    %edx,%eax
 804f4ed:	5b                   	pop    %ebx
 804f4ee:	5e                   	pop    %esi
 804f4ef:	5f                   	pop    %edi
 804f4f0:	5d                   	pop    %ebp
 804f4f1:	c3                   	ret    
 804f4f2:	8d 4e 38             	lea    0x38(%esi),%ecx
 804f4f5:	e8 86 c2 ff ff       	call   0x804b780
 804f4fa:	e9 5e ff ff ff       	jmp    0x804f45d
 804f4ff:	8d 46 38             	lea    0x38(%esi),%eax
 804f502:	e8 a9 c2 ff ff       	call   0x804b7b0
 804f507:	eb df                	jmp    0x804f4e8
 804f509:	66 90                	xchg   %ax,%ax
 804f50b:	90                   	nop
 804f50c:	55                   	push   %ebp
 804f50d:	89 e5                	mov    %esp,%ebp
 804f50f:	57                   	push   %edi
 804f510:	56                   	push   %esi
 804f511:	53                   	push   %ebx
 804f512:	83 ec 0c             	sub    $0xc,%esp
 804f515:	e8 5d 97 ff ff       	call   0x8048c77
 804f51a:	81 c3 6e 2b 00 00    	add    $0x2b6e,%ebx
 804f520:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804f523:	8b 01                	mov    (%ecx),%eax
 804f525:	89 c2                	mov    %eax,%edx
 804f527:	83 e2 03             	and    $0x3,%edx
 804f52a:	74 25                	je     0x804f551
 804f52c:	4a                   	dec    %edx
 804f52d:	74 22                	je     0x804f551
 804f52f:	f6 c4 08             	test   $0x8,%ah
 804f532:	74 1d                	je     0x804f551
 804f534:	83 fa 02             	cmp    $0x2,%edx
 804f537:	74 74                	je     0x804f5ad
 804f539:	83 79 28 00          	cmpl   $0x0,0x28(%ecx)
 804f53d:	75 6e                	jne    0x804f5ad
 804f53f:	0f b6 51 03          	movzbl 0x3(%ecx),%edx
 804f543:	f7 da                	neg    %edx
 804f545:	83 79 2c 00          	cmpl   $0x0,0x2c(%ecx)
 804f549:	7e 06                	jle    0x804f551
 804f54b:	0f b6 71 02          	movzbl 0x2(%ecx),%esi
 804f54f:	29 f2                	sub    %esi,%edx
 804f551:	a8 40                	test   $0x40,%al
 804f553:	74 05                	je     0x804f55a
 804f555:	8b 41 08             	mov    0x8(%ecx),%eax
 804f558:	eb 03                	jmp    0x804f55d
 804f55a:	8b 41 14             	mov    0x14(%ecx),%eax
 804f55d:	2b 41 10             	sub    0x10(%ecx),%eax
 804f560:	8b 7d 0c             	mov    0xc(%ebp),%edi
 804f563:	01 d0                	add    %edx,%eax
 804f565:	8b 17                	mov    (%edi),%edx
 804f567:	8b 4f 04             	mov    0x4(%edi),%ecx
 804f56a:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804f56d:	89 c7                	mov    %eax,%edi
 804f56f:	89 d6                	mov    %edx,%esi
 804f571:	c1 ff 1f             	sar    $0x1f,%edi
 804f574:	2b 75 e8             	sub    -0x18(%ebp),%esi
 804f577:	89 7d ec             	mov    %edi,-0x14(%ebp)
 804f57a:	89 cf                	mov    %ecx,%edi
 804f57c:	1b 7d ec             	sbb    -0x14(%ebp),%edi
 804f57f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f582:	8b 45 0c             	mov    0xc(%ebp),%eax
 804f585:	39 cf                	cmp    %ecx,%edi
 804f587:	89 30                	mov    %esi,(%eax)
 804f589:	89 78 04             	mov    %edi,0x4(%eax)
 804f58c:	7c 09                	jl     0x804f597
 804f58e:	7f 04                	jg     0x804f594
 804f590:	39 d6                	cmp    %edx,%esi
 804f592:	76 03                	jbe    0x804f597
 804f594:	f7 5d f0             	negl   -0x10(%ebp)
 804f597:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804f59a:	85 c0                	test   %eax,%eax
 804f59c:	79 12                	jns    0x804f5b0
 804f59e:	c7 c2 fc ff ff ff    	mov    $0xfffffffc,%edx
 804f5a4:	65 c7 02 4b 00 00 00 	movl   $0x4b,%gs:(%edx)
 804f5ab:	eb 03                	jmp    0x804f5b0
 804f5ad:	83 c8 ff             	or     $0xffffffff,%eax
 804f5b0:	83 c4 0c             	add    $0xc,%esp
 804f5b3:	5b                   	pop    %ebx
 804f5b4:	5e                   	pop    %esi
 804f5b5:	5f                   	pop    %edi
 804f5b6:	5d                   	pop    %ebp
 804f5b7:	c3                   	ret    
 804f5b8:	55                   	push   %ebp
 804f5b9:	89 e5                	mov    %esp,%ebp
 804f5bb:	56                   	push   %esi
 804f5bc:	ff 75 10             	pushl  0x10(%ebp)
 804f5bf:	8b 75 0c             	mov    0xc(%ebp),%esi
 804f5c2:	8b 45 08             	mov    0x8(%ebp),%eax
 804f5c5:	ff 76 04             	pushl  0x4(%esi)
 804f5c8:	ff 36                	pushl  (%esi)
 804f5ca:	ff 70 04             	pushl  0x4(%eax)
 804f5cd:	e8 9e fd ff ff       	call   0x804f370
 804f5d2:	83 c4 10             	add    $0x10,%esp
 804f5d5:	85 d2                	test   %edx,%edx
 804f5d7:	78 07                	js     0x804f5e0
 804f5d9:	89 06                	mov    %eax,(%esi)
 804f5db:	89 56 04             	mov    %edx,0x4(%esi)
 804f5de:	31 c0                	xor    %eax,%eax
 804f5e0:	8b 75 fc             	mov    -0x4(%ebp),%esi
 804f5e3:	c9                   	leave  
 804f5e4:	c3                   	ret    
 804f5e5:	66 90                	xchg   %ax,%ax
 804f5e7:	90                   	nop
 804f5e8:	55                   	push   %ebp
 804f5e9:	89 e5                	mov    %esp,%ebp
 804f5eb:	53                   	push   %ebx
 804f5ec:	52                   	push   %edx
 804f5ed:	a1 00 20 05 08       	mov    0x8052000,%eax
 804f5f2:	bb 00 20 05 08       	mov    $0x8052000,%ebx
 804f5f7:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f5fa:	74 0c                	je     0x804f608
 804f5fc:	ff d0                	call   *%eax
 804f5fe:	83 eb 04             	sub    $0x4,%ebx
 804f601:	8b 03                	mov    (%ebx),%eax
 804f603:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f606:	75 f4                	jne    0x804f5fc
 804f608:	58                   	pop    %eax
 804f609:	5b                   	pop    %ebx
 804f60a:	5d                   	pop    %ebp
 804f60b:	c3                   	ret    

Disassembly of section .fini:

0804f60c <.fini>:
 804f60c:	55                   	push   %ebp
 804f60d:	89 e5                	mov    %esp,%ebp
 804f60f:	53                   	push   %ebx
 804f610:	e8 97 8f ff ff       	call   0x80485ac
 804f615:	81 c3 73 2a 00 00    	add    $0x2a73,%ebx
 804f61b:	e8 f4 8f ff ff       	call   0x8048614
 804f620:	5b                   	pop    %ebx
 804f621:	5d                   	pop    %ebp
 804f622:	c3                   	ret    
