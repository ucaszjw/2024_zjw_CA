
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
 83c:	02ff4063 	addi.d      	$sp, $sp, -48
 840:	29c0a076 	st.d        	$fp, $sp, 40
 844:	02c0c076 	addi.d      	$fp, $sp, 48
 848:	29ff62c4 	st.d        	$a0, $fp, -40
 84c:	001500ac 	move        	$t0, $a1
 850:	29bf52cc 	st.w        	$t0, $fp, -44
 854:	29bfb2c0 	st.w        	$zero, $fp, -20
 858:	5000dc00 	b           	220	# 934 <bubble_sort+0xf8>
 85c:	29bfa2c0 	st.w        	$zero, $fp, -24
 860:	5000a400 	b           	164	# 904 <bubble_sort+0xc8>
 864:	24ffeacc 	ldptr.w     	$t0, $fp, -24
 868:	0041098c 	slli.d      	$t0, $t0, 0x2
 86c:	28ff62cd 	ld.d        	$t1, $fp, -40
 870:	0010b1ac 	add.d       	$t0, $t1, $t0
 874:	2400018e 	ldptr.w     	$t2, $t0, 0
 878:	24ffeacc 	ldptr.w     	$t0, $fp, -24
 87c:	02c0058c 	addi.d      	$t0, $t0, 1
 880:	0041098c 	slli.d      	$t0, $t0, 0x2
 884:	28ff62cd 	ld.d        	$t1, $fp, -40
 888:	0010b1ac 	add.d       	$t0, $t1, $t0
 88c:	2400018c 	ldptr.w     	$t0, $t0, 0
 890:	001501cd 	move        	$t1, $t2
 894:	6400658d 	bge         	$t0, $t1, 100	# 8f8 <bubble_sort+0xbc>
 898:	24ffeacc 	ldptr.w     	$t0, $fp, -24
 89c:	0041098c 	slli.d      	$t0, $t0, 0x2
 8a0:	28ff62cd 	ld.d        	$t1, $fp, -40
 8a4:	0010b1ac 	add.d       	$t0, $t1, $t0
 8a8:	2400018c 	ldptr.w     	$t0, $t0, 0
 8ac:	29bf92cc 	st.w        	$t0, $fp, -28
 8b0:	24ffeacc 	ldptr.w     	$t0, $fp, -24
 8b4:	02c0058c 	addi.d      	$t0, $t0, 1
 8b8:	0041098c 	slli.d      	$t0, $t0, 0x2
 8bc:	28ff62cd 	ld.d        	$t1, $fp, -40
 8c0:	0010b1ad 	add.d       	$t1, $t1, $t0
 8c4:	24ffeacc 	ldptr.w     	$t0, $fp, -24
 8c8:	0041098c 	slli.d      	$t0, $t0, 0x2
 8cc:	28ff62ce 	ld.d        	$t2, $fp, -40
 8d0:	0010b1cc 	add.d       	$t0, $t2, $t0
 8d4:	240001ad 	ldptr.w     	$t1, $t1, 0
 8d8:	2500018d 	stptr.w     	$t1, $t0, 0
 8dc:	24ffeacc 	ldptr.w     	$t0, $fp, -24
 8e0:	02c0058c 	addi.d      	$t0, $t0, 1
 8e4:	0041098c 	slli.d      	$t0, $t0, 0x2
 8e8:	28ff62cd 	ld.d        	$t1, $fp, -40
 8ec:	0010b1ac 	add.d       	$t0, $t1, $t0
 8f0:	28bf92cd 	ld.w        	$t1, $fp, -28
 8f4:	2500018d 	stptr.w     	$t1, $t0, 0
 8f8:	28bfa2cc 	ld.w        	$t0, $fp, -24
 8fc:	0280058c 	addi.w      	$t0, $t0, 1
 900:	29bfa2cc 	st.w        	$t0, $fp, -24
 904:	28bf52cd 	ld.w        	$t1, $fp, -44
 908:	28bfb2cc 	ld.w        	$t0, $fp, -20
 90c:	001131ac 	sub.w       	$t0, $t1, $t0
 910:	0040818c 	slli.w      	$t0, $t0, 0x0
 914:	02bffd8c 	addi.w      	$t0, $t0, -1
 918:	0040818d 	slli.w      	$t1, $t0, 0x0
 91c:	28bfa2cc 	ld.w        	$t0, $fp, -24
 920:	0040818c 	slli.w      	$t0, $t0, 0x0
 924:	63ff418d 	blt         	$t0, $t1, -192	# 864 <bubble_sort+0x28>
 928:	28bfb2cc 	ld.w        	$t0, $fp, -20
 92c:	0280058c 	addi.w      	$t0, $t0, 1
 930:	29bfb2cc 	st.w        	$t0, $fp, -20
 934:	28bf52cc 	ld.w        	$t0, $fp, -44
 938:	02bffd8c 	addi.w      	$t0, $t0, -1
 93c:	0040818d 	slli.w      	$t1, $t0, 0x0
 940:	28bfb2cc 	ld.w        	$t0, $fp, -20
 944:	0040818c 	slli.w      	$t0, $t0, 0x0
 948:	63ff158d 	blt         	$t0, $t1, -236	# 85c <bubble_sort+0x20>
 94c:	0015000c 	move        	$t0, $zero
 950:	00150184 	move        	$a0, $t0
 954:	28c0a076 	ld.d        	$fp, $sp, 40
 958:	02c0c063 	addi.d      	$sp, $sp, 48
 95c:	4c000020 	ret         

