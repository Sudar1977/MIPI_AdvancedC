
73-74.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 65 44 00 00 	mov    0x4465(%rip),%rax        # 140005480 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 66 44 00 00 	mov    0x4466(%rip),%rax        # 140005490 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 69 44 00 00 	mov    0x4469(%rip),%rax        # 1400054a0 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 bc 43 00 00 	mov    0x43bc(%rip),%rax        # 140005400 <.refptr.__ImageBase>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 0f 44 00 00 	mov    0x440f(%rip),%rax        # 140005470 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 6f 00 00    	mov    %ecx,0x6fa5(%rip)        # 14000800c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 c9 19 00 00       	call   140002a40 <__set_app_type>
   140001077:	e8 34 19 00 00       	call   1400029b0 <__p__fmode>
   14000107c:	48 8b 15 cd 44 00 00 	mov    0x44cd(%rip),%rdx        # 140005550 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 1c 19 00 00       	call   1400029a8 <__p__commode>
   14000108c:	48 8b 15 9d 44 00 00 	mov    0x449d(%rip),%rdx        # 140005530 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 c4 05 00 00       	call   140001660 <_setargv>
   14000109c:	48 8b 05 3d 43 00 00 	mov    0x433d(%rip),%rax        # 1400053e0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 86 19 00 00       	call   140002a40 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 81 44 00 00 	mov    0x4481(%rip),%rcx        # 140005580 <.refptr._matherr>
   1400010ff:	e8 cc 0c 00 00       	call   140001dd0 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 65 44 00 00 	mov    0x4465(%rip),%rax        # 1400055a0 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 6e 00 00 	lea    0x6ed6(%rip),%r8        # 140008018 <envp>
   140001142:	48 8d 15 d7 6e 00 00 	lea    0x6ed7(%rip),%rdx        # 140008020 <argv>
   140001149:	48 8d 0d d8 6e 00 00 	lea    0x6ed8(%rip),%rcx        # 140008028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac 6e 00 00    	mov    %eax,0x6eac(%rip)        # 140008004 <startinfo>
   140001158:	48 8b 05 e1 43 00 00 	mov    0x43e1(%rip),%rax        # 140005540 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b 6e 00 00 	lea    0x6e9b(%rip),%rax        # 140008004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 ed 15 00 00       	call   140002760 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 54                	push   %r12
   140001182:	55                   	push   %rbp
   140001183:	57                   	push   %rdi
   140001184:	56                   	push   %rsi
   140001185:	53                   	push   %rbx
   140001186:	48 83 ec 20          	sub    $0x20,%rsp
   14000118a:	48 8b 1d 3f 43 00 00 	mov    0x433f(%rip),%rbx        # 1400054d0 <.refptr.__native_startup_lock>
   140001191:	48 8b 2d 18 82 00 00 	mov    0x8218(%rip),%rbp        # 1400093b0 <__imp_Sleep>
   140001198:	31 ff                	xor    %edi,%edi
   14000119a:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011a1:	00 00 
   1400011a3:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011a7:	eb 17                	jmp    1400011c0 <__tmainCRTStartup+0x40>
   1400011a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400011b0:	48 39 c6             	cmp    %rax,%rsi
   1400011b3:	0f 84 67 01 00 00    	je     140001320 <__tmainCRTStartup+0x1a0>
   1400011b9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011be:	ff d5                	call   *%rbp
   1400011c0:	48 89 f8             	mov    %rdi,%rax
   1400011c3:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011c8:	48 85 c0             	test   %rax,%rax
   1400011cb:	75 e3                	jne    1400011b0 <__tmainCRTStartup+0x30>
   1400011cd:	48 8b 35 0c 43 00 00 	mov    0x430c(%rip),%rsi        # 1400054e0 <.refptr.__native_startup_state>
   1400011d4:	31 ff                	xor    %edi,%edi
   1400011d6:	8b 06                	mov    (%rsi),%eax
   1400011d8:	83 f8 01             	cmp    $0x1,%eax
   1400011db:	0f 84 56 01 00 00    	je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:	8b 06                	mov    (%rsi),%eax
   1400011e3:	85 c0                	test   %eax,%eax
   1400011e5:	0f 84 b5 01 00 00    	je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:	c7 05 13 6e 00 00 01 	movl   $0x1,0x6e13(%rip)        # 140008008 <has_cctor>
   1400011f2:	00 00 00 
   1400011f5:	8b 06                	mov    (%rsi),%eax
   1400011f7:	83 f8 01             	cmp    $0x1,%eax
   1400011fa:	0f 84 4c 01 00 00    	je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:	85 ff                	test   %edi,%edi
   140001202:	0f 84 65 01 00 00    	je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:	48 8b 05 21 42 00 00 	mov    0x4221(%rip),%rax        # 140005430 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 08 08 00 00       	call   140001a30 <_pei386_runtime_relocator>
   140001228:	48 8b 0d 41 43 00 00 	mov    0x4341(%rip),%rcx        # 140005570 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 6b 81 00 00    	call   *0x816b(%rip)        # 1400093a0 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 84 42 00 00 	mov    0x4284(%rip),%rdx        # 1400054c0 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 fd 17 00 00       	call   140002a48 <_set_invalid_parameter_handler>
   14000124b:	e8 f0 05 00 00       	call   140001840 <_fpreset>
   140001250:	8b 1d d2 6d 00 00    	mov    0x6dd2(%rip),%ebx        # 140008028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 40 18 00 00       	call   140002aa8 <malloc>
   140001268:	4c 8b 25 b1 6d 00 00 	mov    0x6db1(%rip),%r12        # 140008020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 07 17 00 00       	call   140002990 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 13 18 00 00       	call   140002aa8 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 cb 17 00 00       	call   140002a78 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d 6d 00 00 	mov    %rbp,0x6d5d(%rip)        # 140008020 <argv>
   1400012c3:	e8 78 03 00 00       	call   140001640 <__main>
   1400012c8:	48 8b 05 81 41 00 00 	mov    0x4181(%rip),%rax        # 140005450 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 6d 00 00 	mov    0x6d42(%rip),%r8        # 140008018 <envp>
   1400012d6:	8b 0d 4c 6d 00 00    	mov    0x6d4c(%rip),%ecx        # 140008028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 6d 00 00 	mov    0x6d37(%rip),%rdx        # 140008020 <argv>
   1400012e9:	e8 1f 02 00 00       	call   14000150d <main>
   1400012ee:	8b 0d 18 6d 00 00    	mov    0x6d18(%rip),%ecx        # 14000800c <managedapp>
   1400012f4:	89 05 16 6d 00 00    	mov    %eax,0x6d16(%rip)        # 140008010 <mainret>
   1400012fa:	85 c9                	test   %ecx,%ecx
   1400012fc:	0f 84 c6 00 00 00    	je     1400013c8 <__tmainCRTStartup+0x248>
   140001302:	8b 15 00 6d 00 00    	mov    0x6d00(%rip),%edx        # 140008008 <has_cctor>
   140001308:	85 d2                	test   %edx,%edx
   14000130a:	74 74                	je     140001380 <__tmainCRTStartup+0x200>
   14000130c:	48 83 c4 20          	add    $0x20,%rsp
   140001310:	5b                   	pop    %rbx
   140001311:	5e                   	pop    %rsi
   140001312:	5f                   	pop    %rdi
   140001313:	5d                   	pop    %rbp
   140001314:	41 5c                	pop    %r12
   140001316:	c3                   	ret
   140001317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000131e:	00 00 
   140001320:	48 8b 35 b9 41 00 00 	mov    0x41b9(%rip),%rsi        # 1400054e0 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 3f 15 00 00       	call   140002880 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 ad 41 00 00 	mov    0x41ad(%rip),%rdx        # 140005500 <.refptr.__xc_z>
   140001353:	48 8b 0d 96 41 00 00 	mov    0x4196(%rip),%rcx        # 1400054f0 <.refptr.__xc_a>
   14000135a:	e8 d9 16 00 00       	call   140002a38 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 73 16 00 00       	call   1400029f8 <_cexit>
   140001385:	8b 05 85 6c 00 00    	mov    0x6c85(%rip),%eax        # 140008010 <mainret>
   14000138b:	48 83 c4 20          	add    $0x20,%rsp
   14000138f:	5b                   	pop    %rbx
   140001390:	5e                   	pop    %rsi
   140001391:	5f                   	pop    %rdi
   140001392:	5d                   	pop    %rbp
   140001393:	41 5c                	pop    %r12
   140001395:	c3                   	ret
   140001396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000139d:	00 00 00 
   1400013a0:	48 8b 15 79 41 00 00 	mov    0x4179(%rip),%rdx        # 140005520 <.refptr.__xi_z>
   1400013a7:	48 8b 0d 62 41 00 00 	mov    0x4162(%rip),%rcx        # 140005510 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 7f 16 00 00       	call   140002a38 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 89 16 00 00       	call   140002a58 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 95 40 00 00 	mov    0x4095(%rip),%rax        # 140005470 <.refptr.__mingw_app_type>
   1400013db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013e1:	e8 9a fd ff ff       	call   140001180 <__tmainCRTStartup>
   1400013e6:	90                   	nop

00000001400013e7 <.l_endw>:
   1400013e7:	90                   	nop
   1400013e8:	48 83 c4 28          	add    $0x28,%rsp
   1400013ec:	c3                   	ret
   1400013ed:	0f 1f 00             	nopl   (%rax)

00000001400013f0 <mainCRTStartup>:
   1400013f0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013f4 <.l_start>:
   1400013f4:	48 8b 05 75 40 00 00 	mov    0x4075(%rip),%rax        # 140005470 <.refptr.__mingw_app_type>
   1400013fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001401:	e8 7a fd ff ff       	call   140001180 <__tmainCRTStartup>
   140001406:	90                   	nop

0000000140001407 <.l_end>:
   140001407:	90                   	nop
   140001408:	48 83 c4 28          	add    $0x28,%rsp
   14000140c:	c3                   	ret
   14000140d:	0f 1f 00             	nopl   (%rax)

0000000140001410 <atexit>:
   140001410:	48 83 ec 28          	sub    $0x28,%rsp
   140001414:	e8 27 14 00 00       	call   140002840 <_onexit>
   140001419:	48 83 f8 01          	cmp    $0x1,%rax
   14000141d:	19 c0                	sbb    %eax,%eax
   14000141f:	48 83 c4 28          	add    $0x28,%rsp
   140001423:	c3                   	ret
   140001424:	90                   	nop
   140001425:	90                   	nop
   140001426:	90                   	nop
   140001427:	90                   	nop
   140001428:	90                   	nop
   140001429:	90                   	nop
   14000142a:	90                   	nop
   14000142b:	90                   	nop
   14000142c:	90                   	nop
   14000142d:	90                   	nop
   14000142e:	90                   	nop
   14000142f:	90                   	nop

0000000140001430 <__gcc_register_frame>:
   140001430:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001440 <__gcc_deregister_frame>
   140001437:	e9 d4 ff ff ff       	jmp    140001410 <atexit>
   14000143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001440 <__gcc_deregister_frame>:
   140001440:	c3                   	ret
   140001441:	90                   	nop
   140001442:	90                   	nop
   140001443:	90                   	nop
   140001444:	90                   	nop
   140001445:	90                   	nop
   140001446:	90                   	nop
   140001447:	90                   	nop
   140001448:	90                   	nop
   140001449:	90                   	nop
   14000144a:	90                   	nop
   14000144b:	90                   	nop
   14000144c:	90                   	nop
   14000144d:	90                   	nop
   14000144e:	90                   	nop
   14000144f:	90                   	nop

0000000140001450 <getHash>:
   140001450:	e8 b0 1a 00 00       	call   140002f05 <__fentry__>
   140001455:	55                   	push   %rbp
   140001456:	48 89 e5             	mov    %rsp,%rbp
   140001459:	48 83 ec 40          	sub    $0x40,%rsp
   14000145d:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001461:	c7 45 ec 1f 00 00 00 	movl   $0x1f,-0x14(%rbp)
   140001468:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   14000146f:	00 
   140001470:	48 c7 45 f0 01 00 00 	movq   $0x1,-0x10(%rbp)
   140001477:	00 
   140001478:	eb 31                	jmp    1400014ab <getHash+0x5b>
   14000147a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000147e:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140001482:	48 89 55 10          	mov    %rdx,0x10(%rbp)
   140001486:	0f b6 00             	movzbl (%rax),%eax
   140001489:	0f be c0             	movsbl %al,%eax
   14000148c:	83 e8 60             	sub    $0x60,%eax
   14000148f:	48 98                	cltq
   140001491:	48 0f af 45 f0       	imul   -0x10(%rbp),%rax
   140001496:	48 01 45 f8          	add    %rax,-0x8(%rbp)
   14000149a:	8b 45 ec             	mov    -0x14(%rbp),%eax
   14000149d:	48 98                	cltq
   14000149f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   1400014a3:	48 0f af c2          	imul   %rdx,%rax
   1400014a7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400014ab:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400014af:	0f b6 00             	movzbl (%rax),%eax
   1400014b2:	84 c0                	test   %al,%al
   1400014b4:	75 c4                	jne    14000147a <getHash+0x2a>
   1400014b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400014ba:	48 89 c2             	mov    %rax,%rdx
   1400014bd:	48 8d 05 3c 3b 00 00 	lea    0x3b3c(%rip),%rax        # 140005000 <.rdata>
   1400014c4:	48 89 c1             	mov    %rax,%rcx
   1400014c7:	e8 f4 11 00 00       	call   1400026c0 <printf>
   1400014cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400014d0:	48 83 c4 40          	add    $0x40,%rsp
   1400014d4:	5d                   	pop    %rbp
   1400014d5:	c3                   	ret

00000001400014d6 <checkPass>:
   1400014d6:	e8 2a 1a 00 00       	call   140002f05 <__fentry__>
   1400014db:	55                   	push   %rbp
   1400014dc:	48 89 e5             	mov    %rsp,%rbp
   1400014df:	48 83 ec 20          	sub    $0x20,%rsp
   1400014e3:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400014e7:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400014eb:	48 89 c1             	mov    %rax,%rcx
   1400014ee:	e8 5d ff ff ff       	call   140001450 <getHash>
   1400014f3:	48 3d 90 9c 6f 22    	cmp    $0x226f9c90,%rax
   1400014f9:	74 07                	je     140001502 <checkPass+0x2c>
   1400014fb:	b8 01 00 00 00       	mov    $0x1,%eax
   140001500:	eb 05                	jmp    140001507 <checkPass+0x31>
   140001502:	b8 00 00 00 00       	mov    $0x0,%eax
   140001507:	48 83 c4 20          	add    $0x20,%rsp
   14000150b:	5d                   	pop    %rbp
   14000150c:	c3                   	ret

000000014000150d <main>:
   14000150d:	e8 f3 19 00 00       	call   140002f05 <__fentry__>
   140001512:	55                   	push   %rbp
   140001513:	48 89 e5             	mov    %rsp,%rbp
   140001516:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
   14000151d:	e8 ee 1e 00 00       	call   140003410 <_monstartup>
   140001522:	e8 19 01 00 00       	call   140001640 <__main>
   140001527:	48 8d 05 d8 3a 00 00 	lea    0x3ad8(%rip),%rax        # 140005006 <.rdata+0x6>
   14000152e:	48 89 c1             	mov    %rax,%rcx
   140001531:	e8 8a 11 00 00       	call   1400026c0 <printf>
   140001536:	48 8d 45 90          	lea    -0x70(%rbp),%rax
   14000153a:	48 89 c2             	mov    %rax,%rdx
   14000153d:	48 8d 05 d8 3a 00 00 	lea    0x3ad8(%rip),%rax        # 14000501c <.rdata+0x1c>
   140001544:	48 89 c1             	mov    %rax,%rcx
   140001547:	e8 24 11 00 00       	call   140002670 <scanf>
   14000154c:	48 8d 45 90          	lea    -0x70(%rbp),%rax
   140001550:	48 89 c1             	mov    %rax,%rcx
   140001553:	e8 7e ff ff ff       	call   1400014d6 <checkPass>
   140001558:	84 c0                	test   %al,%al
   14000155a:	74 11                	je     14000156d <main+0x60>
   14000155c:	48 8d 05 bc 3a 00 00 	lea    0x3abc(%rip),%rax        # 14000501f <.rdata+0x1f>
   140001563:	48 89 c1             	mov    %rax,%rcx
   140001566:	e8 6d 14 00 00       	call   1400029d8 <puts>
   14000156b:	eb 0f                	jmp    14000157c <main+0x6f>
   14000156d:	48 8d 05 ba 3a 00 00 	lea    0x3aba(%rip),%rax        # 14000502e <.rdata+0x2e>
   140001574:	48 89 c1             	mov    %rax,%rcx
   140001577:	e8 5c 14 00 00       	call   1400029d8 <puts>
   14000157c:	b8 00 00 00 00       	mov    $0x0,%eax
   140001581:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
   140001588:	5d                   	pop    %rbp
   140001589:	c3                   	ret
   14000158a:	90                   	nop
   14000158b:	90                   	nop
   14000158c:	90                   	nop
   14000158d:	90                   	nop
   14000158e:	90                   	nop
   14000158f:	90                   	nop

0000000140001590 <__do_global_dtors>:
   140001590:	48 83 ec 28          	sub    $0x28,%rsp
   140001594:	48 8b 05 65 2a 00 00 	mov    0x2a65(%rip),%rax        # 140004000 <__data_start__>
   14000159b:	48 8b 00             	mov    (%rax),%rax
   14000159e:	48 85 c0             	test   %rax,%rax
   1400015a1:	74 22                	je     1400015c5 <__do_global_dtors+0x35>
   1400015a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400015a8:	ff d0                	call   *%rax
   1400015aa:	48 8b 05 4f 2a 00 00 	mov    0x2a4f(%rip),%rax        # 140004000 <__data_start__>
   1400015b1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400015b5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400015b9:	48 89 15 40 2a 00 00 	mov    %rdx,0x2a40(%rip)        # 140004000 <__data_start__>
   1400015c0:	48 85 c0             	test   %rax,%rax
   1400015c3:	75 e3                	jne    1400015a8 <__do_global_dtors+0x18>
   1400015c5:	48 83 c4 28          	add    $0x28,%rsp
   1400015c9:	c3                   	ret
   1400015ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400015d0 <__do_global_ctors>:
   1400015d0:	56                   	push   %rsi
   1400015d1:	53                   	push   %rbx
   1400015d2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015d6:	48 8b 15 13 3e 00 00 	mov    0x3e13(%rip),%rdx        # 1400053f0 <.refptr.__CTOR_LIST__>
   1400015dd:	48 8b 02             	mov    (%rdx),%rax
   1400015e0:	89 c1                	mov    %eax,%ecx
   1400015e2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400015e5:	74 39                	je     140001620 <__do_global_ctors+0x50>
   1400015e7:	85 c9                	test   %ecx,%ecx
   1400015e9:	74 20                	je     14000160b <__do_global_ctors+0x3b>
   1400015eb:	89 c8                	mov    %ecx,%eax
   1400015ed:	83 e9 01             	sub    $0x1,%ecx
   1400015f0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400015f4:	48 29 c8             	sub    %rcx,%rax
   1400015f7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400015fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001600:	ff 13                	call   *(%rbx)
   140001602:	48 83 eb 08          	sub    $0x8,%rbx
   140001606:	48 39 f3             	cmp    %rsi,%rbx
   140001609:	75 f5                	jne    140001600 <__do_global_ctors+0x30>
   14000160b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001590 <__do_global_dtors>
   140001612:	48 83 c4 28          	add    $0x28,%rsp
   140001616:	5b                   	pop    %rbx
   140001617:	5e                   	pop    %rsi
   140001618:	e9 f3 fd ff ff       	jmp    140001410 <atexit>
   14000161d:	0f 1f 00             	nopl   (%rax)
   140001620:	31 c0                	xor    %eax,%eax
   140001622:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001628:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000162c:	89 c1                	mov    %eax,%ecx
   14000162e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001633:	4c 89 c0             	mov    %r8,%rax
   140001636:	75 f0                	jne    140001628 <__do_global_ctors+0x58>
   140001638:	eb ad                	jmp    1400015e7 <__do_global_ctors+0x17>
   14000163a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001640 <__main>:
   140001640:	8b 05 fa 69 00 00    	mov    0x69fa(%rip),%eax        # 140008040 <initialized>
   140001646:	85 c0                	test   %eax,%eax
   140001648:	74 06                	je     140001650 <__main+0x10>
   14000164a:	c3                   	ret
   14000164b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001650:	c7 05 e6 69 00 00 01 	movl   $0x1,0x69e6(%rip)        # 140008040 <initialized>
   140001657:	00 00 00 
   14000165a:	e9 71 ff ff ff       	jmp    1400015d0 <__do_global_ctors>
   14000165f:	90                   	nop

0000000140001660 <_setargv>:
   140001660:	31 c0                	xor    %eax,%eax
   140001662:	c3                   	ret
   140001663:	90                   	nop
   140001664:	90                   	nop
   140001665:	90                   	nop
   140001666:	90                   	nop
   140001667:	90                   	nop
   140001668:	90                   	nop
   140001669:	90                   	nop
   14000166a:	90                   	nop
   14000166b:	90                   	nop
   14000166c:	90                   	nop
   14000166d:	90                   	nop
   14000166e:	90                   	nop
   14000166f:	90                   	nop

