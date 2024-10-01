
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

00000000000006d0 <main>:
 6d0:	1a00002c 	pcalau12i   	$t0, 1
 6d4:	02e5818c 	addi.d      	$t0, $t0, -1696
 6d8:	02ff0063 	addi.d      	$sp, $sp, -64
 6dc:	2600018f 	ldptr.d     	$t3, $t0, 0
 6e0:	28c0218e 	ld.d        	$t2, $t0, 8
 6e4:	28c0418d 	ld.d        	$t1, $t0, 16
 6e8:	2400198c 	ldptr.w     	$t0, $t0, 24
 6ec:	29c0c077 	st.d        	$s0, $sp, 48
 6f0:	00150077 	move        	$s0, $sp
 6f4:	02801c05 	li.w        	$a1, 7
 6f8:	001502e4 	move        	$a0, $s0
 6fc:	29c0e061 	st.d        	$ra, $sp, 56
 700:	29c0a078 	st.d        	$s1, $sp, 40
 704:	29c08079 	st.d        	$s2, $sp, 32
 708:	2700006f 	stptr.d     	$t3, $sp, 0
 70c:	29c0206e 	st.d        	$t2, $sp, 8
 710:	29c0406d 	st.d        	$t1, $sp, 16
 714:	2980606c 	st.w        	$t0, $sp, 24
 718:	5401c400 	bl          	452	# 8dc <bubble_sort>
 71c:	1a000024 	pcalau12i   	$a0, 1
 720:	02e52084 	addi.d      	$a0, $a0, -1720
 724:	1a000038 	pcalau12i   	$s1, 1
 728:	57ff8bff 	bl          	-120	# 6b0 <puts@plt>
 72c:	02c07079 	addi.d      	$s2, $sp, 28
 730:	02e56318 	addi.d      	$s1, $s1, -1704
 734:	240002e5 	ldptr.w     	$a1, $s0, 0
 738:	00150304 	move        	$a0, $s1
 73c:	02c012f7 	addi.d      	$s0, $s0, 4
 740:	57ff53ff 	bl          	-176	# 690 <printf@plt>
 744:	5ffff2f9 	bne         	$s0, $s2, -16	# 734 <main+0x64>
 748:	02802804 	li.w        	$a0, 10
 74c:	57ff57ff 	bl          	-172	# 6a0 <putchar@plt>
 750:	28c0e061 	ld.d        	$ra, $sp, 56
 754:	28c0c077 	ld.d        	$s0, $sp, 48
 758:	28c0a078 	ld.d        	$s1, $sp, 40
 75c:	28c08079 	ld.d        	$s2, $sp, 32
 760:	00150004 	move        	$a0, $zero
 764:	02c10063 	addi.d      	$sp, $sp, 64
 768:	4c000020 	ret         
 76c:	03400000 	nop         

0000000000000770 <_start>:
 770:	00150089 	move        	$a5, $a0
 774:	1a000104 	pcalau12i   	$a0, 8
 778:	02c1400c 	li.d        	$t0, 80
 77c:	1600000c 	lu32i.d     	$t0, 0
 780:	0300018c 	lu52i.d     	$t0, $t0, 0
 784:	380c3084 	ldx.d       	$a0, $a0, $t0
 788:	28c00065 	ld.d        	$a1, $sp, 0
 78c:	02c02066 	addi.d      	$a2, $sp, 8
 790:	00830003 	bstrins.d   	$sp, $zero, 0x3, 0x0
 794:	00150007 	move        	$a3, $zero
 798:	00150008 	move        	$a4, $zero
 79c:	0015006a 	move        	$a6, $sp
 7a0:	1a000101 	pcalau12i   	$ra, 8
 7a4:	02c1000c 	li.d        	$t0, 64
 7a8:	1600000c 	lu32i.d     	$t0, 0
 7ac:	0300018c 	lu52i.d     	$t0, $t0, 0
 7b0:	380c3021 	ldx.d       	$ra, $ra, $t0
 7b4:	4c000021 	jirl        	$ra, $ra, 0
 7b8:	1a000101 	pcalau12i   	$ra, 8
 7bc:	02c1200c 	li.d        	$t0, 72
 7c0:	1600000c 	lu32i.d     	$t0, 0
 7c4:	0300018c 	lu52i.d     	$t0, $t0, 0
 7c8:	380c3021 	ldx.d       	$ra, $ra, $t0
 7cc:	4c000021 	jirl        	$ra, $ra, 0

00000000000007d0 <deregister_tm_clones>:
 7d0:	02ffc063 	addi.d      	$sp, $sp, -16
 7d4:	29c02076 	st.d        	$fp, $sp, 8
 7d8:	1a000104 	pcalau12i   	$a0, 8
 7dc:	02c04076 	addi.d      	$fp, $sp, 16
 7e0:	1a00010c 	pcalau12i   	$t0, 8
 7e4:	02c0c084 	addi.d      	$a0, $a0, 48
 7e8:	02c0c18c 	addi.d      	$t0, $t0, 48
 7ec:	58001d84 	beq         	$t0, $a0, 28	# 808 <deregister_tm_clones+0x38>
 7f0:	1a00010c 	pcalau12i   	$t0, 8
 7f4:	28c0e18c 	ld.d        	$t0, $t0, 56
 7f8:	40001180 	beqz        	$t0, 16	# 808 <deregister_tm_clones+0x38>
 7fc:	28c02076 	ld.d        	$fp, $sp, 8
 800:	02c04063 	addi.d      	$sp, $sp, 16
 804:	4c000180 	jr          	$t0
 808:	28c02076 	ld.d        	$fp, $sp, 8
 80c:	02c04063 	addi.d      	$sp, $sp, 16
 810:	4c000020 	ret         

