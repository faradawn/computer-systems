
0000000000400ed6 <main>: 
  400ed6:	53                   	push   %rbx
  400ed7:	83 ff 01             	cmp    $0x1,%edi
  400eda:	75 10                	jne    400eec <main+0x16>
  400edc:	48 8b 05 cd 3c 20 00 	mov    0x203ccd(%rip),%rax        # 604bb0 <stdin@@GLIBC_2.2.5>
  400ee3:	48 89 05 e6 3c 20 00 	mov    %rax,0x203ce6(%rip)        # 604bd0 <infile>
  400eea:	eb 63                	jmp    400f4f <main+0x79>
  400eec:	48 89 f3             	mov    %rsi,%rbx
  400eef:	83 ff 02             	cmp    $0x2,%edi
  400ef2:	75 3a                	jne    400f2e <main+0x58>
  400ef4:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400ef8:	be a4 27 40 00       	mov    $0x4027a4,%esi
  400efd:	e8 1e fe ff ff       	callq  400d20 <fopen@plt>
  400f02:	48 89 05 c7 3c 20 00 	mov    %rax,0x203cc7(%rip)        # 604bd0 <infile>
  400f09:	48 85 c0             	test   %rax,%rax
  400f0c:	75 41                	jne    400f4f <main+0x79>
  400f0e:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400f12:	48 8b 13             	mov    (%rbx),%rdx
  400f15:	be a6 27 40 00       	mov    $0x4027a6,%esi
  400f1a:	bf 01 00 00 00       	mov    $0x1,%edi
  400f1f:	e8 ec fd ff ff       	callq  400d10 <__printf_chk@plt>
  400f24:	bf 08 00 00 00       	mov    $0x8,%edi
  400f29:	e8 12 fe ff ff       	callq  400d40 <exit@plt>
  400f2e:	48 8b 16             	mov    (%rsi),%rdx
  400f31:	be c3 27 40 00       	mov    $0x4027c3,%esi
  400f36:	bf 01 00 00 00       	mov    $0x1,%edi
  400f3b:	b8 00 00 00 00       	mov    $0x0,%eax
  400f40:	e8 cb fd ff ff       	callq  400d10 <__printf_chk@plt>
  400f45:	bf 08 00 00 00       	mov    $0x8,%edi
  400f4a:	e8 f1 fd ff ff       	callq  400d40 <exit@plt>
  400f4f:	e8 f3 06 00 00       	callq  401647 <initialize_bomb>
  400f54:	bf 18 28 40 00       	mov    $0x402818,%edi
  400f59:	e8 c2 fc ff ff       	callq  400c20 <puts@plt>
  400f5e:	bf 58 28 40 00       	mov    $0x402858,%edi
  400f63:	e8 b8 fc ff ff       	callq  400c20 <puts@plt>

  400f68:	e8 70 0a 00 00       	callq  4019dd <read_line>
  400f6d:	48 89 c7             	mov    %rax,%rdi
  400f70:	e8 98 00 00 00       	callq  40100d <phase_1>
  400f75:	e8 89 0b 00 00       	callq  401b03 <phase_defused>
  400f7a:	bf 98 28 40 00       	mov    $0x402898,%edi
  400f7f:	e8 9c fc ff ff       	callq  400c20 <puts@plt>
  400f84:	e8 54 0a 00 00       	callq  4019dd <read_line>
  400f89:	48 89 c7             	mov    %rax,%rdi
  400f8c:	e8 98 00 00 00       	callq  401029 <phase_2>
  400f91:	e8 6d 0b 00 00       	callq  401b03 <phase_defused>
  400f96:	bf dd 27 40 00       	mov    $0x4027dd,%edi
  400f9b:	e8 80 fc ff ff       	callq  400c20 <puts@plt>
  400fa0:	e8 38 0a 00 00       	callq  4019dd <read_line>
  400fa5:	48 89 c7             	mov    %rax,%rdi
  400fa8:	e8 fd 00 00 00       	callq  4010aa <phase_3>
  400fad:	e8 51 0b 00 00       	callq  401b03 <phase_defused>
  400fb2:	bf c8 28 40 00       	mov    $0x4028c8,%edi
  400fb7:	e8 64 fc ff ff       	callq  400c20 <puts@plt>
  400fbc:	e8 1c 0a 00 00       	callq  4019dd <read_line>
  400fc1:	48 89 c7             	mov    %rax,%rdi
  400fc4:	e8 ed 01 00 00       	callq  4011b6 <phase_4>
  400fc9:	e8 35 0b 00 00       	callq  401b03 <phase_defused>
  400fce:	bf f7 27 40 00       	mov    $0x4027f7,%edi
  400fd3:	e8 48 fc ff ff       	callq  400c20 <puts@plt>
  400fd8:	e8 00 0a 00 00       	callq  4019dd <read_line>
  400fdd:	48 89 c7             	mov    %rax,%rdi
  400fe0:	e8 44 02 00 00       	callq  401229 <phase_5>
  400fe5:	e8 19 0b 00 00       	callq  401b03 <phase_defused>
  400fea:	bf e8 28 40 00       	mov    $0x4028e8,%edi
  400fef:	e8 2c fc ff ff       	callq  400c20 <puts@plt>
  400ff4:	e8 e4 09 00 00       	callq  4019dd <read_line>
  400ff9:	48 89 c7             	mov    %rax,%rdi
  400ffc:	e8 b4 02 00 00       	callq  4012b5 <phase_6>
  401001:	e8 fd 0a 00 00       	callq  401b03 <phase_defused>
  401006:	b8 00 00 00 00       	mov    $0x0,%eax
  40100b:	5b                   	pop    %rbx
  40100c:	c3                   	retq   



000000000040100d <phase_1>:
  40100d:	48 83 ec 08          	sub    $0x8,%rsp
  401011:	be 10 29 40 00       	mov    $0x402910,%esi // ask: is 0x402910 address!!!
  401016:	e8 29 05 00 00       	callq  401544 <strings_check>
  40101b:	85 c0                	test   %eax,%eax
  40101d:	74 05                	je     401024 <phase_1+0x17>
  40101f:	e8 4e 09 00 00       	callq  401972 <explode_bomb>
  401024:	48 83 c4 08          	add    $0x8,%rsp
  401028:	c3                   	retq   



0000000000401029 <phase_2>:
  401029:	41 54                	push   %r12
  40102b:	55                   	push   %rbp
  40102c:	53                   	push   %rbx
  40102d:	48 83 ec 20          	sub    $0x20,%rsp
  401031:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax // ask: what is %fs -> rax
  401038:	00 00 
  40103a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40103f:	31 c0                	xor    %eax,%eax // ask: what xor does?
  401041:	48 89 e6             	mov    %rsp,%rsi ; rsp 作为第二参数
  401044:	e8 55 09 00 00       	callq  40199e <read_six_numbers>
  === after read 6 numbers: 
  401049:	83 3c 24 01          	cmpl   $0x1,(%rsp)
  40104d:	7f 05                	jg     401054 <phase_2+0x2b> ; 必须 stack rsp > 1
  40104f:	e8 1e 09 00 00       	callq  401972 <explode_bomb>
  401054:	48 89 e5             	mov    %rsp,%rbp ; stack 给 base
  401057:	bb 01 00 00 00       	mov    $0x1,%ebx ; ebx = 1
  ; loop begin
  40105c:	41 bc 56 55 55 55    	mov    $0x55555556,%r12d ; 
  401062:	8b 45 00             	mov    0x0(%rbp),%eax ; base 的数给 eax
  401065:	8d 0c 40             	lea    (%rax,%rax,2),%ecx ; ecx = 第一位*3
  401068:	89 d8                	mov    %ebx,%eax ; 给 eax = 1
  40106a:	41 f7 ec             	imul   %r12d ; eax = eax * r12d
  40106d:	89 d8                	mov    %ebx,%eax ; ebx -> eax
  40106f:	c1 f8 1f             	sar    $0x1f,%eax ; 
  401072:	29 c2                	sub    %eax,%edx ; edx - (eax是1 或者 0)
  401074:	29 d1                	sub    %edx,%ecx ; ecx = ecx - edx 
  401076:	39 4d 04             	cmp    %ecx,0x4(%rbp) ; base+4 与 ecx 
  401079:	74 05                	je     401080 <phase_2+0x57>
  40107b:	e8 f2 08 00 00       	callq  401972 <explode_bomb>
  401080:	83 c3 01             	add    $0x1,%ebx // jumped here 
  401083:	48 83 c5 04          	add    $0x4,%rbp
  401087:	83 fb 06             	cmp    $0x6,%ebx 
  40108a:	75 d6                	jne    401062 <phase_2+0x39> // === jump up ===
  40108c:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  401091:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401098:	00 00 
  40109a:	74 05                	je     4010a1 <phase_2+0x78> // jump down to add
  40109c:	e8 9f fb ff ff       	callq  400c40 <__stack_chk_fail@plt>
  4010a1:	48 83 c4 20          	add    $0x20,%rsp
  4010a5:	5b                   	pop    %rbx
  4010a6:	5d                   	pop    %rbp
  4010a7:	41 5c                	pop    %r12
  4010a9:	c3                   	retq   



00000000004010aa <phase_3>:
  4010aa:	48 83 ec 18          	sub    $0x18,%rsp
  4010ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4010b5:	00 00 
  4010b7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4010bc:	31 c0                	xor    %eax,%eax
  4010be:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  4010c3:	48 89 e2             	mov    %rsp,%rdx
  4010c6:	be 9e 2c 40 00       	mov    $0x402c9e,%esi
  4010cb:	e8 30 fc ff ff       	callq  400d00 <__isoc99_sscanf@plt>
  4010d0:	83 f8 01             	cmp    $0x1,%eax
  4010d3:	7f 05                	jg     4010da <phase_3+0x30>
  4010d5:	e8 98 08 00 00       	callq  401972 <explode_bomb>
  4010da:	83 3c 24 07          	cmpl   $0x7,(%rsp)
  4010de:	77 65                	ja     401145 <phase_3+0x9b>
  4010e0:	8b 04 24             	mov    (%rsp),%eax
  4010e3:	ff 24 c5 80 29 40 00 	jmpq   *0x402980(,%rax,8)
  4010ea:	b8 cd 0f 00 00       	mov    $0xfcd,%eax
  4010ef:	eb 05                	jmp    4010f6 <phase_3+0x4c>
  4010f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4010f6:	2d f7 02 00 00       	sub    $0x2f7,%eax
  4010fb:	eb 05                	jmp    401102 <phase_3+0x58>
  4010fd:	b8 00 00 00 00       	mov    $0x0,%eax
  401102:	05 42 06 00 00       	add    $0x642,%eax
  401107:	eb 05                	jmp    40110e <phase_3+0x64>
  401109:	b8 00 00 00 00       	mov    $0x0,%eax
  40110e:	2d 7e 0c 00 00       	sub    $0xc7e,%eax
  401113:	eb 05                	jmp    40111a <phase_3+0x70>
  401115:	b8 00 00 00 00       	mov    $0x0,%eax
  40111a:	05 c6 08 00 00       	add    $0x8c6,%eax
  40111f:	eb 05                	jmp    401126 <phase_3+0x7c>
  401121:	b8 00 00 00 00       	mov    $0x0,%eax
  401126:	05 02 23 00 00       	add    $0x2302,%eax
  40112b:	eb 05                	jmp    401132 <phase_3+0x88>
  40112d:	b8 00 00 00 00       	mov    $0x0,%eax
  401132:	2d d5 08 00 00       	sub    $0x8d5,%eax
  401137:	eb 05                	jmp    40113e <phase_3+0x94>
  401139:	b8 00 00 00 00       	mov    $0x0,%eax
  40113e:	05 fe 08 00 00       	add    $0x8fe,%eax
  401143:	eb 0a                	jmp    40114f <phase_3+0xa5>
  401145:	e8 28 08 00 00       	callq  401972 <explode_bomb>
  40114a:	b8 00 00 00 00       	mov    $0x0,%eax
  40114f:	83 3c 24 04          	cmpl   $0x4,(%rsp)
  401153:	7f 0f                	jg     401164 <phase_3+0xba>
  401155:	89 c2                	mov    %eax,%edx
  401157:	c1 ea 1f             	shr    $0x1f,%edx
  40115a:	01 d0                	add    %edx,%eax
  40115c:	d1 f8                	sar    %eax
  40115e:	3b 44 24 04          	cmp    0x4(%rsp),%eax
  401162:	74 05                	je     401169 <phase_3+0xbf>
  401164:	e8 09 08 00 00       	callq  401972 <explode_bomb>
  401169:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40116e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401175:	00 00 
  401177:	74 05                	je     40117e <phase_3+0xd4>
  401179:	e8 c2 fa ff ff       	callq  400c40 <__stack_chk_fail@plt>
  40117e:	48 83 c4 18          	add    $0x18,%rsp
  401182:	c3                   	retq   

