	.arch armv8-a
	.file	"main.c"
	.text
	.section	.rodata
	.align	3
.LC13:
	.string	"Total bytes occupied by namesArray: %zu\n\n"
	.align	3
.LC14:
	.string	"Size of [%s] = %ld \n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -128
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	add	x0, sp, 40
	ldr	q27, [x1]
	ldr	q28, [x1, 16]
	ldr	q29, [x1, 32]
	ldr	q30, [x1, 48]
	ldr	q31, [x1, 64]
	ldr	x1, [x1, 80]
	str	q27, [x0]
	str	q28, [x0, 16]
	str	q29, [x0, 32]
	str	q30, [x0, 48]
	str	q31, [x0, 64]
	str	x1, [x0, 80]
	mov	x0, 88
	str	x0, [sp, 128]
	ldr	x1, [sp, 128]
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	printf
	str	wzr, [sp, 140]
	b	.L2
.L3:
	ldrsw	x0, [sp, 140]
	lsl	x0, x0, 3
	add	x1, sp, 40
	add	x0, x1, x0
	ldr	x19, [x0]
	ldrsw	x0, [sp, 140]
	lsl	x0, x0, 3
	add	x1, sp, 40
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	mov	x2, x0
	mov	x1, x19
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	printf
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
.L2:
	ldr	w0, [sp, 140]
	cmp	w0, 10
	bls	.L3
	mov	w0, 10
	bl	putchar
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"January"
	.align	3
.LC1:
	.string	"February"
	.align	3
.LC2:
	.string	"March"
	.align	3
.LC3:
	.string	"April"
	.align	3
.LC4:
	.string	"May"
	.align	3
.LC5:
	.string	"June"
	.align	3
.LC6:
	.string	"July"
	.align	3
.LC7:
	.string	"August"
	.align	3
.LC8:
	.string	"September"
	.align	3
.LC9:
	.string	"November"
	.align	3
.LC10:
	.string	"December"
	.align	3
.LC12:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.xword	.LC10
	.text
	.ident	"GCC: (GNU) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
