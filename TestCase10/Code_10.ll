	.file	"Code_10.c"
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
	subl	$12, %esp
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	4(%esp), %eax
	cmpl	$500000, %eax           # imm = 0x7A120
	jge	.LBB1_4
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	8(%esp), %eax
	movl	%eax, (%esp)
# BB#3:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	4(%esp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	jmp	.LBB1_1
.LBB1_4:
	movl	$0, %eax
	addl	$12, %esp
	ret
.Ltmp1:
	.size	C1, .Ltmp1-C1

	.globl	C2
	.align	16, 0x90
	.type	C2,@function
C2:                                     # @C2
# BB#0:
	subl	$8, %esp
	movl	$0, 4(%esp)
	movl	$0, (%esp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%esp), %eax
	cmpl	$50000, %eax            # imm = 0xC350
	jge	.LBB2_4
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	4(%esp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	(%esp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	jmp	.LBB2_1
.LBB2_4:
	movl	$0, %eax
	addl	$8, %esp
	ret
.Ltmp2:
	.size	C2, .Ltmp2-C2


	.section	".note.GNU-stack","",@progbits