0000000000401183 <func4>:
  401183:	53                   	push   %rbx
  401184:	89 d0                	mov    %edx,%eax
  401186:	29 f0                	sub    %esi,%eax
  401188:	89 c3                	mov    %eax,%ebx
  40118a:	c1 eb 1f             	shr    $0x1f,%ebx
  40118d:	01 d8                	add    %ebx,%eax
  40118f:	d1 f8                	sar    %eax
  401191:	8d 1c 30             	lea    (%rax,%rsi,1),%ebx
  401194:	39 fb                	cmp    %edi,%ebx
  401196:	7e 0c                	jle    4011a4 <func4+0x21>
  401198:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40119b:	e8 e3 ff ff ff       	callq  401183 <func4>
  4011a0:	01 d8                	add    %ebx,%eax
  4011a2:	eb 10                	jmp    4011b4 <func4+0x31>
  4011a4:	89 d8                	mov    %ebx,%eax
  4011a6:	39 fb                	cmp    %edi,%ebx
  4011a8:	7d 0a                	jge    4011b4 <func4+0x31>
  4011aa:	8d 73 01             	lea    0x1(%rbx),%esi
  4011ad:	e8 d1 ff ff ff       	callq  401183 <func4>
  4011b2:	01 d8                	add    %ebx,%eax
  4011b4:	5b                   	pop    %rbx
  4011b5:	c3                   	retq   

00000000004011b6 <phase_4>:
  4011b6:	48 83 ec 18          	sub    $0x18,%rsp
  4011ba:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4011c1:	00 00 
  4011c3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4011c8:	31 c0                	xor    %eax,%eax
  4011ca:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  4011cf:	48 89 e2             	mov    %rsp,%rdx
  4011d2:	be 9e 2c 40 00       	mov    $0x402c9e,%esi
  4011d7:	e8 24 fb ff ff       	callq  400d00 <__isoc99_sscanf@plt>
  4011dc:	83 f8 02             	cmp    $0x2,%eax
  4011df:	75 06                	jne    4011e7 <phase_4+0x31>
  4011e1:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
  4011e5:	76 05                	jbe    4011ec <phase_4+0x36>
  4011e7:	e8 86 07 00 00       	callq  401972 <explode_bomb>
  4011ec:	ba 0e 00 00 00       	mov    $0xe,%edx
  4011f1:	be 00 00 00 00       	mov    $0x0,%esi
  4011f6:	8b 3c 24             	mov    (%rsp),%edi
  4011f9:	e8 85 ff ff ff       	callq  401183 <func4>
  4011fe:	83 f8 0b             	cmp    $0xb,%eax
  401201:	75 07                	jne    40120a <phase_4+0x54>
  401203:	83 7c 24 04 0b       	cmpl   $0xb,0x4(%rsp) ; 第二个数等于11
  401208:	74 05                	je     40120f <phase_4+0x59>
  40120a:	e8 63 07 00 00       	callq  401972 <explode_bomb>
  40120f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  401214:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40121b:	00 00 
  40121d:	74 05                	je     401224 <phase_4+0x6e>
  40121f:	e8 1c fa ff ff       	callq  400c40 <__stack_chk_fail@plt>
  401224:	48 83 c4 18          	add    $0x18,%rsp
  401228:	c3                   	retq   

0000000000401229 <phase_5>:
  401229:	48 83 ec 18          	sub    $0x18,%rsp
  40122d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401234:	00 00 
  401236:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40123b:	31 c0                	xor    %eax,%eax
  40123d:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  401242:	48 89 e2             	mov    %rsp,%rdx
  401245:	be 9e 2c 40 00       	mov    $0x402c9e,%esi
  40124a:	e8 b1 fa ff ff       	callq  400d00 <__isoc99_sscanf@plt>
  40124f:	83 f8 01             	cmp    $0x1,%eax
  401252:	7f 05                	jg     401259 <phase_5+0x30>
  401254:	e8 19 07 00 00       	callq  401972 <explode_bomb>
  401259:	8b 04 24             	mov    (%rsp),%eax
  40125c:	89 c2                	mov    %eax,%edx
  40125e:	83 e2 0f             	and    $0xf,%edx
  401261:	39 d0                	cmp    %edx,%eax
  401263:	74 05                	je     40126a <phase_5+0x41>
  401265:	e8 08 07 00 00       	callq  401972 <explode_bomb>
  40126a:	8b 34 24             	mov    (%rsp),%esi
  40126d:	89 f0                	mov    %esi,%eax
  40126f:	b9 00 00 00 00       	mov    $0x0,%ecx
  401274:	ba 00 00 00 00       	mov    $0x0,%edx
  401279:	83 c2 01             	add    $0x1,%edx
  40127c:	01 c1                	add    %eax,%ecx
  40127e:	48 98                	cltq   
  401280:	8b 04 85 c0 29 40 00 	mov    0x4029c0(,%rax,4),%eax
  401287:	39 c6                	cmp    %eax,%esi
  401289:	75 ee                	jne    401279 <phase_5+0x50>
  40128b:	39 54 24 04          	cmp    %edx,0x4(%rsp)
  40128f:	75 05                	jne    401296 <phase_5+0x6d>
  401291:	83 f9 30             	cmp    $0x30,%ecx
  401294:	74 05                	je     40129b <phase_5+0x72>
  401296:	e8 d7 06 00 00       	callq  401972 <explode_bomb>
  40129b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4012a0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4012a7:	00 00 
  4012a9:	74 05                	je     4012b0 <phase_5+0x87>
  4012ab:	e8 90 f9 ff ff       	callq  400c40 <__stack_chk_fail@plt>
  4012b0:	48 83 c4 18          	add    $0x18,%rsp
  4012b4:	c3                   	retq   

00000000004012b5 <phase_6>:
  4012b5:	41 55                	push   %r13
  4012b7:	41 54                	push   %r12
  4012b9:	55                   	push   %rbp
  4012ba:	53                   	push   %rbx
  4012bb:	48 83 ec 68          	sub    $0x68,%rsp
  4012bf:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4012c6:	00 00 
  4012c8:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4012cd:	31 c0                	xor    %eax,%eax
  4012cf:	48 89 e6             	mov    %rsp,%rsi
  4012d2:	e8 c7 06 00 00       	callq  40199e <read_six_numbers>
  4012d7:	49 89 e4             	mov    %rsp,%r12
  4012da:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4012e0:	4c 89 e5             	mov    %r12,%rbp
  4012e3:	41 8b 04 24          	mov    (%r12),%eax
  4012e7:	83 e8 01             	sub    $0x1,%eax
  4012ea:	83 f8 05             	cmp    $0x5,%eax
  4012ed:	76 05                	jbe    4012f4 <phase_6+0x3f>
  4012ef:	e8 7e 06 00 00       	callq  401972 <explode_bomb>
  4012f4:	41 83 c5 01          	add    $0x1,%r13d
  4012f8:	41 83 fd 06          	cmp    $0x6,%r13d
  4012fc:	74 3d                	je     40133b <phase_6+0x86>
  4012fe:	44 89 eb             	mov    %r13d,%ebx
  401301:	48 63 c3             	movslq %ebx,%rax
  401304:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  401307:	39 45 00             	cmp    %eax,0x0(%rbp)
  40130a:	75 05                	jne    401311 <phase_6+0x5c>
  40130c:	e8 61 06 00 00       	callq  401972 <explode_bomb>
  401311:	83 c3 01             	add    $0x1,%ebx
  401314:	83 fb 05             	cmp    $0x5,%ebx
  401317:	7e e8                	jle    401301 <phase_6+0x4c>
  401319:	49 83 c4 04          	add    $0x4,%r12
  40131d:	eb c1                	jmp    4012e0 <phase_6+0x2b>
  40131f:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  401323:	83 c0 01             	add    $0x1,%eax
  401326:	39 c8                	cmp    %ecx,%eax
  401328:	75 f5                	jne    40131f <phase_6+0x6a>
  40132a:	48 89 54 74 20       	mov    %rdx,0x20(%rsp,%rsi,2)
  40132f:	48 83 c6 04          	add    $0x4,%rsi
  401333:	48 83 fe 18          	cmp    $0x18,%rsi
  401337:	75 07                	jne    401340 <phase_6+0x8b>
  401339:	eb 19                	jmp    401354 <phase_6+0x9f>
  40133b:	be 00 00 00 00       	mov    $0x0,%esi
  401340:	8b 0c 34             	mov    (%rsp,%rsi,1),%ecx
  401343:	b8 01 00 00 00       	mov    $0x1,%eax
  401348:	ba 20 43 60 00       	mov    $0x604320,%edx
  40134d:	83 f9 01             	cmp    $0x1,%ecx
  401350:	7f cd                	jg     40131f <phase_6+0x6a>
  401352:	eb d6                	jmp    40132a <phase_6+0x75>
  401354:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  401359:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  40135e:	48 8d 74 24 48       	lea    0x48(%rsp),%rsi
  401363:	48 89 d9             	mov    %rbx,%rcx
  401366:	48 8b 50 08          	mov    0x8(%rax),%rdx
  40136a:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40136e:	48 83 c0 08          	add    $0x8,%rax
  401372:	48 89 d1             	mov    %rdx,%rcx
  401375:	48 39 f0             	cmp    %rsi,%rax
  401378:	75 ec                	jne    401366 <phase_6+0xb1>
  40137a:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
  401381:	00 
  401382:	bd 05 00 00 00       	mov    $0x5,%ebp
  401387:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40138b:	8b 00                	mov    (%rax),%eax
  40138d:	39 03                	cmp    %eax,(%rbx)
  40138f:	7e 05                	jle    401396 <phase_6+0xe1>
  401391:	e8 dc 05 00 00       	callq  401972 <explode_bomb>
  401396:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  40139a:	83 ed 01             	sub    $0x1,%ebp
  40139d:	75 e8                	jne    401387 <phase_6+0xd2> ; end

  40139f:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4013a4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4013ab:	00 00 
  4013ad:	74 05                	je     4013b4 <phase_6+0xff>
  4013af:	e8 8c f8 ff ff       	callq  400c40 <__stack_chk_fail@plt>
  4013b4:	48 83 c4 68          	add    $0x68,%rsp
  4013b8:	5b                   	pop    %rbx
  4013b9:	5d                   	pop    %rbp
  4013ba:	41 5c                	pop    %r12
  4013bc:	41 5d                	pop    %r13
  4013be:	c3                   	retq   

00000000004013bf <fun7>:
  4013bf:	48 83 ec 08          	sub    $0x8,%rsp
  4013c3:	48 85 ff             	test   %rdi,%rdi
  4013c6:	74 2b                	je     4013f3 <fun7+0x34>
  4013c8:	8b 57 10             	mov    0x10(%rdi),%edx
  4013cb:	39 f2                	cmp    %esi,%edx
  4013cd:	7e 0c                	jle    4013db <fun7+0x1c>
  4013cf:	48 8b 3f             	mov    (%rdi),%rdi
  4013d2:	e8 e8 ff ff ff       	callq  4013bf <fun7>
  4013d7:	01 c0                	add    %eax,%eax
  4013d9:	eb 1d                	jmp    4013f8 <fun7+0x39>
  4013db:	b8 00 00 00 00       	mov    $0x0,%eax
  4013e0:	39 f2                	cmp    %esi,%edx
  4013e2:	74 14                	je     4013f8 <fun7+0x39>
  4013e4:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  4013e8:	e8 d2 ff ff ff       	callq  4013bf <fun7>
  4013ed:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  4013f1:	eb 05                	jmp    4013f8 <fun7+0x39>
  4013f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4013f8:	48 83 c4 08          	add    $0x8,%rsp
  4013fc:	c3                   	retq   

