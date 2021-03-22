	.file	"Code_9.c"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$0, %eax
	movl	$0, -4(%ebp)
	movl	%eax, -8(%ebp)          # 4-byte Spill
	calll	C1
	movl	%eax, -12(%ebp)         # 4-byte Spill
	calll	C2
	movl	%eax, -16(%ebp)         # 4-byte Spill
	calll	C3
	movl	%eax, -20(%ebp)         # 4-byte Spill
	movl	-8(%ebp), %eax          # 4-byte Reload
	addl	$24, %esp
	popl	%ebp
	ret
.Ltmp0:
	.size	main, .Ltmp0-main

	.globl	C1
	.align	16, 0x90
	.type	C1,@function
C1:                                     # @C1
# BB#0:
	subl	$8, %esp
	movl	$0, 4(%esp)
	movl	$0, (%esp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%esp), %eax
	cmpl	$50, %eax
	jge	.LBB1_4
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	4(%esp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
# BB#3:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	(%esp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	jmp	.LBB1_1
.LBB1_4:
	movl	$0, %eax
	addl	$8, %esp
	ret
.Ltmp1:
	.size	C1, .Ltmp1-C1

	.globl	C2
	.align	16, 0x90
	.type	C2,@function
C2:                                     # @C2
# BB#0:
	subl	$20, %esp
	movl	$0, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, 8(%esp)
	movl	$0, 4(%esp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	4(%esp), %eax
	cmpl	$500, %eax              # imm = 0x1F4
	jge	.LBB2_4
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	$1, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	8(%esp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%esp)
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	4(%esp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB2_1
.LBB2_4:
	movl	$0, %eax
	addl	$20, %esp
	ret
.Ltmp2:
	.size	C2, .Ltmp2-C2

	.globl	C3
	.align	16, 0x90
	.type	C3,@function
C3:                                     # @C3
# BB#0:
	subl	$12, %esp
	movb	$99, 11(%esp)
	movl	$0, 4(%esp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	4(%esp), %eax
	cmpl	$5000, %eax             # imm = 0x1388
	jge	.LBB3_4
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movb	11(%esp), %al
	movb	%al, 3(%esp)
# BB#3:                                 #   in Loop: Header=BB3_1 Depth=1
	movl	4(%esp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB3_1
.LBB3_4:
	movl	$0, %eax
	addl	$12, %esp
	ret
.Ltmp3:
	.size	C3, .Ltmp3-C3


	.section	".note.GNU-stack","",@progbits
