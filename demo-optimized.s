	.arch armv5
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"demo-optimized.c"
	.text
	.align	2
	.global	insertionSort
	.type	insertionSort, %function
insertionSort:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2
.L6:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L3
.L5:
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r1, r3
	bge	.L4
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r1, r3, r2
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [r1, #0]
	ldr	r3, [fp, #-12]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r2, r3, r2
	ldr	r3, [fp, #-8]
	str	r3, [r2, #0]
.L4:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L3:
	ldr	r3, [fp, #-12]
	cmp	r3, #25
	ble	.L5
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-16]
	cmp	r3, #25
	ble	.L6
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	insertionSort, .-insertionSort
	.align	2
	.global	getFrequency
	.type	getFrequency, %function
getFrequency:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L9
.L38:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #97
	cmp	r3, #25
	ldrls	pc, [pc, r3, asl #2]
	b	.L10
.L37:
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
	.word	.L24
	.word	.L25
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L32
	.word	.L33
	.word	.L34
	.word	.L35
	.word	.L36
.L11:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L10
.L12:
	ldr	r3, [fp, #-20]
	add	r2, r3, #4
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L13:
	ldr	r3, [fp, #-20]
	add	r2, r3, #8
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L14:
	ldr	r3, [fp, #-20]
	add	r2, r3, #12
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L15:
	ldr	r3, [fp, #-20]
	add	r2, r3, #16
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L16:
	ldr	r3, [fp, #-20]
	add	r2, r3, #20
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L17:
	ldr	r3, [fp, #-20]
	add	r2, r3, #24
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L18:
	ldr	r3, [fp, #-20]
	add	r2, r3, #28
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L19:
	ldr	r3, [fp, #-20]
	add	r2, r3, #32
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L20:
	ldr	r3, [fp, #-20]
	add	r2, r3, #36
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L21:
	ldr	r3, [fp, #-20]
	add	r2, r3, #40
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L22:
	ldr	r3, [fp, #-20]
	add	r2, r3, #44
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L23:
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L24:
	ldr	r3, [fp, #-20]
	add	r2, r3, #52
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L25:
	ldr	r3, [fp, #-20]
	add	r2, r3, #56
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L26:
	ldr	r3, [fp, #-20]
	add	r2, r3, #60
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L27:
	ldr	r3, [fp, #-20]
	add	r2, r3, #64
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L28:
	ldr	r3, [fp, #-20]
	add	r2, r3, #68
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L29:
	ldr	r3, [fp, #-20]
	add	r2, r3, #72
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L30:
	ldr	r3, [fp, #-20]
	add	r2, r3, #76
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L31:
	ldr	r3, [fp, #-20]
	add	r2, r3, #80
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L32:
	ldr	r3, [fp, #-20]
	add	r2, r3, #84
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L33:
	ldr	r3, [fp, #-20]
	add	r2, r3, #88
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L34:
	ldr	r3, [fp, #-20]
	add	r2, r3, #92
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L35:
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L10
.L36:
	ldr	r3, [fp, #-20]
	add	r2, r3, #100
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
.L10:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L9:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L38
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	getFrequency, .-getFrequency
	.align	2
	.global	optimal_encoding
	.type	optimal_encoding, %function
optimal_encoding:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L41
.L47:
	.word	.L42
	.word	.L43
	.word	.L44
	.word	.L45
	.word	.L46
.L42:
	ldr	r2, [fp, #-8]
	mov	r3, #0
	str	r3, [r2, #0]
	b	.L49
.L43:
	ldr	r2, [fp, #-8]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	mov	r3, #1
	str	r3, [r2, #0]
	b	.L49
.L44:
	ldr	r2, [fp, #-8]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #8
	mov	r3, #3
	str	r3, [r2, #0]
	b	.L49
.L45:
	ldr	r2, [fp, #-8]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #8
	mov	r3, #3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #12
	mov	r3, #7
	str	r3, [r2, #0]
	b	.L49
.L46:
	ldr	r2, [fp, #-8]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #8
	mov	r3, #3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #12
	mov	r3, #2
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #16
	mov	r3, #6
	str	r3, [r2, #0]
	b	.L49
.L41:
	ldr	r2, [fp, #-8]
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	mov	r3, #5
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #8
	mov	r3, #12
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #12
	mov	r3, #7
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #16
	mov	r3, #10
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #20
	mov	r3, #14
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #24
	mov	r3, #2
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #28
	mov	r3, #11
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #32
	mov	r3, #3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #36
	mov	r3, #8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #40
	mov	r3, #15
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #44
	mov	r3, #31
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #48
	mov	r3, #4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #52
	mov	r3, #20
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #56
	mov	r3, #16
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #60
	mov	r3, #38
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #64
	mov	r3, #32
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #68
	mov	r3, #6
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #72
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #76
	mov	r3, #54
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #80
	mov	r3, #48
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #84
	mov	r3, #22
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #88
	mov	r3, #214
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #92
	ldr	r3, .L50
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #96
	ldr	r3, .L50+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #100
	mov	r3, #86
	str	r3, [r2, #0]
.L49:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L51:
	.align	2
.L50:
	.word	342
	.word	470
	.size	optimal_encoding, .-optimal_encoding
	.align	2
	.global	safe_add
	.type	safe_add, %function
safe_add:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	mvn	r2, #-2147483648
	ldr	r3, [fp, #-12]
	mov	r2, r2, asr r3
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L53
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L54
.L53:
	mov	r3, #1
	str	r3, [fp, #-16]
.L54:
	ldr	r3, [fp, #-16]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	safe_add, .-safe_add
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%c isn't a valid input!\012\000"
	.text
	.align	2
	.global	checkValid
	.type	checkValid, %function
checkValid:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	mov	r3, #1
	strb	r3, [fp, #-9]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L57
.L60:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L58
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #122
	bls	.L59
.L58:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldr	r0, .L62
	mov	r1, r3
	bl	printf
	mov	r3, #0
	strb	r3, [fp, #-9]
.L59:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L57:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	blt	.L60
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L63:
	.align	2
.L62:
	.word	.LC0
	.size	checkValid, .-checkValid
	.section	.rodata
	.type	C.19.2752, %object
	.size	C.19.2752, 26
C.19.2752:
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.align	2
.LC1:
	.ascii	"Enter the alphabet letters to encode: \000"
	.align	2
.LC2:
	.ascii	"%s\000"
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.align	2
.LC3:
	.ascii	"\012\012Compression time: %0.4f microseconds\012\000"
	.align	2
.LC4:
	.ascii	"\012Press '1' to Decompress...\000"
	.align	2
.LC5:
	.ascii	"\012\000"
	.align	2
.LC6:
	.ascii	"1 \000"
	.align	2
.LC7:
	.ascii	" \000"
	.align	2
.LC8:
	.ascii	"%sis invalid. Please type a '1'\012\000"
	.align	2
.LC9:
	.ascii	"\012Original String:\011%s\012Length: %d characters"
	.ascii	" \012Original Size: %d bits\012Compressed Size: %d "
	.ascii	"bits\012\000"
	.align	2
.LC10:
	.ascii	"Decompressed String:\011%s\012\000"
	.align	2
.LC11:
	.ascii	"\012/**********************************************"
	.ascii	"***************************************************"
	.ascii	"/\012ERROR: Original and decompressed strings not t"
	.ascii	"he same\012The original string: %s \012The decompre"
	.ascii	"ssed string: %s\012\000"
	.align	2
.LC12:
	.ascii	"\012Decompression time: %0.4f microseconds\012\000"
	.align	2
.LC13:
	.ascii	"\012Total time: %0.4f microseconds\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #540
	sub	r3, fp, #244
	mov	r2, #104
	mov	r0, r3
	mov	r1, #0
	bl	memset
	mov	r0, #1024
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-248]
	ldr	r3, [fp, #-248]
	cmp	r3, #0
	bne	.L65
	mov	r0, #0
	str	r0, [fp, #-544]
	b	.L66
.L65:
	mov	r0, #1024
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	cmp	r3, #0
	bne	.L67
	mov	r1, #0
	str	r1, [fp, #-544]
	b	.L66
.L67:
	mov	r0, #1024
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-136]
	cmp	r3, #0
	bne	.L68
	mov	r2, #0
	str	r2, [fp, #-544]
	b	.L66
.L68:
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-120]
	mov	r3, #0
	str	r3, [fp, #-116]
	mov	r3, #1
	str	r3, [fp, #-112]
.L69:
	ldr	r0, .L232
	bl	printf
	ldr	r3, [fp, #-248]
	ldr	r0, .L232+4
	mov	r1, r3
	bl	scanf
	sub	r3, fp, #248
	mov	r0, r3
	bl	checkValid
	mov	r3, r0
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L69
	sub	r3, fp, #256
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	ldr	r3, [fp, #-248]
	sub	r2, fp, #244
	mov	r0, r3
	mov	r1, r2
	bl	getFrequency
	sub	r3, fp, #368
	mov	r2, #104
	mov	r0, r3
	mov	r1, #0
	bl	memset
	mov	r3, #0
	str	r3, [fp, #-108]
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L70
.L72:
	ldr	r3, [fp, #-132]
	mvn	r2, #223
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L71
	ldr	r3, [fp, #-108]
	add	r3, r3, #1
	str	r3, [fp, #-108]
.L71:
	ldr	r0, [fp, #-132]
	ldr	r3, [fp, #-132]
	mvn	r2, #223
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r2, .L232+8
	mov	r3, r0, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
.L70:
	ldr	r3, [fp, #-132]
	cmp	r3, #25
	ble	.L72
	ldr	r3, [fp, #-108]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-108]
	cmp	r3, #1
	bne	.L73
	ldr	r3, [fp, #-104]
	add	r3, r3, #1
	str	r3, [fp, #-104]
	b	.L74
.L73:
	ldr	r3, [fp, #-108]
	cmp	r3, #1
	ble	.L75
	ldr	r3, [fp, #-108]
	cmp	r3, #4
	bgt	.L75
	ldr	r3, [fp, #-104]
	sub	r3, r3, #1
	str	r3, [fp, #-104]
	b	.L74
.L75:
	ldr	r3, [fp, #-108]
	cmp	r3, #5
	bne	.L76
	ldr	r3, [fp, #-104]
	sub	r3, r3, #2
	str	r3, [fp, #-104]
	b	.L74
.L76:
	ldr	r3, [fp, #-108]
	cmp	r3, #14
	bgt	.L77
	mov	r3, #6
	str	r3, [fp, #-104]
	b	.L74
.L77:
	mov	r3, #10
	str	r3, [fp, #-104]
.L74:
	sub	r3, fp, #244
	mov	r0, r3
	bl	insertionSort
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L78
.L79:
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
.L78:
	ldr	r3, [fp, #-132]
	cmp	r3, #25
	ble	.L79
	sub	r0, fp, #392
	str	r0, [fp, #-548]
	ldr	r1, [fp, #-548]
	sub	r1, r1, #2
	str	r1, [fp, #-548]
	mov	r3, #0
	ldr	r2, [fp, #-548]
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, [fp, #-548]
	add	r3, r3, #2
	str	r3, [fp, #-548]
	mov	r3, #0
	ldr	ip, [fp, #-548]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-548]
	add	r0, r0, #2
	str	r0, [fp, #-548]
	mov	r3, #0
	ldr	r1, [fp, #-548]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-548]
	add	r2, r2, #2
	str	r2, [fp, #-548]
	mov	r3, #0
	ldr	ip, [fp, #-548]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-548]
	add	r0, r0, #2
	str	r0, [fp, #-548]
	mov	r3, #0
	ldr	r1, [fp, #-548]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-548]
	add	r2, r2, #2
	str	r2, [fp, #-548]
	mov	r3, #0
	ldr	ip, [fp, #-548]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-548]
	add	r0, r0, #2
	str	r0, [fp, #-548]
	mov	r3, #0
	ldr	r1, [fp, #-548]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-548]
	add	r2, r2, #2
	str	r2, [fp, #-548]
	mov	r3, #0
	ldr	ip, [fp, #-548]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-548]
	add	r0, r0, #2
	str	r0, [fp, #-548]
	mov	r3, #0
	ldr	r1, [fp, #-548]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-548]
	add	r2, r2, #2
	str	r2, [fp, #-548]
	mov	r3, #0
	ldr	ip, [fp, #-548]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-548]
	add	r0, r0, #2
	str	r0, [fp, #-548]
	mov	r3, #0
	ldr	r1, [fp, #-548]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-548]
	add	r2, r2, #2
	str	r2, [fp, #-548]
	mov	r3, #0
	ldr	ip, [fp, #-548]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-548]
	add	r0, r0, #2
	str	r0, [fp, #-548]
	mov	r3, #0
	ldr	r1, [fp, #-548]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-548]
	add	r2, r2, #2
	ldr	r3, .L232+12
	sub	r2, fp, #420
	mov	ip, #26
	mov	r0, r2
	mov	r1, r3
	mov	r2, ip
	bl	memcpy
	ldr	r3, [fp, #-108]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-248]
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-92]
	b	.L80
.L84:
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L81
.L83:
	ldr	r3, [fp, #-132]
	ldr	r2, .L232+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L82
	ldr	r3, [fp, #-124]
	mvn	r2, #223
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-132]
	ldr	r2, .L232+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r1, r3
	bne	.L82
	ldr	r3, [fp, #-124]
	mvn	r2, #223
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r0, [fp, #-124]
	ldr	r3, [fp, #-132]
	ldr	r2, .L232+16
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, .L232+20
	sub	ip, fp, #20
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-124]
	add	r3, r3, #1
	str	r3, [fp, #-124]
.L82:
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
.L81:
	ldr	r3, [fp, #-132]
	cmp	r3, #25
	ble	.L83
.L80:
	ldr	r3, [fp, #-100]
	cmp	r3, #0
	bgt	.L84
	sub	r3, fp, #524
	mov	r2, #104
	mov	r0, r3
	mov	r1, #0
	bl	memset
	sub	r3, fp, #524
	mov	r0, r3
	ldr	r1, [fp, #-108]
	bl	optimal_encoding
	mov	r3, #0
	str	r3, [fp, #-88]
	mov	r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-248]
	mov	r0, r3
	bl	strlen
	mov	r2, r0
	ldr	r3, [fp, #-104]
	mul	r3, r2, r3
	add	r3, r3, #1
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	cmp	r3, #0
	bne	.L85
	mov	r0, #0
	str	r0, [fp, #-544]
	b	.L66
.L85:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-112]
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L86
.L142:
	ldr	r0, [fp, #-112]
	mov	r1, #10
	bl	safe_add
	mov	r3, r0
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L87
	ldr	r3, [fp, #-132]
	sub	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r2, r3, r2
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r2, r3, r2
	ldr	r3, [fp, #-116]
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-116]
	mov	r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-120]
	add	r3, r3, #1
	str	r3, [fp, #-120]
	b	.L88
.L87:
	mov	r3, #0
	str	r3, [fp, #-128]
	b	.L89
.L141:
	ldr	r3, [fp, #-108]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L90
.L96:
	.word	.L91
	.word	.L92
	.word	.L93
	.word	.L94
	.word	.L95
.L91:
	ldr	r2, [fp, #-248]
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-128]
	ldr	r2, .L232+20
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L98
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-96]
	sub	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bne	.L98
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r2, r3, r2
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r2, r3, r2
	ldr	r3, [fp, #-116]
	str	r3, [r2, #0]
	b	.L98
.L92:
	ldr	r2, [fp, #-248]
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-128]
	ldr	r2, .L232+20
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L98
	ldr	r3, [fp, #-128]
	ldr	r2, .L232+24
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r2, [fp, #-112]
	ldr	r3, [fp, #-88]
	add	r3, r2, r3
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	ldr	r3, [fp, #-88]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-96]
	sub	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bne	.L98
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r2, r3, r2
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r2, r3, r2
	ldr	r3, [fp, #-116]
	str	r3, [r2, #0]
	b	.L98
.L93:
	ldr	r2, [fp, #-248]
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-128]
	ldr	r2, .L232+20
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L98
	ldr	r3, [fp, #-128]
	ldr	r2, .L232+24
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	bne	.L101
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L102
.L101:
	ldr	r3, [fp, #-88]
	cmp	r3, #1
	bne	.L103
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L102
.L103:
	ldr	r3, [fp, #-88]
	cmp	r3, #3
	bne	.L102
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
.L102:
	ldr	r3, [fp, #-96]
	sub	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bne	.L98
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r2, r3, r2
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r2, r3, r2
	ldr	r3, [fp, #-116]
	str	r3, [r2, #0]
	b	.L98
.L94:
	ldr	r2, [fp, #-248]
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-128]
	ldr	r2, .L232+20
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L98
	ldr	r3, [fp, #-128]
	ldr	r2, .L232+24
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	bne	.L105
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L106
.L105:
	ldr	r3, [fp, #-88]
	cmp	r3, #1
	bne	.L107
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L106
.L107:
	ldr	r3, [fp, #-88]
	cmp	r3, #3
	bne	.L108
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L106
.L108:
	ldr	r3, [fp, #-88]
	cmp	r3, #7
	bne	.L106
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
.L106:
	ldr	r3, [fp, #-96]
	sub	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bne	.L98
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r2, r3, r2
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r2, r3, r2
	ldr	r3, [fp, #-116]
	str	r3, [r2, #0]
	b	.L98
.L95:
	ldr	r2, [fp, #-248]
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-128]
	ldr	r2, .L232+20
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L98
	ldr	r3, [fp, #-128]
	ldr	r2, .L232+24
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	bne	.L110
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L111
.L110:
	ldr	r3, [fp, #-88]
	cmp	r3, #1
	bne	.L112
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L111
.L112:
	ldr	r3, [fp, #-88]
	cmp	r3, #3
	bne	.L113
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L111
.L113:
	ldr	r3, [fp, #-88]
	cmp	r3, #2
	bne	.L114
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L111
.L233:
	.align	2
.L232:
	.word	.LC1
	.word	.LC2
	.word	-348
	.word	C.19.2752
	.word	-400
	.word	-374
	.word	-504
.L114:
	ldr	r3, [fp, #-88]
	cmp	r3, #6
	bne	.L111
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
.L111:
	ldr	r3, [fp, #-96]
	sub	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bne	.L98
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r2, r3, r2
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r2, r3, r2
	ldr	r3, [fp, #-116]
	str	r3, [r2, #0]
	b	.L98
.L90:
	ldr	r2, [fp, #-248]
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-128]
	ldr	r2, .L232+20
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L98
	ldr	r3, [fp, #-128]
	ldr	r2, .L232+24
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	cmp	r3, #1
	bne	.L115
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L115:
	ldr	r3, [fp, #-88]
	cmp	r3, #5
	bne	.L117
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L117:
	ldr	r3, [fp, #-88]
	cmp	r3, #12
	bne	.L118
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L118:
	ldr	r3, [fp, #-88]
	cmp	r3, #7
	bne	.L119
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L119:
	ldr	r3, [fp, #-88]
	cmp	r3, #10
	bne	.L120
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L120:
	ldr	r3, [fp, #-88]
	cmp	r3, #14
	bne	.L121
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L121:
	ldr	r3, [fp, #-88]
	cmp	r3, #2
	bne	.L122
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L122:
	ldr	r3, [fp, #-88]
	cmp	r3, #11
	bne	.L123
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L123:
	ldr	r3, [fp, #-88]
	cmp	r3, #3
	bne	.L124
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L124:
	ldr	r3, [fp, #-88]
	cmp	r3, #8
	bne	.L125
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L125:
	ldr	r3, [fp, #-88]
	cmp	r3, #15
	bne	.L126
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L126:
	ldr	r3, [fp, #-88]
	cmp	r3, #31
	bne	.L127
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L127:
	ldr	r3, [fp, #-88]
	cmp	r3, #4
	bne	.L128
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L128:
	ldr	r3, [fp, #-88]
	cmp	r3, #20
	bne	.L129
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L129:
	ldr	r3, [fp, #-88]
	cmp	r3, #16
	bne	.L130
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L130:
	ldr	r3, [fp, #-88]
	cmp	r3, #38
	bne	.L131
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L131:
	ldr	r3, [fp, #-88]
	cmp	r3, #32
	bne	.L132
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L132:
	ldr	r3, [fp, #-88]
	cmp	r3, #6
	bne	.L133
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L133:
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	bne	.L134
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L134:
	ldr	r3, [fp, #-88]
	cmp	r3, #54
	bne	.L135
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L135:
	ldr	r3, [fp, #-88]
	cmp	r3, #48
	bne	.L136
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L136:
	ldr	r3, [fp, #-88]
	cmp	r3, #22
	bne	.L137
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L137:
	ldr	r3, [fp, #-88]
	cmp	r3, #214
	bne	.L138
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L138:
	ldr	r2, [fp, #-88]
	ldr	r3, .L234+8
	cmp	r2, r3
	bne	.L139
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L139:
	ldr	r2, [fp, #-88]
	ldr	r3, .L234+12
	cmp	r2, r3
	bne	.L140
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L116
.L140:
	ldr	r3, [fp, #-88]
	cmp	r3, #86
	bne	.L116
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-84]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
.L116:
	ldr	r3, [fp, #-96]
	sub	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bne	.L98
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r2, r3, r2
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-120]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r2, r3, r2
	ldr	r3, [fp, #-116]
	str	r3, [r2, #0]
.L98:
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
.L89:
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-108]
	cmp	r2, r3
	blt	.L141
.L88:
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
.L86:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L142
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L143
.L144:
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
.L143:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	blt	.L144
	mov	r3, #1
	str	r3, [fp, #-76]
	mov	r0, #4
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-72]
	sub	r3, fp, #264
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	ldr	r2, [fp, #-260]
	ldr	r3, [fp, #-252]
	rsb	r3, r3, r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-68]
	str	r4, [fp, #-64]
	sub	r4, fp, #68
	ldmia	r4, {r3-r4}
	adr	r6, .L234
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	sub	r6, fp, #68
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-60]
	str	r4, [fp, #-56]
	ldr	r0, .L234+16
	sub	r3, fp, #60
	ldmia	r3, {r2-r3}
	bl	printf
	ldr	r0, .L234+20
	bl	puts
	b	.L145
.L147:
	ldr	r3, .L234+24
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-72]
	mov	r1, #100
	mov	r2, r3
	bl	fgets
	ldr	r0, [fp, #-72]
	ldr	r1, .L234+28
	bl	strcspn
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-72]
	add	r2, r3, r2
	mov	r3, #32
	strb	r3, [r2, #0]
	ldr	r0, [fp, #-72]
	ldr	r1, .L234+32
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L146
	mov	r3, #0
	str	r3, [fp, #-76]
	b	.L145
.L146:
	ldr	r0, [fp, #-72]
	ldr	r1, .L234+36
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L145
	ldr	r0, .L234+40
	ldr	r1, [fp, #-72]
	bl	printf
.L145:
	ldr	r3, [fp, #-76]
	cmp	r3, #0
	bne	.L147
	sub	r3, fp, #532
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	ldr	r3, [fp, #-92]
	add	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L148
	mov	r1, #0
	str	r1, [fp, #-544]
	b	.L66
.L148:
	ldr	r3, [fp, #-92]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-120]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-108]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L149
.L155:
	.word	.L150
	.word	.L151
	.word	.L152
	.word	.L153
	.word	.L154
.L150:
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L156
.L159:
	mov	r3, #0
	str	r3, [fp, #-128]
	b	.L157
.L158:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-394]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
.L157:
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L158
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
.L156:
	ldr	r3, [fp, #-120]
	add	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bgt	.L159
	b	.L160
.L151:
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L161
.L166:
	ldr	r3, [fp, #-40]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-40]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-128]
	b	.L162
.L165:
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L163
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-393]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L164
.L163:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-394]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
.L164:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
.L162:
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L165
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
.L161:
	ldr	r3, [fp, #-120]
	add	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bgt	.L166
	b	.L160
.L152:
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L167
.L174:
	ldr	r3, [fp, #-40]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-40]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-128]
	b	.L168
.L173:
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L169
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L170
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-392]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L172
.L170:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-393]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L172
.L235:
	.align	3
.L234:
	.word	-1610612736
	.word	1051772663
	.word	342
	.word	470
	.word	.LC3
	.word	.LC4
	.word	stdin
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
.L169:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-394]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
.L172:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
.L168:
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L173
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
.L167:
	ldr	r3, [fp, #-120]
	add	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bgt	.L174
	b	.L160
.L153:
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L175
.L184:
	ldr	r3, [fp, #-40]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-40]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-128]
	b	.L176
.L183:
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L177
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L178
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L179
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-391]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L182
.L179:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-392]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L182
.L178:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-393]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L182
.L177:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-394]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
.L182:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
.L176:
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L183
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
.L175:
	ldr	r3, [fp, #-120]
	add	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bgt	.L184
	b	.L160
.L154:
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L185
.L195:
	ldr	r3, [fp, #-40]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-40]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-128]
	b	.L186
.L194:
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L187
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L188
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-392]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L190
.L188:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-393]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L190
.L187:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L191
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L192
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-390]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L190
.L192:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-391]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L190
.L191:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-394]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
.L190:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
.L186:
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L194
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
.L185:
	ldr	r3, [fp, #-120]
	add	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bgt	.L195
	b	.L160
.L149:
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L196
.L227:
	ldr	r3, [fp, #-40]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-136]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-40]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-140]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-128]
	b	.L197
.L226:
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L198
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L199
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L200
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L201
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L202
	b	.L231
.L201:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-391]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L202:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-383]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L231:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-384]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L200:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L205
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-387]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L205:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-386]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L199:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L206
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-393]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L206:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-394]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L198:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L207
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L208
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L209
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-389]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L209:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L210
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L211
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-375]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L211:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L212
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L213
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L214
.L213:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L215
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-371]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L215:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L214
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-369]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L214:
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L216
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-370]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L216:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-372]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L212:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-373]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L210:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L217
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-379]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L217:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-377]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L208:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L218
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-390]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L218:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-388]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L207:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L219
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L220
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-392]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L220:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L221
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-381]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L221:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-382]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L219:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L222
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-385]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L222:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L223
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L224
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-374]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L224:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-380]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L223:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L225
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-378]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
	b	.L204
.L225:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldrb	r3, [fp, #-376]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asr #1
	str	r3, [fp, #-112]
.L204:
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
.L197:
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L226
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
.L196:
	ldr	r3, [fp, #-120]
	add	r2, r3, #1
	ldr	r3, [fp, #-132]
	cmp	r2, r3
	bgt	.L227
.L160:
	ldr	r3, [fp, #-248]
	mov	r0, r3
	ldr	r1, [fp, #-48]
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L228
	ldr	r2, [fp, #-248]
	ldr	r3, [fp, #-92]
	mov	ip, r3, asl #3
	ldr	r3, [fp, #-84]
	str	r3, [sp, #0]
	ldr	r0, .L234+44
	mov	r1, r2
	ldr	r2, [fp, #-92]
	mov	r3, ip
	bl	printf
	ldr	r0, .L234+48
	ldr	r1, [fp, #-48]
	bl	printf
	b	.L229
.L228:
	ldr	r3, [fp, #-248]
	ldr	r0, .L234+52
	mov	r1, r3
	ldr	r2, [fp, #-48]
	bl	printf
.L229:
	mov	r3, #0
	str	r3, [fp, #-248]
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-140]
	mov	r3, #0
	str	r3, [fp, #-136]
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-136]
	bl	free
	ldr	r0, [fp, #-140]
	bl	free
	ldr	r3, [fp, #-248]
	mov	r0, r3
	bl	free
	ldr	r0, [fp, #-48]
	bl	free
	ldr	r0, [fp, #-80]
	bl	free
	sub	r3, fp, #540
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	ldr	r2, [fp, #-536]
	ldr	r3, [fp, #-528]
	rsb	r3, r3, r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	sub	r4, fp, #36
	ldmia	r4, {r3-r4}
	adr	r6, .L236
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	sub	r6, fp, #36
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	ldr	r0, .L236+8
	sub	r3, fp, #28
	ldmia	r3, {r2-r3}
	bl	printf
	sub	r4, fp, #60
	ldmia	r4, {r3-r4}
	sub	r6, fp, #28
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	ldr	r0, .L236+12
	mov	r2, r3
	mov	r3, r4
	bl	printf
	mov	r2, #0
	str	r2, [fp, #-544]
.L66:
	ldr	r3, [fp, #-544]
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, pc}
.L237:
	.align	3
.L236:
	.word	-1610612736
	.word	1051772663
	.word	.LC12
	.word	.LC13
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