00000000004013fd <secret_phase>:
  4013fd:	53                   	push   %rbx
  4013fe:	e8 da 05 00 00       	callq  4019dd <read_line>
  401403:	ba 0a 00 00 00       	mov    $0xa,%edx
  401408:	be 00 00 00 00       	mov    $0x0,%esi
  40140d:	48 89 c7             	mov    %rax,%rdi
  401410:	e8 cb f8 ff ff       	callq  400ce0 <strtol@plt>
  401415:	48 89 c3             	mov    %rax,%rbx
  401418:	8d 40 fd             	lea    -0x3(%rax),%eax
  40141b:	3d 97 00 00 00       	cmp    $0x97,%eax
  401420:	76 05                	jbe    401427 <secret_phase+0x2a>
  401422:	e8 4b 05 00 00       	callq  401972 <explode_bomb>
  401427:	89 de                	mov    %ebx,%esi
  401429:	bf 40 41 60 00       	mov    $0x604140,%edi
  40142e:	e8 8c ff ff ff       	callq  4013bf <fun7>
  401433:	83 f8 05             	cmp    $0x5,%eax
  401436:	74 05                	je     40143d <secret_phase+0x40>
  401438:	e8 35 05 00 00       	callq  401972 <explode_bomb>
  40143d:	bf 50 29 40 00       	mov    $0x402950,%edi
  401442:	e8 d9 f7 ff ff       	callq  400c20 <puts@plt>
  401447:	e8 b7 06 00 00       	callq  401b03 <phase_defused>
  40144c:	5b                   	pop    %rbx
  40144d:	c3                   	retq   

000000000040144e <sig_handler>:
  40144e:	48 83 ec 08          	sub    $0x8,%rsp
  401452:	be 2b 2c 40 00       	mov    $0x402c2b,%esi
  401457:	bf 01 00 00 00       	mov    $0x1,%edi
  40145c:	b8 00 00 00 00       	mov    $0x0,%eax
  401461:	e8 aa f8 ff ff       	callq  400d10 <__printf_chk@plt>
  401466:	48 8b 3d 33 37 20 00 	mov    0x203733(%rip),%rdi        # 604ba0 <stdout@@GLIBC_2.2.5>
  40146d:	e8 7e f8 ff ff       	callq  400cf0 <fflush@plt>
  401472:	bf 01 00 00 00       	mov    $0x1,%edi
  401477:	e8 14 f9 ff ff       	callq  400d90 <sleep@plt>
  40147c:	bf 3b 2c 40 00       	mov    $0x402c3b,%edi
  401481:	e8 9a f7 ff ff       	callq  400c20 <puts@plt>
  401486:	bf 01 00 00 00       	mov    $0x1,%edi
  40148b:	e8 00 f9 ff ff       	callq  400d90 <sleep@plt>
  401490:	bf 10 00 00 00       	mov    $0x10,%edi
  401495:	e8 a6 f8 ff ff       	callq  400d40 <exit@plt>

000000000040149a <invalid_phase>:
  40149a:	48 83 ec 08          	sub    $0x8,%rsp
  40149e:	48 89 fa             	mov    %rdi,%rdx
  4014a1:	be 46 2c 40 00       	mov    $0x402c46,%esi
  4014a6:	bf 01 00 00 00       	mov    $0x1,%edi
  4014ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4014b0:	e8 5b f8 ff ff       	callq  400d10 <__printf_chk@plt>
  4014b5:	bf 08 00 00 00       	mov    $0x8,%edi
  4014ba:	e8 81 f8 ff ff       	callq  400d40 <exit@plt>

00000000004014bf <string_length>:
  4014bf:	80 3f 00             	cmpb   $0x0,(%rdi)
  4014c2:	74 13                	je     4014d7 <string_length+0x18>
  4014c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c9:	48 83 c7 01          	add    $0x1,%rdi
  4014cd:	83 c0 01             	add    $0x1,%eax
  4014d0:	80 3f 00             	cmpb   $0x0,(%rdi)
  4014d3:	75 f4                	jne    4014c9 <string_length+0xa>
  4014d5:	f3 c3                	repz retq 
  4014d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4014dc:	c3                   	retq   

00000000004014dd <strings_not_equal>:
  4014dd:	41 54                	push   %r12
  4014df:	55                   	push   %rbp
  4014e0:	53                   	push   %rbx
  4014e1:	48 89 fb             	mov    %rdi,%rbx
  4014e4:	48 89 f5             	mov    %rsi,%rbp
  4014e7:	e8 d3 ff ff ff       	callq  4014bf <string_length>
  4014ec:	41 89 c4             	mov    %eax,%r12d
  4014ef:	48 89 ef             	mov    %rbp,%rdi
  4014f2:	e8 c8 ff ff ff       	callq  4014bf <string_length>
  4014f7:	ba 01 00 00 00       	mov    $0x1,%edx
  4014fc:	41 39 c4             	cmp    %eax,%r12d
  4014ff:	75 3c                	jne    40153d <strings_not_equal+0x60>
  401501:	0f b6 03             	movzbl (%rbx),%eax
  401504:	84 c0                	test   %al,%al
  401506:	74 22                	je     40152a <strings_not_equal+0x4d>
  401508:	3a 45 00             	cmp    0x0(%rbp),%al
  40150b:	74 07                	je     401514 <strings_not_equal+0x37>
  40150d:	eb 22                	jmp    401531 <strings_not_equal+0x54>
  40150f:	3a 45 00             	cmp    0x0(%rbp),%al
  401512:	75 24                	jne    401538 <strings_not_equal+0x5b>
  401514:	48 83 c3 01          	add    $0x1,%rbx
  401518:	48 83 c5 01          	add    $0x1,%rbp
  40151c:	0f b6 03             	movzbl (%rbx),%eax
  40151f:	84 c0                	test   %al,%al
  401521:	75 ec                	jne    40150f <strings_not_equal+0x32>
  401523:	ba 00 00 00 00       	mov    $0x0,%edx
  401528:	eb 13                	jmp    40153d <strings_not_equal+0x60>
  40152a:	ba 00 00 00 00       	mov    $0x0,%edx
  40152f:	eb 0c                	jmp    40153d <strings_not_equal+0x60>
  401531:	ba 01 00 00 00       	mov    $0x1,%edx
  401536:	eb 05                	jmp    40153d <strings_not_equal+0x60>
  401538:	ba 01 00 00 00       	mov    $0x1,%edx
  40153d:	89 d0                	mov    %edx,%eax
  40153f:	5b                   	pop    %rbx
  401540:	5d                   	pop    %rbp
  401541:	41 5c                	pop    %r12
  401543:	c3                   	retq   

0000000000401544 <strings_check>:
  1:	41 54                	push   %r12
  401546:	55                   	push   %rbp
  401547:	53                   	push   %rbx
  401548:	48 89 fb             	mov    %rdi,%rbx
  40154b:	48 89 f5             	mov    %rsi,%rbp ; rbp 是答案，rbx 是输入
  40154e:	48 89 f7             	mov    %rsi,%rdi
  401551:	e8 69 ff ff ff       	callq  4014bf <string_length>
  401556:	41 89 c4             	mov    %eax,%r12d // answer length
  401559:	48 89 df             	mov    %rbx,%rdi 
  40155c:	e8 5e ff ff ff       	callq  4014bf <string_length> // eax -> my length
  401561:	ba 01 00 00 00       	mov    $0x1,%edx // rdx -> 1
  401566:	41 39 c4             	cmp    %eax,%r12d // if ans >= my, 
  401569:	7d 5c                	jge    4015c7 <strings_check+0x83> // 跳到最后，return 1
  40156b:	0f b6 45 00          	movzbl 0x0(%rbp),%eax ; 输入的第一位（0x54）
  40156f:	84 c0                	test   %al,%al ; al = 0x54, 如果等于0，
  401571:	74 1a                	je     40158d <strings_check+0x49> ; 就跳转
  401573:	3a 03                	cmp    (%rbx),%al ; rbx保存answer的地址，
  401575:	74 06                	je     40157d <strings_check+0x39>
  401577:	eb 42                	jmp    4015bb <strings_check+0x77>
  401579:	3a 03                	cmp    (%rbx),%al
  40157b:	75 45                	jne    4015c2 <strings_check+0x7e>
  40157d:	48 83 c5 01          	add    $0x1,%rbp
  401581:	48 83 c3 01          	add    $0x1,%rbx
  401585:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  401589:	84 c0                	test   %al,%al
  40158b:	75 ec                	jne    401579 <strings_check+0x35>
  40158d:	ba 01 00 00 00       	mov    $0x1,%edx
  401592:	80 3b 20             	cmpb   $0x20,(%rbx)
  401595:	75 30                	jne    4015c7 <strings_check+0x83>
  401597:	80 7b 01 63          	cmpb   $0x63,0x1(%rbx)
  40159b:	75 2a                	jne    4015c7 <strings_check+0x83>
  40159d:	80 7b 02 73          	cmpb   $0x73,0x2(%rbx)
  4015a1:	75 24                	jne    4015c7 <strings_check+0x83>
  4015a3:	80 7b 03 31          	cmpb   $0x31,0x3(%rbx)
  4015a7:	75 1e                	jne    4015c7 <strings_check+0x83>
  4015a9:	80 7b 04 35          	cmpb   $0x35,0x4(%rbx)
  4015ad:	75 18                	jne    4015c7 <strings_check+0x83>
  4015af:	80 7b 05 34          	cmpb   $0x34,0x5(%rbx)
  4015b3:	0f 95 c2             	setne  %dl
  4015b6:	0f b6 d2             	movzbl %dl,%edx
  4015b9:	eb 0c                	jmp    4015c7 <strings_check+0x83>
  4015bb:	ba 01 00 00 00       	mov    $0x1,%edx
  4015c0:	eb 05                	jmp    4015c7 <strings_check+0x83>
  4015c2:	ba 01 00 00 00       	mov    $0x1,%edx // 跳到这里，return 1
  4015c7:	89 d0                	mov    %edx,%eax
  4015c9:	5b                   	pop    %rbx
  4015ca:	5d                   	pop    %rbp
  4015cb:	41 5c                	pop    %r12
  4015cd:	c3                   	retq   

00000000004015ce <strings_close>:
  4015ce:	41 54                	push   %r12
  4015d0:	55                   	push   %rbp
  4015d1:	53                   	push   %rbx
  4015d2:	48 89 fb             	mov    %rdi,%rbx
  4015d5:	48 89 f5             	mov    %rsi,%rbp
  4015d8:	e8 e2 fe ff ff       	callq  4014bf <string_length>
  4015dd:	41 89 c4             	mov    %eax,%r12d
  4015e0:	48 89 ef             	mov    %rbp,%rdi
  4015e3:	e8 d7 fe ff ff       	callq  4014bf <string_length>
  4015e8:	ba 01 00 00 00       	mov    $0x1,%edx
  4015ed:	41 39 c4             	cmp    %eax,%r12d
  4015f0:	75 4e                	jne    401640 <strings_close+0x72>
  4015f2:	0f b6 03             	movzbl (%rbx),%eax
  4015f5:	84 c0                	test   %al,%al
  4015f7:	74 34                	je     40162d <strings_close+0x5f>
  4015f9:	0f be c0             	movsbl %al,%eax
  4015fc:	83 c0 01             	add    $0x1,%eax
  4015ff:	0f be 55 00          	movsbl 0x0(%rbp),%edx
  401603:	39 d0                	cmp    %edx,%eax
  401605:	74 10                	je     401617 <strings_close+0x49>
  401607:	eb 2b                	jmp    401634 <strings_close+0x66>
  401609:	0f be c0             	movsbl %al,%eax
  40160c:	83 c0 01             	add    $0x1,%eax
  40160f:	0f be 55 00          	movsbl 0x0(%rbp),%edx
  401613:	39 d0                	cmp    %edx,%eax
  401615:	75 24                	jne    40163b <strings_close+0x6d>
  401617:	48 83 c3 01          	add    $0x1,%rbx
  40161b:	48 83 c5 01          	add    $0x1,%rbp
  40161f:	0f b6 03             	movzbl (%rbx),%eax
  401622:	84 c0                	test   %al,%al
  401624:	75 e3                	jne    401609 <strings_close+0x3b>
  401626:	ba 00 00 00 00       	mov    $0x0,%edx
  40162b:	eb 13                	jmp    401640 <strings_close+0x72>
  40162d:	ba 00 00 00 00       	mov    $0x0,%edx
  401632:	eb 0c                	jmp    401640 <strings_close+0x72>
  401634:	ba 01 00 00 00       	mov    $0x1,%edx
  401639:	eb 05                	jmp    401640 <strings_close+0x72>
  40163b:	ba 01 00 00 00       	mov    $0x1,%edx
  401640:	89 d0                	mov    %edx,%eax
  401642:	5b                   	pop    %rbx
  401643:	5d                   	pop    %rbp
  401644:	41 5c                	pop    %r12
  401646:	c3                   	retq   

