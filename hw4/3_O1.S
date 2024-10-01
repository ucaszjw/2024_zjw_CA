
3_1:     file format elf64-loongarch


Disassembly of section .plt:

0000000000000670 <.plt>:
 670:	1c00010e 	pcaddu12i   	$t2, 8
 674:	0011bdad 	sub.d       	$t1, $t1, $t3
 678:	28e641cf 	ld.d        	$t3, $t2, -1648
 67c:	02ff51ad 	addi.d      	$t1, $t1, -44
 680:	02e641cc 	addi.d      	$t0, $t2, -1648
 684:	004505ad 	srli.d      	$t1, $t1, 0x1
 688:	28c0218c 	ld.d        	$t0, $t0, 8
 68c:	4c0001e0 	jr          	$t3

0000000000000690 <printf@plt>:
 690:	1c00010f 	pcaddu12i   	$t3, 8
 694:	28e601ef 	ld.d        	$t3, $t3, -1664
 698:	4c0001ed 	jirl        	$t1, $t3, 0
 69c:	03400000 	nop         

00000000000006a0 <putchar@plt>:
 6a0:	1c00010f 	pcaddu12i   	$t3, 8
 6a4:	28e5e1ef 	ld.d        	$t3, $t3, -1672
 6a8:	4c0001ed 	jirl        	$t1, $t3, 0
 6ac:	03400000 	nop         

00000000000006b0 <puts@plt>:
 6b0:	1c00010f 	pcaddu12i   	$t3, 8
 6b4:	28e5c1ef 	ld.d        	$t3, $t3, -1680
 6b8:	4c0001ed 	jirl        	$t1, $t3, 0
 6bc:	03400000 	nop         

00000000000006c0 <__cxa_finalize@plt>:
 6c0:	1c00010f 	pcaddu12i   	$t3, 8
 6c4:	28e5a1ef 	ld.d        	$t3, $t3, -1688
 6c8:	4c0001ed 	jirl        	$t1, $t3, 0
 6cc:	03400000 	nop         

Disassembly of section .text:

00000000000006d0 <_start>:
 6d0:	00150089 	move        	$a5, $a0
 6d4:	1a000104 	pcalau12i   	$a0, 8
 6d8:	02c1400c 	li.d        	$t0, 80
 6dc:	1600000c 	lu32i.d     	$t0, 0
 6e0:	0300018c 	lu52i.d     	$t0, $t0, 0
 6e4:	380c3084 	ldx.d       	$a0, $a0, $t0
 6e8:	28c00065 	ld.d        	$a1, $sp, 0
 6ec:	02c02066 	addi.d      	$a2, $sp, 8
 6f0:	00830003 	bstrins.d   	$sp, $zero, 0x3, 0x0
 6f4:	00150007 	move        	$a3, $zero
 6f8:	00150008 	move        	$a4, $zero
 6fc:	0015006a 	move        	$a6, $sp
 700:	1a000101 	pcalau12i   	$ra, 8
 704:	02c1000c 	li.d        	$t0, 64
 708:	1600000c 	lu32i.d     	$t0, 0
 70c:	0300018c 	lu52i.d     	$t0, $t0, 0
 710:	380c3021 	ldx.d       	$ra, $ra, $t0
 714:	4c000021 	jirl        	$ra, $ra, 0
 718:	1a000101 	pcalau12i   	$ra, 8
 71c:	02c1200c 	li.d        	$t0, 72
 720:	1600000c 	lu32i.d     	$t0, 0
 724:	0300018c 	lu52i.d     	$t0, $t0, 0
 728:	380c3021 	ldx.d       	$ra, $ra, $t0
 72c:	4c000021 	jirl        	$ra, $ra, 0

0000000000000730 <deregister_tm_clones>:
 730:	02ffc063 	addi.d      	$sp, $sp, -16
 734:	29c02076 	st.d        	$fp, $sp, 8
 738:	1a000104 	pcalau12i   	$a0, 8
 73c:	02c04076 	addi.d      	$fp, $sp, 16
 740:	1a00010c 	pcalau12i   	$t0, 8
 744:	02c0c084 	addi.d      	$a0, $a0, 48
 748:	02c0c18c 	addi.d      	$t0, $t0, 48
 74c:	58001d84 	beq         	$t0, $a0, 28	# 768 <deregister_tm_clones+0x38>
 750:	1a00010c 	pcalau12i   	$t0, 8
 754:	28c0e18c 	ld.d        	$t0, $t0, 56
 758:	40001180 	beqz        	$t0, 16	# 768 <deregister_tm_clones+0x38>
 75c:	28c02076 	ld.d        	$fp, $sp, 8
 760:	02c04063 	addi.d      	$sp, $sp, 16
 764:	4c000180 	jr          	$t0
 768:	28c02076 	ld.d        	$fp, $sp, 8
 76c:	02c04063 	addi.d      	$sp, $sp, 16
 770:	4c000020 	ret         