0000000140001670 <__dyn_tls_dtor>:
   140001670:	48 83 ec 28          	sub    $0x28,%rsp
   140001674:	83 fa 03             	cmp    $0x3,%edx
   140001677:	74 17                	je     140001690 <__dyn_tls_dtor+0x20>
   140001679:	85 d2                	test   %edx,%edx
   14000167b:	74 13                	je     140001690 <__dyn_tls_dtor+0x20>
   14000167d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001682:	48 83 c4 28          	add    $0x28,%rsp
   140001686:	c3                   	ret
   140001687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000168e:	00 00 
   140001690:	e8 7b 0a 00 00       	call   140002110 <__mingw_TLScallback>
   140001695:	b8 01 00 00 00       	mov    $0x1,%eax
   14000169a:	48 83 c4 28          	add    $0x28,%rsp
   14000169e:	c3                   	ret
   14000169f:	90                   	nop

00000001400016a0 <__dyn_tls_init>:
   1400016a0:	56                   	push   %rsi
   1400016a1:	53                   	push   %rbx
   1400016a2:	48 83 ec 28          	sub    $0x28,%rsp
   1400016a6:	48 8b 05 23 3d 00 00 	mov    0x3d23(%rip),%rax        # 1400053d0 <.refptr._CRT_MT>
   1400016ad:	83 38 02             	cmpl   $0x2,(%rax)
   1400016b0:	74 06                	je     1400016b8 <__dyn_tls_init+0x18>
   1400016b2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400016b8:	83 fa 02             	cmp    $0x2,%edx
   1400016bb:	74 13                	je     1400016d0 <__dyn_tls_init+0x30>
   1400016bd:	83 fa 01             	cmp    $0x1,%edx
   1400016c0:	74 4e                	je     140001710 <__dyn_tls_init+0x70>
   1400016c2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016c7:	48 83 c4 28          	add    $0x28,%rsp
   1400016cb:	5b                   	pop    %rbx
   1400016cc:	5e                   	pop    %rsi
   1400016cd:	c3                   	ret
   1400016ce:	66 90                	xchg   %ax,%ax
   1400016d0:	48 8d 1d 81 89 00 00 	lea    0x8981(%rip),%rbx        # 14000a058 <__xd_z>
   1400016d7:	48 8d 35 7a 89 00 00 	lea    0x897a(%rip),%rsi        # 14000a058 <__xd_z>
   1400016de:	48 39 f3             	cmp    %rsi,%rbx
   1400016e1:	74 df                	je     1400016c2 <__dyn_tls_init+0x22>
   1400016e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400016e8:	48 8b 03             	mov    (%rbx),%rax
   1400016eb:	48 85 c0             	test   %rax,%rax
   1400016ee:	74 02                	je     1400016f2 <__dyn_tls_init+0x52>
   1400016f0:	ff d0                	call   *%rax
   1400016f2:	48 83 c3 08          	add    $0x8,%rbx
   1400016f6:	48 39 f3             	cmp    %rsi,%rbx
   1400016f9:	75 ed                	jne    1400016e8 <__dyn_tls_init+0x48>
   1400016fb:	b8 01 00 00 00       	mov    $0x1,%eax
   140001700:	48 83 c4 28          	add    $0x28,%rsp
   140001704:	5b                   	pop    %rbx
   140001705:	5e                   	pop    %rsi
   140001706:	c3                   	ret
   140001707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000170e:	00 00 
   140001710:	e8 fb 09 00 00       	call   140002110 <__mingw_TLScallback>
   140001715:	b8 01 00 00 00       	mov    $0x1,%eax
   14000171a:	48 83 c4 28          	add    $0x28,%rsp
   14000171e:	5b                   	pop    %rbx
   14000171f:	5e                   	pop    %rsi
   140001720:	c3                   	ret
   140001721:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001728:	00 00 00 00 
   14000172c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001730 <__tlregdtor>:
   140001730:	31 c0                	xor    %eax,%eax
   140001732:	c3                   	ret
   140001733:	90                   	nop
   140001734:	90                   	nop
   140001735:	90                   	nop
   140001736:	90                   	nop
   140001737:	90                   	nop
   140001738:	90                   	nop
   140001739:	90                   	nop
   14000173a:	90                   	nop
   14000173b:	90                   	nop
   14000173c:	90                   	nop
   14000173d:	90                   	nop
   14000173e:	90                   	nop
   14000173f:	90                   	nop

0000000140001740 <_matherr>:
   140001740:	56                   	push   %rsi
   140001741:	53                   	push   %rbx
   140001742:	48 83 ec 78          	sub    $0x78,%rsp
   140001746:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000174b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140001750:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140001756:	83 39 06             	cmpl   $0x6,(%rcx)
   140001759:	0f 87 cd 00 00 00    	ja     14000182c <_matherr+0xec>
   14000175f:	8b 01                	mov    (%rcx),%eax
   140001761:	48 8d 15 5c 3a 00 00 	lea    0x3a5c(%rip),%rdx        # 1400051c4 <.rdata+0x124>
   140001768:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000176c:	48 01 d0             	add    %rdx,%rax
   14000176f:	ff e0                	jmp    *%rax
   140001771:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001778:	48 8d 1d 40 39 00 00 	lea    0x3940(%rip),%rbx        # 1400050bf <.rdata+0x1f>
   14000177f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001785:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000178a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000178f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001793:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001798:	e8 03 12 00 00       	call   1400029a0 <__acrt_iob_func>
   14000179d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400017a4:	49 89 d8             	mov    %rbx,%r8
   1400017a7:	48 8d 15 ea 39 00 00 	lea    0x39ea(%rip),%rdx        # 140005198 <.rdata+0xf8>
   1400017ae:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400017b4:	48 89 c1             	mov    %rax,%rcx
   1400017b7:	49 89 f1             	mov    %rsi,%r9
   1400017ba:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400017c0:	e8 4b 0f 00 00       	call   140002710 <fprintf>
   1400017c5:	90                   	nop
   1400017c6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   1400017cb:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   1400017d0:	31 c0                	xor    %eax,%eax
   1400017d2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   1400017d8:	48 83 c4 78          	add    $0x78,%rsp
   1400017dc:	5b                   	pop    %rbx
   1400017dd:	5e                   	pop    %rsi
   1400017de:	c3                   	ret
   1400017df:	90                   	nop
   1400017e0:	48 8d 1d b9 38 00 00 	lea    0x38b9(%rip),%rbx        # 1400050a0 <.rdata>
   1400017e7:	eb 96                	jmp    14000177f <_matherr+0x3f>
   1400017e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017f0:	48 8d 1d 09 39 00 00 	lea    0x3909(%rip),%rbx        # 140005100 <.rdata+0x60>
   1400017f7:	eb 86                	jmp    14000177f <_matherr+0x3f>
   1400017f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001800:	48 8d 1d d9 38 00 00 	lea    0x38d9(%rip),%rbx        # 1400050e0 <.rdata+0x40>
   140001807:	e9 73 ff ff ff       	jmp    14000177f <_matherr+0x3f>
   14000180c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001810:	48 8d 1d 39 39 00 00 	lea    0x3939(%rip),%rbx        # 140005150 <.rdata+0xb0>
   140001817:	e9 63 ff ff ff       	jmp    14000177f <_matherr+0x3f>
   14000181c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001820:	48 8d 1d 01 39 00 00 	lea    0x3901(%rip),%rbx        # 140005128 <.rdata+0x88>
   140001827:	e9 53 ff ff ff       	jmp    14000177f <_matherr+0x3f>
   14000182c:	48 8d 1d 53 39 00 00 	lea    0x3953(%rip),%rbx        # 140005186 <.rdata+0xe6>
   140001833:	e9 47 ff ff ff       	jmp    14000177f <_matherr+0x3f>
   140001838:	90                   	nop
   140001839:	90                   	nop
   14000183a:	90                   	nop
   14000183b:	90                   	nop
   14000183c:	90                   	nop
   14000183d:	90                   	nop
   14000183e:	90                   	nop
   14000183f:	90                   	nop

0000000140001840 <_fpreset>:
   140001840:	db e3                	fninit
   140001842:	c3                   	ret
   140001843:	90                   	nop
   140001844:	90                   	nop
   140001845:	90                   	nop
   140001846:	90                   	nop
   140001847:	90                   	nop
   140001848:	90                   	nop
   140001849:	90                   	nop
   14000184a:	90                   	nop
   14000184b:	90                   	nop
   14000184c:	90                   	nop
   14000184d:	90                   	nop
   14000184e:	90                   	nop
   14000184f:	90                   	nop

0000000140001850 <__report_error>:
   140001850:	56                   	push   %rsi
   140001851:	53                   	push   %rbx
   140001852:	48 83 ec 38          	sub    $0x38,%rsp
   140001856:	48 89 cb             	mov    %rcx,%rbx
   140001859:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000185e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001863:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001868:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000186d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001872:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001877:	e8 24 11 00 00       	call   1400029a0 <__acrt_iob_func>
   14000187c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001882:	ba 01 00 00 00       	mov    $0x1,%edx
   140001887:	48 8d 0d 52 39 00 00 	lea    0x3952(%rip),%rcx        # 1400051e0 <.rdata>
   14000188e:	49 89 c1             	mov    %rax,%r9
   140001891:	e8 3a 11 00 00       	call   1400029d0 <fwrite>
   140001896:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   14000189b:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400018a0:	e8 fb 10 00 00       	call   1400029a0 <__acrt_iob_func>
   1400018a5:	48 89 da             	mov    %rbx,%rdx
   1400018a8:	48 89 c1             	mov    %rax,%rcx
   1400018ab:	49 89 f0             	mov    %rsi,%r8
   1400018ae:	e8 9d 0d 00 00       	call   140002650 <vfprintf>
   1400018b3:	e8 98 11 00 00       	call   140002a50 <abort>
   1400018b8:	90                   	nop
   1400018b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400018c0 <mark_section_writable>:
   1400018c0:	57                   	push   %rdi
   1400018c1:	56                   	push   %rsi
   1400018c2:	53                   	push   %rbx
   1400018c3:	48 83 ec 50          	sub    $0x50,%rsp
   1400018c7:	48 63 35 d6 67 00 00 	movslq 0x67d6(%rip),%rsi        # 1400080a4 <maxSections>
   1400018ce:	48 89 cb             	mov    %rcx,%rbx
   1400018d1:	85 f6                	test   %esi,%esi
   1400018d3:	0f 8e 17 01 00 00    	jle    1400019f0 <mark_section_writable+0x130>
   1400018d9:	48 8b 05 c8 67 00 00 	mov    0x67c8(%rip),%rax        # 1400080a8 <the_secs>
   1400018e0:	45 31 c9             	xor    %r9d,%r9d
   1400018e3:	48 83 c0 18          	add    $0x18,%rax
   1400018e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400018ee:	00 00 
   1400018f0:	4c 8b 00             	mov    (%rax),%r8
   1400018f3:	4c 39 c3             	cmp    %r8,%rbx
   1400018f6:	72 13                	jb     14000190b <mark_section_writable+0x4b>
   1400018f8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400018fc:	8b 52 08             	mov    0x8(%rdx),%edx
   1400018ff:	49 01 d0             	add    %rdx,%r8
   140001902:	4c 39 c3             	cmp    %r8,%rbx
   140001905:	0f 82 8a 00 00 00    	jb     140001995 <mark_section_writable+0xd5>
   14000190b:	41 83 c1 01          	add    $0x1,%r9d
   14000190f:	48 83 c0 28          	add    $0x28,%rax
   140001913:	41 39 f1             	cmp    %esi,%r9d
   140001916:	75 d8                	jne    1400018f0 <mark_section_writable+0x30>
   140001918:	48 89 d9             	mov    %rbx,%rcx
   14000191b:	e8 10 0a 00 00       	call   140002330 <__mingw_GetSectionForAddress>
   140001920:	48 89 c7             	mov    %rax,%rdi
   140001923:	48 85 c0             	test   %rax,%rax
   140001926:	0f 84 e6 00 00 00    	je     140001a12 <mark_section_writable+0x152>
   14000192c:	48 8b 05 75 67 00 00 	mov    0x6775(%rip),%rax        # 1400080a8 <the_secs>
   140001933:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140001937:	48 c1 e3 03          	shl    $0x3,%rbx
   14000193b:	48 01 d8             	add    %rbx,%rax
   14000193e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140001942:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001948:	e8 23 0b 00 00       	call   140002470 <_GetPEImageBase>
   14000194d:	8b 57 0c             	mov    0xc(%rdi),%edx
   140001950:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001956:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000195a:	48 8b 05 47 67 00 00 	mov    0x6747(%rip),%rax        # 1400080a8 <the_secs>
   140001961:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001966:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000196b:	ff 15 5f 7a 00 00    	call   *0x7a5f(%rip)        # 1400093d0 <__imp_VirtualQuery>
   140001971:	48 85 c0             	test   %rax,%rax
   140001974:	0f 84 7d 00 00 00    	je     1400019f7 <mark_section_writable+0x137>
   14000197a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000197e:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001981:	83 e2 fb             	and    $0xfffffffb,%edx
   140001984:	74 08                	je     14000198e <mark_section_writable+0xce>
   140001986:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001989:	83 e2 bf             	and    $0xffffffbf,%edx
   14000198c:	75 12                	jne    1400019a0 <mark_section_writable+0xe0>
   14000198e:	83 05 0f 67 00 00 01 	addl   $0x1,0x670f(%rip)        # 1400080a4 <maxSections>
   140001995:	48 83 c4 50          	add    $0x50,%rsp
   140001999:	5b                   	pop    %rbx
   14000199a:	5e                   	pop    %rsi
   14000199b:	5f                   	pop    %rdi
   14000199c:	c3                   	ret
   14000199d:	0f 1f 00             	nopl   (%rax)
   1400019a0:	83 f8 02             	cmp    $0x2,%eax
   1400019a3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400019a8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400019ad:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   1400019b3:	b8 04 00 00 00       	mov    $0x4,%eax
   1400019b8:	44 0f 44 c0          	cmove  %eax,%r8d
   1400019bc:	48 03 1d e5 66 00 00 	add    0x66e5(%rip),%rbx        # 1400080a8 <the_secs>
   1400019c3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400019c7:	49 89 d9             	mov    %rbx,%r9
   1400019ca:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400019ce:	ff 15 f4 79 00 00    	call   *0x79f4(%rip)        # 1400093c8 <__imp_VirtualProtect>
   1400019d4:	85 c0                	test   %eax,%eax
   1400019d6:	75 b6                	jne    14000198e <mark_section_writable+0xce>
   1400019d8:	ff 15 92 79 00 00    	call   *0x7992(%rip)        # 140009370 <__imp_GetLastError>
   1400019de:	48 8d 0d 73 38 00 00 	lea    0x3873(%rip),%rcx        # 140005258 <.rdata+0x78>
   1400019e5:	89 c2                	mov    %eax,%edx
   1400019e7:	e8 64 fe ff ff       	call   140001850 <__report_error>
   1400019ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400019f0:	31 f6                	xor    %esi,%esi
   1400019f2:	e9 21 ff ff ff       	jmp    140001918 <mark_section_writable+0x58>
   1400019f7:	48 8b 05 aa 66 00 00 	mov    0x66aa(%rip),%rax        # 1400080a8 <the_secs>
   1400019fe:	8b 57 08             	mov    0x8(%rdi),%edx
   140001a01:	48 8d 0d 18 38 00 00 	lea    0x3818(%rip),%rcx        # 140005220 <.rdata+0x40>
   140001a08:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   140001a0d:	e8 3e fe ff ff       	call   140001850 <__report_error>
   140001a12:	48 89 da             	mov    %rbx,%rdx
   140001a15:	48 8d 0d e4 37 00 00 	lea    0x37e4(%rip),%rcx        # 140005200 <.rdata+0x20>
   140001a1c:	e8 2f fe ff ff       	call   140001850 <__report_error>
   140001a21:	90                   	nop
   140001a22:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001a29:	00 00 00 00 
   140001a2d:	0f 1f 00             	nopl   (%rax)