0000000000401647 <initialize_bomb>:
  401647:	55                   	push   %rbp
  401648:	53                   	push   %rbx
  401649:	48 81 ec 98 20 00 00 	sub    $0x2098,%rsp
  401650:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401657:	00 00 
  401659:	48 89 84 24 88 20 00 	mov    %rax,0x2088(%rsp)
  401660:	00 
  401661:	31 c0                	xor    %eax,%eax
  401663:	be 4e 14 40 00       	mov    $0x40144e,%esi
  401668:	bf 02 00 00 00       	mov    $0x2,%edi
  40166d:	e8 3e f6 ff ff       	callq  400cb0 <signal@plt>
  401672:	c6 44 24 7f 00       	movb   $0x0,0x7f(%rsp)
  401677:	be 40 00 00 00       	mov    $0x40,%esi
  40167c:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401681:	e8 aa f6 ff ff       	callq  400d30 <gethostname@plt>
  401686:	85 c0                	test   %eax,%eax
  401688:	74 14                	je     40169e <initialize_bomb+0x57>
  40168a:	bf 40 31 40 00       	mov    $0x403140,%edi
  40168f:	e8 8c f5 ff ff       	callq  400c20 <puts@plt>
  401694:	bf 08 00 00 00       	mov    $0x8,%edi
  401699:	e8 a2 f6 ff ff       	callq  400d40 <exit@plt>
  40169e:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  4016a3:	b9 06 00 00 00       	mov    $0x6,%ecx
  4016a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ad:	48 89 d7             	mov    %rdx,%rdi
  4016b0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4016b3:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%rsp)
  4016ba:	00 
  4016bb:	c7 44 24 10 02 00 00 	movl   $0x2,0x10(%rsp)
  4016c2:	00 
  4016c3:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  4016c8:	be 00 00 00 00       	mov    $0x0,%esi
  4016cd:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4016d2:	e8 a9 f6 ff ff       	callq  400d80 <getaddrinfo@plt>
  4016d7:	85 c0                	test   %eax,%eax
  4016d9:	74 2f                	je     40170a <initialize_bomb+0xc3>
  4016db:	89 c7                	mov    %eax,%edi
  4016dd:	e8 6e f5 ff ff       	callq  400c50 <gai_strerror@plt>
  4016e2:	48 89 c1             	mov    %rax,%rcx
  4016e5:	ba 70 31 40 00       	mov    $0x403170,%edx
  4016ea:	be 01 00 00 00       	mov    $0x1,%esi
  4016ef:	48 8b 3d ca 34 20 00 	mov    0x2034ca(%rip),%rdi        # 604bc0 <stderr@@GLIBC_2.2.5>
  4016f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4016fb:	e8 70 f6 ff ff       	callq  400d70 <__fprintf_chk@plt>
  401700:	bf 08 00 00 00       	mov    $0x8,%edi
  401705:	e8 36 f6 ff ff       	callq  400d40 <exit@plt>
  40170a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40170f:	48 8b 68 20          	mov    0x20(%rax),%rbp
  401713:	48 85 ed             	test   %rbp,%rbp
  401716:	74 19                	je     401731 <initialize_bomb+0xea>
  401718:	80 7d 00 00          	cmpb   $0x0,0x0(%rbp)
  40171c:	74 13                	je     401731 <initialize_bomb+0xea>
  40171e:	48 8b 3d 7b 30 20 00 	mov    0x20307b(%rip),%rdi        # 6047a0 <host_table>
  401725:	bb a8 47 60 00       	mov    $0x6047a8,%ebx
  40172a:	48 85 ff             	test   %rdi,%rdi
  40172d:	75 27                	jne    401756 <initialize_bomb+0x10f>
  40172f:	eb 79                	jmp    4017aa <initialize_bomb+0x163>
  401731:	48 8b 0d 88 34 20 00 	mov    0x203488(%rip),%rcx        # 604bc0 <stderr@@GLIBC_2.2.5>
  401738:	ba 21 00 00 00       	mov    $0x21,%edx
  40173d:	be 01 00 00 00       	mov    $0x1,%esi
  401742:	bf a0 31 40 00       	mov    $0x4031a0,%edi
  401747:	e8 14 f6 ff ff       	callq  400d60 <fwrite@plt>
  40174c:	bf 08 00 00 00       	mov    $0x8,%edi
  401751:	e8 ea f5 ff ff       	callq  400d40 <exit@plt>
  401756:	48 89 ee             	mov    %rbp,%rsi
  401759:	e8 92 f4 ff ff       	callq  400bf0 <strcasecmp@plt>
  40175e:	85 c0                	test   %eax,%eax
  401760:	74 35                	je     401797 <initialize_bomb+0x150>
  401762:	48 83 c3 08          	add    $0x8,%rbx
  401766:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
  40176a:	48 85 ff             	test   %rdi,%rdi
  40176d:	75 e7                	jne    401756 <initialize_bomb+0x10f>
  40176f:	eb 39                	jmp    4017aa <initialize_bomb+0x163>
  401771:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
  401778:	00 
  401779:	be 57 2c 40 00       	mov    $0x402c57,%esi
  40177e:	bf 01 00 00 00       	mov    $0x1,%edi
  401783:	b8 00 00 00 00       	mov    $0x0,%eax
  401788:	e8 83 f5 ff ff       	callq  400d10 <__printf_chk@plt>
  40178d:	bf 08 00 00 00       	mov    $0x8,%edi
  401792:	e8 a9 f5 ff ff       	callq  400d40 <exit@plt>
  401797:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  40179e:	00 
  40179f:	e8 47 0d 00 00       	callq  4024eb <init_driver>
  4017a4:	85 c0                	test   %eax,%eax
  4017a6:	79 23                	jns    4017cb <initialize_bomb+0x184>
  4017a8:	eb c7                	jmp    401771 <initialize_bomb+0x12a>
  4017aa:	48 89 ea             	mov    %rbp,%rdx
  4017ad:	be c8 31 40 00       	mov    $0x4031c8,%esi
  4017b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4017b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4017bc:	e8 4f f5 ff ff       	callq  400d10 <__printf_chk@plt>
  4017c1:	bf 08 00 00 00       	mov    $0x8,%edi
  4017c6:	e8 75 f5 ff ff       	callq  400d40 <exit@plt>
  4017cb:	48 8b 84 24 88 20 00 	mov    0x2088(%rsp),%rax
  4017d2:	00 
  4017d3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4017da:	00 00 
  4017dc:	74 05                	je     4017e3 <initialize_bomb+0x19c>
  4017de:	e8 5d f4 ff ff       	callq  400c40 <__stack_chk_fail@plt>
  4017e3:	48 81 c4 98 20 00 00 	add    $0x2098,%rsp
  4017ea:	5b                   	pop    %rbx
  4017eb:	5d                   	pop    %rbp
  4017ec:	c3                   	retq   

00000000004017ed <initialize_bomb_solve>:
  4017ed:	f3 c3                	repz retq 

00000000004017ef <blank_line>:
  4017ef:	55                   	push   %rbp
  4017f0:	53                   	push   %rbx
  4017f1:	48 83 ec 08          	sub    $0x8,%rsp
  4017f5:	48 89 fd             	mov    %rdi,%rbp
  4017f8:	eb 17                	jmp    401811 <blank_line+0x22>
  4017fa:	e8 a1 f5 ff ff       	callq  400da0 <__ctype_b_loc@plt>
  4017ff:	48 83 c5 01          	add    $0x1,%rbp
  401803:	48 0f be db          	movsbq %bl,%rbx
  401807:	48 8b 00             	mov    (%rax),%rax
  40180a:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  40180f:	74 0f                	je     401820 <blank_line+0x31>
  401811:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401815:	84 db                	test   %bl,%bl
  401817:	75 e1                	jne    4017fa <blank_line+0xb>
  401819:	b8 01 00 00 00       	mov    $0x1,%eax
  40181e:	eb 05                	jmp    401825 <blank_line+0x36>
  401820:	b8 00 00 00 00       	mov    $0x0,%eax
  401825:	48 83 c4 08          	add    $0x8,%rsp
  401829:	5b                   	pop    %rbx
  40182a:	5d                   	pop    %rbp
  40182b:	c3                   	retq   

000000000040182c <skip>:
  40182c:	53                   	push   %rbx
  40182d:	48 63 05 98 33 20 00 	movslq 0x203398(%rip),%rax        # 604bcc <num_input_strings>
  401834:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401838:	48 c1 e7 04          	shl    $0x4,%rdi
  40183c:	48 81 c7 e0 4b 60 00 	add    $0x604be0,%rdi
  401843:	48 8b 15 86 33 20 00 	mov    0x203386(%rip),%rdx        # 604bd0 <infile>
  40184a:	be 50 00 00 00       	mov    $0x50,%esi
  40184f:	e8 4c f4 ff ff       	callq  400ca0 <fgets@plt>
  401854:	48 89 c3             	mov    %rax,%rbx
  401857:	48 85 c0             	test   %rax,%rax
  40185a:	74 0c                	je     401868 <skip+0x3c>
  40185c:	48 89 c7             	mov    %rax,%rdi
  40185f:	e8 8b ff ff ff       	callq  4017ef <blank_line>
  401864:	85 c0                	test   %eax,%eax
  401866:	75 c5                	jne    40182d <skip+0x1>
  401868:	48 89 d8             	mov    %rbx,%rax
  40186b:	5b                   	pop    %rbx
  40186c:	c3                   	retq   

000000000040186d <send_msg>:
  40186d:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401874:	41 89 f8             	mov    %edi,%r8d
  401877:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40187e:	00 00 
  401880:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401887:	00 
  401888:	31 c0                	xor    %eax,%eax
  40188a:	8b 35 3c 33 20 00    	mov    0x20333c(%rip),%esi        # 604bcc <num_input_strings>
  401890:	8d 46 ff             	lea    -0x1(%rsi),%eax
  401893:	48 98                	cltq   
  401895:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401899:	48 c1 e2 04          	shl    $0x4,%rdx
  40189d:	48 81 c2 e0 4b 60 00 	add    $0x604be0,%rdx
  4018a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018a9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4018b0:	48 89 d7             	mov    %rdx,%rdi
  4018b3:	f2 ae                	repnz scas %es:(%rdi),%al
  4018b5:	48 f7 d1             	not    %rcx
  4018b8:	48 83 c1 63          	add    $0x63,%rcx
  4018bc:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  4018c3:	76 19                	jbe    4018de <send_msg+0x71>
  4018c5:	be 00 32 40 00       	mov    $0x403200,%esi
  4018ca:	bf 01 00 00 00       	mov    $0x1,%edi
  4018cf:	e8 3c f4 ff ff       	callq  400d10 <__printf_chk@plt>
  4018d4:	bf 08 00 00 00       	mov    $0x8,%edi
  4018d9:	e8 62 f4 ff ff       	callq  400d40 <exit@plt>
  4018de:	45 85 c0             	test   %r8d,%r8d
  4018e1:	41 b9 7d 2c 40 00    	mov    $0x402c7d,%r9d
  4018e7:	b8 75 2c 40 00       	mov    $0x402c75,%eax
  4018ec:	4c 0f 45 c8          	cmovne %rax,%r9
  4018f0:	52                   	push   %rdx
  4018f1:	56                   	push   %rsi
  4018f2:	44 8b 05 87 2e 20 00 	mov    0x202e87(%rip),%r8d        # 604780 <bomb_id>
  4018f9:	b9 86 2c 40 00       	mov    $0x402c86,%ecx
  4018fe:	ba 00 20 00 00       	mov    $0x2000,%edx
  401903:	be 01 00 00 00       	mov    $0x1,%esi
  401908:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40190d:	b8 00 00 00 00       	mov    $0x0,%eax
  401912:	e8 99 f4 ff ff       	callq  400db0 <__sprintf_chk@plt>
  401917:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  40191e:	00 
  40191f:	ba 00 00 00 00       	mov    $0x0,%edx
  401924:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  401929:	bf 80 43 60 00       	mov    $0x604380,%edi
  40192e:	e8 5b 0d 00 00       	callq  40268e <driver_post>
  401933:	48 83 c4 10          	add    $0x10,%rsp
  401937:	85 c0                	test   %eax,%eax
  401939:	79 17                	jns    401952 <send_msg+0xe5>
  40193b:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401942:	00 
  401943:	e8 d8 f2 ff ff       	callq  400c20 <puts@plt>
  401948:	bf 00 00 00 00       	mov    $0x0,%edi
  40194d:	e8 ee f3 ff ff       	callq  400d40 <exit@plt>
  401952:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401959:	00 
  40195a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401961:	00 00 
  401963:	74 05                	je     40196a <send_msg+0xfd>
  401965:	e8 d6 f2 ff ff       	callq  400c40 <__stack_chk_fail@plt>
  40196a:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401971:	c3                   	retq   