0000000000000814 <register_tm_clones>:
 814:	1a000104 	pcalau12i   	$a0, 8
 818:	1a00010c 	pcalau12i   	$t0, 8
 81c:	02c0c084 	addi.d      	$a0, $a0, 48
 820:	02c0c185 	addi.d      	$a1, $t0, 48
 824:	001190a5 	sub.d       	$a1, $a1, $a0
 828:	02ffc063 	addi.d      	$sp, $sp, -16
 82c:	00490cac 	srai.d      	$t0, $a1, 0x3
 830:	0045fca5 	srli.d      	$a1, $a1, 0x3f
 834:	29c02076 	st.d        	$fp, $sp, 8
 838:	0010b0a5 	add.d       	$a1, $a1, $t0
 83c:	02c04076 	addi.d      	$fp, $sp, 16
 840:	004904a5 	srai.d      	$a1, $a1, 0x1
 844:	40001ca0 	beqz        	$a1, 28	# 860 <register_tm_clones+0x4c>
 848:	1a00010c 	pcalau12i   	$t0, 8
 84c:	28c1618c 	ld.d        	$t0, $t0, 88
 850:	40001180 	beqz        	$t0, 16	# 860 <register_tm_clones+0x4c>
 854:	28c02076 	ld.d        	$fp, $sp, 8
 858:	02c04063 	addi.d      	$sp, $sp, 16
 85c:	4c000180 	jr          	$t0
 860:	28c02076 	ld.d        	$fp, $sp, 8
 864:	02c04063 	addi.d      	$sp, $sp, 16
 868:	4c000020 	ret         

000000000000086c <__do_global_dtors_aux>:
 86c:	02ff8063 	addi.d      	$sp, $sp, -32
 870:	29c04076 	st.d        	$fp, $sp, 16
 874:	29c02077 	st.d        	$s0, $sp, 8
 878:	29c06061 	st.d        	$ra, $sp, 24
 87c:	02c08076 	addi.d      	$fp, $sp, 32
 880:	1a000117 	pcalau12i   	$s0, 8
 884:	2a01c2ec 	ld.bu       	$t0, $s0, 112
 888:	44002980 	bnez        	$t0, 40	# 8b0 <__do_global_dtors_aux+0x44>
 88c:	1a00010c 	pcalau12i   	$t0, 8
 890:	28c1818c 	ld.d        	$t0, $t0, 96
 894:	40001180 	beqz        	$t0, 16	# 8a4 <__do_global_dtors_aux+0x38>
 898:	1a00010c 	pcalau12i   	$t0, 8
 89c:	28c1a184 	ld.d        	$a0, $t0, 104
 8a0:	57fe23ff 	bl          	-480	# 6c0 <__cxa_finalize@plt>
 8a4:	57ff2fff 	bl          	-212	# 7d0 <deregister_tm_clones>
 8a8:	0280040c 	li.w        	$t0, 1
 8ac:	2901c2ec 	st.b        	$t0, $s0, 112
 8b0:	28c06061 	ld.d        	$ra, $sp, 24
 8b4:	28c04076 	ld.d        	$fp, $sp, 16
 8b8:	28c02077 	ld.d        	$s0, $sp, 8
 8bc:	02c08063 	addi.d      	$sp, $sp, 32
 8c0:	4c000020 	ret         

00000000000008c4 <frame_dummy>:
 8c4:	02ffc063 	addi.d      	$sp, $sp, -16
 8c8:	29c02076 	st.d        	$fp, $sp, 8
 8cc:	02c04076 	addi.d      	$fp, $sp, 16
 8d0:	28c02076 	ld.d        	$fp, $sp, 8
 8d4:	02c04063 	addi.d      	$sp, $sp, 16
 8d8:	53ff3fff 	b           	-196	# 814 <register_tm_clones>

00000000000008dc <bubble_sort>:
 8dc:	0280040c 	li.w        	$t0, 1
 8e0:	64004d85 	bge         	$t0, $a1, 76	# 92c <bubble_sort+0x50>
 8e4:	004080b0 	slli.w      	$t4, $a1, 0x0
 8e8:	02c01092 	addi.d      	$t6, $a0, 4
 8ec:	02800411 	li.w        	$t5, 1
 8f0:	64004630 	bge         	$t5, $t4, 68	# 934 <bubble_sort+0x58>
 8f4:	02bffa0f 	addi.w      	$t3, $t4, -2
 8f8:	00df01ef 	bstrpick.d  	$t3, $t3, 0x1f, 0x0
 8fc:	002c81ef 	alsl.d      	$t3, $t3, $zero, 0x2
 900:	0015008c 	move        	$t0, $a0
 904:	0010c9ef 	add.d       	$t3, $t3, $t6
 908:	2400018d 	ldptr.w     	$t1, $t0, 0
 90c:	2400058e 	ldptr.w     	$t2, $t0, 4
 910:	64000dcd 	bge         	$t2, $t1, 12	# 91c <bubble_sort+0x40>
 914:	2500018e 	stptr.w     	$t2, $t0, 0
 918:	2980118d 	st.w        	$t1, $t0, 4
 91c:	02c0118c 	addi.d      	$t0, $t0, 4
 920:	5fffe98f 	bne         	$t0, $t3, -24	# 908 <bubble_sort+0x2c>
 924:	02bffe10 	addi.w      	$t4, $t4, -1
 928:	5fffca11 	bne         	$t4, $t5, -56	# 8f0 <bubble_sort+0x14>
 92c:	00150004 	move        	$a0, $zero
 930:	4c000020 	ret         
 934:	02bffe10 	addi.w      	$t4, $t4, -1
 938:	53ffbbff 	b           	-72	# 8f0 <bubble_sort+0x14>