0000000000000774 <register_tm_clones>:
 774:	1a000104 	pcalau12i   	$a0, 8
 778:	1a00010c 	pcalau12i   	$t0, 8
 77c:	02c0c084 	addi.d      	$a0, $a0, 48
 780:	02c0c185 	addi.d      	$a1, $t0, 48
 784:	001190a5 	sub.d       	$a1, $a1, $a0
 788:	02ffc063 	addi.d      	$sp, $sp, -16
 78c:	00490cac 	srai.d      	$t0, $a1, 0x3
 790:	0045fca5 	srli.d      	$a1, $a1, 0x3f
 794:	29c02076 	st.d        	$fp, $sp, 8
 798:	0010b0a5 	add.d       	$a1, $a1, $t0
 79c:	02c04076 	addi.d      	$fp, $sp, 16
 7a0:	004904a5 	srai.d      	$a1, $a1, 0x1
 7a4:	40001ca0 	beqz        	$a1, 28	# 7c0 <register_tm_clones+0x4c>
 7a8:	1a00010c 	pcalau12i   	$t0, 8
 7ac:	28c1618c 	ld.d        	$t0, $t0, 88
 7b0:	40001180 	beqz        	$t0, 16	# 7c0 <register_tm_clones+0x4c>
 7b4:	28c02076 	ld.d        	$fp, $sp, 8
 7b8:	02c04063 	addi.d      	$sp, $sp, 16
 7bc:	4c000180 	jr          	$t0
 7c0:	28c02076 	ld.d        	$fp, $sp, 8
 7c4:	02c04063 	addi.d      	$sp, $sp, 16
 7c8:	4c000020 	ret         

00000000000007cc <__do_global_dtors_aux>:
 7cc:	02ff8063 	addi.d      	$sp, $sp, -32
 7d0:	29c04076 	st.d        	$fp, $sp, 16
 7d4:	29c02077 	st.d        	$s0, $sp, 8
 7d8:	29c06061 	st.d        	$ra, $sp, 24
 7dc:	02c08076 	addi.d      	$fp, $sp, 32
 7e0:	1a000117 	pcalau12i   	$s0, 8
 7e4:	2a01c2ec 	ld.bu       	$t0, $s0, 112
 7e8:	44002980 	bnez        	$t0, 40	# 810 <__do_global_dtors_aux+0x44>
 7ec:	1a00010c 	pcalau12i   	$t0, 8
 7f0:	28c1818c 	ld.d        	$t0, $t0, 96
 7f4:	40001180 	beqz        	$t0, 16	# 804 <__do_global_dtors_aux+0x38>
 7f8:	1a00010c 	pcalau12i   	$t0, 8
 7fc:	28c1a184 	ld.d        	$a0, $t0, 104
 800:	57fec3ff 	bl          	-320	# 6c0 <__cxa_finalize@plt>
 804:	57ff2fff 	bl          	-212	# 730 <deregister_tm_clones>
 808:	0280040c 	li.w        	$t0, 1
 80c:	2901c2ec 	st.b        	$t0, $s0, 112
 810:	28c06061 	ld.d        	$ra, $sp, 24
 814:	28c04076 	ld.d        	$fp, $sp, 16
 818:	28c02077 	ld.d        	$s0, $sp, 8
 81c:	02c08063 	addi.d      	$sp, $sp, 32
 820:	4c000020 	ret         

0000000000000824 <frame_dummy>:
 824:	02ffc063 	addi.d      	$sp, $sp, -16
 828:	29c02076 	st.d        	$fp, $sp, 8
 82c:	02c04076 	addi.d      	$fp, $sp, 16
 830:	28c02076 	ld.d        	$fp, $sp, 8
 834:	02c04063 	addi.d      	$sp, $sp, 16
 838:	53ff3fff 	b           	-196	# 774 <register_tm_clones>

