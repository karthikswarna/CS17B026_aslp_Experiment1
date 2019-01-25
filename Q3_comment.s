	.file	"arrop.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp  ; stack[top-0] <- [0x7fffffffdd30] 
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp ; rbp <- [rsp]
	.cfi_def_cfa_register 6
	sub	rsp, 80 ; rsp <- rsp - 80 ; rsp = 0x7fffffffdce0
	mov	DWORD PTR [rbp-68], edi ; [rbp -68] <- [edi] 
	mov	QWORD PTR [rbp-80], rsi ; [rbp -80] <- [rsi]  
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax ; [rbp -8] <- [rax] 
	xor	eax, eax
	mov	DWORD PTR [rbp-48], 2 ; [rbp -48] <- [2] 
	mov	DWORD PTR [rbp-44], 3 ; [rbp -44] <- [3]  
	mov	DWORD PTR [rbp-40], 4 ; [rbp -40] <- [4]  
	mov	DWORD PTR [rbp-36], 5 ; [rbp -36] <- [5]  
	mov	DWORD PTR [rbp-32], 6 ; [rbp -32] <- [6]  
	mov	DWORD PTR [rbp-28], 5 ; [rbp -28] <- [5]  
	mov	DWORD PTR [rbp-24], 4 ; [rbp -24] <- [4]  
	mov	DWORD PTR [rbp-20], 3 ; [rbp -20] <- [3]  
	mov	DWORD PTR [rbp-16], 2 ; [rbp -16] <- [2] 
	mov	DWORD PTR [rbp-12], 1 ; [rbp -12] <- [1]  
	mov	DWORD PTR [rbp-52], 0 ; [rbp -52] <- [0] 
	jmp	.L2
.L3:
	mov	eax, DWORD PTR [rbp-52] ; [eax] <- [rbp-52]  
	cdqe
	mov	eax, DWORD PTR [rbp-48+rax*4] ; 
	lea	edx, [rax+3]
	mov	eax, DWORD PTR [rbp-52] ; [eax] <- [rbp-52]
	cdqe
	mov	DWORD PTR [rbp-48+rax*4], edx ; 
	add	DWORD PTR [rbp-52], 1 ; [rbp-52] <- [rbp-52] + 1
.L2:
	cmp	DWORD PTR [rbp-52], 9 ; Compare [rbp-52] with 9
	jle	.L3
	mov	eax, 0 : eax <- 0
	mov	rcx, QWORD PTR [rbp-8] ; rcx <- [rbp-8]
	xor	rcx, QWORD PTR fs:40 ; rcx XOR fs:40
	je	.L5
	call	__stack_chk_fail
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
.section	.note.GNU-stack,"",@progbits