0000000000401972 <explode_bomb>:
  401972:	48 83 ec 08          	sub    $0x8,%rsp
  401976:	bf 28 32 40 00       	mov    $0x403228,%edi
  40197b:	e8 a0 f2 ff ff       	callq  400c20 <puts@plt>
  401980:	bf 00 00 00 00       	mov    $0x0,%edi
  401985:	e8 e3 fe ff ff       	callq  40186d <send_msg>
  40198a:	bf 58 32 40 00       	mov    $0x403258,%edi
  40198f:	e8 8c f2 ff ff       	callq  400c20 <puts@plt>
  401994:	bf 08 00 00 00       	mov    $0x8,%edi
  401999:	e8 a2 f3 ff ff       	callq  400d40 <exit@plt>

000000000040199e <read_six_numbers>:
  40199e:	48 83 ec 08          	sub    $0x8,%rsp
  4019a2:	48 89 f2             	mov    %rsi,%rdx ; stack + 0
  4019a5:	48 8d 4e 04          	lea    0x4(%rsi),%rcx ; stack + 4
  4019a9:	48 8d 46 14          	lea    0x14(%rsi),%rax
  4019ad:	50                   	push   %rax
  4019ae:	48 8d 46 10          	lea    0x10(%rsi),%rax
  4019b2:	50                   	push   %rax
  4019b3:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9 ; stack + 8
  4019b7:	4c 8d 46 08          	lea    0x8(%rsi),%r8 ; stack + 16
  4019bb:	be 92 2c 40 00       	mov    $0x402c92,%esi 
  4019c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c5:	e8 36 f3 ff ff       	callq  400d00 <__isoc99_sscanf@plt>
  4019ca:	48 83 c4 10          	add    $0x10,%rsp ; stack + 16
  4019ce:	83 f8 05             	cmp    $0x5,%eax // >5 skip explode
  4019d1:	7f 05                	jg     4019d8 <read_six_numbers+0x3a>
  4019d3:	e8 9a ff ff ff       	callq  401972 <explode_bomb>
  4019d8:	48 83 c4 08          	add    $0x8,%rsp 
  4019dc:	c3                   	retq   

00000000004019dd <read_line>:
  4019dd:	48 83 ec 08          	sub    $0x8,%rsp
  4019e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e6:	e8 41 fe ff ff       	callq  40182c <skip>
  4019eb:	48 85 c0             	test   %rax,%rax
  4019ee:	75 6e                	jne    401a5e <read_line+0x81>
  4019f0:	48 8b 05 b9 31 20 00 	mov    0x2031b9(%rip),%rax        # 604bb0 <stdin@@GLIBC_2.2.5>
  4019f7:	48 39 05 d2 31 20 00 	cmp    %rax,0x2031d2(%rip)        # 604bd0 <infile>
  4019fe:	75 14                	jne    401a14 <read_line+0x37>
  401a00:	bf a4 2c 40 00       	mov    $0x402ca4,%edi
  401a05:	e8 16 f2 ff ff       	callq  400c20 <puts@plt>
  401a0a:	bf 08 00 00 00       	mov    $0x8,%edi
  401a0f:	e8 2c f3 ff ff       	callq  400d40 <exit@plt>
  401a14:	bf c2 2c 40 00       	mov    $0x402cc2,%edi
  401a19:	e8 c2 f1 ff ff       	callq  400be0 <getenv@plt>
  401a1e:	48 85 c0             	test   %rax,%rax
  401a21:	74 0a                	je     401a2d <read_line+0x50>
  401a23:	bf 00 00 00 00       	mov    $0x0,%edi
  401a28:	e8 13 f3 ff ff       	callq  400d40 <exit@plt>
  401a2d:	48 8b 05 7c 31 20 00 	mov    0x20317c(%rip),%rax        # 604bb0 <stdin@@GLIBC_2.2.5>
  401a34:	48 89 05 95 31 20 00 	mov    %rax,0x203195(%rip)        # 604bd0 <infile>
  401a3b:	b8 00 00 00 00       	mov    $0x0,%eax
  401a40:	e8 e7 fd ff ff       	callq  40182c <skip>
  401a45:	48 85 c0             	test   %rax,%rax
  401a48:	75 14                	jne    401a5e <read_line+0x81>
  401a4a:	bf a4 2c 40 00       	mov    $0x402ca4,%edi
  401a4f:	e8 cc f1 ff ff       	callq  400c20 <puts@plt>
  401a54:	bf 00 00 00 00       	mov    $0x0,%edi
  401a59:	e8 e2 f2 ff ff       	callq  400d40 <exit@plt>
  401a5e:	8b 35 68 31 20 00    	mov    0x203168(%rip),%esi        # 604bcc <num_input_strings>
  401a64:	48 63 c6             	movslq %esi,%rax
  401a67:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401a6b:	48 c1 e2 04          	shl    $0x4,%rdx
  401a6f:	48 81 c2 e0 4b 60 00 	add    $0x604be0,%rdx
  401a76:	b8 00 00 00 00       	mov    $0x0,%eax
  401a7b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401a82:	48 89 d7             	mov    %rdx,%rdi
  401a85:	f2 ae                	repnz scas %es:(%rdi),%al
  401a87:	48 f7 d1             	not    %rcx
  401a8a:	48 83 e9 01          	sub    $0x1,%rcx
  401a8e:	83 f9 4e             	cmp    $0x4e,%ecx
  401a91:	7e 46                	jle    401ad9 <read_line+0xfc>
  401a93:	bf cd 2c 40 00       	mov    $0x402ccd,%edi
  401a98:	e8 83 f1 ff ff       	callq  400c20 <puts@plt>
  401a9d:	8b 05 29 31 20 00    	mov    0x203129(%rip),%eax        # 604bcc <num_input_strings>
  401aa3:	8d 50 01             	lea    0x1(%rax),%edx
  401aa6:	89 15 20 31 20 00    	mov    %edx,0x203120(%rip)        # 604bcc <num_input_strings>
  401aac:	48 98                	cltq   
  401aae:	48 6b c0 50          	imul   $0x50,%rax,%rax
  401ab2:	48 bf 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rdi
  401ab9:	75 6e 63 
  401abc:	48 89 b8 e0 4b 60 00 	mov    %rdi,0x604be0(%rax)
  401ac3:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  401aca:	2a 2a 00 
  401acd:	48 89 b8 e8 4b 60 00 	mov    %rdi,0x604be8(%rax)
  401ad4:	e8 99 fe ff ff       	callq  401972 <explode_bomb>
  401ad9:	83 e9 01             	sub    $0x1,%ecx
  401adc:	48 63 c9             	movslq %ecx,%rcx
  401adf:	48 63 c6             	movslq %esi,%rax
  401ae2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401ae6:	48 c1 e0 04          	shl    $0x4,%rax
  401aea:	c6 84 01 e0 4b 60 00 	movb   $0x0,0x604be0(%rcx,%rax,1)
  401af1:	00 
  401af2:	8d 46 01             	lea    0x1(%rsi),%eax
  401af5:	89 05 d1 30 20 00    	mov    %eax,0x2030d1(%rip)        # 604bcc <num_input_strings>
  401afb:	48 89 d0             	mov    %rdx,%rax
  401afe:	48 83 c4 08          	add    $0x8,%rsp
  401b02:	c3                   	retq   


0000000000401b03 <phase_defused>:
  401b03:	48 83 ec 78          	sub    $0x78,%rsp
  401b07:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b0e:	00 00 
  401b10:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  401b15:	31 c0                	xor    %eax,%eax
  401b17:	bf 01 00 00 00       	mov    $0x1,%edi
  401b1c:	e8 4c fd ff ff       	callq  40186d <send_msg>
  401b21:	83 3d a4 30 20 00 06 	cmpl   $0x6,0x2030a4(%rip)        # 604bcc <num_input_strings>
  401b28:	75 63                	jne    401b8d <phase_defused+0x8a>
  401b2a:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401b2f:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  401b34:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  401b39:	be e8 2c 40 00       	mov    $0x402ce8,%esi
  401b3e:	bf d0 4c 60 00       	mov    $0x604cd0,%edi
  401b43:	b8 00 00 00 00       	mov    $0x0,%eax
  401b48:	e8 b3 f1 ff ff       	callq  400d00 <__isoc99_sscanf@plt>
  401b4d:	83 f8 03             	cmp    $0x3,%eax
  401b50:	75 27                	jne    401b79 <phase_defused+0x76>
  401b52:	be f1 2c 40 00       	mov    $0x402cf1,%esi
  401b57:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401b5c:	e8 6d fa ff ff       	callq  4015ce <strings_close>
  401b61:	85 c0                	test   %eax,%eax
  401b63:	75 14                	jne    401b79 <phase_defused+0x76>
  401b65:	bf a0 32 40 00       	mov    $0x4032a0,%edi
  401b6a:	e8 b1 f0 ff ff       	callq  400c20 <puts@plt>
  401b6f:	b8 00 00 00 00       	mov    $0x0,%eax
  401b74:	e8 84 f8 ff ff       	callq  4013fd <secret_phase>
  401b79:	bf c8 32 40 00       	mov    $0x4032c8,%edi
  401b7e:	e8 9d f0 ff ff       	callq  400c20 <puts@plt>
  401b83:	bf f8 32 40 00       	mov    $0x4032f8,%edi
  401b88:	e8 93 f0 ff ff       	callq  400c20 <puts@plt>
  401b8d:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  401b92:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401b99:	00 00 
  401b9b:	74 05                	je     401ba2 <phase_defused+0x9f>
  401b9d:	e8 9e f0 ff ff       	callq  400c40 <__stack_chk_fail@plt>
  401ba2:	48 83 c4 78          	add    $0x78,%rsp
  401ba6:	c3                   	retq   

0000000000401ba7 <sigalrm_handler>:
  401ba7:	48 83 ec 08          	sub    $0x8,%rsp
  401bab:	b9 00 00 00 00       	mov    $0x0,%ecx
  401bb0:	ba 30 33 40 00       	mov    $0x403330,%edx
  401bb5:	be 01 00 00 00       	mov    $0x1,%esi
  401bba:	48 8b 3d ff 2f 20 00 	mov    0x202fff(%rip),%rdi        # 604bc0 <stderr@@GLIBC_2.2.5>
  401bc1:	b8 00 00 00 00       	mov    $0x0,%eax
  401bc6:	e8 a5 f1 ff ff       	callq  400d70 <__fprintf_chk@plt>
  401bcb:	bf 01 00 00 00       	mov    $0x1,%edi
  401bd0:	e8 6b f1 ff ff       	callq  400d40 <exit@plt>