0000000140001a30 <_pei386_runtime_relocator>:
   140001a30:	55                   	push   %rbp
   140001a31:	41 57                	push   %r15
   140001a33:	41 56                	push   %r14
   140001a35:	41 55                	push   %r13
   140001a37:	41 54                	push   %r12
   140001a39:	57                   	push   %rdi
   140001a3a:	56                   	push   %rsi
   140001a3b:	53                   	push   %rbx
   140001a3c:	48 83 ec 48          	sub    $0x48,%rsp
   140001a40:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001a45:	44 8b 25 54 66 00 00 	mov    0x6654(%rip),%r12d        # 1400080a0 <was_init.0>
   140001a4c:	45 85 e4             	test   %r12d,%r12d
   140001a4f:	74 17                	je     140001a68 <_pei386_runtime_relocator+0x38>
   140001a51:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001a55:	5b                   	pop    %rbx
   140001a56:	5e                   	pop    %rsi
   140001a57:	5f                   	pop    %rdi
   140001a58:	41 5c                	pop    %r12
   140001a5a:	41 5d                	pop    %r13
   140001a5c:	41 5e                	pop    %r14
   140001a5e:	41 5f                	pop    %r15
   140001a60:	5d                   	pop    %rbp
   140001a61:	c3                   	ret
   140001a62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001a68:	c7 05 2e 66 00 00 01 	movl   $0x1,0x662e(%rip)        # 1400080a0 <was_init.0>
   140001a6f:	00 00 00 
   140001a72:	e8 39 09 00 00       	call   1400023b0 <__mingw_GetSectionCount>
   140001a77:	48 98                	cltq
   140001a79:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001a7d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001a84:	00 
   140001a85:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001a89:	e8 82 0b 00 00       	call   140002610 <___chkstk_ms>
   140001a8e:	4c 8b 2d 7b 39 00 00 	mov    0x397b(%rip),%r13        # 140005410 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001a95:	48 8b 1d 84 39 00 00 	mov    0x3984(%rip),%rbx        # 140005420 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001a9c:	c7 05 fe 65 00 00 00 	movl   $0x0,0x65fe(%rip)        # 1400080a4 <maxSections>
   140001aa3:	00 00 00 
   140001aa6:	48 29 c4             	sub    %rax,%rsp
   140001aa9:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140001aae:	48 89 05 f3 65 00 00 	mov    %rax,0x65f3(%rip)        # 1400080a8 <the_secs>
   140001ab5:	4c 89 e8             	mov    %r13,%rax
   140001ab8:	48 29 d8             	sub    %rbx,%rax
   140001abb:	48 83 f8 07          	cmp    $0x7,%rax
   140001abf:	7e 90                	jle    140001a51 <_pei386_runtime_relocator+0x21>
   140001ac1:	8b 13                	mov    (%rbx),%edx
   140001ac3:	48 83 f8 0b          	cmp    $0xb,%rax
   140001ac7:	0f 8f 03 01 00 00    	jg     140001bd0 <_pei386_runtime_relocator+0x1a0>
   140001acd:	8b 03                	mov    (%rbx),%eax
   140001acf:	85 c0                	test   %eax,%eax
   140001ad1:	0f 85 69 02 00 00    	jne    140001d40 <_pei386_runtime_relocator+0x310>
   140001ad7:	8b 43 04             	mov    0x4(%rbx),%eax
   140001ada:	85 c0                	test   %eax,%eax
   140001adc:	0f 85 5e 02 00 00    	jne    140001d40 <_pei386_runtime_relocator+0x310>
   140001ae2:	8b 53 08             	mov    0x8(%rbx),%edx
   140001ae5:	83 fa 01             	cmp    $0x1,%edx
   140001ae8:	0f 85 92 02 00 00    	jne    140001d80 <_pei386_runtime_relocator+0x350>
   140001aee:	48 83 c3 0c          	add    $0xc,%rbx
   140001af2:	4c 39 eb             	cmp    %r13,%rbx
   140001af5:	0f 83 56 ff ff ff    	jae    140001a51 <_pei386_runtime_relocator+0x21>
   140001afb:	4c 8b 35 fe 38 00 00 	mov    0x38fe(%rip),%r14        # 140005400 <.refptr.__ImageBase>
   140001b02:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   140001b08:	eb 65                	jmp    140001b6f <_pei386_runtime_relocator+0x13f>
   140001b0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001b10:	83 f9 08             	cmp    $0x8,%ecx
   140001b13:	0f 84 d7 00 00 00    	je     140001bf0 <_pei386_runtime_relocator+0x1c0>
   140001b19:	83 f9 10             	cmp    $0x10,%ecx
   140001b1c:	0f 85 50 02 00 00    	jne    140001d72 <_pei386_runtime_relocator+0x342>
   140001b22:	0f b7 37             	movzwl (%rdi),%esi
   140001b25:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001b2b:	66 85 f6             	test   %si,%si
   140001b2e:	0f 89 cc 01 00 00    	jns    140001d00 <_pei386_runtime_relocator+0x2d0>
   140001b34:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   140001b3b:	48 29 c6             	sub    %rax,%rsi
   140001b3e:	4c 01 ce             	add    %r9,%rsi
   140001b41:	85 d2                	test   %edx,%edx
   140001b43:	75 12                	jne    140001b57 <_pei386_runtime_relocator+0x127>
   140001b45:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   140001b4c:	7c 65                	jl     140001bb3 <_pei386_runtime_relocator+0x183>
   140001b4e:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   140001b55:	7f 5c                	jg     140001bb3 <_pei386_runtime_relocator+0x183>
   140001b57:	48 89 f9             	mov    %rdi,%rcx
   140001b5a:	e8 61 fd ff ff       	call   1400018c0 <mark_section_writable>
   140001b5f:	66 89 37             	mov    %si,(%rdi)
   140001b62:	48 83 c3 0c          	add    $0xc,%rbx
   140001b66:	4c 39 eb             	cmp    %r13,%rbx
   140001b69:	0f 83 d1 00 00 00    	jae    140001c40 <_pei386_runtime_relocator+0x210>
   140001b6f:	8b 03                	mov    (%rbx),%eax
   140001b71:	8b 53 08             	mov    0x8(%rbx),%edx
   140001b74:	8b 7b 04             	mov    0x4(%rbx),%edi
   140001b77:	4c 01 f0             	add    %r14,%rax
   140001b7a:	0f b6 ca             	movzbl %dl,%ecx
   140001b7d:	4c 8b 08             	mov    (%rax),%r9
   140001b80:	4c 01 f7             	add    %r14,%rdi
   140001b83:	83 f9 20             	cmp    $0x20,%ecx
   140001b86:	0f 84 0c 01 00 00    	je     140001c98 <_pei386_runtime_relocator+0x268>
   140001b8c:	76 82                	jbe    140001b10 <_pei386_runtime_relocator+0xe0>
   140001b8e:	83 f9 40             	cmp    $0x40,%ecx
   140001b91:	0f 85 db 01 00 00    	jne    140001d72 <_pei386_runtime_relocator+0x342>
   140001b97:	48 8b 37             	mov    (%rdi),%rsi
   140001b9a:	89 d1                	mov    %edx,%ecx
   140001b9c:	48 29 c6             	sub    %rax,%rsi
   140001b9f:	4c 01 ce             	add    %r9,%rsi
   140001ba2:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001ba8:	0f 85 42 01 00 00    	jne    140001cf0 <_pei386_runtime_relocator+0x2c0>
   140001bae:	48 85 f6             	test   %rsi,%rsi
   140001bb1:	78 af                	js     140001b62 <_pei386_runtime_relocator+0x132>
   140001bb3:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140001bb8:	89 ca                	mov    %ecx,%edx
   140001bba:	49 89 f8             	mov    %rdi,%r8
   140001bbd:	48 8d 0d 24 37 00 00 	lea    0x3724(%rip),%rcx        # 1400052e8 <.rdata+0x108>
   140001bc4:	e8 87 fc ff ff       	call   140001850 <__report_error>
   140001bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001bd0:	85 d2                	test   %edx,%edx
   140001bd2:	0f 85 68 01 00 00    	jne    140001d40 <_pei386_runtime_relocator+0x310>
   140001bd8:	8b 43 04             	mov    0x4(%rbx),%eax
   140001bdb:	89 c2                	mov    %eax,%edx
   140001bdd:	0b 53 08             	or     0x8(%rbx),%edx
   140001be0:	0f 85 f4 fe ff ff    	jne    140001ada <_pei386_runtime_relocator+0xaa>
   140001be6:	48 83 c3 0c          	add    $0xc,%rbx
   140001bea:	e9 de fe ff ff       	jmp    140001acd <_pei386_runtime_relocator+0x9d>
   140001bef:	90                   	nop
   140001bf0:	0f b6 37             	movzbl (%rdi),%esi
   140001bf3:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001bf9:	40 84 f6             	test   %sil,%sil
   140001bfc:	0f 89 26 01 00 00    	jns    140001d28 <_pei386_runtime_relocator+0x2f8>
   140001c02:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140001c09:	48 29 c6             	sub    %rax,%rsi
   140001c0c:	4c 01 ce             	add    %r9,%rsi
   140001c0f:	85 d2                	test   %edx,%edx
   140001c11:	75 0f                	jne    140001c22 <_pei386_runtime_relocator+0x1f2>
   140001c13:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140001c1a:	7f 97                	jg     140001bb3 <_pei386_runtime_relocator+0x183>
   140001c1c:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140001c20:	7c 91                	jl     140001bb3 <_pei386_runtime_relocator+0x183>
   140001c22:	48 89 f9             	mov    %rdi,%rcx
   140001c25:	48 83 c3 0c          	add    $0xc,%rbx
   140001c29:	e8 92 fc ff ff       	call   1400018c0 <mark_section_writable>
   140001c2e:	40 88 37             	mov    %sil,(%rdi)
   140001c31:	4c 39 eb             	cmp    %r13,%rbx
   140001c34:	0f 82 35 ff ff ff    	jb     140001b6f <_pei386_runtime_relocator+0x13f>
   140001c3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001c40:	8b 15 5e 64 00 00    	mov    0x645e(%rip),%edx        # 1400080a4 <maxSections>
   140001c46:	85 d2                	test   %edx,%edx
   140001c48:	0f 8e 03 fe ff ff    	jle    140001a51 <_pei386_runtime_relocator+0x21>
   140001c4e:	48 8b 35 73 77 00 00 	mov    0x7773(%rip),%rsi        # 1400093c8 <__imp_VirtualProtect>
   140001c55:	31 db                	xor    %ebx,%ebx
   140001c57:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   140001c5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c60:	48 8b 05 41 64 00 00 	mov    0x6441(%rip),%rax        # 1400080a8 <the_secs>
   140001c67:	48 01 d8             	add    %rbx,%rax
   140001c6a:	44 8b 00             	mov    (%rax),%r8d
   140001c6d:	45 85 c0             	test   %r8d,%r8d
   140001c70:	74 0d                	je     140001c7f <_pei386_runtime_relocator+0x24f>
   140001c72:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001c76:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001c7a:	49 89 f9             	mov    %rdi,%r9
   140001c7d:	ff d6                	call   *%rsi
   140001c7f:	41 83 c4 01          	add    $0x1,%r12d
   140001c83:	48 83 c3 28          	add    $0x28,%rbx
   140001c87:	44 3b 25 16 64 00 00 	cmp    0x6416(%rip),%r12d        # 1400080a4 <maxSections>
   140001c8e:	7c d0                	jl     140001c60 <_pei386_runtime_relocator+0x230>
   140001c90:	e9 bc fd ff ff       	jmp    140001a51 <_pei386_runtime_relocator+0x21>
   140001c95:	0f 1f 00             	nopl   (%rax)
   140001c98:	8b 37                	mov    (%rdi),%esi
   140001c9a:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001ca0:	85 f6                	test   %esi,%esi
   140001ca2:	79 74                	jns    140001d18 <_pei386_runtime_relocator+0x2e8>
   140001ca4:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140001cab:	ff ff ff 
   140001cae:	4c 09 de             	or     %r11,%rsi
   140001cb1:	48 29 c6             	sub    %rax,%rsi
   140001cb4:	4c 01 ce             	add    %r9,%rsi
   140001cb7:	85 d2                	test   %edx,%edx
   140001cb9:	75 1c                	jne    140001cd7 <_pei386_runtime_relocator+0x2a7>
   140001cbb:	4c 39 fe             	cmp    %r15,%rsi
   140001cbe:	0f 8f ef fe ff ff    	jg     140001bb3 <_pei386_runtime_relocator+0x183>
   140001cc4:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   140001ccb:	ff ff ff 
   140001cce:	48 39 c6             	cmp    %rax,%rsi
   140001cd1:	0f 8e dc fe ff ff    	jle    140001bb3 <_pei386_runtime_relocator+0x183>
   140001cd7:	48 89 f9             	mov    %rdi,%rcx
   140001cda:	e8 e1 fb ff ff       	call   1400018c0 <mark_section_writable>
   140001cdf:	89 37                	mov    %esi,(%rdi)
   140001ce1:	e9 7c fe ff ff       	jmp    140001b62 <_pei386_runtime_relocator+0x132>
   140001ce6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001ced:	00 00 00 
   140001cf0:	48 89 f9             	mov    %rdi,%rcx
   140001cf3:	e8 c8 fb ff ff       	call   1400018c0 <mark_section_writable>
   140001cf8:	48 89 37             	mov    %rsi,(%rdi)
   140001cfb:	e9 62 fe ff ff       	jmp    140001b62 <_pei386_runtime_relocator+0x132>
   140001d00:	48 29 c6             	sub    %rax,%rsi
   140001d03:	4c 01 ce             	add    %r9,%rsi
   140001d06:	85 d2                	test   %edx,%edx
   140001d08:	0f 84 37 fe ff ff    	je     140001b45 <_pei386_runtime_relocator+0x115>
   140001d0e:	e9 44 fe ff ff       	jmp    140001b57 <_pei386_runtime_relocator+0x127>
   140001d13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001d18:	48 29 c6             	sub    %rax,%rsi
   140001d1b:	4c 01 ce             	add    %r9,%rsi
   140001d1e:	85 d2                	test   %edx,%edx
   140001d20:	74 99                	je     140001cbb <_pei386_runtime_relocator+0x28b>
   140001d22:	eb b3                	jmp    140001cd7 <_pei386_runtime_relocator+0x2a7>
   140001d24:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d28:	48 29 c6             	sub    %rax,%rsi
   140001d2b:	4c 01 ce             	add    %r9,%rsi
   140001d2e:	85 d2                	test   %edx,%edx
   140001d30:	0f 84 dd fe ff ff    	je     140001c13 <_pei386_runtime_relocator+0x1e3>
   140001d36:	e9 e7 fe ff ff       	jmp    140001c22 <_pei386_runtime_relocator+0x1f2>
   140001d3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001d40:	4c 39 eb             	cmp    %r13,%rbx
   140001d43:	0f 83 08 fd ff ff    	jae    140001a51 <_pei386_runtime_relocator+0x21>
   140001d49:	4c 8b 35 b0 36 00 00 	mov    0x36b0(%rip),%r14        # 140005400 <.refptr.__ImageBase>
   140001d50:	8b 73 04             	mov    0x4(%rbx),%esi
   140001d53:	8b 3b                	mov    (%rbx),%edi
   140001d55:	48 83 c3 08          	add    $0x8,%rbx
   140001d59:	4c 01 f6             	add    %r14,%rsi
   140001d5c:	03 3e                	add    (%rsi),%edi
   140001d5e:	48 89 f1             	mov    %rsi,%rcx
   140001d61:	e8 5a fb ff ff       	call   1400018c0 <mark_section_writable>
   140001d66:	89 3e                	mov    %edi,(%rsi)
   140001d68:	4c 39 eb             	cmp    %r13,%rbx
   140001d6b:	72 e3                	jb     140001d50 <_pei386_runtime_relocator+0x320>
   140001d6d:	e9 ce fe ff ff       	jmp    140001c40 <_pei386_runtime_relocator+0x210>
   140001d72:	89 ca                	mov    %ecx,%edx
   140001d74:	48 8d 0d 3d 35 00 00 	lea    0x353d(%rip),%rcx        # 1400052b8 <.rdata+0xd8>
   140001d7b:	e8 d0 fa ff ff       	call   140001850 <__report_error>
   140001d80:	48 8d 0d f9 34 00 00 	lea    0x34f9(%rip),%rcx        # 140005280 <.rdata+0xa0>
   140001d87:	e8 c4 fa ff ff       	call   140001850 <__report_error>
   140001d8c:	90                   	nop
   140001d8d:	90                   	nop
   140001d8e:	90                   	nop
   140001d8f:	90                   	nop

0000000140001d90 <__mingw_raise_matherr>:
   140001d90:	48 83 ec 58          	sub    $0x58,%rsp
   140001d94:	48 8b 05 15 63 00 00 	mov    0x6315(%rip),%rax        # 1400080b0 <stUserMathErr>
   140001d9b:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140001d9f:	48 85 c0             	test   %rax,%rax
   140001da2:	74 25                	je     140001dc9 <__mingw_raise_matherr+0x39>
   140001da4:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001dab:	00 00 
   140001dad:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001db1:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001db6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001dbb:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140001dc0:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001dc6:	ff d0                	call   *%rax
   140001dc8:	90                   	nop
   140001dc9:	48 83 c4 58          	add    $0x58,%rsp
   140001dcd:	c3                   	ret
   140001dce:	66 90                	xchg   %ax,%ax

0000000140001dd0 <__mingw_setusermatherr>:
   140001dd0:	48 89 0d d9 62 00 00 	mov    %rcx,0x62d9(%rip)        # 1400080b0 <stUserMathErr>
   140001dd7:	e9 a4 0c 00 00       	jmp    140002a80 <__setusermatherr>
   140001ddc:	90                   	nop
   140001ddd:	90                   	nop
   140001dde:	90                   	nop
   140001ddf:	90                   	nop

0000000140001de0 <_gnu_exception_handler>:
   140001de0:	53                   	push   %rbx
   140001de1:	48 83 ec 20          	sub    $0x20,%rsp
   140001de5:	48 8b 11             	mov    (%rcx),%rdx
   140001de8:	8b 02                	mov    (%rdx),%eax
   140001dea:	48 89 cb             	mov    %rcx,%rbx
   140001ded:	89 c1                	mov    %eax,%ecx
   140001def:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001df5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001dfb:	0f 84 bf 00 00 00    	je     140001ec0 <_gnu_exception_handler+0xe0>
   140001e01:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001e06:	77 47                	ja     140001e4f <_gnu_exception_handler+0x6f>
   140001e08:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001e0d:	76 61                	jbe    140001e70 <_gnu_exception_handler+0x90>
   140001e0f:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001e14:	83 f8 09             	cmp    $0x9,%eax
   140001e17:	0f 87 93 00 00 00    	ja     140001eb0 <_gnu_exception_handler+0xd0>
   140001e1d:	48 8d 15 1c 35 00 00 	lea    0x351c(%rip),%rdx        # 140005340 <.rdata>
   140001e24:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001e28:	48 01 d0             	add    %rdx,%rax
   140001e2b:	ff e0                	jmp    *%rax
   140001e2d:	0f 1f 00             	nopl   (%rax)
   140001e30:	31 d2                	xor    %edx,%edx
   140001e32:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e37:	e8 24 0c 00 00       	call   140002a60 <signal>
   140001e3c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e40:	0f 84 3e 01 00 00    	je     140001f84 <_gnu_exception_handler+0x1a4>
   140001e46:	48 85 c0             	test   %rax,%rax
   140001e49:	0f 85 01 01 00 00    	jne    140001f50 <_gnu_exception_handler+0x170>
   140001e4f:	48 8b 05 7a 62 00 00 	mov    0x627a(%rip),%rax        # 1400080d0 <__mingw_oldexcpt_handler>
   140001e56:	48 85 c0             	test   %rax,%rax
   140001e59:	74 75                	je     140001ed0 <_gnu_exception_handler+0xf0>
   140001e5b:	48 89 d9             	mov    %rbx,%rcx
   140001e5e:	48 83 c4 20          	add    $0x20,%rsp
   140001e62:	5b                   	pop    %rbx
   140001e63:	48 ff e0             	rex.W jmp *%rax
   140001e66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001e6d:	00 00 00 
   140001e70:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001e75:	0f 84 a5 00 00 00    	je     140001f20 <_gnu_exception_handler+0x140>
   140001e7b:	76 63                	jbe    140001ee0 <_gnu_exception_handler+0x100>
   140001e7d:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001e82:	74 2c                	je     140001eb0 <_gnu_exception_handler+0xd0>
   140001e84:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001e89:	75 c4                	jne    140001e4f <_gnu_exception_handler+0x6f>
   140001e8b:	31 d2                	xor    %edx,%edx
   140001e8d:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001e92:	e8 c9 0b 00 00       	call   140002a60 <signal>
   140001e97:	48 83 f8 01          	cmp    $0x1,%rax
   140001e9b:	0f 84 cf 00 00 00    	je     140001f70 <_gnu_exception_handler+0x190>
   140001ea1:	48 85 c0             	test   %rax,%rax
   140001ea4:	74 a9                	je     140001e4f <_gnu_exception_handler+0x6f>
   140001ea6:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001eab:	ff d0                	call   *%rax
   140001ead:	0f 1f 00             	nopl   (%rax)
   140001eb0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001eb5:	eb 1b                	jmp    140001ed2 <_gnu_exception_handler+0xf2>
   140001eb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001ebe:	00 00 
   140001ec0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001ec4:	0f 85 37 ff ff ff    	jne    140001e01 <_gnu_exception_handler+0x21>
   140001eca:	eb e4                	jmp    140001eb0 <_gnu_exception_handler+0xd0>
   140001ecc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ed0:	31 c0                	xor    %eax,%eax
   140001ed2:	48 83 c4 20          	add    $0x20,%rsp
   140001ed6:	5b                   	pop    %rbx
   140001ed7:	c3                   	ret
   140001ed8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001edf:	00 
   140001ee0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001ee5:	0f 85 64 ff ff ff    	jne    140001e4f <_gnu_exception_handler+0x6f>
   140001eeb:	eb c3                	jmp    140001eb0 <_gnu_exception_handler+0xd0>
   140001eed:	0f 1f 00             	nopl   (%rax)
   140001ef0:	31 d2                	xor    %edx,%edx
   140001ef2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ef7:	e8 64 0b 00 00       	call   140002a60 <signal>
   140001efc:	48 83 f8 01          	cmp    $0x1,%rax
   140001f00:	0f 85 40 ff ff ff    	jne    140001e46 <_gnu_exception_handler+0x66>
   140001f06:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f0b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f10:	e8 4b 0b 00 00       	call   140002a60 <signal>
   140001f15:	eb 99                	jmp    140001eb0 <_gnu_exception_handler+0xd0>
   140001f17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001f1e:	00 00 
   140001f20:	31 d2                	xor    %edx,%edx
   140001f22:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f27:	e8 34 0b 00 00       	call   140002a60 <signal>
   140001f2c:	48 83 f8 01          	cmp    $0x1,%rax
   140001f30:	74 2a                	je     140001f5c <_gnu_exception_handler+0x17c>
   140001f32:	48 85 c0             	test   %rax,%rax
   140001f35:	0f 84 14 ff ff ff    	je     140001e4f <_gnu_exception_handler+0x6f>
   140001f3b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f40:	ff d0                	call   *%rax
   140001f42:	e9 69 ff ff ff       	jmp    140001eb0 <_gnu_exception_handler+0xd0>
   140001f47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001f4e:	00 00 
   140001f50:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f55:	ff d0                	call   *%rax
   140001f57:	e9 54 ff ff ff       	jmp    140001eb0 <_gnu_exception_handler+0xd0>
   140001f5c:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f61:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f66:	e8 f5 0a 00 00       	call   140002a60 <signal>
   140001f6b:	e9 40 ff ff ff       	jmp    140001eb0 <_gnu_exception_handler+0xd0>
   140001f70:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f75:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001f7a:	e8 e1 0a 00 00       	call   140002a60 <signal>
   140001f7f:	e9 2c ff ff ff       	jmp    140001eb0 <_gnu_exception_handler+0xd0>
   140001f84:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f89:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f8e:	e8 cd 0a 00 00       	call   140002a60 <signal>
   140001f93:	e8 a8 f8 ff ff       	call   140001840 <_fpreset>
   140001f98:	e9 13 ff ff ff       	jmp    140001eb0 <_gnu_exception_handler+0xd0>
   140001f9d:	90                   	nop
   140001f9e:	90                   	nop
   140001f9f:	90                   	nop

0000000140001fa0 <__mingwthr_run_key_dtors.part.0>:
   140001fa0:	41 54                	push   %r12
   140001fa2:	55                   	push   %rbp
   140001fa3:	57                   	push   %rdi
   140001fa4:	56                   	push   %rsi
   140001fa5:	53                   	push   %rbx
   140001fa6:	48 83 ec 20          	sub    $0x20,%rsp
   140001faa:	4c 8d 25 4f 61 00 00 	lea    0x614f(%rip),%r12        # 140008100 <__mingwthr_cs>
   140001fb1:	4c 89 e1             	mov    %r12,%rcx
   140001fb4:	ff 15 9e 73 00 00    	call   *0x739e(%rip)        # 140009358 <__imp_EnterCriticalSection>
   140001fba:	48 8b 1d 1f 61 00 00 	mov    0x611f(%rip),%rbx        # 1400080e0 <key_dtor_list>
   140001fc1:	48 85 db             	test   %rbx,%rbx
   140001fc4:	74 36                	je     140001ffc <__mingwthr_run_key_dtors.part.0+0x5c>
   140001fc6:	48 8b 2d f3 73 00 00 	mov    0x73f3(%rip),%rbp        # 1400093c0 <__imp_TlsGetValue>
   140001fcd:	48 8b 3d 9c 73 00 00 	mov    0x739c(%rip),%rdi        # 140009370 <__imp_GetLastError>
   140001fd4:	0f 1f 40 00          	nopl   0x0(%rax)
   140001fd8:	8b 0b                	mov    (%rbx),%ecx
   140001fda:	ff d5                	call   *%rbp
   140001fdc:	48 89 c6             	mov    %rax,%rsi
   140001fdf:	ff d7                	call   *%rdi
   140001fe1:	48 85 f6             	test   %rsi,%rsi
   140001fe4:	74 0d                	je     140001ff3 <__mingwthr_run_key_dtors.part.0+0x53>
   140001fe6:	85 c0                	test   %eax,%eax
   140001fe8:	75 09                	jne    140001ff3 <__mingwthr_run_key_dtors.part.0+0x53>
   140001fea:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001fee:	48 89 f1             	mov    %rsi,%rcx
   140001ff1:	ff d0                	call   *%rax
   140001ff3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001ff7:	48 85 db             	test   %rbx,%rbx
   140001ffa:	75 dc                	jne    140001fd8 <__mingwthr_run_key_dtors.part.0+0x38>
   140001ffc:	4c 89 e1             	mov    %r12,%rcx
   140001fff:	48 83 c4 20          	add    $0x20,%rsp
   140002003:	5b                   	pop    %rbx
   140002004:	5e                   	pop    %rsi
   140002005:	5f                   	pop    %rdi
   140002006:	5d                   	pop    %rbp
   140002007:	41 5c                	pop    %r12
   140002009:	48 ff 25 78 73 00 00 	rex.W jmp *0x7378(%rip)        # 140009388 <__imp_LeaveCriticalSection>

