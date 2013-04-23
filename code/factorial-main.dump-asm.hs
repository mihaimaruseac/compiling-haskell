sAk_info:
.LcCa:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .LcCc
	addq $48,%r12
	cmpq 144(%r13),%r12
	ja .LcCe
	movq $stg_CAF_BLACKHOLE_info,-40(%r12)
	movq 160(%r13),%rax
	movq %rax,-32(%r12)
	movq %r13,%rdi
	movq %rbx,%rsi
	leaq -40(%r12),%rdx
	subq $8,%rsp
	movl $0,%eax
	call newCAF
	addq $8,%rsp
	testq %rax,%rax
	je .LcCf
.LcCg:
	movq $stg_bh_upd_frame_info,-16(%rbp)
	leaq -40(%r12),%rax
	movq %rax,-8(%rbp)
	movq $sAb_info,-24(%r12)
	movq $integerzmgmp_GHCziIntegerziType_Szh_con_info,-8(%r12)
	movq $5,0(%r12)
	leaq -23(%r12),%rbx
	leaq -7(%r12),%r14
	addq $-16,%rbp
	jmp sAb_info
.LcCe:
	movq $48,192(%r13)
.LcCc:
	jmp *-16(%r13)
.LcCf:
	jmp *(%rbx)
	.size sAk_info, .-sAk_info
.section .data
	.align 8