0000000000401bd5 <rio_readlineb>:
  401bd5:	41 56                	push   %r14
  401bd7:	41 55                	push   %r13
  401bd9:	41 54                	push   %r12
  401bdb:	55                   	push   %rbp
  401bdc:	53                   	push   %rbx
  401bdd:	48 83 ec 10          	sub    $0x10,%rsp
  401be1:	48 89 fb             	mov    %rdi,%rbx
  401be4:	49 89 f5             	mov    %rsi,%r13
  401be7:	49 89 d6             	mov    %rdx,%r14
  401bea:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401bf1:	00 00 
  401bf3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401bf8:	31 c0                	xor    %eax,%eax
  401bfa:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  401c00:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
  401c04:	48 83 fa 01          	cmp    $0x1,%rdx
  401c08:	77 2c                	ja     401c36 <rio_readlineb+0x61>
  401c0a:	eb 6d                	jmp    401c79 <rio_readlineb+0xa4>
  401c0c:	ba 00 20 00 00       	mov    $0x2000,%edx
  401c11:	48 89 ee             	mov    %rbp,%rsi
  401c14:	8b 3b                	mov    (%rbx),%edi
  401c16:	e8 65 f0 ff ff       	callq  400c80 <read@plt>
  401c1b:	89 43 04             	mov    %eax,0x4(%rbx)
  401c1e:	85 c0                	test   %eax,%eax
  401c20:	79 0c                	jns    401c2e <rio_readlineb+0x59>
  401c22:	e8 d9 ef ff ff       	callq  400c00 <__errno_location@plt>
  401c27:	83 38 04             	cmpl   $0x4,(%rax)
  401c2a:	74 0a                	je     401c36 <rio_readlineb+0x61>
  401c2c:	eb 6c                	jmp    401c9a <rio_readlineb+0xc5>
  401c2e:	85 c0                	test   %eax,%eax
  401c30:	74 71                	je     401ca3 <rio_readlineb+0xce>
  401c32:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  401c36:	8b 43 04             	mov    0x4(%rbx),%eax
  401c39:	85 c0                	test   %eax,%eax
  401c3b:	7e cf                	jle    401c0c <rio_readlineb+0x37>
  401c3d:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  401c41:	0f b6 0a             	movzbl (%rdx),%ecx
  401c44:	88 4c 24 07          	mov    %cl,0x7(%rsp)
  401c48:	48 83 c2 01          	add    $0x1,%rdx
  401c4c:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  401c50:	83 e8 01             	sub    $0x1,%eax
  401c53:	89 43 04             	mov    %eax,0x4(%rbx)
  401c56:	49 83 c5 01          	add    $0x1,%r13
  401c5a:	41 88 4d ff          	mov    %cl,-0x1(%r13)
  401c5e:	80 f9 0a             	cmp    $0xa,%cl
  401c61:	75 0a                	jne    401c6d <rio_readlineb+0x98>
  401c63:	eb 14                	jmp    401c79 <rio_readlineb+0xa4>
  401c65:	41 83 fc 01          	cmp    $0x1,%r12d
  401c69:	75 0e                	jne    401c79 <rio_readlineb+0xa4>
  401c6b:	eb 16                	jmp    401c83 <rio_readlineb+0xae>
  401c6d:	41 83 c4 01          	add    $0x1,%r12d
  401c71:	49 63 c4             	movslq %r12d,%rax
  401c74:	4c 39 f0             	cmp    %r14,%rax
  401c77:	72 bd                	jb     401c36 <rio_readlineb+0x61>
  401c79:	41 c6 45 00 00       	movb   $0x0,0x0(%r13)
  401c7e:	49 63 c4             	movslq %r12d,%rax
  401c81:	eb 05                	jmp    401c88 <rio_readlineb+0xb3>
  401c83:	b8 00 00 00 00       	mov    $0x0,%eax
  401c88:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  401c8d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  401c94:	00 00 
  401c96:	74 22                	je     401cba <rio_readlineb+0xe5>
  401c98:	eb 1b                	jmp    401cb5 <rio_readlineb+0xe0>
  401c9a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401ca1:	eb 05                	jmp    401ca8 <rio_readlineb+0xd3>
  401ca3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca8:	85 c0                	test   %eax,%eax
  401caa:	74 b9                	je     401c65 <rio_readlineb+0x90>
  401cac:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401cb3:	eb d3                	jmp    401c88 <rio_readlineb+0xb3>
  401cb5:	e8 86 ef ff ff       	callq  400c40 <__stack_chk_fail@plt>
  401cba:	48 83 c4 10          	add    $0x10,%rsp
  401cbe:	5b                   	pop    %rbx
  401cbf:	5d                   	pop    %rbp
  401cc0:	41 5c                	pop    %r12
  401cc2:	41 5d                	pop    %r13
  401cc4:	41 5e                	pop    %r14
  401cc6:	c3                   	retq   