0000000140002010 <___w64_mingwthr_add_key_dtor>:
   140002010:	57                   	push   %rdi
   140002011:	56                   	push   %rsi
   140002012:	53                   	push   %rbx
   140002013:	48 83 ec 20          	sub    $0x20,%rsp
   140002017:	8b 05 cb 60 00 00    	mov    0x60cb(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   14000201d:	89 cf                	mov    %ecx,%edi
   14000201f:	48 89 d6             	mov    %rdx,%rsi
   140002022:	85 c0                	test   %eax,%eax
   140002024:	75 0a                	jne    140002030 <___w64_mingwthr_add_key_dtor+0x20>
   140002026:	31 c0                	xor    %eax,%eax
   140002028:	48 83 c4 20          	add    $0x20,%rsp
   14000202c:	5b                   	pop    %rbx
   14000202d:	5e                   	pop    %rsi
   14000202e:	5f                   	pop    %rdi
   14000202f:	c3                   	ret
   140002030:	ba 18 00 00 00       	mov    $0x18,%edx
   140002035:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000203a:	e8 59 0a 00 00       	call   140002a98 <calloc>
   14000203f:	48 89 c3             	mov    %rax,%rbx
   140002042:	48 85 c0             	test   %rax,%rax
   140002045:	74 33                	je     14000207a <___w64_mingwthr_add_key_dtor+0x6a>
   140002047:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000204b:	48 8d 35 ae 60 00 00 	lea    0x60ae(%rip),%rsi        # 140008100 <__mingwthr_cs>
   140002052:	89 38                	mov    %edi,(%rax)
   140002054:	48 89 f1             	mov    %rsi,%rcx
   140002057:	ff 15 fb 72 00 00    	call   *0x72fb(%rip)        # 140009358 <__imp_EnterCriticalSection>
   14000205d:	48 8b 05 7c 60 00 00 	mov    0x607c(%rip),%rax        # 1400080e0 <key_dtor_list>
   140002064:	48 89 f1             	mov    %rsi,%rcx
   140002067:	48 89 1d 72 60 00 00 	mov    %rbx,0x6072(%rip)        # 1400080e0 <key_dtor_list>
   14000206e:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140002072:	ff 15 10 73 00 00    	call   *0x7310(%rip)        # 140009388 <__imp_LeaveCriticalSection>
   140002078:	eb ac                	jmp    140002026 <___w64_mingwthr_add_key_dtor+0x16>
   14000207a:	83 c8 ff             	or     $0xffffffff,%eax
   14000207d:	eb a9                	jmp    140002028 <___w64_mingwthr_add_key_dtor+0x18>
   14000207f:	90                   	nop

0000000140002080 <___w64_mingwthr_remove_key_dtor>:
   140002080:	56                   	push   %rsi
   140002081:	53                   	push   %rbx
   140002082:	48 83 ec 28          	sub    $0x28,%rsp
   140002086:	8b 05 5c 60 00 00    	mov    0x605c(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   14000208c:	89 cb                	mov    %ecx,%ebx
   14000208e:	85 c0                	test   %eax,%eax
   140002090:	75 0e                	jne    1400020a0 <___w64_mingwthr_remove_key_dtor+0x20>
   140002092:	31 c0                	xor    %eax,%eax
   140002094:	48 83 c4 28          	add    $0x28,%rsp
   140002098:	5b                   	pop    %rbx
   140002099:	5e                   	pop    %rsi
   14000209a:	c3                   	ret
   14000209b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400020a0:	48 8d 35 59 60 00 00 	lea    0x6059(%rip),%rsi        # 140008100 <__mingwthr_cs>
   1400020a7:	48 89 f1             	mov    %rsi,%rcx
   1400020aa:	ff 15 a8 72 00 00    	call   *0x72a8(%rip)        # 140009358 <__imp_EnterCriticalSection>
   1400020b0:	48 8b 0d 29 60 00 00 	mov    0x6029(%rip),%rcx        # 1400080e0 <key_dtor_list>
   1400020b7:	48 85 c9             	test   %rcx,%rcx
   1400020ba:	74 27                	je     1400020e3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020bc:	31 d2                	xor    %edx,%edx
   1400020be:	eb 0b                	jmp    1400020cb <___w64_mingwthr_remove_key_dtor+0x4b>
   1400020c0:	48 89 ca             	mov    %rcx,%rdx
   1400020c3:	48 85 c0             	test   %rax,%rax
   1400020c6:	74 1b                	je     1400020e3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020c8:	48 89 c1             	mov    %rax,%rcx
   1400020cb:	8b 01                	mov    (%rcx),%eax
   1400020cd:	39 d8                	cmp    %ebx,%eax
   1400020cf:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400020d3:	75 eb                	jne    1400020c0 <___w64_mingwthr_remove_key_dtor+0x40>
   1400020d5:	48 85 d2             	test   %rdx,%rdx
   1400020d8:	74 1e                	je     1400020f8 <___w64_mingwthr_remove_key_dtor+0x78>
   1400020da:	48 89 42 10          	mov    %rax,0x10(%rdx)
   1400020de:	e8 bd 09 00 00       	call   140002aa0 <free>
   1400020e3:	48 89 f1             	mov    %rsi,%rcx
   1400020e6:	ff 15 9c 72 00 00    	call   *0x729c(%rip)        # 140009388 <__imp_LeaveCriticalSection>
   1400020ec:	31 c0                	xor    %eax,%eax
   1400020ee:	48 83 c4 28          	add    $0x28,%rsp
   1400020f2:	5b                   	pop    %rbx
   1400020f3:	5e                   	pop    %rsi
   1400020f4:	c3                   	ret
   1400020f5:	0f 1f 00             	nopl   (%rax)
   1400020f8:	48 89 05 e1 5f 00 00 	mov    %rax,0x5fe1(%rip)        # 1400080e0 <key_dtor_list>
   1400020ff:	eb dd                	jmp    1400020de <___w64_mingwthr_remove_key_dtor+0x5e>
   140002101:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002108:	00 00 00 00 
   14000210c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002110 <__mingw_TLScallback>:
   140002110:	53                   	push   %rbx
   140002111:	48 83 ec 20          	sub    $0x20,%rsp
   140002115:	83 fa 02             	cmp    $0x2,%edx
   140002118:	0f 84 b2 00 00 00    	je     1400021d0 <__mingw_TLScallback+0xc0>
   14000211e:	77 30                	ja     140002150 <__mingw_TLScallback+0x40>
   140002120:	85 d2                	test   %edx,%edx
   140002122:	74 4c                	je     140002170 <__mingw_TLScallback+0x60>
   140002124:	8b 05 be 5f 00 00    	mov    0x5fbe(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   14000212a:	85 c0                	test   %eax,%eax
   14000212c:	0f 84 be 00 00 00    	je     1400021f0 <__mingw_TLScallback+0xe0>
   140002132:	c7 05 ac 5f 00 00 01 	movl   $0x1,0x5fac(%rip)        # 1400080e8 <__mingwthr_cs_init>
   140002139:	00 00 00 
   14000213c:	b8 01 00 00 00       	mov    $0x1,%eax
   140002141:	48 83 c4 20          	add    $0x20,%rsp
   140002145:	5b                   	pop    %rbx
   140002146:	c3                   	ret
   140002147:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000214e:	00 00 
   140002150:	83 fa 03             	cmp    $0x3,%edx
   140002153:	75 e7                	jne    14000213c <__mingw_TLScallback+0x2c>
   140002155:	8b 05 8d 5f 00 00    	mov    0x5f8d(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   14000215b:	85 c0                	test   %eax,%eax
   14000215d:	74 dd                	je     14000213c <__mingw_TLScallback+0x2c>
   14000215f:	e8 3c fe ff ff       	call   140001fa0 <__mingwthr_run_key_dtors.part.0>
   140002164:	eb d6                	jmp    14000213c <__mingw_TLScallback+0x2c>
   140002166:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000216d:	00 00 00 
   140002170:	8b 05 72 5f 00 00    	mov    0x5f72(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   140002176:	85 c0                	test   %eax,%eax
   140002178:	75 66                	jne    1400021e0 <__mingw_TLScallback+0xd0>
   14000217a:	8b 05 68 5f 00 00    	mov    0x5f68(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   140002180:	83 f8 01             	cmp    $0x1,%eax
   140002183:	75 b7                	jne    14000213c <__mingw_TLScallback+0x2c>
   140002185:	48 8b 1d 54 5f 00 00 	mov    0x5f54(%rip),%rbx        # 1400080e0 <key_dtor_list>
   14000218c:	48 85 db             	test   %rbx,%rbx
   14000218f:	74 18                	je     1400021a9 <__mingw_TLScallback+0x99>
   140002191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002198:	48 89 d9             	mov    %rbx,%rcx
   14000219b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000219f:	e8 fc 08 00 00       	call   140002aa0 <free>
   1400021a4:	48 85 db             	test   %rbx,%rbx
   1400021a7:	75 ef                	jne    140002198 <__mingw_TLScallback+0x88>
   1400021a9:	48 8d 0d 50 5f 00 00 	lea    0x5f50(%rip),%rcx        # 140008100 <__mingwthr_cs>
   1400021b0:	48 c7 05 25 5f 00 00 	movq   $0x0,0x5f25(%rip)        # 1400080e0 <key_dtor_list>
   1400021b7:	00 00 00 00 
   1400021bb:	c7 05 23 5f 00 00 00 	movl   $0x0,0x5f23(%rip)        # 1400080e8 <__mingwthr_cs_init>
   1400021c2:	00 00 00 
   1400021c5:	ff 15 7d 71 00 00    	call   *0x717d(%rip)        # 140009348 <__imp_DeleteCriticalSection>
   1400021cb:	e9 6c ff ff ff       	jmp    14000213c <__mingw_TLScallback+0x2c>
   1400021d0:	e8 6b f6 ff ff       	call   140001840 <_fpreset>
   1400021d5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400021da:	48 83 c4 20          	add    $0x20,%rsp
   1400021de:	5b                   	pop    %rbx
   1400021df:	c3                   	ret
   1400021e0:	e8 bb fd ff ff       	call   140001fa0 <__mingwthr_run_key_dtors.part.0>
   1400021e5:	eb 93                	jmp    14000217a <__mingw_TLScallback+0x6a>
   1400021e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400021ee:	00 00 
   1400021f0:	48 8d 0d 09 5f 00 00 	lea    0x5f09(%rip),%rcx        # 140008100 <__mingwthr_cs>
   1400021f7:	ff 15 83 71 00 00    	call   *0x7183(%rip)        # 140009380 <__imp_InitializeCriticalSection>
   1400021fd:	e9 30 ff ff ff       	jmp    140002132 <__mingw_TLScallback+0x22>
   140002202:	90                   	nop
   140002203:	90                   	nop
   140002204:	90                   	nop
   140002205:	90                   	nop
   140002206:	90                   	nop
   140002207:	90                   	nop
   140002208:	90                   	nop
   140002209:	90                   	nop
   14000220a:	90                   	nop
   14000220b:	90                   	nop
   14000220c:	90                   	nop
   14000220d:	90                   	nop
   14000220e:	90                   	nop
   14000220f:	90                   	nop

0000000140002210 <_ValidateImageBase>:
   140002210:	31 c0                	xor    %eax,%eax
   140002212:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002217:	75 0f                	jne    140002228 <_ValidateImageBase+0x18>
   140002219:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000221d:	48 01 d1             	add    %rdx,%rcx
   140002220:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002226:	74 08                	je     140002230 <_ValidateImageBase+0x20>
   140002228:	c3                   	ret
   140002229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002230:	31 c0                	xor    %eax,%eax
   140002232:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002238:	0f 94 c0             	sete   %al
   14000223b:	c3                   	ret
   14000223c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002240 <_FindPESection>:
   140002240:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002244:	48 01 c1             	add    %rax,%rcx
   140002247:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000224b:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   140002250:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002255:	66 45 85 c0          	test   %r8w,%r8w
   140002259:	74 32                	je     14000228d <_FindPESection+0x4d>
   14000225b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   14000225f:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140002263:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002268:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000226f:	00 
   140002270:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002274:	4c 89 c1             	mov    %r8,%rcx
   140002277:	4c 39 c2             	cmp    %r8,%rdx
   14000227a:	72 08                	jb     140002284 <_FindPESection+0x44>
   14000227c:	03 48 08             	add    0x8(%rax),%ecx
   14000227f:	48 39 ca             	cmp    %rcx,%rdx
   140002282:	72 0b                	jb     14000228f <_FindPESection+0x4f>
   140002284:	48 83 c0 28          	add    $0x28,%rax
   140002288:	4c 39 c8             	cmp    %r9,%rax
   14000228b:	75 e3                	jne    140002270 <_FindPESection+0x30>
   14000228d:	31 c0                	xor    %eax,%eax
   14000228f:	c3                   	ret

0000000140002290 <_FindPESectionByName>:
   140002290:	57                   	push   %rdi
   140002291:	56                   	push   %rsi
   140002292:	53                   	push   %rbx
   140002293:	48 83 ec 20          	sub    $0x20,%rsp
   140002297:	48 89 ce             	mov    %rcx,%rsi
   14000229a:	e8 f1 06 00 00       	call   140002990 <strlen>
   14000229f:	48 83 f8 08          	cmp    $0x8,%rax
   1400022a3:	77 7b                	ja     140002320 <_FindPESectionByName+0x90>
   1400022a5:	48 8b 15 54 31 00 00 	mov    0x3154(%rip),%rdx        # 140005400 <.refptr.__ImageBase>
   1400022ac:	31 db                	xor    %ebx,%ebx
   1400022ae:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400022b3:	75 59                	jne    14000230e <_FindPESectionByName+0x7e>
   1400022b5:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   1400022b9:	48 01 d0             	add    %rdx,%rax
   1400022bc:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400022c2:	75 4a                	jne    14000230e <_FindPESectionByName+0x7e>
   1400022c4:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400022ca:	75 42                	jne    14000230e <_FindPESectionByName+0x7e>
   1400022cc:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   1400022d0:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   1400022d5:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   1400022d9:	66 85 d2             	test   %dx,%dx
   1400022dc:	74 42                	je     140002320 <_FindPESectionByName+0x90>
   1400022de:	8d 42 ff             	lea    -0x1(%rdx),%eax
   1400022e1:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400022e5:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   1400022ea:	eb 0d                	jmp    1400022f9 <_FindPESectionByName+0x69>
   1400022ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400022f0:	48 83 c3 28          	add    $0x28,%rbx
   1400022f4:	48 39 fb             	cmp    %rdi,%rbx
   1400022f7:	74 27                	je     140002320 <_FindPESectionByName+0x90>
   1400022f9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1400022ff:	48 89 f2             	mov    %rsi,%rdx
   140002302:	48 89 d9             	mov    %rbx,%rcx
   140002305:	e8 8e 06 00 00       	call   140002998 <strncmp>
   14000230a:	85 c0                	test   %eax,%eax
   14000230c:	75 e2                	jne    1400022f0 <_FindPESectionByName+0x60>
   14000230e:	48 89 d8             	mov    %rbx,%rax
   140002311:	48 83 c4 20          	add    $0x20,%rsp
   140002315:	5b                   	pop    %rbx
   140002316:	5e                   	pop    %rsi
   140002317:	5f                   	pop    %rdi
   140002318:	c3                   	ret
   140002319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002320:	31 db                	xor    %ebx,%ebx
   140002322:	48 89 d8             	mov    %rbx,%rax
   140002325:	48 83 c4 20          	add    $0x20,%rsp
   140002329:	5b                   	pop    %rbx
   14000232a:	5e                   	pop    %rsi
   14000232b:	5f                   	pop    %rdi
   14000232c:	c3                   	ret
   14000232d:	0f 1f 00             	nopl   (%rax)

0000000140002330 <__mingw_GetSectionForAddress>:
   140002330:	48 8b 15 c9 30 00 00 	mov    0x30c9(%rip),%rdx        # 140005400 <.refptr.__ImageBase>
   140002337:	31 c0                	xor    %eax,%eax
   140002339:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000233e:	75 10                	jne    140002350 <__mingw_GetSectionForAddress+0x20>
   140002340:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002344:	49 01 d0             	add    %rdx,%r8
   140002347:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000234e:	74 08                	je     140002358 <__mingw_GetSectionForAddress+0x28>
   140002350:	c3                   	ret
   140002351:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002358:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000235f:	75 ef                	jne    140002350 <__mingw_GetSectionForAddress+0x20>
   140002361:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002366:	48 29 d1             	sub    %rdx,%rcx
   140002369:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   14000236e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002373:	66 45 85 c0          	test   %r8w,%r8w
   140002377:	74 34                	je     1400023ad <__mingw_GetSectionForAddress+0x7d>
   140002379:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   14000237d:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002381:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002386:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000238d:	00 00 00 
   140002390:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002394:	4c 89 c2             	mov    %r8,%rdx
   140002397:	4c 39 c1             	cmp    %r8,%rcx
   14000239a:	72 08                	jb     1400023a4 <__mingw_GetSectionForAddress+0x74>
   14000239c:	03 50 08             	add    0x8(%rax),%edx
   14000239f:	48 39 d1             	cmp    %rdx,%rcx
   1400023a2:	72 ac                	jb     140002350 <__mingw_GetSectionForAddress+0x20>
   1400023a4:	48 83 c0 28          	add    $0x28,%rax
   1400023a8:	4c 39 c8             	cmp    %r9,%rax
   1400023ab:	75 e3                	jne    140002390 <__mingw_GetSectionForAddress+0x60>
   1400023ad:	31 c0                	xor    %eax,%eax
   1400023af:	c3                   	ret

00000001400023b0 <__mingw_GetSectionCount>:
   1400023b0:	48 8b 05 49 30 00 00 	mov    0x3049(%rip),%rax        # 140005400 <.refptr.__ImageBase>
   1400023b7:	31 c9                	xor    %ecx,%ecx
   1400023b9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400023be:	75 0f                	jne    1400023cf <__mingw_GetSectionCount+0x1f>
   1400023c0:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400023c4:	48 01 d0             	add    %rdx,%rax
   1400023c7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400023cd:	74 09                	je     1400023d8 <__mingw_GetSectionCount+0x28>
   1400023cf:	89 c8                	mov    %ecx,%eax
   1400023d1:	c3                   	ret
   1400023d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400023d8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400023de:	75 ef                	jne    1400023cf <__mingw_GetSectionCount+0x1f>
   1400023e0:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   1400023e4:	89 c8                	mov    %ecx,%eax
   1400023e6:	c3                   	ret
   1400023e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400023ee:	00 00 

00000001400023f0 <_FindPESectionExec>:
   1400023f0:	4c 8b 05 09 30 00 00 	mov    0x3009(%rip),%r8        # 140005400 <.refptr.__ImageBase>
   1400023f7:	31 c0                	xor    %eax,%eax
   1400023f9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   1400023ff:	75 0f                	jne    140002410 <_FindPESectionExec+0x20>
   140002401:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002405:	4c 01 c2             	add    %r8,%rdx
   140002408:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000240e:	74 08                	je     140002418 <_FindPESectionExec+0x28>
   140002410:	c3                   	ret
   140002411:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002418:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000241e:	75 f0                	jne    140002410 <_FindPESectionExec+0x20>
   140002420:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002424:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140002429:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   14000242e:	66 45 85 c0          	test   %r8w,%r8w
   140002432:	74 2c                	je     140002460 <_FindPESectionExec+0x70>
   140002434:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140002438:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000243c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002441:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002448:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   14000244c:	74 09                	je     140002457 <_FindPESectionExec+0x67>
   14000244e:	48 85 c9             	test   %rcx,%rcx
   140002451:	74 bd                	je     140002410 <_FindPESectionExec+0x20>
   140002453:	48 83 e9 01          	sub    $0x1,%rcx
   140002457:	48 83 c0 28          	add    $0x28,%rax
   14000245b:	48 39 c2             	cmp    %rax,%rdx
   14000245e:	75 e8                	jne    140002448 <_FindPESectionExec+0x58>
   140002460:	31 c0                	xor    %eax,%eax
   140002462:	c3                   	ret
   140002463:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000246a:	00 00 00 00 
   14000246e:	66 90                	xchg   %ax,%ax

0000000140002470 <_GetPEImageBase>:
   140002470:	48 8b 05 89 2f 00 00 	mov    0x2f89(%rip),%rax        # 140005400 <.refptr.__ImageBase>
   140002477:	31 d2                	xor    %edx,%edx
   140002479:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000247e:	75 0f                	jne    14000248f <_GetPEImageBase+0x1f>
   140002480:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   140002484:	48 01 c1             	add    %rax,%rcx
   140002487:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   14000248d:	74 09                	je     140002498 <_GetPEImageBase+0x28>
   14000248f:	48 89 d0             	mov    %rdx,%rax
   140002492:	c3                   	ret
   140002493:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002498:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   14000249e:	48 0f 44 d0          	cmove  %rax,%rdx
   1400024a2:	48 89 d0             	mov    %rdx,%rax
   1400024a5:	c3                   	ret
   1400024a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024ad:	00 00 00 

00000001400024b0 <_IsNonwritableInCurrentImage>:
   1400024b0:	48 8b 15 49 2f 00 00 	mov    0x2f49(%rip),%rdx        # 140005400 <.refptr.__ImageBase>
   1400024b7:	31 c0                	xor    %eax,%eax
   1400024b9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400024be:	75 10                	jne    1400024d0 <_IsNonwritableInCurrentImage+0x20>
   1400024c0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400024c4:	49 01 d0             	add    %rdx,%r8
   1400024c7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400024ce:	74 08                	je     1400024d8 <_IsNonwritableInCurrentImage+0x28>
   1400024d0:	c3                   	ret
   1400024d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400024d8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400024df:	75 ef                	jne    1400024d0 <_IsNonwritableInCurrentImage+0x20>
   1400024e1:	48 29 d1             	sub    %rdx,%rcx
   1400024e4:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   1400024e9:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400024ee:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400024f3:	66 45 85 c9          	test   %r9w,%r9w
   1400024f7:	74 d7                	je     1400024d0 <_IsNonwritableInCurrentImage+0x20>
   1400024f9:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   1400024fd:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002501:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002506:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000250d:	00 00 00 
   140002510:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002514:	4c 89 c0             	mov    %r8,%rax
   140002517:	4c 39 c1             	cmp    %r8,%rcx
   14000251a:	72 08                	jb     140002524 <_IsNonwritableInCurrentImage+0x74>
   14000251c:	03 42 08             	add    0x8(%rdx),%eax
   14000251f:	48 39 c1             	cmp    %rax,%rcx
   140002522:	72 0c                	jb     140002530 <_IsNonwritableInCurrentImage+0x80>
   140002524:	48 83 c2 28          	add    $0x28,%rdx
   140002528:	4c 39 ca             	cmp    %r9,%rdx
   14000252b:	75 e3                	jne    140002510 <_IsNonwritableInCurrentImage+0x60>
   14000252d:	31 c0                	xor    %eax,%eax
   14000252f:	c3                   	ret
   140002530:	8b 42 24             	mov    0x24(%rdx),%eax
   140002533:	f7 d0                	not    %eax
   140002535:	c1 e8 1f             	shr    $0x1f,%eax
   140002538:	c3                   	ret
   140002539:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002540 <__mingw_enum_import_library_names>:
   140002540:	4c 8b 1d b9 2e 00 00 	mov    0x2eb9(%rip),%r11        # 140005400 <.refptr.__ImageBase>
   140002547:	45 31 c9             	xor    %r9d,%r9d
   14000254a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002550:	75 10                	jne    140002562 <__mingw_enum_import_library_names+0x22>
   140002552:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002556:	4d 01 d8             	add    %r11,%r8
   140002559:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002560:	74 0e                	je     140002570 <__mingw_enum_import_library_names+0x30>
   140002562:	4c 89 c8             	mov    %r9,%rax
   140002565:	c3                   	ret
   140002566:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000256d:	00 00 00 
   140002570:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002577:	75 e9                	jne    140002562 <__mingw_enum_import_library_names+0x22>
   140002579:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002580:	85 c0                	test   %eax,%eax
   140002582:	74 de                	je     140002562 <__mingw_enum_import_library_names+0x22>
   140002584:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002589:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   14000258e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002593:	66 45 85 d2          	test   %r10w,%r10w
   140002597:	74 c9                	je     140002562 <__mingw_enum_import_library_names+0x22>
   140002599:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   14000259d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400025a1:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400025a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400025ad:	00 00 00 
   1400025b0:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400025b4:	4d 89 c8             	mov    %r9,%r8
   1400025b7:	4c 39 c8             	cmp    %r9,%rax
   1400025ba:	72 09                	jb     1400025c5 <__mingw_enum_import_library_names+0x85>
   1400025bc:	44 03 42 08          	add    0x8(%rdx),%r8d
   1400025c0:	4c 39 c0             	cmp    %r8,%rax
   1400025c3:	72 13                	jb     1400025d8 <__mingw_enum_import_library_names+0x98>
   1400025c5:	48 83 c2 28          	add    $0x28,%rdx
   1400025c9:	49 39 d2             	cmp    %rdx,%r10
   1400025cc:	75 e2                	jne    1400025b0 <__mingw_enum_import_library_names+0x70>
   1400025ce:	45 31 c9             	xor    %r9d,%r9d
   1400025d1:	4c 89 c8             	mov    %r9,%rax
   1400025d4:	c3                   	ret
   1400025d5:	0f 1f 00             	nopl   (%rax)
   1400025d8:	4c 01 d8             	add    %r11,%rax
   1400025db:	eb 0a                	jmp    1400025e7 <__mingw_enum_import_library_names+0xa7>
   1400025dd:	0f 1f 00             	nopl   (%rax)
   1400025e0:	83 e9 01             	sub    $0x1,%ecx
   1400025e3:	48 83 c0 14          	add    $0x14,%rax
   1400025e7:	44 8b 40 04          	mov    0x4(%rax),%r8d
   1400025eb:	45 85 c0             	test   %r8d,%r8d
   1400025ee:	75 07                	jne    1400025f7 <__mingw_enum_import_library_names+0xb7>
   1400025f0:	8b 50 0c             	mov    0xc(%rax),%edx
   1400025f3:	85 d2                	test   %edx,%edx
   1400025f5:	74 d7                	je     1400025ce <__mingw_enum_import_library_names+0x8e>
   1400025f7:	85 c9                	test   %ecx,%ecx
   1400025f9:	7f e5                	jg     1400025e0 <__mingw_enum_import_library_names+0xa0>
   1400025fb:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   1400025ff:	4d 01 d9             	add    %r11,%r9
   140002602:	4c 89 c8             	mov    %r9,%rax
   140002605:	c3                   	ret
   140002606:	90                   	nop
   140002607:	90                   	nop
   140002608:	90                   	nop
   140002609:	90                   	nop
   14000260a:	90                   	nop
   14000260b:	90                   	nop
   14000260c:	90                   	nop
   14000260d:	90                   	nop
   14000260e:	90                   	nop
   14000260f:	90                   	nop

0000000140002610 <___chkstk_ms>:
   140002610:	51                   	push   %rcx
   140002611:	50                   	push   %rax
   140002612:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002618:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000261d:	72 19                	jb     140002638 <___chkstk_ms+0x28>
   14000261f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002626:	48 83 09 00          	orq    $0x0,(%rcx)
   14000262a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002630:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002636:	77 e7                	ja     14000261f <___chkstk_ms+0xf>
   140002638:	48 29 c1             	sub    %rax,%rcx
   14000263b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000263f:	58                   	pop    %rax
   140002640:	59                   	pop    %rcx
   140002641:	c3                   	ret
   140002642:	90                   	nop
   140002643:	90                   	nop
   140002644:	90                   	nop
   140002645:	90                   	nop
   140002646:	90                   	nop
   140002647:	90                   	nop
   140002648:	90                   	nop
   140002649:	90                   	nop
   14000264a:	90                   	nop
   14000264b:	90                   	nop
   14000264c:	90                   	nop
   14000264d:	90                   	nop
   14000264e:	90                   	nop
   14000264f:	90                   	nop

0000000140002650 <vfprintf>:
   140002650:	48 83 ec 38          	sub    $0x38,%rsp
   140002654:	45 31 c9             	xor    %r9d,%r9d
   140002657:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
   14000265c:	49 89 d0             	mov    %rdx,%r8
   14000265f:	48 89 ca             	mov    %rcx,%rdx
   140002662:	31 c9                	xor    %ecx,%ecx
   140002664:	e8 4f 03 00 00       	call   1400029b8 <__stdio_common_vfprintf>
   140002669:	48 83 c4 38          	add    $0x38,%rsp
   14000266d:	c3                   	ret
   14000266e:	90                   	nop
   14000266f:	90                   	nop

0000000140002670 <scanf>:
   140002670:	56                   	push   %rsi
   140002671:	53                   	push   %rbx
   140002672:	48 83 ec 48          	sub    $0x48,%rsp
   140002676:	48 89 cb             	mov    %rcx,%rbx
   140002679:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
   14000267e:	31 c9                	xor    %ecx,%ecx
   140002680:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
   140002685:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   14000268a:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
   14000268f:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
   140002694:	e8 07 03 00 00       	call   1400029a0 <__acrt_iob_func>
   140002699:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   14000269e:	45 31 c9             	xor    %r9d,%r9d
   1400026a1:	49 89 d8             	mov    %rbx,%r8
   1400026a4:	48 89 c2             	mov    %rax,%rdx
   1400026a7:	31 c9                	xor    %ecx,%ecx
   1400026a9:	e8 12 03 00 00       	call   1400029c0 <__stdio_common_vfscanf>
   1400026ae:	48 83 c4 48          	add    $0x48,%rsp
   1400026b2:	5b                   	pop    %rbx
   1400026b3:	5e                   	pop    %rsi
   1400026b4:	c3                   	ret
   1400026b5:	90                   	nop
   1400026b6:	90                   	nop
   1400026b7:	90                   	nop
   1400026b8:	90                   	nop
   1400026b9:	90                   	nop
   1400026ba:	90                   	nop
   1400026bb:	90                   	nop
   1400026bc:	90                   	nop
   1400026bd:	90                   	nop
   1400026be:	90                   	nop
   1400026bf:	90                   	nop

00000001400026c0 <printf>:
   1400026c0:	56                   	push   %rsi
   1400026c1:	53                   	push   %rbx
   1400026c2:	48 83 ec 48          	sub    $0x48,%rsp
   1400026c6:	48 89 cb             	mov    %rcx,%rbx
   1400026c9:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
   1400026ce:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400026d3:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
   1400026d8:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   1400026dd:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
   1400026e2:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
   1400026e7:	e8 b4 02 00 00       	call   1400029a0 <__acrt_iob_func>
   1400026ec:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   1400026f1:	45 31 c9             	xor    %r9d,%r9d
   1400026f4:	49 89 d8             	mov    %rbx,%r8
   1400026f7:	48 89 c2             	mov    %rax,%rdx
   1400026fa:	31 c9                	xor    %ecx,%ecx
   1400026fc:	e8 b7 02 00 00       	call   1400029b8 <__stdio_common_vfprintf>
   140002701:	48 83 c4 48          	add    $0x48,%rsp
   140002705:	5b                   	pop    %rbx
   140002706:	5e                   	pop    %rsi
   140002707:	c3                   	ret
   140002708:	90                   	nop
   140002709:	90                   	nop
   14000270a:	90                   	nop
   14000270b:	90                   	nop
   14000270c:	90                   	nop
   14000270d:	90                   	nop
   14000270e:	90                   	nop
   14000270f:	90                   	nop

0000000140002710 <fprintf>:
   140002710:	48 83 ec 48          	sub    $0x48,%rsp
   140002714:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   140002719:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000271e:	49 89 d0             	mov    %rdx,%r8
   140002721:	48 89 ca             	mov    %rcx,%rdx
   140002724:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140002729:	31 c9                	xor    %ecx,%ecx
   14000272b:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002730:	45 31 c9             	xor    %r9d,%r9d
   140002733:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   140002738:	e8 7b 02 00 00       	call   1400029b8 <__stdio_common_vfprintf>
   14000273d:	48 83 c4 48          	add    $0x48,%rsp
   140002741:	c3                   	ret
   140002742:	90                   	nop
   140002743:	90                   	nop
   140002744:	90                   	nop
   140002745:	90                   	nop
   140002746:	90                   	nop
   140002747:	90                   	nop
   140002748:	90                   	nop
   140002749:	90                   	nop
   14000274a:	90                   	nop
   14000274b:	90                   	nop
   14000274c:	90                   	nop
   14000274d:	90                   	nop
   14000274e:	90                   	nop
   14000274f:	90                   	nop

0000000140002750 <_get_output_format>:
   140002750:	31 c0                	xor    %eax,%eax
   140002752:	c3                   	ret
   140002753:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000275a:	00 00 00 00 
   14000275e:	66 90                	xchg   %ax,%ax

0000000140002760 <__getmainargs>:
   140002760:	41 54                	push   %r12
   140002762:	55                   	push   %rbp
   140002763:	57                   	push   %rdi
   140002764:	56                   	push   %rsi
   140002765:	53                   	push   %rbx
   140002766:	48 83 ec 20          	sub    $0x20,%rsp
   14000276a:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   14000276f:	44 89 cd             	mov    %r9d,%ebp
   140002772:	48 89 d6             	mov    %rdx,%rsi
   140002775:	4c 89 c3             	mov    %r8,%rbx
   140002778:	48 89 cf             	mov    %rcx,%rdi
   14000277b:	e8 a8 02 00 00       	call   140002a28 <_initialize_narrow_environment>
   140002780:	83 fd 01             	cmp    $0x1,%ebp
   140002783:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002788:	83 d9 ff             	sbb    $0xffffffff,%ecx
   14000278b:	e8 70 02 00 00       	call   140002a00 <_configure_narrow_argv>
   140002790:	e8 4b 02 00 00       	call   1400029e0 <__p___argc>
   140002795:	8b 00                	mov    (%rax),%eax
   140002797:	89 07                	mov    %eax,(%rdi)
   140002799:	e8 4a 02 00 00       	call   1400029e8 <__p___argv>
   14000279e:	48 8b 00             	mov    (%rax),%rax
   1400027a1:	48 89 06             	mov    %rax,(%rsi)
   1400027a4:	e8 07 03 00 00       	call   140002ab0 <__p__environ>
   1400027a9:	48 8b 00             	mov    (%rax),%rax
   1400027ac:	48 89 03             	mov    %rax,(%rbx)
   1400027af:	4d 85 e4             	test   %r12,%r12
   1400027b2:	74 09                	je     1400027bd <__getmainargs+0x5d>
   1400027b4:	41 8b 0c 24          	mov    (%r12),%ecx
   1400027b8:	e8 d3 02 00 00       	call   140002a90 <_set_new_mode>
   1400027bd:	31 c0                	xor    %eax,%eax
   1400027bf:	48 83 c4 20          	add    $0x20,%rsp
   1400027c3:	5b                   	pop    %rbx
   1400027c4:	5e                   	pop    %rsi
   1400027c5:	5f                   	pop    %rdi
   1400027c6:	5d                   	pop    %rbp
   1400027c7:	41 5c                	pop    %r12
   1400027c9:	c3                   	ret
   1400027ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400027d0 <__wgetmainargs>:
   1400027d0:	41 54                	push   %r12
   1400027d2:	55                   	push   %rbp
   1400027d3:	57                   	push   %rdi
   1400027d4:	56                   	push   %rsi
   1400027d5:	53                   	push   %rbx
   1400027d6:	48 83 ec 20          	sub    $0x20,%rsp
   1400027da:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   1400027df:	44 89 cd             	mov    %r9d,%ebp
   1400027e2:	48 89 d6             	mov    %rdx,%rsi
   1400027e5:	4c 89 c3             	mov    %r8,%rbx
   1400027e8:	48 89 cf             	mov    %rcx,%rdi
   1400027eb:	e8 40 02 00 00       	call   140002a30 <_initialize_wide_environment>
   1400027f0:	83 fd 01             	cmp    $0x1,%ebp
   1400027f3:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400027f8:	83 d9 ff             	sbb    $0xffffffff,%ecx
   1400027fb:	e8 08 02 00 00       	call   140002a08 <_configure_wide_argv>
   140002800:	e8 db 01 00 00       	call   1400029e0 <__p___argc>
   140002805:	8b 00                	mov    (%rax),%eax
   140002807:	89 07                	mov    %eax,(%rdi)
   140002809:	e8 e2 01 00 00       	call   1400029f0 <__p___wargv>
   14000280e:	48 8b 00             	mov    (%rax),%rax
   140002811:	48 89 06             	mov    %rax,(%rsi)
   140002814:	e8 9f 02 00 00       	call   140002ab8 <__p__wenviron>
   140002819:	48 8b 00             	mov    (%rax),%rax
   14000281c:	48 89 03             	mov    %rax,(%rbx)
   14000281f:	4d 85 e4             	test   %r12,%r12
   140002822:	74 09                	je     14000282d <__wgetmainargs+0x5d>
   140002824:	41 8b 0c 24          	mov    (%r12),%ecx
   140002828:	e8 63 02 00 00       	call   140002a90 <_set_new_mode>
   14000282d:	31 c0                	xor    %eax,%eax
   14000282f:	48 83 c4 20          	add    $0x20,%rsp
   140002833:	5b                   	pop    %rbx
   140002834:	5e                   	pop    %rsi
   140002835:	5f                   	pop    %rdi
   140002836:	5d                   	pop    %rbp
   140002837:	41 5c                	pop    %r12
   140002839:	c3                   	ret
   14000283a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002840 <_onexit>:
   140002840:	53                   	push   %rbx
   140002841:	48 83 ec 20          	sub    $0x20,%rsp
   140002845:	48 89 cb             	mov    %rcx,%rbx
   140002848:	e8 cb 01 00 00       	call   140002a18 <_crt_atexit>
   14000284d:	85 c0                	test   %eax,%eax
   14000284f:	b8 00 00 00 00       	mov    $0x0,%eax
   140002854:	48 0f 44 c3          	cmove  %rbx,%rax
   140002858:	48 83 c4 20          	add    $0x20,%rsp
   14000285c:	5b                   	pop    %rbx
   14000285d:	c3                   	ret
   14000285e:	66 90                	xchg   %ax,%ax

0000000140002860 <at_quick_exit>:
   140002860:	48 8b 05 49 2c 00 00 	mov    0x2c49(%rip),%rax        # 1400054b0 <.refptr.__mingw_module_is_dll>
   140002867:	80 38 00             	cmpb   $0x0,(%rax)
   14000286a:	74 04                	je     140002870 <at_quick_exit+0x10>
   14000286c:	31 c0                	xor    %eax,%eax
   14000286e:	c3                   	ret
   14000286f:	90                   	nop
   140002870:	e9 9b 01 00 00       	jmp    140002a10 <_crt_at_quick_exit>
   140002875:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000287c:	00 00 00 00 

0000000140002880 <_amsg_exit>:
   140002880:	53                   	push   %rbx
   140002881:	48 83 ec 20          	sub    $0x20,%rsp
   140002885:	89 cb                	mov    %ecx,%ebx
   140002887:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000288c:	e8 0f 01 00 00       	call   1400029a0 <__acrt_iob_func>
   140002891:	41 89 d8             	mov    %ebx,%r8d
   140002894:	48 8d 15 d5 2a 00 00 	lea    0x2ad5(%rip),%rdx        # 140005370 <.rdata>
   14000289b:	48 89 c1             	mov    %rax,%rcx
   14000289e:	e8 6d fe ff ff       	call   140002710 <fprintf>
   1400028a3:	b9 ff 00 00 00       	mov    $0xff,%ecx
   1400028a8:	e8 73 01 00 00       	call   140002a20 <_exit>
   1400028ad:	90                   	nop
   1400028ae:	66 90                	xchg   %ax,%ax

00000001400028b0 <__ms_fwprintf>:
   1400028b0:	48 83 ec 48          	sub    $0x48,%rsp
   1400028b4:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   1400028b9:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400028be:	49 89 d0             	mov    %rdx,%r8
   1400028c1:	48 89 ca             	mov    %rcx,%rdx
   1400028c4:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400028c9:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400028ce:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400028d3:	45 31 c9             	xor    %r9d,%r9d
   1400028d6:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   1400028db:	e8 e8 00 00 00       	call   1400029c8 <__stdio_common_vfwprintf>
   1400028e0:	48 83 c4 48          	add    $0x48,%rsp
   1400028e4:	c3                   	ret
   1400028e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400028ec:	00 00 00 00 

00000001400028f0 <tzset>:
   1400028f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400028f4:	48 8b 05 65 2b 00 00 	mov    0x2b65(%rip),%rax        # 140005460 <.refptr.__imp__tzset>
   1400028fb:	ff 10                	call   *(%rax)
   1400028fd:	e8 7e 00 00 00       	call   140002980 <__tzname>
   140002902:	48 89 05 d7 17 00 00 	mov    %rax,0x17d7(%rip)        # 1400040e0 <__imp_tzname>
   140002909:	e8 6a 00 00 00       	call   140002978 <__timezone>
   14000290e:	48 89 05 c3 17 00 00 	mov    %rax,0x17c3(%rip)        # 1400040d8 <__imp_timezone>
   140002915:	e8 56 00 00 00       	call   140002970 <__daylight>
   14000291a:	48 89 05 af 17 00 00 	mov    %rax,0x17af(%rip)        # 1400040d0 <__imp_daylight>
   140002921:	48 83 c4 28          	add    $0x28,%rsp
   140002925:	c3                   	ret
   140002926:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000292d:	00 00 00 

0000000140002930 <_tzset>:
   140002930:	48 83 ec 28          	sub    $0x28,%rsp
   140002934:	48 8b 05 25 2b 00 00 	mov    0x2b25(%rip),%rax        # 140005460 <.refptr.__imp__tzset>
   14000293b:	ff 10                	call   *(%rax)
   14000293d:	e8 3e 00 00 00       	call   140002980 <__tzname>
   140002942:	48 89 05 97 17 00 00 	mov    %rax,0x1797(%rip)        # 1400040e0 <__imp_tzname>
   140002949:	e8 2a 00 00 00       	call   140002978 <__timezone>
   14000294e:	48 89 05 83 17 00 00 	mov    %rax,0x1783(%rip)        # 1400040d8 <__imp_timezone>
   140002955:	e8 16 00 00 00       	call   140002970 <__daylight>
   14000295a:	48 89 05 6f 17 00 00 	mov    %rax,0x176f(%rip)        # 1400040d0 <__imp_daylight>
   140002961:	48 83 c4 28          	add    $0x28,%rsp
   140002965:	c3                   	ret
   140002966:	90                   	nop
   140002967:	90                   	nop
   140002968:	90                   	nop
   140002969:	90                   	nop
   14000296a:	90                   	nop
   14000296b:	90                   	nop
   14000296c:	90                   	nop
   14000296d:	90                   	nop
   14000296e:	90                   	nop
   14000296f:	90                   	nop

0000000140002970 <__daylight>:
   140002970:	ff 25 fa 6b 00 00    	jmp    *0x6bfa(%rip)        # 140009570 <__imp___daylight>
   140002976:	90                   	nop
   140002977:	90                   	nop

0000000140002978 <__timezone>:
   140002978:	ff 25 fa 6b 00 00    	jmp    *0x6bfa(%rip)        # 140009578 <__imp___timezone>
   14000297e:	90                   	nop
   14000297f:	90                   	nop

0000000140002980 <__tzname>:
   140002980:	ff 25 fa 6b 00 00    	jmp    *0x6bfa(%rip)        # 140009580 <__imp___tzname>
   140002986:	90                   	nop
   140002987:	90                   	nop

0000000140002988 <.text>:
   140002988:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000298f:	00 

0000000140002990 <strlen>:
   140002990:	ff 25 c2 6b 00 00    	jmp    *0x6bc2(%rip)        # 140009558 <__imp_strlen>
   140002996:	90                   	nop
   140002997:	90                   	nop

0000000140002998 <strncmp>:
   140002998:	ff 25 c2 6b 00 00    	jmp    *0x6bc2(%rip)        # 140009560 <__imp_strncmp>
   14000299e:	90                   	nop
   14000299f:	90                   	nop

00000001400029a0 <__acrt_iob_func>:
   1400029a0:	ff 25 4a 6b 00 00    	jmp    *0x6b4a(%rip)        # 1400094f0 <__imp___acrt_iob_func>
   1400029a6:	90                   	nop
   1400029a7:	90                   	nop

00000001400029a8 <__p__commode>:
   1400029a8:	ff 25 4a 6b 00 00    	jmp    *0x6b4a(%rip)        # 1400094f8 <__imp___p__commode>
   1400029ae:	90                   	nop
   1400029af:	90                   	nop

00000001400029b0 <__p__fmode>:
   1400029b0:	ff 25 4a 6b 00 00    	jmp    *0x6b4a(%rip)        # 140009500 <__imp___p__fmode>
   1400029b6:	90                   	nop
   1400029b7:	90                   	nop

00000001400029b8 <__stdio_common_vfprintf>:
   1400029b8:	ff 25 4a 6b 00 00    	jmp    *0x6b4a(%rip)        # 140009508 <__imp___stdio_common_vfprintf>
   1400029be:	90                   	nop
   1400029bf:	90                   	nop

00000001400029c0 <__stdio_common_vfscanf>:
   1400029c0:	ff 25 4a 6b 00 00    	jmp    *0x6b4a(%rip)        # 140009510 <__imp___stdio_common_vfscanf>
   1400029c6:	90                   	nop
   1400029c7:	90                   	nop

00000001400029c8 <__stdio_common_vfwprintf>:
   1400029c8:	ff 25 4a 6b 00 00    	jmp    *0x6b4a(%rip)        # 140009518 <__imp___stdio_common_vfwprintf>
   1400029ce:	90                   	nop
   1400029cf:	90                   	nop

00000001400029d0 <fwrite>:
   1400029d0:	ff 25 62 6b 00 00    	jmp    *0x6b62(%rip)        # 140009538 <__imp_fwrite>
   1400029d6:	90                   	nop
   1400029d7:	90                   	nop

00000001400029d8 <puts>:
   1400029d8:	ff 25 62 6b 00 00    	jmp    *0x6b62(%rip)        # 140009540 <__imp_puts>
   1400029de:	90                   	nop
   1400029df:	90                   	nop

00000001400029e0 <__p___argc>:
   1400029e0:	ff 25 6a 6a 00 00    	jmp    *0x6a6a(%rip)        # 140009450 <__imp___p___argc>
   1400029e6:	90                   	nop
   1400029e7:	90                   	nop

00000001400029e8 <__p___argv>:
   1400029e8:	ff 25 6a 6a 00 00    	jmp    *0x6a6a(%rip)        # 140009458 <__imp___p___argv>
   1400029ee:	90                   	nop
   1400029ef:	90                   	nop

00000001400029f0 <__p___wargv>:
   1400029f0:	ff 25 6a 6a 00 00    	jmp    *0x6a6a(%rip)        # 140009460 <__imp___p___wargv>
   1400029f6:	90                   	nop
   1400029f7:	90                   	nop

00000001400029f8 <_cexit>:
   1400029f8:	ff 25 6a 6a 00 00    	jmp    *0x6a6a(%rip)        # 140009468 <__imp__cexit>
   1400029fe:	90                   	nop
   1400029ff:	90                   	nop

0000000140002a00 <_configure_narrow_argv>:
   140002a00:	ff 25 6a 6a 00 00    	jmp    *0x6a6a(%rip)        # 140009470 <__imp__configure_narrow_argv>
   140002a06:	90                   	nop
   140002a07:	90                   	nop

0000000140002a08 <_configure_wide_argv>:
   140002a08:	ff 25 6a 6a 00 00    	jmp    *0x6a6a(%rip)        # 140009478 <__imp__configure_wide_argv>
   140002a0e:	90                   	nop
   140002a0f:	90                   	nop

0000000140002a10 <_crt_at_quick_exit>:
   140002a10:	ff 25 6a 6a 00 00    	jmp    *0x6a6a(%rip)        # 140009480 <__imp__crt_at_quick_exit>
   140002a16:	90                   	nop
   140002a17:	90                   	nop

0000000140002a18 <_crt_atexit>:
   140002a18:	ff 25 6a 6a 00 00    	jmp    *0x6a6a(%rip)        # 140009488 <__imp__crt_atexit>
   140002a1e:	90                   	nop
   140002a1f:	90                   	nop

0000000140002a20 <_exit>:
   140002a20:	ff 25 72 6a 00 00    	jmp    *0x6a72(%rip)        # 140009498 <__imp__exit>
   140002a26:	90                   	nop
   140002a27:	90                   	nop

0000000140002a28 <_initialize_narrow_environment>:
   140002a28:	ff 25 72 6a 00 00    	jmp    *0x6a72(%rip)        # 1400094a0 <__imp__initialize_narrow_environment>
   140002a2e:	90                   	nop
   140002a2f:	90                   	nop

0000000140002a30 <_initialize_wide_environment>:
   140002a30:	ff 25 72 6a 00 00    	jmp    *0x6a72(%rip)        # 1400094a8 <__imp__initialize_wide_environment>
   140002a36:	90                   	nop
   140002a37:	90                   	nop

0000000140002a38 <_initterm>:
   140002a38:	ff 25 72 6a 00 00    	jmp    *0x6a72(%rip)        # 1400094b0 <__imp__initterm>
   140002a3e:	90                   	nop
   140002a3f:	90                   	nop

0000000140002a40 <__set_app_type>:
   140002a40:	ff 25 72 6a 00 00    	jmp    *0x6a72(%rip)        # 1400094b8 <__imp___set_app_type>
   140002a46:	90                   	nop
   140002a47:	90                   	nop

0000000140002a48 <_set_invalid_parameter_handler>:
   140002a48:	ff 25 72 6a 00 00    	jmp    *0x6a72(%rip)        # 1400094c0 <__imp__set_invalid_parameter_handler>
   140002a4e:	90                   	nop
   140002a4f:	90                   	nop

0000000140002a50 <abort>:
   140002a50:	ff 25 72 6a 00 00    	jmp    *0x6a72(%rip)        # 1400094c8 <__imp_abort>
   140002a56:	90                   	nop
   140002a57:	90                   	nop

0000000140002a58 <exit>:
   140002a58:	ff 25 72 6a 00 00    	jmp    *0x6a72(%rip)        # 1400094d0 <__imp_exit>
   140002a5e:	90                   	nop
   140002a5f:	90                   	nop

0000000140002a60 <signal>:
   140002a60:	ff 25 7a 6a 00 00    	jmp    *0x6a7a(%rip)        # 1400094e0 <__imp_signal>
   140002a66:	90                   	nop
   140002a67:	90                   	nop
   140002a68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002a6f:	00 

0000000140002a70 <__C_specific_handler>:
   140002a70:	ff 25 c2 69 00 00    	jmp    *0x69c2(%rip)        # 140009438 <__imp___C_specific_handler>
   140002a76:	90                   	nop
   140002a77:	90                   	nop

0000000140002a78 <memcpy>:
   140002a78:	ff 25 c2 69 00 00    	jmp    *0x69c2(%rip)        # 140009440 <__imp_memcpy>
   140002a7e:	90                   	nop
   140002a7f:	90                   	nop

0000000140002a80 <__setusermatherr>:
   140002a80:	ff 25 a2 69 00 00    	jmp    *0x69a2(%rip)        # 140009428 <__imp___setusermatherr>
   140002a86:	90                   	nop
   140002a87:	90                   	nop
   140002a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002a8f:	00 

0000000140002a90 <_set_new_mode>:
   140002a90:	ff 25 6a 69 00 00    	jmp    *0x696a(%rip)        # 140009400 <__imp__set_new_mode>
   140002a96:	90                   	nop
   140002a97:	90                   	nop

0000000140002a98 <calloc>:
   140002a98:	ff 25 6a 69 00 00    	jmp    *0x696a(%rip)        # 140009408 <__imp_calloc>
   140002a9e:	90                   	nop
   140002a9f:	90                   	nop

0000000140002aa0 <free>:
   140002aa0:	ff 25 6a 69 00 00    	jmp    *0x696a(%rip)        # 140009410 <__imp_free>
   140002aa6:	90                   	nop
   140002aa7:	90                   	nop

0000000140002aa8 <malloc>:
   140002aa8:	ff 25 6a 69 00 00    	jmp    *0x696a(%rip)        # 140009418 <__imp_malloc>
   140002aae:	90                   	nop
   140002aaf:	90                   	nop

0000000140002ab0 <__p__environ>:
   140002ab0:	ff 25 32 69 00 00    	jmp    *0x6932(%rip)        # 1400093e8 <__imp___p__environ>
   140002ab6:	90                   	nop
   140002ab7:	90                   	nop

0000000140002ab8 <__p__wenviron>:
   140002ab8:	ff 25 32 69 00 00    	jmp    *0x6932(%rip)        # 1400093f0 <__imp___p__wenviron>
   140002abe:	90                   	nop
   140002abf:	90                   	nop

0000000140002ac0 <VirtualQuery>:
   140002ac0:	ff 25 0a 69 00 00    	jmp    *0x690a(%rip)        # 1400093d0 <__imp_VirtualQuery>
   140002ac6:	90                   	nop
   140002ac7:	90                   	nop

0000000140002ac8 <VirtualProtect>:
   140002ac8:	ff 25 fa 68 00 00    	jmp    *0x68fa(%rip)        # 1400093c8 <__imp_VirtualProtect>
   140002ace:	90                   	nop
   140002acf:	90                   	nop

0000000140002ad0 <TlsGetValue>:
   140002ad0:	ff 25 ea 68 00 00    	jmp    *0x68ea(%rip)        # 1400093c0 <__imp_TlsGetValue>
   140002ad6:	90                   	nop
   140002ad7:	90                   	nop

0000000140002ad8 <Sleep>:
   140002ad8:	ff 25 d2 68 00 00    	jmp    *0x68d2(%rip)        # 1400093b0 <__imp_Sleep>
   140002ade:	90                   	nop
   140002adf:	90                   	nop

0000000140002ae0 <SetUnhandledExceptionFilter>:
   140002ae0:	ff 25 ba 68 00 00    	jmp    *0x68ba(%rip)        # 1400093a0 <__imp_SetUnhandledExceptionFilter>
   140002ae6:	90                   	nop
   140002ae7:	90                   	nop

0000000140002ae8 <LeaveCriticalSection>:
   140002ae8:	ff 25 9a 68 00 00    	jmp    *0x689a(%rip)        # 140009388 <__imp_LeaveCriticalSection>
   140002aee:	90                   	nop
   140002aef:	90                   	nop

0000000140002af0 <InitializeCriticalSection>:
   140002af0:	ff 25 8a 68 00 00    	jmp    *0x688a(%rip)        # 140009380 <__imp_InitializeCriticalSection>
   140002af6:	90                   	nop
   140002af7:	90                   	nop

0000000140002af8 <GetLastError>:
   140002af8:	ff 25 72 68 00 00    	jmp    *0x6872(%rip)        # 140009370 <__imp_GetLastError>
   140002afe:	90                   	nop
   140002aff:	90                   	nop

0000000140002b00 <EnterCriticalSection>:
   140002b00:	ff 25 52 68 00 00    	jmp    *0x6852(%rip)        # 140009358 <__imp_EnterCriticalSection>
   140002b06:	90                   	nop
   140002b07:	90                   	nop

0000000140002b08 <DeleteCriticalSection>:
   140002b08:	ff 25 3a 68 00 00    	jmp    *0x683a(%rip)        # 140009348 <__imp_DeleteCriticalSection>
   140002b0e:	90                   	nop
   140002b0f:	90                   	nop

0000000140002b10 <monstartup>:
   140002b10:	55                   	push   %rbp
   140002b11:	57                   	push   %rdi
   140002b12:	56                   	push   %rsi
   140002b13:	53                   	push   %rbx
   140002b14:	48 83 ec 28          	sub    $0x28,%rsp
   140002b18:	48 b8 c3 f5 28 5c 8f 	movabs $0x28f5c28f5c28f5c3,%rax
   140002b1f:	c2 f5 28 
   140002b22:	48 89 ce             	mov    %rcx,%rsi
   140002b25:	48 8d 4a 03          	lea    0x3(%rdx),%rcx
   140002b29:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
   140002b2d:	48 83 e6 fc          	and    $0xfffffffffffffffc,%rsi
   140002b31:	48 89 cd             	mov    %rcx,%rbp
   140002b34:	48 29 f5             	sub    %rsi,%rbp
   140002b37:	48 8d 54 2d 00       	lea    0x0(%rbp,%rbp,1),%rdx
   140002b3c:	48 89 ef             	mov    %rbp,%rdi
   140002b3f:	48 c1 ea 02          	shr    $0x2,%rdx
   140002b43:	48 d1 ef             	shr    %rdi
   140002b46:	48 f7 e2             	mul    %rdx
   140002b49:	48 c1 ea 02          	shr    $0x2,%rdx
   140002b4d:	89 d0                	mov    %edx,%eax
   140002b4f:	83 fa 31             	cmp    $0x31,%edx
   140002b52:	7e 24                	jle    140002b78 <monstartup+0x68>
   140002b54:	81 fa fe ff 00 00    	cmp    $0xfffe,%edx
   140002b5a:	0f 8e 10 01 00 00    	jle    140002c70 <monstartup+0x160>
   140002b60:	b8 fe ff 00 00       	mov    $0xfffe,%eax
   140002b65:	ba e0 ff 0f 00       	mov    $0xfffe0,%edx
   140002b6a:	bb e0 ff 0f 00       	mov    $0xfffe0,%ebx
   140002b6f:	eb 16                	jmp    140002b87 <monstartup+0x77>
   140002b71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002b78:	b8 32 00 00 00       	mov    $0x32,%eax
   140002b7d:	ba 20 03 00 00       	mov    $0x320,%edx
   140002b82:	bb 20 03 00 00       	mov    $0x320,%ebx
   140002b87:	48 89 0d fa 15 00 00 	mov    %rcx,0x15fa(%rip)        # 140004188 <_gmonparam+0x48>
   140002b8e:	8d 0c 7a             	lea    (%rdx,%rdi,2),%ecx
   140002b91:	48 63 c9             	movslq %ecx,%rcx
   140002b94:	48 89 35 e5 15 00 00 	mov    %rsi,0x15e5(%rip)        # 140004180 <_gmonparam+0x40>
   140002b9b:	48 89 2d ee 15 00 00 	mov    %rbp,0x15ee(%rip)        # 140004190 <_gmonparam+0x50>
   140002ba2:	48 89 3d a7 15 00 00 	mov    %rdi,0x15a7(%rip)        # 140004150 <_gmonparam+0x10>
   140002ba9:	48 c7 05 e4 15 00 00 	movq   $0x2,0x15e4(%rip)        # 140004198 <_gmonparam+0x58>
   140002bb0:	02 00 00 00 
   140002bb4:	48 89 3d a5 15 00 00 	mov    %rdi,0x15a5(%rip)        # 140004160 <_gmonparam+0x20>
   140002bbb:	89 05 b7 15 00 00    	mov    %eax,0x15b7(%rip)        # 140004178 <_gmonparam+0x38>
   140002bc1:	48 89 1d a8 15 00 00 	mov    %rbx,0x15a8(%rip)        # 140004170 <_gmonparam+0x30>
   140002bc8:	e8 db fe ff ff       	call   140002aa8 <malloc>
   140002bcd:	48 85 c0             	test   %rax,%rax
   140002bd0:	0f 84 bc 00 00 00    	je     140002c92 <monstartup+0x182>
   140002bd6:	48 89 c1             	mov    %rax,%rcx
   140002bd9:	4c 8d 44 1d 00       	lea    0x0(%rbp,%rbx,1),%r8
   140002bde:	31 d2                	xor    %edx,%edx
   140002be0:	e8 fb 07 00 00       	call   1400033e0 <memset>
   140002be5:	48 8d 0c 18          	lea    (%rax,%rbx,1),%rcx
   140002be9:	49 89 c1             	mov    %rax,%r9
   140002bec:	48 89 05 75 15 00 00 	mov    %rax,0x1575(%rip)        # 140004168 <_gmonparam+0x28>
   140002bf3:	48 8d 04 39          	lea    (%rcx,%rdi,1),%rax
   140002bf7:	48 89 0d 4a 15 00 00 	mov    %rcx,0x154a(%rip)        # 140004148 <_gmonparam+0x8>
   140002bfe:	48 89 05 53 15 00 00 	mov    %rax,0x1553(%rip)        # 140004158 <_gmonparam+0x18>
   140002c05:	31 c0                	xor    %eax,%eax
   140002c07:	66 41 89 41 0c       	mov    %ax,0xc(%r9)
   140002c0c:	48 39 ef             	cmp    %rbp,%rdi
   140002c0f:	73 2f                	jae    140002c40 <monstartup+0x130>
   140002c11:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002c15:	f3 48 0f 2a c7       	cvtsi2ss %rdi,%xmm0
   140002c1a:	48 85 ed             	test   %rbp,%rbp
   140002c1d:	78 61                	js     140002c80 <monstartup+0x170>
   140002c1f:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140002c23:	f3 48 0f 2a cd       	cvtsi2ss %rbp,%xmm1
   140002c28:	f3 0f 5e c1          	divss  %xmm1,%xmm0
   140002c2c:	f3 0f 59 05 90 27 00 	mulss  0x2790(%rip),%xmm0        # 1400053c4 <.rdata+0x34>
   140002c33:	00 
   140002c34:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
   140002c38:	41 89 c1             	mov    %eax,%r9d
   140002c3b:	eb 0e                	jmp    140002c4b <monstartup+0x13b>
   140002c3d:	0f 1f 00             	nopl   (%rax)
   140002c40:	41 b9 00 00 01 00    	mov    $0x10000,%r9d
   140002c46:	b8 00 00 01 00       	mov    $0x10000,%eax
   140002c4b:	49 89 f0             	mov    %rsi,%r8
   140002c4e:	48 89 fa             	mov    %rdi,%rdx
   140002c51:	89 05 29 55 00 00    	mov    %eax,0x5529(%rip)        # 140008180 <s_scale>
   140002c57:	e8 f4 06 00 00       	call   140003350 <profil>
   140002c5c:	c7 05 da 14 00 00 00 	movl   $0x0,0x14da(%rip)        # 140004140 <_gmonparam>
   140002c63:	00 00 00 
   140002c66:	48 83 c4 28          	add    $0x28,%rsp
   140002c6a:	5b                   	pop    %rbx
   140002c6b:	5e                   	pop    %rsi
   140002c6c:	5f                   	pop    %rdi
   140002c6d:	5d                   	pop    %rbp
   140002c6e:	c3                   	ret
   140002c6f:	90                   	nop
   140002c70:	48 63 da             	movslq %edx,%rbx
   140002c73:	48 c1 e3 04          	shl    $0x4,%rbx
   140002c77:	89 da                	mov    %ebx,%edx
   140002c79:	e9 09 ff ff ff       	jmp    140002b87 <monstartup+0x77>
   140002c7e:	66 90                	xchg   %ax,%ax
   140002c80:	48 d1 ed             	shr    %rbp
   140002c83:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140002c87:	f3 48 0f 2a cd       	cvtsi2ss %rbp,%xmm1
   140002c8c:	f3 0f 58 c9          	addss  %xmm1,%xmm1
   140002c90:	eb 96                	jmp    140002c28 <monstartup+0x118>
   140002c92:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140002c98:	48 8d 15 f1 26 00 00 	lea    0x26f1(%rip),%rdx        # 140005390 <.rdata>
   140002c9f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002ca4:	48 83 c4 28          	add    $0x28,%rsp
   140002ca8:	5b                   	pop    %rbx
   140002ca9:	5e                   	pop    %rsi
   140002caa:	5f                   	pop    %rdi
   140002cab:	5d                   	pop    %rbp
   140002cac:	e9 47 07 00 00       	jmp    1400033f8 <write>
   140002cb1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002cb8:	00 00 00 00 
   140002cbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002cc0 <_mcleanup>:
   140002cc0:	41 54                	push   %r12
   140002cc2:	55                   	push   %rbp
   140002cc3:	57                   	push   %rdi
   140002cc4:	56                   	push   %rsi
   140002cc5:	53                   	push   %rbx
   140002cc6:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
   140002cca:	0f 11 74 24 70       	movups %xmm6,0x70(%rsp)
   140002ccf:	83 3d 6a 14 00 00 02 	cmpl   $0x2,0x146a(%rip)        # 140004140 <_gmonparam>
   140002cd6:	0f 84 6b 01 00 00    	je     140002e47 <_mcleanup+0x187>
   140002cdc:	45 31 c9             	xor    %r9d,%r9d
   140002cdf:	45 31 c0             	xor    %r8d,%r8d
   140002ce2:	31 d2                	xor    %edx,%edx
   140002ce4:	31 c9                	xor    %ecx,%ecx
   140002ce6:	e8 65 06 00 00       	call   140003350 <profil>
   140002ceb:	41 b8 b6 01 00 00    	mov    $0x1b6,%r8d
   140002cf1:	ba 01 83 00 00       	mov    $0x8301,%edx
   140002cf6:	48 8d 1d 23 14 00 00 	lea    0x1423(%rip),%rbx        # 140004120 <gmon_out.0>
   140002cfd:	c7 05 39 14 00 00 03 	movl   $0x3,0x1439(%rip)        # 140004140 <_gmonparam>
   140002d04:	00 00 00 
   140002d07:	48 89 d9             	mov    %rbx,%rcx
   140002d0a:	e8 e1 06 00 00       	call   1400033f0 <open>
   140002d0f:	89 c6                	mov    %eax,%esi
   140002d11:	85 c0                	test   %eax,%eax
   140002d13:	0f 88 17 01 00 00    	js     140002e30 <_mcleanup+0x170>
   140002d19:	8b 05 31 14 00 00    	mov    0x1431(%rip),%eax        # 140004150 <_gmonparam+0x10>
   140002d1f:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
   140002d24:	89 f1                	mov    %esi,%ecx
   140002d26:	31 ff                	xor    %edi,%edi
   140002d28:	f3 0f 6f 0d 50 14 00 	movdqu 0x1450(%rip),%xmm1        # 140004180 <_gmonparam+0x40>
   140002d2f:	00 
   140002d30:	41 b8 28 00 00 00    	mov    $0x28,%r8d
   140002d36:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140002d3b:	83 c0 28             	add    $0x28,%eax
   140002d3e:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140002d42:	48 b8 79 18 05 00 64 	movabs $0x6400051879,%rax
   140002d49:	00 00 00 
   140002d4c:	0f 11 4c 24 40       	movups %xmm1,0x40(%rsp)
   140002d51:	48 89 44 24 54       	mov    %rax,0x54(%rsp)
   140002d56:	e8 9d 06 00 00       	call   1400033f8 <write>
   140002d5b:	44 8b 05 ee 13 00 00 	mov    0x13ee(%rip),%r8d        # 140004150 <_gmonparam+0x10>
   140002d62:	48 8b 15 df 13 00 00 	mov    0x13df(%rip),%rdx        # 140004148 <_gmonparam+0x8>
   140002d69:	89 f1                	mov    %esi,%ecx
   140002d6b:	e8 88 06 00 00       	call   1400033f8 <write>
   140002d70:	48 8b 05 e9 13 00 00 	mov    0x13e9(%rip),%rax        # 140004160 <_gmonparam+0x20>
   140002d77:	48 d1 e8             	shr    %rax
   140002d7a:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
   140002d7e:	85 c0                	test   %eax,%eax
   140002d80:	7f 1a                	jg     140002d9c <_mcleanup+0xdc>
   140002d82:	e9 8e 00 00 00       	jmp    140002e15 <_mcleanup+0x155>
   140002d87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002d8e:	00 00 
   140002d90:	48 8d 47 01          	lea    0x1(%rdi),%rax
   140002d94:	49 39 fc             	cmp    %rdi,%r12
   140002d97:	74 7c                	je     140002e15 <_mcleanup+0x155>
   140002d99:	48 89 c7             	mov    %rax,%rdi
   140002d9c:	48 8b 05 b5 13 00 00 	mov    0x13b5(%rip),%rax        # 140004158 <_gmonparam+0x18>
   140002da3:	0f b7 1c 78          	movzwl (%rax,%rdi,2),%ebx
   140002da7:	66 85 db             	test   %bx,%bx
   140002daa:	74 e4                	je     140002d90 <_mcleanup+0xd0>
   140002dac:	48 8b 05 e5 13 00 00 	mov    0x13e5(%rip),%rax        # 140004198 <_gmonparam+0x58>
   140002db3:	48 8b 15 c6 13 00 00 	mov    0x13c6(%rip),%rdx        # 140004180 <_gmonparam+0x40>
   140002dba:	48 0f af c7          	imul   %rdi,%rax
   140002dbe:	48 8d 04 42          	lea    (%rdx,%rax,2),%rax
   140002dc2:	66 48 0f 6e f0       	movq   %rax,%xmm6
   140002dc7:	48 8b 05 9a 13 00 00 	mov    0x139a(%rip),%rax        # 140004168 <_gmonparam+0x28>
   140002dce:	66 90                	xchg   %ax,%ax
   140002dd0:	48 63 db             	movslq %ebx,%rbx
   140002dd3:	66 0f 6f c6          	movdqa %xmm6,%xmm0
   140002dd7:	41 b8 18 00 00 00    	mov    $0x18,%r8d
   140002ddd:	48 89 ea             	mov    %rbp,%rdx
   140002de0:	48 c1 e3 04          	shl    $0x4,%rbx
   140002de4:	89 f1                	mov    %esi,%ecx
   140002de6:	0f 16 04 18          	movhps (%rax,%rbx,1),%xmm0
   140002dea:	8b 44 18 08          	mov    0x8(%rax,%rbx,1),%eax
   140002dee:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140002df3:	89 44 24 30          	mov    %eax,0x30(%rsp)
   140002df7:	e8 fc 05 00 00       	call   1400033f8 <write>
   140002dfc:	48 8b 05 65 13 00 00 	mov    0x1365(%rip),%rax        # 140004168 <_gmonparam+0x28>
   140002e03:	0f b7 5c 18 0c       	movzwl 0xc(%rax,%rbx,1),%ebx
   140002e08:	85 db                	test   %ebx,%ebx
   140002e0a:	75 c4                	jne    140002dd0 <_mcleanup+0x110>
   140002e0c:	48 8d 47 01          	lea    0x1(%rdi),%rax
   140002e10:	49 39 fc             	cmp    %rdi,%r12
   140002e13:	75 84                	jne    140002d99 <_mcleanup+0xd9>
   140002e15:	89 f1                	mov    %esi,%ecx
   140002e17:	e8 cc 05 00 00       	call   1400033e8 <close>
   140002e1c:	90                   	nop
   140002e1d:	0f 10 74 24 70       	movups 0x70(%rsp),%xmm6
   140002e22:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
   140002e26:	5b                   	pop    %rbx
   140002e27:	5e                   	pop    %rsi
   140002e28:	5f                   	pop    %rdi
   140002e29:	5d                   	pop    %rbp
   140002e2a:	41 5c                	pop    %r12
   140002e2c:	c3                   	ret
   140002e2d:	0f 1f 00             	nopl   (%rax)
   140002e30:	0f 10 74 24 70       	movups 0x70(%rsp),%xmm6
   140002e35:	48 89 d9             	mov    %rbx,%rcx
   140002e38:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
   140002e3c:	5b                   	pop    %rbx
   140002e3d:	5e                   	pop    %rsi
   140002e3e:	5f                   	pop    %rdi
   140002e3f:	5d                   	pop    %rbp
   140002e40:	41 5c                	pop    %r12
   140002e42:	e9 c1 05 00 00       	jmp    140003408 <perror>
   140002e47:	41 b8 19 00 00 00    	mov    $0x19,%r8d
   140002e4d:	48 8d 15 57 25 00 00 	lea    0x2557(%rip),%rdx        # 1400053ab <.rdata+0x1b>
   140002e54:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002e59:	e8 9a 05 00 00       	call   1400033f8 <write>
   140002e5e:	e9 79 fe ff ff       	jmp    140002cdc <_mcleanup+0x1c>
   140002e63:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002e6a:	00 00 00 00 
   140002e6e:	66 90                	xchg   %ax,%ax

0000000140002e70 <moncontrol>:
   140002e70:	48 83 ec 28          	sub    $0x28,%rsp
   140002e74:	85 c9                	test   %ecx,%ecx
   140002e76:	74 38                	je     140002eb0 <moncontrol+0x40>
   140002e78:	44 8b 0d 01 53 00 00 	mov    0x5301(%rip),%r9d        # 140008180 <s_scale>
   140002e7f:	4c 8b 05 fa 12 00 00 	mov    0x12fa(%rip),%r8        # 140004180 <_gmonparam+0x40>
   140002e86:	48 8b 15 c3 12 00 00 	mov    0x12c3(%rip),%rdx        # 140004150 <_gmonparam+0x10>
   140002e8d:	48 8b 0d b4 12 00 00 	mov    0x12b4(%rip),%rcx        # 140004148 <_gmonparam+0x8>
   140002e94:	e8 b7 04 00 00       	call   140003350 <profil>
   140002e99:	31 c0                	xor    %eax,%eax
   140002e9b:	89 05 9f 12 00 00    	mov    %eax,0x129f(%rip)        # 140004140 <_gmonparam>
   140002ea1:	48 83 c4 28          	add    $0x28,%rsp
   140002ea5:	c3                   	ret
   140002ea6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002ead:	00 00 00 
   140002eb0:	45 31 c9             	xor    %r9d,%r9d
   140002eb3:	45 31 c0             	xor    %r8d,%r8d
   140002eb6:	31 d2                	xor    %edx,%edx
   140002eb8:	31 c9                	xor    %ecx,%ecx
   140002eba:	e8 91 04 00 00       	call   140003350 <profil>
   140002ebf:	b8 03 00 00 00       	mov    $0x3,%eax
   140002ec4:	89 05 76 12 00 00    	mov    %eax,0x1276(%rip)        # 140004140 <_gmonparam>
   140002eca:	48 83 c4 28          	add    $0x28,%rsp
   140002ece:	c3                   	ret
   140002ecf:	90                   	nop

0000000140002ed0 <_mcount>:
   140002ed0:	55                   	push   %rbp
   140002ed1:	48 89 e5             	mov    %rsp,%rbp
   140002ed4:	50                   	push   %rax
   140002ed5:	51                   	push   %rcx
   140002ed6:	52                   	push   %rdx
   140002ed7:	41 50                	push   %r8
   140002ed9:	41 51                	push   %r9
   140002edb:	41 52                	push   %r10
   140002edd:	41 53                	push   %r11
   140002edf:	48 8b 55 08          	mov    0x8(%rbp),%rdx
   140002ee3:	48 8b 45 00          	mov    0x0(%rbp),%rax
   140002ee7:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140002eeb:	48 83 ec 28          	sub    $0x28,%rsp
   140002eef:	e8 4c 00 00 00       	call   140002f40 <_mcount_private>
   140002ef4:	48 83 c4 28          	add    $0x28,%rsp
   140002ef8:	41 5b                	pop    %r11
   140002efa:	41 5a                	pop    %r10
   140002efc:	41 59                	pop    %r9
   140002efe:	41 58                	pop    %r8
   140002f00:	5a                   	pop    %rdx
   140002f01:	59                   	pop    %rcx
   140002f02:	58                   	pop    %rax
   140002f03:	c9                   	leave
   140002f04:	c3                   	ret

0000000140002f05 <__fentry__>:
   140002f05:	55                   	push   %rbp
   140002f06:	48 89 e5             	mov    %rsp,%rbp
   140002f09:	50                   	push   %rax
   140002f0a:	51                   	push   %rcx
   140002f0b:	52                   	push   %rdx
   140002f0c:	41 50                	push   %r8
   140002f0e:	41 51                	push   %r9
   140002f10:	41 52                	push   %r10
   140002f12:	41 53                	push   %r11
   140002f14:	48 8b 55 08          	mov    0x8(%rbp),%rdx
   140002f18:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140002f1c:	48 83 ec 28          	sub    $0x28,%rsp
   140002f20:	e8 1b 00 00 00       	call   140002f40 <_mcount_private>
   140002f25:	48 83 c4 28          	add    $0x28,%rsp
   140002f29:	41 5b                	pop    %r11
   140002f2b:	41 5a                	pop    %r10
   140002f2d:	41 59                	pop    %r9
   140002f2f:	41 58                	pop    %r8
   140002f31:	5a                   	pop    %rdx
   140002f32:	59                   	pop    %rcx
   140002f33:	58                   	pop    %rax
   140002f34:	c9                   	leave
   140002f35:	c3                   	ret
   140002f36:	90                   	nop
   140002f37:	90                   	nop
   140002f38:	90                   	nop
   140002f39:	90                   	nop
   140002f3a:	90                   	nop
   140002f3b:	90                   	nop
   140002f3c:	90                   	nop
   140002f3d:	90                   	nop
   140002f3e:	90                   	nop
   140002f3f:	90                   	nop

0000000140002f40 <_mcount_private>:
   140002f40:	48 89 c8             	mov    %rcx,%rax
   140002f43:	48 8b 0d 16 26 00 00 	mov    0x2616(%rip),%rcx        # 140005560 <.refptr._gmonparam>
   140002f4a:	49 89 d0             	mov    %rdx,%r8
   140002f4d:	44 8b 09             	mov    (%rcx),%r9d
   140002f50:	45 85 c9             	test   %r9d,%r9d
   140002f53:	75 57                	jne    140002fac <_mcount_private+0x6c>
   140002f55:	c7 01 01 00 00 00    	movl   $0x1,(%rcx)
   140002f5b:	48 2b 41 40          	sub    0x40(%rcx),%rax
   140002f5f:	48 39 41 50          	cmp    %rax,0x50(%rcx)
   140002f63:	72 69                	jb     140002fce <_mcount_private+0x8e>
   140002f65:	48 8b 51 58          	mov    0x58(%rcx),%rdx
   140002f69:	4c 8b 51 18          	mov    0x18(%rcx),%r10
   140002f6d:	48 83 fa 02          	cmp    $0x2,%rdx
   140002f71:	0f 84 d9 00 00 00    	je     140003050 <_mcount_private+0x110>
   140002f77:	4c 8d 0c 12          	lea    (%rdx,%rdx,1),%r9
   140002f7b:	31 d2                	xor    %edx,%edx
   140002f7d:	49 f7 f1             	div    %r9
   140002f80:	4d 8d 1c 42          	lea    (%r10,%rax,2),%r11
   140002f84:	41 0f b7 13          	movzwl (%r11),%edx
   140002f88:	4c 8b 51 28          	mov    0x28(%rcx),%r10
   140002f8c:	66 85 d2             	test   %dx,%dx
   140002f8f:	75 47                	jne    140002fd8 <_mcount_private+0x98>
   140002f91:	41 0f b7 42 0c       	movzwl 0xc(%r10),%eax
   140002f96:	83 c0 01             	add    $0x1,%eax
   140002f99:	66 41 89 42 0c       	mov    %ax,0xc(%r10)
   140002f9e:	0f b7 d0             	movzwl %ax,%edx
   140002fa1:	39 51 38             	cmp    %edx,0x38(%rcx)
   140002fa4:	7f 0a                	jg     140002fb0 <_mcount_private+0x70>
   140002fa6:	c7 01 02 00 00 00    	movl   $0x2,(%rcx)
   140002fac:	c3                   	ret
   140002fad:	0f 1f 00             	nopl   (%rax)
   140002fb0:	66 41 89 03          	mov    %ax,(%r11)
   140002fb4:	0f b7 c0             	movzwl %ax,%eax
   140002fb7:	31 d2                	xor    %edx,%edx
   140002fb9:	48 c1 e0 04          	shl    $0x4,%rax
   140002fbd:	4c 01 d0             	add    %r10,%rax
   140002fc0:	4c 89 00             	mov    %r8,(%rax)
   140002fc3:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
   140002fca:	66 89 50 0c          	mov    %dx,0xc(%rax)
   140002fce:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
   140002fd4:	c3                   	ret
   140002fd5:	0f 1f 00             	nopl   (%rax)
   140002fd8:	48 c1 e2 04          	shl    $0x4,%rdx
   140002fdc:	4c 01 d2             	add    %r10,%rdx
   140002fdf:	4c 39 02             	cmp    %r8,(%rdx)
   140002fe2:	75 1f                	jne    140003003 <_mcount_private+0xc3>
   140002fe4:	83 42 08 01          	addl   $0x1,0x8(%rdx)
   140002fe8:	eb e4                	jmp    140002fce <_mcount_private+0x8e>
   140002fea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002ff0:	41 0f b7 c1          	movzwl %r9w,%eax
   140002ff4:	48 c1 e0 04          	shl    $0x4,%rax
   140002ff8:	4c 01 d0             	add    %r10,%rax
   140002ffb:	4c 39 00             	cmp    %r8,(%rax)
   140002ffe:	74 60                	je     140003060 <_mcount_private+0x120>
   140003000:	48 89 c2             	mov    %rax,%rdx
   140003003:	44 0f b7 4a 0c       	movzwl 0xc(%rdx),%r9d
   140003008:	66 45 85 c9          	test   %r9w,%r9w
   14000300c:	75 e2                	jne    140002ff0 <_mcount_private+0xb0>
   14000300e:	41 0f b7 42 0c       	movzwl 0xc(%r10),%eax
   140003013:	83 c0 01             	add    $0x1,%eax
   140003016:	66 41 89 42 0c       	mov    %ax,0xc(%r10)
   14000301b:	0f b7 d0             	movzwl %ax,%edx
   14000301e:	39 51 38             	cmp    %edx,0x38(%rcx)
   140003021:	7e 83                	jle    140002fa6 <_mcount_private+0x66>
   140003023:	0f b7 d0             	movzwl %ax,%edx
   140003026:	48 c1 e2 04          	shl    $0x4,%rdx
   14000302a:	49 01 d2             	add    %rdx,%r10
   14000302d:	41 0f b7 13          	movzwl (%r11),%edx
   140003031:	4d 89 02             	mov    %r8,(%r10)
   140003034:	41 c7 42 08 01 00 00 	movl   $0x1,0x8(%r10)
   14000303b:	00 
   14000303c:	66 41 89 52 0c       	mov    %dx,0xc(%r10)
   140003041:	66 41 89 03          	mov    %ax,(%r11)
   140003045:	eb 87                	jmp    140002fce <_mcount_private+0x8e>
   140003047:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000304e:	00 00 
   140003050:	48 c1 e8 02          	shr    $0x2,%rax
   140003054:	4d 8d 1c 42          	lea    (%r10,%rax,2),%r11
   140003058:	e9 27 ff ff ff       	jmp    140002f84 <_mcount_private+0x44>
   14000305d:	0f 1f 00             	nopl   (%rax)
   140003060:	44 0f b7 40 0c       	movzwl 0xc(%rax),%r8d
   140003065:	83 40 08 01          	addl   $0x1,0x8(%rax)
   140003069:	66 44 89 42 0c       	mov    %r8w,0xc(%rdx)
   14000306e:	41 0f b7 13          	movzwl (%r11),%edx
   140003072:	66 89 50 0c          	mov    %dx,0xc(%rax)
   140003076:	66 45 89 0b          	mov    %r9w,(%r11)
   14000307a:	e9 4f ff ff ff       	jmp    140002fce <_mcount_private+0x8e>
   14000307f:	90                   	nop

0000000140003080 <get_thrpc>:
   140003080:	56                   	push   %rsi
   140003081:	53                   	push   %rbx
   140003082:	48 81 ec f8 04 00 00 	sub    $0x4f8,%rsp
   140003089:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
   140003090:	48 89 cb             	mov    %rcx,%rbx
   140003093:	ff 15 1f 63 00 00    	call   *0x631f(%rip)        # 1400093b8 <__imp_SuspendThread>
   140003099:	83 f8 ff             	cmp    $0xffffffff,%eax
   14000309c:	74 23                	je     1400030c1 <get_thrpc+0x41>
   14000309e:	c7 44 24 50 03 00 10 	movl   $0x100003,0x50(%rsp)
   1400030a5:	00 
   1400030a6:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   1400030ab:	48 89 d9             	mov    %rbx,%rcx
   1400030ae:	ff 15 c4 62 00 00    	call   *0x62c4(%rip)        # 140009378 <__imp_GetThreadContext>
   1400030b4:	85 c0                	test   %eax,%eax
   1400030b6:	75 18                	jne    1400030d0 <get_thrpc+0x50>
   1400030b8:	48 89 d9             	mov    %rbx,%rcx
   1400030bb:	ff 15 cf 62 00 00    	call   *0x62cf(%rip)        # 140009390 <__imp_ResumeThread>
   1400030c1:	48 89 f0             	mov    %rsi,%rax
   1400030c4:	48 81 c4 f8 04 00 00 	add    $0x4f8,%rsp
   1400030cb:	5b                   	pop    %rbx
   1400030cc:	5e                   	pop    %rsi
   1400030cd:	c3                   	ret
   1400030ce:	66 90                	xchg   %ax,%ax
   1400030d0:	48 8b b4 24 18 01 00 	mov    0x118(%rsp),%rsi
   1400030d7:	00 
   1400030d8:	eb de                	jmp    1400030b8 <get_thrpc+0x38>
   1400030da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400030e0 <profthr_func>:
   1400030e0:	56                   	push   %rsi
   1400030e1:	53                   	push   %rbx
   1400030e2:	48 83 ec 28          	sub    $0x28,%rsp
   1400030e6:	48 8b 35 eb 62 00 00 	mov    0x62eb(%rip),%rsi        # 1400093d8 <__imp_WaitForSingleObject>
   1400030ed:	48 89 cb             	mov    %rcx,%rbx
   1400030f0:	48 8b 0b             	mov    (%rbx),%rcx
   1400030f3:	e8 88 ff ff ff       	call   140003080 <get_thrpc>
   1400030f8:	48 8b 53 20          	mov    0x20(%rbx),%rdx
   1400030fc:	48 39 d0             	cmp    %rdx,%rax
   1400030ff:	72 31                	jb     140003132 <profthr_func+0x52>
   140003101:	48 3b 43 28          	cmp    0x28(%rbx),%rax
   140003105:	73 2b                	jae    140003132 <profthr_func+0x52>
   140003107:	48 29 d0             	sub    %rdx,%rax
   14000310a:	8b 4b 30             	mov    0x30(%rbx),%ecx
   14000310d:	48 89 c2             	mov    %rax,%rdx
   140003110:	48 c1 e8 11          	shr    $0x11,%rax
   140003114:	48 d1 ea             	shr    %rdx
   140003117:	48 0f af c1          	imul   %rcx,%rax
   14000311b:	0f b7 d2             	movzwl %dx,%edx
   14000311e:	48 0f af d1          	imul   %rcx,%rdx
   140003122:	48 c1 ea 10          	shr    $0x10,%rdx
   140003126:	48 01 d0             	add    %rdx,%rax
   140003129:	48 8b 53 18          	mov    0x18(%rbx),%rdx
   14000312d:	66 83 04 42 01       	addw   $0x1,(%rdx,%rax,2)
   140003132:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
   140003136:	ba 0a 00 00 00       	mov    $0xa,%edx
   14000313b:	ff d6                	call   *%rsi
   14000313d:	85 c0                	test   %eax,%eax
   14000313f:	75 af                	jne    1400030f0 <profthr_func+0x10>
   140003141:	48 83 c4 28          	add    $0x28,%rsp
   140003145:	5b                   	pop    %rbx
   140003146:	5e                   	pop    %rsi
   140003147:	c3                   	ret
   140003148:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000314f:	00 

0000000140003150 <profile_ctl>:
   140003150:	41 55                	push   %r13
   140003152:	41 54                	push   %r12
   140003154:	55                   	push   %rbp
   140003155:	57                   	push   %rdi
   140003156:	56                   	push   %rsi
   140003157:	53                   	push   %rbx
   140003158:	48 83 ec 58          	sub    $0x58,%rsp
   14000315c:	44 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12d
   140003163:	00 
   140003164:	48 89 cb             	mov    %rcx,%rbx
   140003167:	48 89 d5             	mov    %rdx,%rbp
   14000316a:	4c 89 c6             	mov    %r8,%rsi
   14000316d:	4c 89 cf             	mov    %r9,%rdi
   140003170:	41 81 fc 00 00 01 00 	cmp    $0x10000,%r12d
   140003177:	0f 87 7b 01 00 00    	ja     1400032f8 <profile_ctl+0x1a8>
   14000317d:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   140003181:	48 85 d2             	test   %rdx,%rdx
   140003184:	74 28                	je     1400031ae <profile_ctl+0x5e>
   140003186:	48 8b 49 10          	mov    0x10(%rcx),%rcx
   14000318a:	45 31 c9             	xor    %r9d,%r9d
   14000318d:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   140003193:	ff 15 0f 62 00 00    	call   *0x620f(%rip)        # 1400093a8 <__imp_SignalObjectAndWait>
   140003199:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
   14000319d:	4c 8b 2d 8c 61 00 00 	mov    0x618c(%rip),%r13        # 140009330 <__IAT_start__>
   1400031a4:	41 ff d5             	call   *%r13
   1400031a7:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
   1400031ab:	41 ff d5             	call   *%r13
   1400031ae:	48 8b 0b             	mov    (%rbx),%rcx
   1400031b1:	48 85 c9             	test   %rcx,%rcx
   1400031b4:	74 06                	je     1400031bc <profile_ctl+0x6c>
   1400031b6:	ff 15 74 61 00 00    	call   *0x6174(%rip)        # 140009330 <__IAT_start__>
   1400031bc:	45 31 ed             	xor    %r13d,%r13d
   1400031bf:	45 85 e4             	test   %r12d,%r12d
   1400031c2:	75 14                	jne    1400031d8 <profile_ctl+0x88>
   1400031c4:	44 89 e8             	mov    %r13d,%eax
   1400031c7:	48 83 c4 58          	add    $0x58,%rsp
   1400031cb:	5b                   	pop    %rbx
   1400031cc:	5e                   	pop    %rsi
   1400031cd:	5f                   	pop    %rdi
   1400031ce:	5d                   	pop    %rbp
   1400031cf:	41 5c                	pop    %r12
   1400031d1:	41 5d                	pop    %r13
   1400031d3:	c3                   	ret
   1400031d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400031d8:	49 89 f0             	mov    %rsi,%r8
   1400031db:	31 d2                	xor    %edx,%edx
   1400031dd:	48 89 e9             	mov    %rbp,%rcx
   1400031e0:	e8 fb 01 00 00       	call   1400033e0 <memset>
   1400031e5:	48 89 f0             	mov    %rsi,%rax
   1400031e8:	44 89 e1             	mov    %r12d,%ecx
   1400031eb:	31 d2                	xor    %edx,%edx
   1400031ed:	48 d1 e8             	shr    %rax
   1400031f0:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400031f4:	48 c7 43 30 00 00 00 	movq   $0x0,0x30(%rbx)
   1400031fb:	00 
   1400031fc:	48 c1 e0 10          	shl    $0x10,%rax
   140003200:	0f 11 03             	movups %xmm0,(%rbx)
   140003203:	48 f7 f1             	div    %rcx
   140003206:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
   14000320a:	0f 11 43 20          	movups %xmm0,0x20(%rbx)
   14000320e:	48 89 2d a3 4f 00 00 	mov    %rbp,0x4fa3(%rip)        # 1400081b8 <prof+0x18>
   140003215:	48 8b 2d 44 61 00 00 	mov    0x6144(%rip),%rbp        # 140009360 <__imp_GetCurrentProcess>
   14000321c:	48 89 3d 9d 4f 00 00 	mov    %rdi,0x4f9d(%rip)        # 1400081c0 <prof+0x20>
   140003223:	44 89 25 a6 4f 00 00 	mov    %r12d,0x4fa6(%rip)        # 1400081d0 <prof+0x30>
   14000322a:	48 8d 04 47          	lea    (%rdi,%rax,2),%rax
   14000322e:	48 89 05 93 4f 00 00 	mov    %rax,0x4f93(%rip)        # 1400081c8 <prof+0x28>
   140003235:	ff d5                	call   *%rbp
   140003237:	48 89 c7             	mov    %rax,%rdi
   14000323a:	ff 15 28 61 00 00    	call   *0x6128(%rip)        # 140009368 <__imp_GetCurrentThread>
   140003240:	48 89 c6             	mov    %rax,%rsi
   140003243:	ff d5                	call   *%rbp
   140003245:	c7 44 24 30 02 00 00 	movl   $0x2,0x30(%rsp)
   14000324c:	00 
   14000324d:	49 89 d9             	mov    %rbx,%r9
   140003250:	49 89 f8             	mov    %rdi,%r8
   140003253:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%rsp)
   14000325a:	00 
   14000325b:	48 89 c1             	mov    %rax,%rcx
   14000325e:	48 89 f2             	mov    %rsi,%rdx
   140003261:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
   140003268:	00 
   140003269:	ff 15 e1 60 00 00    	call   *0x60e1(%rip)        # 140009350 <__imp_DuplicateHandle>
   14000326f:	85 c0                	test   %eax,%eax
   140003271:	74 6d                	je     1400032e0 <profile_ctl+0x190>
   140003273:	45 31 c9             	xor    %r9d,%r9d
   140003276:	45 31 c0             	xor    %r8d,%r8d
   140003279:	ba 01 00 00 00       	mov    $0x1,%edx
   14000327e:	31 c9                	xor    %ecx,%ecx
   140003280:	ff 15 b2 60 00 00    	call   *0x60b2(%rip)        # 140009338 <__imp_CreateEventA>
   140003286:	48 89 43 10          	mov    %rax,0x10(%rbx)
   14000328a:	48 85 c0             	test   %rax,%rax
   14000328d:	0f 84 9f 00 00 00    	je     140003332 <profile_ctl+0x1e2>
   140003293:	48 8d 44 24 4c       	lea    0x4c(%rsp),%rax
   140003298:	31 c9                	xor    %ecx,%ecx
   14000329a:	49 89 d9             	mov    %rbx,%r9
   14000329d:	31 d2                	xor    %edx,%edx
   14000329f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400032a4:	4c 8d 05 35 fe ff ff 	lea    -0x1cb(%rip),%r8        # 1400030e0 <profthr_func>
   1400032ab:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
   1400032b2:	00 
   1400032b3:	ff 15 87 60 00 00    	call   *0x6087(%rip)        # 140009340 <__imp_CreateThread>
   1400032b9:	48 89 43 08          	mov    %rax,0x8(%rbx)
   1400032bd:	48 89 c1             	mov    %rax,%rcx
   1400032c0:	48 85 c0             	test   %rax,%rax
   1400032c3:	74 49                	je     14000330e <profile_ctl+0x1be>
   1400032c5:	ba 0f 00 00 00       	mov    $0xf,%edx
   1400032ca:	ff 15 c8 60 00 00    	call   *0x60c8(%rip)        # 140009398 <__imp_SetThreadPriority>
   1400032d0:	44 89 e8             	mov    %r13d,%eax
   1400032d3:	48 83 c4 58          	add    $0x58,%rsp
   1400032d7:	5b                   	pop    %rbx
   1400032d8:	5e                   	pop    %rsi
   1400032d9:	5f                   	pop    %rdi
   1400032da:	5d                   	pop    %rbp
   1400032db:	41 5c                	pop    %r12
   1400032dd:	41 5d                	pop    %r13
   1400032df:	c3                   	ret
   1400032e0:	e8 1b 01 00 00       	call   140003400 <_errno>
   1400032e5:	c7 00 03 00 00 00    	movl   $0x3,(%rax)
   1400032eb:	41 83 cd ff          	or     $0xffffffff,%r13d
   1400032ef:	e9 d0 fe ff ff       	jmp    1400031c4 <profile_ctl+0x74>
   1400032f4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400032f8:	e8 03 01 00 00       	call   140003400 <_errno>
   1400032fd:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
   140003303:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
   140003309:	e9 b6 fe ff ff       	jmp    1400031c4 <profile_ctl+0x74>
   14000330e:	48 8b 0b             	mov    (%rbx),%rcx
   140003311:	48 8b 35 18 60 00 00 	mov    0x6018(%rip),%rsi        # 140009330 <__IAT_start__>
   140003318:	ff d6                	call   *%rsi
   14000331a:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
   14000331e:	ff d6                	call   *%rsi
   140003320:	31 c0                	xor    %eax,%eax
   140003322:	48 89 03             	mov    %rax,(%rbx)
   140003325:	e8 d6 00 00 00       	call   140003400 <_errno>
   14000332a:	c7 00 0b 00 00 00    	movl   $0xb,(%rax)
   140003330:	eb b9                	jmp    1400032eb <profile_ctl+0x19b>
   140003332:	31 c9                	xor    %ecx,%ecx
   140003334:	ff 15 f6 5f 00 00    	call   *0x5ff6(%rip)        # 140009330 <__IAT_start__>
   14000333a:	31 d2                	xor    %edx,%edx
   14000333c:	48 89 13             	mov    %rdx,(%rbx)
   14000333f:	e8 bc 00 00 00       	call   140003400 <_errno>
   140003344:	c7 00 0b 00 00 00    	movl   $0xb,(%rax)
   14000334a:	eb 9f                	jmp    1400032eb <profile_ctl+0x19b>
   14000334c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140003350 <profil>:
   140003350:	48 83 ec 38          	sub    $0x38,%rsp
   140003354:	44 89 4c 24 20       	mov    %r9d,0x20(%rsp)
   140003359:	4d 89 c1             	mov    %r8,%r9
   14000335c:	49 89 d0             	mov    %rdx,%r8
   14000335f:	48 89 ca             	mov    %rcx,%rdx
   140003362:	48 8d 0d 37 4e 00 00 	lea    0x4e37(%rip),%rcx        # 1400081a0 <prof>
   140003369:	e8 e2 fd ff ff       	call   140003150 <profile_ctl>
   14000336e:	48 83 c4 38          	add    $0x38,%rsp
   140003372:	c3                   	ret
   140003373:	90                   	nop
   140003374:	90                   	nop
   140003375:	90                   	nop
   140003376:	90                   	nop
   140003377:	90                   	nop
   140003378:	90                   	nop
   140003379:	90                   	nop
   14000337a:	90                   	nop
   14000337b:	90                   	nop
   14000337c:	90                   	nop
   14000337d:	90                   	nop
   14000337e:	90                   	nop
   14000337f:	90                   	nop

0000000140003380 <WaitForSingleObject>:
   140003380:	ff 25 52 60 00 00    	jmp    *0x6052(%rip)        # 1400093d8 <__imp_WaitForSingleObject>
   140003386:	90                   	nop
   140003387:	90                   	nop

0000000140003388 <SuspendThread>:
   140003388:	ff 25 2a 60 00 00    	jmp    *0x602a(%rip)        # 1400093b8 <__imp_SuspendThread>
   14000338e:	90                   	nop
   14000338f:	90                   	nop

0000000140003390 <SignalObjectAndWait>:
   140003390:	ff 25 12 60 00 00    	jmp    *0x6012(%rip)        # 1400093a8 <__imp_SignalObjectAndWait>
   140003396:	90                   	nop
   140003397:	90                   	nop

0000000140003398 <SetThreadPriority>:
   140003398:	ff 25 fa 5f 00 00    	jmp    *0x5ffa(%rip)        # 140009398 <__imp_SetThreadPriority>
   14000339e:	90                   	nop
   14000339f:	90                   	nop

00000001400033a0 <ResumeThread>:
   1400033a0:	ff 25 ea 5f 00 00    	jmp    *0x5fea(%rip)        # 140009390 <__imp_ResumeThread>
   1400033a6:	90                   	nop
   1400033a7:	90                   	nop

00000001400033a8 <GetThreadContext>:
   1400033a8:	ff 25 ca 5f 00 00    	jmp    *0x5fca(%rip)        # 140009378 <__imp_GetThreadContext>
   1400033ae:	90                   	nop
   1400033af:	90                   	nop

00000001400033b0 <GetCurrentThread>:
   1400033b0:	ff 25 b2 5f 00 00    	jmp    *0x5fb2(%rip)        # 140009368 <__imp_GetCurrentThread>
   1400033b6:	90                   	nop
   1400033b7:	90                   	nop

00000001400033b8 <GetCurrentProcess>:
   1400033b8:	ff 25 a2 5f 00 00    	jmp    *0x5fa2(%rip)        # 140009360 <__imp_GetCurrentProcess>
   1400033be:	90                   	nop
   1400033bf:	90                   	nop

00000001400033c0 <DuplicateHandle>:
   1400033c0:	ff 25 8a 5f 00 00    	jmp    *0x5f8a(%rip)        # 140009350 <__imp_DuplicateHandle>
   1400033c6:	90                   	nop
   1400033c7:	90                   	nop

00000001400033c8 <CreateThread>:
   1400033c8:	ff 25 72 5f 00 00    	jmp    *0x5f72(%rip)        # 140009340 <__imp_CreateThread>
   1400033ce:	90                   	nop
   1400033cf:	90                   	nop

00000001400033d0 <CreateEventA>:
   1400033d0:	ff 25 62 5f 00 00    	jmp    *0x5f62(%rip)        # 140009338 <__imp_CreateEventA>
   1400033d6:	90                   	nop
   1400033d7:	90                   	nop

00000001400033d8 <CloseHandle>:
   1400033d8:	ff 25 52 5f 00 00    	jmp    *0x5f52(%rip)        # 140009330 <__IAT_start__>
   1400033de:	90                   	nop
   1400033df:	90                   	nop

00000001400033e0 <memset>:
   1400033e0:	ff 25 6a 61 00 00    	jmp    *0x616a(%rip)        # 140009550 <__imp_memset>
   1400033e6:	90                   	nop
   1400033e7:	90                   	nop

00000001400033e8 <close>:
   1400033e8:	ff 25 32 61 00 00    	jmp    *0x6132(%rip)        # 140009520 <__imp_close>
   1400033ee:	90                   	nop
   1400033ef:	90                   	nop

00000001400033f0 <open>:
   1400033f0:	ff 25 32 61 00 00    	jmp    *0x6132(%rip)        # 140009528 <__imp_open>
   1400033f6:	90                   	nop
   1400033f7:	90                   	nop

00000001400033f8 <write>:
   1400033f8:	ff 25 32 61 00 00    	jmp    *0x6132(%rip)        # 140009530 <__imp_write>
   1400033fe:	90                   	nop
   1400033ff:	90                   	nop

0000000140003400 <_errno>:
   140003400:	ff 25 8a 60 00 00    	jmp    *0x608a(%rip)        # 140009490 <__imp__errno>
   140003406:	90                   	nop
   140003407:	90                   	nop

0000000140003408 <perror>:
   140003408:	ff 25 ca 60 00 00    	jmp    *0x60ca(%rip)        # 1400094d8 <__imp_perror>
   14000340e:	90                   	nop
   14000340f:	90                   	nop

0000000140003410 <_monstartup>:
   140003410:	48 83 ec 28          	sub    $0x28,%rsp
   140003414:	8b 05 16 4c 00 00    	mov    0x4c16(%rip),%eax        # 140008030 <called.0>
   14000341a:	8d 50 01             	lea    0x1(%rax),%edx
   14000341d:	89 15 0d 4c 00 00    	mov    %edx,0x4c0d(%rip)        # 140008030 <called.0>
   140003423:	85 c0                	test   %eax,%eax
   140003425:	74 05                	je     14000342c <_monstartup+0x1c>
   140003427:	48 83 c4 28          	add    $0x28,%rsp
   14000342b:	c3                   	ret
   14000342c:	48 8b 15 7d 21 00 00 	mov    0x217d(%rip),%rdx        # 1400055b0 <.refptr.etext>
   140003433:	48 8b 0d 06 20 00 00 	mov    0x2006(%rip),%rcx        # 140005440 <.refptr.__eprol>
   14000343a:	e8 d1 f6 ff ff       	call   140002b10 <monstartup>
   14000343f:	48 8b 0d 4a 21 00 00 	mov    0x214a(%rip),%rcx        # 140005590 <.refptr._mcleanup>
   140003446:	48 83 c4 28          	add    $0x28,%rsp
   14000344a:	e9 c1 df ff ff       	jmp    140001410 <atexit>
   14000344f:	90                   	nop

0000000140003450 <register_frame_ctor>:
   140003450:	e9 db df ff ff       	jmp    140001430 <__gcc_register_frame>
   140003455:	90                   	nop
   140003456:	90                   	nop
   140003457:	90                   	nop
   140003458:	90                   	nop
   140003459:	90                   	nop
   14000345a:	90                   	nop
   14000345b:	90                   	nop
   14000345c:	90                   	nop
   14000345d:	90                   	nop
   14000345e:	90                   	nop
   14000345f:	90                   	nop

0000000140003460 <__CTOR_LIST__>:
   140003460:	ff                   	(bad)
   140003461:	ff                   	(bad)
   140003462:	ff                   	(bad)
   140003463:	ff                   	(bad)
   140003464:	ff                   	(bad)
   140003465:	ff                   	(bad)
   140003466:	ff                   	(bad)
   140003467:	ff                   	.byte 0xff

0000000140003468 <.ctors>:
   140003468:	10 34 00             	adc    %dh,(%rax,%rax,1)
   14000346b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140003470 <.ctors.65535>:
   140003470:	50                   	push   %rax
   140003471:	34 00                	xor    $0x0,%al
   140003473:	40 01 00             	rex add %eax,(%rax)
	...

0000000140003480 <__DTOR_LIST__>:
   140003480:	ff                   	(bad)
   140003481:	ff                   	(bad)
   140003482:	ff                   	(bad)
   140003483:	ff                   	(bad)
   140003484:	ff                   	(bad)
   140003485:	ff                   	(bad)
   140003486:	ff                   	(bad)
   140003487:	ff 00                	incl   (%rax)
   140003489:	00 00                	add    %al,(%rax)
   14000348b:	00 00                	add    %al,(%rax)
   14000348d:	00 00                	add    %al,(%rax)
	...