0000000000000960 <main>:
 960:	02ff0063 	addi.d      	$sp, $sp, -64
 964:	29c0e061 	st.d        	$ra, $sp, 56
 968:	29c0c076 	st.d        	$fp, $sp, 48
 96c:	02c10076 	addi.d      	$fp, $sp, 64
 970:	1a00002c 	pcalau12i   	$t0, 1
 974:	02e9418c 	addi.d      	$t0, $t0, -1456
 978:	2600018f 	ldptr.d     	$t3, $t0, 0
 97c:	28c0218e 	ld.d        	$t2, $t0, 8
 980:	28c0418d 	ld.d        	$t1, $t0, 16
 984:	29ff22cf 	st.d        	$t3, $fp, -56
 988:	29ff42ce 	st.d        	$t2, $fp, -48
 98c:	29ff62cd 	st.d        	$t1, $fp, -40
 990:	2880618c 	ld.w        	$t0, $t0, 24
 994:	29bf82cc 	st.w        	$t0, $fp, -32
 998:	02801c0c 	li.w        	$t0, 7
 99c:	29bfa2cc 	st.w        	$t0, $fp, -24
 9a0:	24ffeacc 	ldptr.w     	$t0, $fp, -24
 9a4:	02ff22cd 	addi.d      	$t1, $fp, -56
 9a8:	00150185 	move        	$a1, $t0
 9ac:	001501a4 	move        	$a0, $t1
 9b0:	57fe8fff 	bl          	-372	# 83c <bubble_sort>
 9b4:	1a00002c 	pcalau12i   	$t0, 1
 9b8:	02e8e184 	addi.d      	$a0, $t0, -1480
 9bc:	57fcf7ff 	bl          	-780	# 6b0 <puts@plt>
 9c0:	29bfb2c0 	st.w        	$zero, $fp, -20
 9c4:	50003400 	b           	52	# 9f8 <main+0x98>
 9c8:	24ffeecc 	ldptr.w     	$t0, $fp, -20
 9cc:	0041098c 	slli.d      	$t0, $t0, 0x2
 9d0:	02ffc18c 	addi.d      	$t0, $t0, -16
 9d4:	0010d98c 	add.d       	$t0, $t0, $fp
 9d8:	24ffd98c 	ldptr.w     	$t0, $t0, -40
 9dc:	00150185 	move        	$a1, $t0
 9e0:	1a00002c 	pcalau12i   	$t0, 1
 9e4:	02e92184 	addi.d      	$a0, $t0, -1464
 9e8:	57fcabff 	bl          	-856	# 690 <printf@plt>
 9ec:	28bfb2cc 	ld.w        	$t0, $fp, -20
 9f0:	0280058c 	addi.w      	$t0, $t0, 1
 9f4:	29bfb2cc 	st.w        	$t0, $fp, -20
 9f8:	28bfb2cd 	ld.w        	$t1, $fp, -20
 9fc:	28bfa2cc 	ld.w        	$t0, $fp, -24
 a00:	004081ad 	slli.w      	$t1, $t1, 0x0
 a04:	0040818c 	slli.w      	$t0, $t0, 0x0
 a08:	63ffc1ac 	blt         	$t1, $t0, -64	# 9c8 <main+0x68>
 a0c:	02802804 	li.w        	$a0, 10
 a10:	57fc93ff 	bl          	-880	# 6a0 <putchar@plt>
 a14:	0015000c 	move        	$t0, $zero
 a18:	00150184 	move        	$a0, $t0
 a1c:	28c0e061 	ld.d        	$ra, $sp, 56
 a20:	28c0c076 	ld.d        	$fp, $sp, 48
 a24:	02c10063 	addi.d      	$sp, $sp, 64
 a28:	4c000020 	ret         
