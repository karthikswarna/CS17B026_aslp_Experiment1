	.file	"arr_swap.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp                      ;stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp                 ;[rbp] <- [rsp]
	.cfi_def_cfa_register 6
	sub	rsp, 80                  ;[rsp] <- 80
	mov	DWORD PTR [rbp-68], edi  ;[rbp-68] <- [edi]
	mov	QWORD PTR [rbp-80], rsi  ;[rbp-80] <- [rsi]
	mov	rax, QWORD PTR fs:40     ;[rax] <- [fs:40]
	mov	QWORD PTR [rbp-8], rax	 ;[rbp-8] <- [rax]
	xor	eax, eax		 
	mov	DWORD PTR [rbp-48], 1	 ;[rbp-48] <- 1
	mov	DWORD PTR [rbp-44], 2	 ;[rbp-44] <- 2
	mov	DWORD PTR [rbp-40], 3	 ;[rbp-40] <- 3
	mov	DWORD PTR [rbp-36], 4	 ;[rbp-36] <- 4
	mov	DWORD PTR [rbp-32], 5	 ;[rbp-32] <- 5
	mov	DWORD PTR [rbp-28], 6	 ;[rbp-28] <- 6
	mov	DWORD PTR [rbp-24], 7	 ;[rbp-24] <- 7
	mov	eax, DWORD PTR [rbp-44]	 ;[eax] <- [rbp-44] ;[eax] <- 2 
	mov	DWORD PTR [rbp-52], eax  ;[rbp-52] <- [eax] ;[rbp-52] <- 2
	mov	eax, DWORD PTR [rbp-32]	 ;[eax] <- [rbp-32] ;[eax] <- 5
	mov	DWORD PTR [rbp-44], eax  ;[rbp-44] <- [eax] ;[rbp-44] <- 5
	mov	eax, DWORD PTR [rbp-52]  ;[eax] <- [rbp-52] ;[eax] <- 2 
	mov	DWORD PTR [rbp-32], eax  ;[rbp-32] <- [eax] ;[rbp-32] <- 2
	mov	eax, 0			 ;[eax] <- 0        
	mov	rdx, QWORD PTR [rbp-8]   ;[rdx] <- [rbp-8]
	xor	rdx, QWORD PTR fs:40     ;[rdx] <- [fs:40]
	je	.L3
	call	__stack_chk_fail
.L3:
	leave				 ;the stack frame is removed corresponding to the function
	.cfi_def_cfa 7, 8
	ret				 ;the function is returned to main using rbp
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
	
	
	