0000000000401cc7 <submitr>:
  401cc7:	41 57                	push   %r15
  401cc9:	41 56                	push   %r14
  401ccb:	41 55                	push   %r13
  401ccd:	41 54                	push   %r12
  401ccf:	55                   	push   %rbp
  401cd0:	53                   	push   %rbx
  401cd1:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  401cd8:	48 89 fd             	mov    %rdi,%rbp
  401cdb:	41 89 f5             	mov    %esi,%r13d
  401cde:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  401ce3:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  401ce8:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  401ced:	4c 89 cb             	mov    %r9,%rbx
  401cf0:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  401cf7:	00 
  401cf8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401cff:	00 00 
  401d01:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  401d08:	00 
  401d09:	31 c0                	xor    %eax,%eax
  401d0b:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  401d12:	00 
  401d13:	ba 00 00 00 00       	mov    $0x0,%edx
  401d18:	be 01 00 00 00       	mov    $0x1,%esi
  401d1d:	bf 02 00 00 00       	mov    $0x2,%edi
  401d22:	e8 99 f0 ff ff       	callq  400dc0 <socket@plt>
  401d27:	85 c0                	test   %eax,%eax
  401d29:	79 50                	jns    401d7b <submitr+0xb4>
  401d2b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401d32:	3a 20 43 
  401d35:	49 89 07             	mov    %rax,(%r15)
  401d38:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401d3f:	20 75 6e 
  401d42:	49 89 47 08          	mov    %rax,0x8(%r15)
  401d46:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401d4d:	74 6f 20 
  401d50:	49 89 47 10          	mov    %rax,0x10(%r15)
  401d54:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  401d5b:	65 20 73 
  401d5e:	49 89 47 18          	mov    %rax,0x18(%r15)
  401d62:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
  401d69:	65 
  401d6a:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
  401d71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d76:	e9 15 06 00 00       	jmpq   402390 <submitr+0x6c9>
  401d7b:	41 89 c4             	mov    %eax,%r12d
  401d7e:	48 89 ef             	mov    %rbp,%rdi
  401d81:	e8 3a ef ff ff       	callq  400cc0 <gethostbyname@plt>
  401d86:	48 85 c0             	test   %rax,%rax
  401d89:	75 6b                	jne    401df6 <submitr+0x12f>
  401d8b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401d92:	3a 20 44 
  401d95:	49 89 07             	mov    %rax,(%r15)
  401d98:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  401d9f:	20 75 6e 
  401da2:	49 89 47 08          	mov    %rax,0x8(%r15)
  401da6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401dad:	74 6f 20 
  401db0:	49 89 47 10          	mov    %rax,0x10(%r15)
  401db4:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  401dbb:	76 65 20 
  401dbe:	49 89 47 18          	mov    %rax,0x18(%r15)
  401dc2:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401dc9:	72 20 61 
  401dcc:	49 89 47 20          	mov    %rax,0x20(%r15)
  401dd0:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
  401dd7:	65 
  401dd8:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
  401ddf:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
  401de4:	44 89 e7             	mov    %r12d,%edi
  401de7:	e8 84 ee ff ff       	callq  400c70 <close@plt>
  401dec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401df1:	e9 9a 05 00 00       	jmpq   402390 <submitr+0x6c9>
  401df6:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  401dfd:	00 00 
  401dff:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  401e06:	00 00 
  401e08:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  401e0f:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401e13:	48 8b 40 18          	mov    0x18(%rax),%rax
  401e17:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  401e1c:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401e21:	48 8b 30             	mov    (%rax),%rsi
  401e24:	e8 a7 ee ff ff       	callq  400cd0 <__memmove_chk@plt>
  401e29:	66 41 c1 cd 08       	ror    $0x8,%r13w
  401e2e:	66 44 89 6c 24 32    	mov    %r13w,0x32(%rsp)
  401e34:	ba 10 00 00 00       	mov    $0x10,%edx
  401e39:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  401e3e:	44 89 e7             	mov    %r12d,%edi
  401e41:	e8 0a ef ff ff       	callq  400d50 <connect@plt>
  401e46:	85 c0                	test   %eax,%eax
  401e48:	79 5d                	jns    401ea7 <submitr+0x1e0>
  401e4a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401e51:	3a 20 55 
  401e54:	49 89 07             	mov    %rax,(%r15)
  401e57:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  401e5e:	20 74 6f 
  401e61:	49 89 47 08          	mov    %rax,0x8(%r15)
  401e65:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401e6c:	65 63 74 
  401e6f:	49 89 47 10          	mov    %rax,0x10(%r15)
  401e73:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  401e7a:	68 65 20 
  401e7d:	49 89 47 18          	mov    %rax,0x18(%r15)
  401e81:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
  401e88:	76 
  401e89:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
  401e90:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
  401e95:	44 89 e7             	mov    %r12d,%edi
  401e98:	e8 d3 ed ff ff       	callq  400c70 <close@plt>
  401e9d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ea2:	e9 e9 04 00 00       	jmpq   402390 <submitr+0x6c9>
  401ea7:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  401eae:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb3:	4c 89 c9             	mov    %r9,%rcx
  401eb6:	48 89 df             	mov    %rbx,%rdi
  401eb9:	f2 ae                	repnz scas %es:(%rdi),%al
  401ebb:	48 f7 d1             	not    %rcx
  401ebe:	48 89 ce             	mov    %rcx,%rsi
  401ec1:	4c 89 c9             	mov    %r9,%rcx
  401ec4:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  401ec9:	f2 ae                	repnz scas %es:(%rdi),%al
  401ecb:	49 89 c8             	mov    %rcx,%r8
  401ece:	4c 89 c9             	mov    %r9,%rcx
  401ed1:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401ed6:	f2 ae                	repnz scas %es:(%rdi),%al
  401ed8:	48 f7 d1             	not    %rcx
  401edb:	48 89 ca             	mov    %rcx,%rdx
  401ede:	4c 89 c9             	mov    %r9,%rcx
  401ee1:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  401ee6:	f2 ae                	repnz scas %es:(%rdi),%al
  401ee8:	4c 29 c2             	sub    %r8,%rdx
  401eeb:	48 29 ca             	sub    %rcx,%rdx
  401eee:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401ef3:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
  401ef8:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401efe:	76 73                	jbe    401f73 <submitr+0x2ac>
  401f00:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401f07:	3a 20 52 
  401f0a:	49 89 07             	mov    %rax,(%r15)
  401f0d:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401f14:	20 73 74 
  401f17:	49 89 47 08          	mov    %rax,0x8(%r15)
  401f1b:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401f22:	74 6f 6f 
  401f25:	49 89 47 10          	mov    %rax,0x10(%r15)
  401f29:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  401f30:	65 2e 20 
  401f33:	49 89 47 18          	mov    %rax,0x18(%r15)
  401f37:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401f3e:	61 73 65 
  401f41:	49 89 47 20          	mov    %rax,0x20(%r15)
  401f45:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  401f4c:	49 54 52 
  401f4f:	49 89 47 28          	mov    %rax,0x28(%r15)
  401f53:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401f5a:	55 46 00 
  401f5d:	49 89 47 30          	mov    %rax,0x30(%r15)
  401f61:	44 89 e7             	mov    %r12d,%edi
  401f64:	e8 07 ed ff ff       	callq  400c70 <close@plt>
  401f69:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f6e:	e9 1d 04 00 00       	jmpq   402390 <submitr+0x6c9>
  401f73:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
  401f7a:	00 
  401f7b:	b9 00 04 00 00       	mov    $0x400,%ecx
  401f80:	b8 00 00 00 00       	mov    $0x0,%eax
  401f85:	48 89 d7             	mov    %rdx,%rdi
  401f88:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401f8b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401f92:	48 89 df             	mov    %rbx,%rdi
  401f95:	f2 ae                	repnz scas %es:(%rdi),%al
  401f97:	48 89 c8             	mov    %rcx,%rax
  401f9a:	48 f7 d0             	not    %rax
  401f9d:	48 83 e8 01          	sub    $0x1,%rax
  401fa1:	85 c0                	test   %eax,%eax
  401fa3:	0f 84 90 04 00 00    	je     402439 <submitr+0x772>
  401fa9:	8d 40 ff             	lea    -0x1(%rax),%eax
  401fac:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
  401fb1:	48 89 d5             	mov    %rdx,%rbp
  401fb4:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
  401fbb:	00 20 00 
  401fbe:	44 0f b6 03          	movzbl (%rbx),%r8d
  401fc2:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
  401fc6:	3c 35                	cmp    $0x35,%al
  401fc8:	77 06                	ja     401fd0 <submitr+0x309>
  401fca:	49 0f a3 c5          	bt     %rax,%r13
  401fce:	72 0d                	jb     401fdd <submitr+0x316>
  401fd0:	44 89 c0             	mov    %r8d,%eax
  401fd3:	83 e0 df             	and    $0xffffffdf,%eax
  401fd6:	83 e8 41             	sub    $0x41,%eax
  401fd9:	3c 19                	cmp    $0x19,%al
  401fdb:	77 0a                	ja     401fe7 <submitr+0x320>
  401fdd:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  401fe1:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401fe5:	eb 6c                	jmp    402053 <submitr+0x38c>
  401fe7:	41 80 f8 20          	cmp    $0x20,%r8b
  401feb:	75 0a                	jne    401ff7 <submitr+0x330>
  401fed:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401ff1:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401ff5:	eb 5c                	jmp    402053 <submitr+0x38c>
  401ff7:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401ffb:	3c 5f                	cmp    $0x5f,%al
  401ffd:	76 0a                	jbe    402009 <submitr+0x342>
  401fff:	41 80 f8 09          	cmp    $0x9,%r8b
  402003:	0f 85 a3 03 00 00    	jne    4023ac <submitr+0x6e5>
  402009:	45 0f b6 c0          	movzbl %r8b,%r8d
  40200d:	b9 30 34 40 00       	mov    $0x403430,%ecx
  402012:	ba 08 00 00 00       	mov    $0x8,%edx
  402017:	be 01 00 00 00       	mov    $0x1,%esi
  40201c:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  402023:	00 
  402024:	b8 00 00 00 00       	mov    $0x0,%eax
  402029:	e8 82 ed ff ff       	callq  400db0 <__sprintf_chk@plt>
  40202e:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
  402035:	00 
  402036:	88 45 00             	mov    %al,0x0(%rbp)
  402039:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
  402040:	00 
  402041:	88 45 01             	mov    %al,0x1(%rbp)
  402044:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
  40204b:	00 
  40204c:	88 45 02             	mov    %al,0x2(%rbp)
  40204f:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402053:	48 83 c3 01          	add    $0x1,%rbx
  402057:	49 39 de             	cmp    %rbx,%r14
  40205a:	0f 85 5e ff ff ff    	jne    401fbe <submitr+0x2f7>
  402060:	e9 d4 03 00 00       	jmpq   402439 <submitr+0x772>
  402065:	48 89 da             	mov    %rbx,%rdx
  402068:	48 89 ee             	mov    %rbp,%rsi
  40206b:	44 89 e7             	mov    %r12d,%edi
  40206e:	e8 bd eb ff ff       	callq  400c30 <write@plt>
  402073:	48 85 c0             	test   %rax,%rax
  402076:	7f 0f                	jg     402087 <submitr+0x3c0>
  402078:	e8 83 eb ff ff       	callq  400c00 <__errno_location@plt>
  40207d:	83 38 04             	cmpl   $0x4,(%rax)
  402080:	75 12                	jne    402094 <submitr+0x3cd>
  402082:	b8 00 00 00 00       	mov    $0x0,%eax
  402087:	48 01 c5             	add    %rax,%rbp
  40208a:	48 29 c3             	sub    %rax,%rbx
  40208d:	75 d6                	jne    402065 <submitr+0x39e>
  40208f:	4d 85 ed             	test   %r13,%r13
  402092:	79 5f                	jns    4020f3 <submitr+0x42c>
  402094:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40209b:	3a 20 43 
  40209e:	49 89 07             	mov    %rax,(%r15)
  4020a1:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4020a8:	20 75 6e 
  4020ab:	49 89 47 08          	mov    %rax,0x8(%r15)
  4020af:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4020b6:	74 6f 20 
  4020b9:	49 89 47 10          	mov    %rax,0x10(%r15)
  4020bd:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4020c4:	20 74 6f 
  4020c7:	49 89 47 18          	mov    %rax,0x18(%r15)
  4020cb:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
  4020d2:	73 65 72 
  4020d5:	49 89 47 20          	mov    %rax,0x20(%r15)
  4020d9:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
  4020e0:	00 
  4020e1:	44 89 e7             	mov    %r12d,%edi
  4020e4:	e8 87 eb ff ff       	callq  400c70 <close@plt>
  4020e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020ee:	e9 9d 02 00 00       	jmpq   402390 <submitr+0x6c9>
  4020f3:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
  4020f8:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
  4020ff:	00 
  402100:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  402105:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  40210a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40210f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402116:	00 
  402117:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40211c:	e8 b4 fa ff ff       	callq  401bd5 <rio_readlineb>
  402121:	48 85 c0             	test   %rax,%rax
  402124:	7f 74                	jg     40219a <submitr+0x4d3>
  402126:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40212d:	3a 20 43 
  402130:	49 89 07             	mov    %rax,(%r15)
  402133:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40213a:	20 75 6e 
  40213d:	49 89 47 08          	mov    %rax,0x8(%r15)
  402141:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402148:	74 6f 20 
  40214b:	49 89 47 10          	mov    %rax,0x10(%r15)
  40214f:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402156:	66 69 72 
  402159:	49 89 47 18          	mov    %rax,0x18(%r15)
  40215d:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402164:	61 64 65 
  402167:	49 89 47 20          	mov    %rax,0x20(%r15)
  40216b:	48 b8 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rax
  402172:	6d 20 73 
  402175:	49 89 47 28          	mov    %rax,0x28(%r15)
  402179:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
  402180:	65 
  402181:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
  402188:	44 89 e7             	mov    %r12d,%edi
  40218b:	e8 e0 ea ff ff       	callq  400c70 <close@plt>
  402190:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402195:	e9 f6 01 00 00       	jmpq   402390 <submitr+0x6c9>
  40219a:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  4021a1:	00 
  4021a2:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  4021a7:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  4021ae:	00 
  4021af:	be 37 34 40 00       	mov    $0x403437,%esi
  4021b4:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  4021bb:	00 
  4021bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c1:	e8 3a eb ff ff       	callq  400d00 <__isoc99_sscanf@plt>
  4021c6:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4021cb:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4021d2:	0f 84 be 00 00 00    	je     402296 <submitr+0x5cf>
  4021d8:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4021df:	00 
  4021e0:	b9 58 33 40 00       	mov    $0x403358,%ecx
  4021e5:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4021ec:	be 01 00 00 00       	mov    $0x1,%esi
  4021f1:	4c 89 ff             	mov    %r15,%rdi
  4021f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4021f9:	e8 b2 eb ff ff       	callq  400db0 <__sprintf_chk@plt>
  4021fe:	44 89 e7             	mov    %r12d,%edi
  402201:	e8 6a ea ff ff       	callq  400c70 <close@plt>
  402206:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40220b:	e9 80 01 00 00       	jmpq   402390 <submitr+0x6c9>
  402210:	ba 00 20 00 00       	mov    $0x2000,%edx
  402215:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40221c:	00 
  40221d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402222:	e8 ae f9 ff ff       	callq  401bd5 <rio_readlineb>
  402227:	48 85 c0             	test   %rax,%rax
  40222a:	7f 6a                	jg     402296 <submitr+0x5cf>
  40222c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402233:	3a 20 43 
  402236:	49 89 07             	mov    %rax,(%r15)
  402239:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402240:	20 75 6e 
  402243:	49 89 47 08          	mov    %rax,0x8(%r15)
  402247:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40224e:	74 6f 20 
  402251:	49 89 47 10          	mov    %rax,0x10(%r15)
  402255:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  40225c:	68 65 61 
  40225f:	49 89 47 18          	mov    %rax,0x18(%r15)
  402263:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40226a:	66 72 6f 
  40226d:	49 89 47 20          	mov    %rax,0x20(%r15)
  402271:	48 b8 6d 20 73 65 72 	movabs $0x726576726573206d,%rax
  402278:	76 65 72 
  40227b:	49 89 47 28          	mov    %rax,0x28(%r15)
  40227f:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
  402284:	44 89 e7             	mov    %r12d,%edi
  402287:	e8 e4 e9 ff ff       	callq  400c70 <close@plt>
  40228c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402291:	e9 fa 00 00 00       	jmpq   402390 <submitr+0x6c9>
  402296:	80 bc 24 50 20 00 00 	cmpb   $0xd,0x2050(%rsp)
  40229d:	0d 
  40229e:	0f 85 6c ff ff ff    	jne    402210 <submitr+0x549>
  4022a4:	80 bc 24 51 20 00 00 	cmpb   $0xa,0x2051(%rsp)
  4022ab:	0a 
  4022ac:	0f 85 5e ff ff ff    	jne    402210 <submitr+0x549>
  4022b2:	80 bc 24 52 20 00 00 	cmpb   $0x0,0x2052(%rsp)
  4022b9:	00 
  4022ba:	0f 85 50 ff ff ff    	jne    402210 <submitr+0x549>
  4022c0:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022c5:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4022cc:	00 
  4022cd:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4022d2:	e8 fe f8 ff ff       	callq  401bd5 <rio_readlineb>
  4022d7:	48 85 c0             	test   %rax,%rax
  4022da:	7f 70                	jg     40234c <submitr+0x685>
  4022dc:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4022e3:	3a 20 43 
  4022e6:	49 89 07             	mov    %rax,(%r15)
  4022e9:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4022f0:	20 75 6e 
  4022f3:	49 89 47 08          	mov    %rax,0x8(%r15)
  4022f7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4022fe:	74 6f 20 
  402301:	49 89 47 10          	mov    %rax,0x10(%r15)
  402305:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  40230c:	73 74 61 
  40230f:	49 89 47 18          	mov    %rax,0x18(%r15)
  402313:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40231a:	65 73 73 
  40231d:	49 89 47 20          	mov    %rax,0x20(%r15)
  402321:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402328:	72 6f 6d 
  40232b:	49 89 47 28          	mov    %rax,0x28(%r15)
  40232f:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402336:	65 72 00 
  402339:	49 89 47 30          	mov    %rax,0x30(%r15)
  40233d:	44 89 e7             	mov    %r12d,%edi
  402340:	e8 2b e9 ff ff       	callq  400c70 <close@plt>
  402345:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40234a:	eb 44                	jmp    402390 <submitr+0x6c9>
  40234c:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402353:	00 
  402354:	4c 89 ff             	mov    %r15,%rdi
  402357:	e8 b4 e8 ff ff       	callq  400c10 <strcpy@plt>
  40235c:	44 89 e7             	mov    %r12d,%edi
  40235f:	e8 0c e9 ff ff       	callq  400c70 <close@plt>
  402364:	41 0f b6 17          	movzbl (%r15),%edx
  402368:	b8 4f 00 00 00       	mov    $0x4f,%eax
  40236d:	29 d0                	sub    %edx,%eax
  40236f:	75 15                	jne    402386 <submitr+0x6bf>
  402371:	41 0f b6 57 01       	movzbl 0x1(%r15),%edx
  402376:	b8 4b 00 00 00       	mov    $0x4b,%eax
  40237b:	29 d0                	sub    %edx,%eax
  40237d:	75 07                	jne    402386 <submitr+0x6bf>
  40237f:	41 0f b6 47 02       	movzbl 0x2(%r15),%eax
  402384:	f7 d8                	neg    %eax
  402386:	85 c0                	test   %eax,%eax
  402388:	0f 95 c0             	setne  %al
  40238b:	0f b6 c0             	movzbl %al,%eax
  40238e:	f7 d8                	neg    %eax
  402390:	48 8b 8c 24 58 a0 00 	mov    0xa058(%rsp),%rcx
  402397:	00 
  402398:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40239f:	00 00 
  4023a1:	0f 84 0a 01 00 00    	je     4024b1 <submitr+0x7ea>
  4023a7:	e9 00 01 00 00       	jmpq   4024ac <submitr+0x7e5>
  4023ac:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4023b3:	3a 20 52 
  4023b6:	49 89 07             	mov    %rax,(%r15)
  4023b9:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4023c0:	20 73 74 
  4023c3:	49 89 47 08          	mov    %rax,0x8(%r15)
  4023c7:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4023ce:	63 6f 6e 
  4023d1:	49 89 47 10          	mov    %rax,0x10(%r15)
  4023d5:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4023dc:	20 61 6e 
  4023df:	49 89 47 18          	mov    %rax,0x18(%r15)
  4023e3:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4023ea:	67 61 6c 
  4023ed:	49 89 47 20          	mov    %rax,0x20(%r15)
  4023f1:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4023f8:	6e 70 72 
  4023fb:	49 89 47 28          	mov    %rax,0x28(%r15)
  4023ff:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402406:	6c 65 20 
  402409:	49 89 47 30          	mov    %rax,0x30(%r15)
  40240d:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402414:	63 74 65 
  402417:	49 89 47 38          	mov    %rax,0x38(%r15)
  40241b:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
  402422:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
  402427:	44 89 e7             	mov    %r12d,%edi
  40242a:	e8 41 e8 ff ff       	callq  400c70 <close@plt>
  40242f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402434:	e9 57 ff ff ff       	jmpq   402390 <submitr+0x6c9>
  402439:	48 8d 9c 24 50 20 00 	lea    0x2050(%rsp),%rbx
  402440:	00 
  402441:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
  402448:	00 
  402449:	50                   	push   %rax
  40244a:	ff 74 24 20          	pushq  0x20(%rsp)
  40244e:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
  402453:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  402458:	b9 88 33 40 00       	mov    $0x403388,%ecx
  40245d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402462:	be 01 00 00 00       	mov    $0x1,%esi
  402467:	48 89 df             	mov    %rbx,%rdi
  40246a:	b8 00 00 00 00       	mov    $0x0,%eax
  40246f:	e8 3c e9 ff ff       	callq  400db0 <__sprintf_chk@plt>
  402474:	b8 00 00 00 00       	mov    $0x0,%eax
  402479:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402480:	48 89 df             	mov    %rbx,%rdi
  402483:	f2 ae                	repnz scas %es:(%rdi),%al
  402485:	48 89 c8             	mov    %rcx,%rax
  402488:	48 f7 d0             	not    %rax
  40248b:	4c 8d 68 ff          	lea    -0x1(%rax),%r13
  40248f:	48 83 c4 10          	add    $0x10,%rsp
  402493:	4c 89 eb             	mov    %r13,%rbx
  402496:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  40249d:	00 
  40249e:	4d 85 ed             	test   %r13,%r13
  4024a1:	0f 85 be fb ff ff    	jne    402065 <submitr+0x39e>
  4024a7:	e9 47 fc ff ff       	jmpq   4020f3 <submitr+0x42c>
  4024ac:	e8 8f e7 ff ff       	callq  400c40 <__stack_chk_fail@plt>
  4024b1:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  4024b8:	5b                   	pop    %rbx
  4024b9:	5d                   	pop    %rbp
  4024ba:	41 5c                	pop    %r12
  4024bc:	41 5d                	pop    %r13
  4024be:	41 5e                	pop    %r14
  4024c0:	41 5f                	pop    %r15
  4024c2:	c3                   	retq   