000000000000083c <bubble_sort>:
 83c:	0280040c 	li.w        	$t0, 1
 840:	64006585 	bge         	$t0, $a1, 100	# 8a4 <bubble_sort+0x68>
 844:	004080b0 	slli.w      	$t4, $a1, 0x0
 848:	02800411 	li.w        	$t5, 1
 84c:	02c01092 	addi.d      	$t6, $a0, 4
 850:	50002c00 	b           	44	# 87c <bubble_sort+0x40>
 854:	02c0118c 	addi.d      	$t0, $t0, 4
 858:	58001d8f 	beq         	$t0, $t3, 28	# 874 <bubble_sort+0x38>
 85c:	2400018d 	ldptr.w     	$t1, $t0, 0
 860:	2400058e 	ldptr.w     	$t2, $t0, 4
 864:	67fff1cd 	bge         	$t2, $t1, -16	# 854 <bubble_sort+0x18>
 868:	2500018e 	stptr.w     	$t2, $t0, 0
 86c:	2980118d 	st.w        	$t1, $t0, 4
 870:	53ffe7ff 	b           	-28	# 854 <bubble_sort+0x18>
 874:	02bffe10 	addi.w      	$t4, $t4, -1
 878:	58002e11 	beq         	$t4, $t5, 44	# 8a4 <bubble_sort+0x68>
 87c:	0040820c 	slli.w      	$t0, $t4, 0x0
 880:	64001e2c 	bge         	$t5, $t0, 28	# 89c <bubble_sort+0x60>
 884:	0015008c 	move        	$t0, $a0
 888:	02bffa0f 	addi.w      	$t3, $t4, -2
 88c:	00df01ef 	bstrpick.d  	$t3, $t3, 0x1f, 0x0
 890:	002c81ef 	alsl.d      	$t3, $t3, $zero, 0x2
 894:	0010c9ef 	add.d       	$t3, $t3, $t6
 898:	53ffc7ff 	b           	-60	# 85c <bubble_sort+0x20>
 89c:	02bffe10 	addi.w      	$t4, $t4, -1
 8a0:	53ffdfff 	b           	-36	# 87c <bubble_sort+0x40>
 8a4:	00150004 	move        	$a0, $zero
 8a8:	4c000020 	ret         

00000000000008ac <main>:
 8ac:	02ff0063 	addi.d      	$sp, $sp, -64
 8b0:	29c0e061 	st.d        	$ra, $sp, 56
 8b4:	29c0c077 	st.d        	$s0, $sp, 48
 8b8:	29c0a078 	st.d        	$s1, $sp, 40
 8bc:	29c08079 	st.d        	$s2, $sp, 32
 8c0:	1a00002c 	pcalau12i   	$t0, 1
 8c4:	02e5a18c 	addi.d      	$t0, $t0, -1688
 8c8:	2600018f 	ldptr.d     	$t3, $t0, 0
 8cc:	28c0218e 	ld.d        	$t2, $t0, 8
 8d0:	28c0418d 	ld.d        	$t1, $t0, 16
 8d4:	2700006f 	stptr.d     	$t3, $sp, 0
 8d8:	29c0206e 	st.d        	$t2, $sp, 8
 8dc:	29c0406d 	st.d        	$t1, $sp, 16
 8e0:	2400198c 	ldptr.w     	$t0, $t0, 24
 8e4:	2980606c 	st.w        	$t0, $sp, 24
 8e8:	02801c05 	li.w        	$a1, 7
 8ec:	00150077 	move        	$s0, $sp
 8f0:	001502e4 	move        	$a0, $s0
 8f4:	57ff4bff 	bl          	-184	# 83c <bubble_sort>
 8f8:	1a000024 	pcalau12i   	$a0, 1
 8fc:	02e54084 	addi.d      	$a0, $a0, -1712
 900:	57fdb3ff 	bl          	-592	# 6b0 <puts@plt>
 904:	02c07079 	addi.d      	$s2, $sp, 28
 908:	1a000038 	pcalau12i   	$s1, 1
 90c:	02e58318 	addi.d      	$s1, $s1, -1696
 910:	240002e5 	ldptr.w     	$a1, $s0, 0
 914:	00150304 	move        	$a0, $s1
 918:	57fd7bff 	bl          	-648	# 690 <printf@plt>
 91c:	02c012f7 	addi.d      	$s0, $s0, 4
 920:	5ffff2f9 	bne         	$s0, $s2, -16	# 910 <main+0x64>
 924:	02802804 	li.w        	$a0, 10
 928:	57fd7bff 	bl          	-648	# 6a0 <putchar@plt>
 92c:	00150004 	move        	$a0, $zero
 930:	28c0e061 	ld.d        	$ra, $sp, 56
 934:	28c0c077 	ld.d        	$s0, $sp, 48
 938:	28c0a078 	ld.d        	$s1, $sp, 40
 93c:	28c08079 	ld.d        	$s2, $sp, 32
 940:	02c10063 	addi.d      	$sp, $sp, 64
 944:	4c000020 	ret         