00000000004024c3 <init_timeout>:
  4024c3:	85 ff                	test   %edi,%edi
  4024c5:	74 22                	je     4024e9 <init_timeout+0x26>
  4024c7:	53                   	push   %rbx
  4024c8:	89 fb                	mov    %edi,%ebx
  4024ca:	be a7 1b 40 00       	mov    $0x401ba7,%esi
  4024cf:	bf 0e 00 00 00       	mov    $0xe,%edi
  4024d4:	e8 d7 e7 ff ff       	callq  400cb0 <signal@plt>
  4024d9:	85 db                	test   %ebx,%ebx
  4024db:	bf 00 00 00 00       	mov    $0x0,%edi
  4024e0:	0f 49 fb             	cmovns %ebx,%edi
  4024e3:	e8 78 e7 ff ff       	callq  400c60 <alarm@plt>
  4024e8:	5b                   	pop    %rbx
  4024e9:	f3 c3                	repz retq 

00000000004024eb <init_driver>:
  4024eb:	55                   	push   %rbp
  4024ec:	53                   	push   %rbx
  4024ed:	48 83 ec 28          	sub    $0x28,%rsp
  4024f1:	48 89 fd             	mov    %rdi,%rbp
  4024f4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024fb:	00 00 
  4024fd:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402502:	31 c0                	xor    %eax,%eax
  402504:	be 01 00 00 00       	mov    $0x1,%esi
  402509:	bf 0d 00 00 00       	mov    $0xd,%edi
  40250e:	e8 9d e7 ff ff       	callq  400cb0 <signal@plt>
  402513:	be 01 00 00 00       	mov    $0x1,%esi
  402518:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40251d:	e8 8e e7 ff ff       	callq  400cb0 <signal@plt>
  402522:	be 01 00 00 00       	mov    $0x1,%esi
  402527:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40252c:	e8 7f e7 ff ff       	callq  400cb0 <signal@plt>
  402531:	ba 00 00 00 00       	mov    $0x0,%edx
  402536:	be 01 00 00 00       	mov    $0x1,%esi
  40253b:	bf 02 00 00 00       	mov    $0x2,%edi
  402540:	e8 7b e8 ff ff       	callq  400dc0 <socket@plt>
  402545:	85 c0                	test   %eax,%eax
  402547:	79 4f                	jns    402598 <init_driver+0xad>
  402549:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402550:	3a 20 43 
  402553:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402557:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40255e:	20 75 6e 
  402561:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402565:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40256c:	74 6f 20 
  40256f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402573:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40257a:	65 20 73 
  40257d:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402581:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402588:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40258e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402593:	e9 da 00 00 00       	jmpq   402672 <init_driver+0x187>
  402598:	89 c3                	mov    %eax,%ebx
  40259a:	bf 48 34 40 00       	mov    $0x403448,%edi
  40259f:	e8 1c e7 ff ff       	callq  400cc0 <gethostbyname@plt>
  4025a4:	48 85 c0             	test   %rax,%rax
  4025a7:	75 30                	jne    4025d9 <init_driver+0xee>
  4025a9:	41 b8 48 34 40 00    	mov    $0x403448,%r8d
  4025af:	b9 d8 33 40 00       	mov    $0x4033d8,%ecx
  4025b4:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4025bb:	be 01 00 00 00       	mov    $0x1,%esi
  4025c0:	48 89 ef             	mov    %rbp,%rdi
  4025c3:	e8 e8 e7 ff ff       	callq  400db0 <__sprintf_chk@plt>
  4025c8:	89 df                	mov    %ebx,%edi
  4025ca:	e8 a1 e6 ff ff       	callq  400c70 <close@plt>
  4025cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025d4:	e9 99 00 00 00       	jmpq   402672 <init_driver+0x187>
  4025d9:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4025e0:	00 
  4025e1:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4025e8:	00 00 
  4025ea:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4025f0:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4025f4:	48 8b 40 18          	mov    0x18(%rax),%rax
  4025f8:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4025fd:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402602:	48 8b 30             	mov    (%rax),%rsi
  402605:	e8 c6 e6 ff ff       	callq  400cd0 <__memmove_chk@plt>
  40260a:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
  402611:	ba 10 00 00 00       	mov    $0x10,%edx
  402616:	48 89 e6             	mov    %rsp,%rsi
  402619:	89 df                	mov    %ebx,%edi
  40261b:	e8 30 e7 ff ff       	callq  400d50 <connect@plt>
  402620:	85 c0                	test   %eax,%eax
  402622:	79 38                	jns    40265c <init_driver+0x171>
  402624:	41 b9 6e 3b 00 00    	mov    $0x3b6e,%r9d
  40262a:	41 b8 48 34 40 00    	mov    $0x403448,%r8d
  402630:	b9 00 34 40 00       	mov    $0x403400,%ecx
  402635:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40263c:	be 01 00 00 00       	mov    $0x1,%esi
  402641:	48 89 ef             	mov    %rbp,%rdi
  402644:	b8 00 00 00 00       	mov    $0x0,%eax
  402649:	e8 62 e7 ff ff       	callq  400db0 <__sprintf_chk@plt>
  40264e:	89 df                	mov    %ebx,%edi
  402650:	e8 1b e6 ff ff       	callq  400c70 <close@plt>
  402655:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40265a:	eb 16                	jmp    402672 <init_driver+0x187>
  40265c:	89 df                	mov    %ebx,%edi
  40265e:	e8 0d e6 ff ff       	callq  400c70 <close@plt>
  402663:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402669:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  40266d:	b8 00 00 00 00       	mov    $0x0,%eax
  402672:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402677:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40267e:	00 00 
  402680:	74 05                	je     402687 <init_driver+0x19c>
  402682:	e8 b9 e5 ff ff       	callq  400c40 <__stack_chk_fail@plt>
  402687:	48 83 c4 28          	add    $0x28,%rsp
  40268b:	5b                   	pop    %rbx
  40268c:	5d                   	pop    %rbp
  40268d:	c3                   	retq   

000000000040268e <driver_post>:
  40268e:	53                   	push   %rbx
  40268f:	48 89 cb             	mov    %rcx,%rbx
  402692:	85 d2                	test   %edx,%edx
  402694:	74 27                	je     4026bd <driver_post+0x2f>
  402696:	48 89 f2             	mov    %rsi,%rdx
  402699:	be 5d 34 40 00       	mov    $0x40345d,%esi
  40269e:	bf 01 00 00 00       	mov    $0x1,%edi
  4026a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4026a8:	e8 63 e6 ff ff       	callq  400d10 <__printf_chk@plt>
  4026ad:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4026b2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4026b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4026bb:	eb 43                	jmp    402700 <driver_post+0x72>
  4026bd:	48 85 ff             	test   %rdi,%rdi
  4026c0:	74 30                	je     4026f2 <driver_post+0x64>
  4026c2:	80 3f 00             	cmpb   $0x0,(%rdi)
  4026c5:	74 2b                	je     4026f2 <driver_post+0x64>
  4026c7:	48 83 ec 08          	sub    $0x8,%rsp
  4026cb:	51                   	push   %rcx
  4026cc:	49 89 f1             	mov    %rsi,%r9
  4026cf:	41 b8 74 34 40 00    	mov    $0x403474,%r8d
  4026d5:	48 89 f9             	mov    %rdi,%rcx
  4026d8:	ba 81 34 40 00       	mov    $0x403481,%edx
  4026dd:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
  4026e2:	bf 48 34 40 00       	mov    $0x403448,%edi
  4026e7:	e8 db f5 ff ff       	callq  401cc7 <submitr>
  4026ec:	48 83 c4 10          	add    $0x10,%rsp
  4026f0:	eb 0e                	jmp    402700 <driver_post+0x72>
  4026f2:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4026f7:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4026fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402700:	5b                   	pop    %rbx
  402701:	c3                   	retq   
  402702:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402709:	00 00 00 
  40270c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402710 <__libc_csu_init>:
  402710:	41 57                	push   %r15
  402712:	41 56                	push   %r14
  402714:	41 89 ff             	mov    %edi,%r15d
  402717:	41 55                	push   %r13
  402719:	41 54                	push   %r12
  40271b:	4c 8d 25 ee 16 20 00 	lea    0x2016ee(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402722:	55                   	push   %rbp
  402723:	48 8d 2d ee 16 20 00 	lea    0x2016ee(%rip),%rbp        # 603e18 <__do_global_dtors_aux_fini_array_entry>
  40272a:	53                   	push   %rbx
  40272b:	49 89 f6             	mov    %rsi,%r14
  40272e:	49 89 d5             	mov    %rdx,%r13
  402731:	4c 29 e5             	sub    %r12,%rbp
  402734:	48 83 ec 08          	sub    $0x8,%rsp
  402738:	48 c1 fd 03          	sar    $0x3,%rbp
  40273c:	e8 6f e4 ff ff       	callq  400bb0 <_init>
  402741:	48 85 ed             	test   %rbp,%rbp
  402744:	74 20                	je     402766 <__libc_csu_init+0x56>
  402746:	31 db                	xor    %ebx,%ebx
  402748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40274f:	00 
  402750:	4c 89 ea             	mov    %r13,%rdx
  402753:	4c 89 f6             	mov    %r14,%rsi
  402756:	44 89 ff             	mov    %r15d,%edi
  402759:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40275d:	48 83 c3 01          	add    $0x1,%rbx
  402761:	48 39 eb             	cmp    %rbp,%rbx
  402764:	75 ea                	jne    402750 <__libc_csu_init+0x40>
  402766:	48 83 c4 08          	add    $0x8,%rsp
  40276a:	5b                   	pop    %rbx
  40276b:	5d                   	pop    %rbp
  40276c:	41 5c                	pop    %r12
  40276e:	41 5d                	pop    %r13
  402770:	41 5e                	pop    %r14
  402772:	41 5f                	pop    %r15
  402774:	c3                   	retq   
  402775:	90                   	nop
  402776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40277d:	00 00 00 

0000000000402780 <__libc_csu_fini>:
  402780:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402784 <_fini>:
  402784:	48 83 ec 08          	sub    $0x8,%rsp
  402788:	48 83 c4 08          	add    $0x8,%rsp
  40278c:	c3                   	retq   
