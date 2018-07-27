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
	.file	"demo.c"
	.global	alpha
	.bss
	.type	alpha, %object
	.size	alpha, 26
alpha:
	.space	26
	.global	letters
	.data
	.type	letters, %object
	.size	letters, 26
letters:
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
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L9
.L36:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #97
	bne	.L10
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L11
.L10:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #98
	bne	.L12
	ldr	r3, [fp, #-20]
	add	r2, r3, #4
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L12:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L13
	ldr	r3, [fp, #-20]
	add	r2, r3, #8
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L13:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L14
	ldr	r3, [fp, #-20]
	add	r2, r3, #12
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L14:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L15
	ldr	r3, [fp, #-20]
	add	r2, r3, #16
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L15:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #102
	bne	.L16
	ldr	r3, [fp, #-20]
	add	r2, r3, #20
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L16:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #103
	bne	.L17
	ldr	r3, [fp, #-20]
	add	r2, r3, #24
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L17:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #104
	bne	.L18
	ldr	r3, [fp, #-20]
	add	r2, r3, #28
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L18:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #105
	bne	.L19
	ldr	r3, [fp, #-20]
	add	r2, r3, #32
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L19:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #106
	bne	.L20
	ldr	r3, [fp, #-20]
	add	r2, r3, #36
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L20:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #107
	bne	.L21
	ldr	r3, [fp, #-20]
	add	r2, r3, #40
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L21:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #108
	bne	.L22
	ldr	r3, [fp, #-20]
	add	r2, r3, #44
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L22:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L23
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L23:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #110
	bne	.L24
	ldr	r3, [fp, #-20]
	add	r2, r3, #52
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L24:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #111
	bne	.L25
	ldr	r3, [fp, #-20]
	add	r2, r3, #56
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L25:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #112
	bne	.L26
	ldr	r3, [fp, #-20]
	add	r2, r3, #60
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L26:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #113
	bne	.L27
	ldr	r3, [fp, #-20]
	add	r2, r3, #64
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L27:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L28
	ldr	r3, [fp, #-20]
	add	r2, r3, #68
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L28:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L29
	ldr	r3, [fp, #-20]
	add	r2, r3, #72
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L29:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #116
	bne	.L30
	ldr	r3, [fp, #-20]
	add	r2, r3, #76
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L30:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #117
	bne	.L31
	ldr	r3, [fp, #-20]
	add	r2, r3, #80
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L31:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #118
	bne	.L32
	ldr	r3, [fp, #-20]
	add	r2, r3, #84
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L32:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #119
	bne	.L33
	ldr	r3, [fp, #-20]
	add	r2, r3, #88
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L33:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #120
	bne	.L34
	ldr	r3, [fp, #-20]
	add	r2, r3, #92
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L34:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #121
	bne	.L35
	ldr	r3, [fp, #-20]
	add	r2, r3, #96
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
	b	.L11
.L35:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #122
	bne	.L11
	ldr	r3, [fp, #-20]
	add	r2, r3, #100
	ldr	r3, [r2, #0]
	add	r3, r3, #1
	str	r3, [r2, #0]
.L11:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L9:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L36
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
	cmp	r3, #1
	bne	.L39
	ldr	r2, [fp, #-8]
	mov	r3, #0
	str	r3, [r2, #0]
	b	.L45
.L39:
	ldr	r3, [fp, #-12]
	cmp	r3, #2
	bne	.L41
	ldr	r2, [fp, #-8]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	mov	r3, #1
	str	r3, [r2, #0]
	b	.L45
.L41:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	bne	.L42
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
	b	.L45
.L42:
	ldr	r3, [fp, #-12]
	cmp	r3, #4
	bne	.L43
	ldr	r2, [fp, #-8]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #8
	mov	r3, #2
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #12
	mov	r3, #3
	str	r3, [r2, #0]
	b	.L45
.L43:
	ldr	r3, [fp, #-12]
	cmp	r3, #5
	bne	.L44
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
	b	.L45
.L44:
	ldr	r3, [fp, #-12]
	cmp	r3, #5
	ble	.L45
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
	ldr	r3, .L46
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #96
	ldr	r3, .L46+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-8]
	add	r2, r3, #100
	mov	r3, #86
	str	r3, [r2, #0]
.L45:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L47:
	.align	2
.L46:
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
	bgt	.L49
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L50
.L49:
	mov	r3, #1
	str	r3, [fp, #-16]
.L50:
	ldr	r3, [fp, #-16]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	safe_add, .-safe_add
	.section	.rodata
	.type	C.36.3326, %object
	.size	C.36.3326, 26
C.36.3326:
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
.LC0:
	.ascii	"Enter the alphabet letters to encode: \000"
	.align	2
.LC1:
	.ascii	"%s\000"
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.align	2
.LC2:
	.ascii	"\012\012Compression time: %0.4f microseconds\012\000"
	.align	2
.LC3:
	.ascii	"\012Press '1' to Decompress...\000"
	.align	2
.LC4:
	.ascii	"\012\000"
	.align	2
.LC5:
	.ascii	"1 \000"
	.align	2
.LC6:
	.ascii	" \000"
	.align	2
.LC7:
	.ascii	"%sis invalid. Please type a '1'\012\000"
	.align	2
.LC8:
	.ascii	"\012Original String:\011%s\012Length: %d characters"
	.ascii	" \012Original Size: %d bits\012Compressed Size: %d "
	.ascii	"bits\012\000"
	.align	2
.LC9:
	.ascii	"Decompressed String:\011%s\012\000"
	.align	2
.LC10:
	.ascii	"\012/**********************************************"
	.ascii	"***************************************************"
	.ascii	"/\012ERROR: Original and decompressed strings not t"
	.ascii	"he same\012The original string: %s \012The decompre"
	.ascii	"ssed string: %s\012\000"
	.align	2
.LC11:
	.ascii	"\012Decompression time: %0.4f microseconds\012\000"
	.align	2
.LC12:
	.ascii	"\012Total time: %0.4f microseconds\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 5000
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #4992
	sub	sp, sp, #20
	sub	r3, fp, #216
	mov	r2, #104
	mov	r0, r3
	mov	r1, #0
	bl	memset
	mov	r3, #0
	str	r3, [fp, #-104]
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #0
	str	r3, [fp, #-96]
	mov	r3, #1
	str	r3, [fp, #-92]
	ldr	r0, .L200
	bl	printf
	sub	r3, fp, #416
	ldr	r0, .L200+4
	mov	r1, r3
	bl	scanf
	sub	r3, fp, #2816
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	sub	r3, fp, #416
	sub	r2, fp, #216
	mov	r0, r3
	mov	r1, r2
	bl	getFrequency
	sub	r3, fp, #2928
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r2, #104
	mov	r0, r3
	mov	r1, #0
	bl	memset
	mov	r3, #0
	str	r3, [fp, #-88]
	mov	r3, #0
	str	r3, [fp, #-112]
	b	.L53
.L55:
	ldr	r3, [fp, #-112]
	mvn	r2, #195
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L54
	ldr	r3, [fp, #-88]
	add	r3, r3, #1
	str	r3, [fp, #-88]
.L54:
	ldr	r0, [fp, #-112]
	ldr	r3, [fp, #-112]
	mvn	r2, #195
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r2, .L200+8
	mov	r3, r0, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
.L53:
	ldr	r3, [fp, #-112]
	cmp	r3, #25
	ble	.L55
	sub	r3, fp, #216
	mov	r0, r3
	bl	insertionSort
	sub	r0, fp, #2944
	sub	r0, r0, #4
	sub	r1, fp, #4096
	str	r0, [r1, #-920]
	sub	r2, fp, #4096
	ldr	r3, [r2, #-920]
	sub	r2, r3, #14
	sub	r3, fp, #4096
	str	r2, [r3, #-920]
	mov	r3, #0
	sub	ip, fp, #4096
	ldr	ip, [ip, #-920]
	strh	r3, [ip, #0]	@ movhi
	sub	r0, fp, #4096
	ldr	r1, [r0, #-920]
	add	r0, r1, #2
	sub	r1, fp, #4096
	str	r0, [r1, #-920]
	mov	r3, #0
	sub	r2, fp, #4096
	ldr	r2, [r2, #-920]
	strh	r3, [r2, #0]	@ movhi
	sub	r3, fp, #4096
	ldr	ip, [r3, #-920]
	add	r3, ip, #2
	sub	ip, fp, #4096
	str	r3, [ip, #-920]
	mov	r3, #0
	sub	r0, fp, #4096
	ldr	r0, [r0, #-920]
	strh	r3, [r0, #0]	@ movhi
	sub	r1, fp, #4096
	ldr	r2, [r1, #-920]
	add	r1, r2, #2
	sub	r2, fp, #4096
	str	r1, [r2, #-920]
	mov	r3, #0
	sub	ip, fp, #4096
	ldr	ip, [ip, #-920]
	strh	r3, [ip, #0]	@ movhi
	sub	r0, fp, #4096
	ldr	r1, [r0, #-920]
	add	r0, r1, #2
	sub	r1, fp, #4096
	str	r0, [r1, #-920]
	mov	r3, #0
	sub	r2, fp, #4096
	ldr	r2, [r2, #-920]
	strh	r3, [r2, #0]	@ movhi
	sub	r3, fp, #4096
	ldr	ip, [r3, #-920]
	add	r3, ip, #2
	sub	ip, fp, #4096
	str	r3, [ip, #-920]
	mov	r3, #0
	sub	r0, fp, #4096
	ldr	r0, [r0, #-920]
	strh	r3, [r0, #0]	@ movhi
	sub	r1, fp, #4096
	ldr	r2, [r1, #-920]
	add	r1, r2, #2
	sub	r2, fp, #4096
	str	r1, [r2, #-920]
	mov	r3, #0
	sub	ip, fp, #4096
	ldr	ip, [ip, #-920]
	strh	r3, [ip, #0]	@ movhi
	sub	r0, fp, #4096
	ldr	r1, [r0, #-920]
	add	r0, r1, #2
	sub	r1, fp, #4096
	str	r0, [r1, #-920]
	mov	r3, #0
	sub	r2, fp, #4096
	ldr	r2, [r2, #-920]
	strh	r3, [r2, #0]	@ movhi
	sub	r3, fp, #4096
	ldr	ip, [r3, #-920]
	add	r3, ip, #2
	sub	ip, fp, #4096
	str	r3, [ip, #-920]
	mov	r3, #0
	sub	r0, fp, #4096
	ldr	r0, [r0, #-920]
	strh	r3, [r0, #0]	@ movhi
	sub	r1, fp, #4096
	ldr	r2, [r1, #-920]
	add	r1, r2, #2
	sub	r2, fp, #4096
	str	r1, [r2, #-920]
	mov	r3, #0
	sub	ip, fp, #4096
	ldr	ip, [ip, #-920]
	strh	r3, [ip, #0]	@ movhi
	sub	r0, fp, #4096
	ldr	r1, [r0, #-920]
	add	r0, r1, #2
	sub	r1, fp, #4096
	str	r0, [r1, #-920]
	mov	r3, #0
	sub	r2, fp, #4096
	ldr	r2, [r2, #-920]
	strh	r3, [r2, #0]	@ movhi
	sub	r3, fp, #4096
	ldr	ip, [r3, #-920]
	add	r3, ip, #2
	sub	ip, fp, #4096
	str	r3, [ip, #-920]
	mov	r3, #0
	sub	r0, fp, #4096
	ldr	r0, [r0, #-920]
	strh	r3, [r0, #0]	@ movhi
	sub	r1, fp, #4096
	ldr	r2, [r1, #-920]
	add	r1, r2, #2
	sub	r2, fp, #4096
	str	r1, [r2, #-920]
	mov	r3, #0
	sub	ip, fp, #4096
	ldr	ip, [ip, #-920]
	strh	r3, [ip, #0]	@ movhi
	sub	r0, fp, #4096
	ldr	r1, [r0, #-920]
	add	r0, r1, #2
	sub	r1, fp, #4096
	ldr	r2, .L200+12
	sub	r3, fp, #2976
	sub	r3, r3, #4
	sub	r3, r3, #8
	mov	ip, #26
	mov	r0, r3
	mov	r1, r2
	mov	r2, ip
	bl	memcpy
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-84]
	sub	r3, fp, #416
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	str	r3, [fp, #-76]
	b	.L56
.L60:
	mov	r3, #0
	str	r3, [fp, #-112]
	b	.L57
.L59:
	ldr	r3, [fp, #-112]
	ldr	r2, .L200+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L58
	ldr	r3, [fp, #-104]
	mvn	r2, #195
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-112]
	ldr	r2, .L200+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r1, r3
	bne	.L58
	ldr	r3, [fp, #-104]
	mvn	r2, #195
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r0, [fp, #-104]
	ldr	r3, [fp, #-112]
	ldr	r2, .L200+16
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, .L200+32
	sub	ip, fp, #20
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	sub	r3, r3, #1
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-104]
	add	r3, r3, #1
	str	r3, [fp, #-104]
.L58:
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
.L57:
	ldr	r3, [fp, #-112]
	cmp	r3, #25
	ble	.L59
.L56:
	ldr	r3, [fp, #-84]
	cmp	r3, #0
	bgt	.L60
	sub	r3, fp, #3088
	sub	r3, r3, #4
	mov	r2, #104
	mov	r0, r3
	mov	r1, #0
	bl	memset
	sub	r3, fp, #3088
	sub	r3, r3, #4
	mov	r0, r3
	ldr	r1, [fp, #-88]
	bl	optimal_encoding
	mov	r3, #0
	str	r3, [fp, #-72]
	mov	r3, #1
	str	r3, [fp, #-68]
	ldr	r2, .L200+40
	ldr	r3, [fp, #-92]
	sub	r0, fp, #20
	str	r3, [r0, r2]
	mov	r3, #0
	str	r3, [fp, #-112]
	b	.L61
.L115:
	ldr	r0, [fp, #-92]
	mov	r1, #10
	bl	safe_add
	mov	r3, r0
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L62
	ldr	r3, [fp, #-112]
	sub	r3, r3, #1
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+20
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+24
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-96]
	mov	r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-100]
	add	r3, r3, #1
	str	r3, [fp, #-100]
	b	.L63
.L62:
	mov	r3, #0
	str	r3, [fp, #-108]
	b	.L64
.L114:
	ldr	r3, [fp, #-88]
	cmp	r3, #1
	bne	.L65
	ldr	r3, [fp, #-112]
	ldr	r2, .L200+28
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-108]
	ldr	r2, .L200+32
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L67
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-80]
	sub	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bne	.L67
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+20
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+24
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
	b	.L67
.L65:
	ldr	r3, [fp, #-88]
	cmp	r3, #2
	bne	.L68
	ldr	r3, [fp, #-112]
	ldr	r2, .L200+28
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-108]
	ldr	r2, .L200+32
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L67
	ldr	r3, [fp, #-108]
	ldr	r2, .L200+36
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-72]
	add	r3, r2, r3
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-72]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-80]
	sub	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bne	.L67
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+20
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+24
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
	b	.L67
.L68:
	ldr	r3, [fp, #-88]
	cmp	r3, #3
	bne	.L70
	ldr	r3, [fp, #-112]
	ldr	r2, .L200+28
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-108]
	ldr	r2, .L200+32
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L67
	ldr	r3, [fp, #-108]
	ldr	r2, .L200+36
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	bne	.L72
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L73
.L72:
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	bne	.L74
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L73
.L74:
	ldr	r3, [fp, #-72]
	cmp	r3, #3
	bne	.L73
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L73:
	ldr	r3, [fp, #-80]
	sub	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bne	.L67
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+20
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+24
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
	b	.L67
.L70:
	ldr	r3, [fp, #-88]
	cmp	r3, #4
	bne	.L75
	ldr	r3, [fp, #-112]
	ldr	r2, .L200+28
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-108]
	ldr	r2, .L200+32
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L67
	ldr	r3, [fp, #-108]
	ldr	r2, .L200+36
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	bne	.L77
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L78
.L77:
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	bne	.L79
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L78
.L79:
	ldr	r3, [fp, #-72]
	cmp	r3, #3
	bne	.L80
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L78
.L80:
	ldr	r3, [fp, #-72]
	cmp	r3, #7
	bne	.L78
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L78:
	ldr	r3, [fp, #-80]
	sub	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bne	.L67
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+20
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+24
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
	b	.L67
.L75:
	ldr	r3, [fp, #-88]
	cmp	r3, #5
	bne	.L81
	ldr	r3, [fp, #-112]
	ldr	r2, .L200+28
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-108]
	ldr	r2, .L200+32
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L67
	ldr	r3, [fp, #-108]
	ldr	r2, .L200+36
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	bne	.L83
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L84
.L83:
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	bne	.L85
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L84
.L85:
	ldr	r3, [fp, #-72]
	cmp	r3, #3
	bne	.L86
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L84
.L201:
	.align	2
.L200:
	.word	.LC0
	.word	.LC1
	.word	-2916
	.word	C.36.3326
	.word	-2968
	.word	-1996
	.word	-2796
	.word	-396
	.word	-2942
	.word	-3072
	.word	-4272
.L86:
	ldr	r3, [fp, #-72]
	cmp	r3, #2
	bne	.L87
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L84
.L87:
	ldr	r3, [fp, #-72]
	cmp	r3, #6
	bne	.L84
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L84:
	ldr	r3, [fp, #-80]
	sub	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bne	.L67
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+20
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-100]
	ldr	r2, .L200+24
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
	b	.L67
.L81:
	ldr	r3, [fp, #-88]
	cmp	r3, #5
	ble	.L67
	ldr	r3, [fp, #-112]
	ldr	r2, .L200+28
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-108]
	ldr	r2, .L200+32
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L67
	ldr	r3, [fp, #-108]
	ldr	r2, .L200+36
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	bne	.L88
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L88:
	ldr	r3, [fp, #-72]
	cmp	r3, #5
	bne	.L90
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L90:
	ldr	r3, [fp, #-72]
	cmp	r3, #12
	bne	.L91
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L91:
	ldr	r3, [fp, #-72]
	cmp	r3, #7
	bne	.L92
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L92:
	ldr	r3, [fp, #-72]
	cmp	r3, #10
	bne	.L93
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L93:
	ldr	r3, [fp, #-72]
	cmp	r3, #14
	bne	.L94
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L94:
	ldr	r3, [fp, #-72]
	cmp	r3, #2
	bne	.L95
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L95:
	ldr	r3, [fp, #-72]
	cmp	r3, #11
	bne	.L96
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L96:
	ldr	r3, [fp, #-72]
	cmp	r3, #3
	bne	.L97
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L97:
	ldr	r3, [fp, #-72]
	cmp	r3, #8
	bne	.L98
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L98:
	ldr	r3, [fp, #-72]
	cmp	r3, #15
	bne	.L99
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L99:
	ldr	r3, [fp, #-72]
	cmp	r3, #31
	bne	.L100
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L100:
	ldr	r3, [fp, #-72]
	cmp	r3, #4
	bne	.L101
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L200+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L101:
	ldr	r3, [fp, #-72]
	cmp	r3, #20
	bne	.L102
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L102:
	ldr	r3, [fp, #-72]
	cmp	r3, #16
	bne	.L103
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L103:
	ldr	r3, [fp, #-72]
	cmp	r3, #38
	bne	.L104
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L104:
	ldr	r3, [fp, #-72]
	cmp	r3, #32
	bne	.L105
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L105:
	ldr	r3, [fp, #-72]
	cmp	r3, #6
	bne	.L106
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L106:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	bne	.L107
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L107:
	ldr	r3, [fp, #-72]
	cmp	r3, #54
	bne	.L108
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L108:
	ldr	r3, [fp, #-72]
	cmp	r3, #48
	bne	.L109
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L109:
	ldr	r3, [fp, #-72]
	cmp	r3, #22
	bne	.L110
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L203:
	.align	2
.L202:
	.word	342
	.word	470
	.word	-4272
	.word	-1996
	.word	-2796
.L110:
	ldr	r3, [fp, #-72]
	cmp	r3, #214
	bne	.L111
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L111:
	ldr	r2, [fp, #-72]
	ldr	r3, .L202
	cmp	r2, r3
	bne	.L112
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L112:
	ldr	r2, [fp, #-72]
	ldr	r3, .L202+4
	cmp	r2, r3
	bne	.L113
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L89
.L113:
	ldr	r3, [fp, #-72]
	cmp	r3, #86
	bne	.L89
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	ldr	r2, .L202+8
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L89:
	ldr	r3, [fp, #-80]
	sub	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bne	.L67
	ldr	r3, [fp, #-100]
	ldr	r2, .L202+12
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-100]
	ldr	r2, .L202+16
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
.L67:
	ldr	r3, [fp, #-108]
	add	r3, r3, #1
	str	r3, [fp, #-108]
.L64:
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-88]
	cmp	r2, r3
	blt	.L114
.L63:
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
.L61:
	ldr	r2, [fp, #-112]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	blt	.L115
	mov	r3, #1
	str	r3, [fp, #-64]
	sub	r3, fp, #2816
	sub	r3, r3, #4
	sub	r3, r3, #12
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	ldr	r2, [fp, #-2828]
	ldr	r3, [fp, #-2820]
	rsb	r3, r3, r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-60]
	str	r4, [fp, #-56]
	sub	r4, fp, #60
	ldmia	r4, {r3-r4}
	adr	r6, .L204
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	sub	r6, fp, #60
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-52]
	str	r4, [fp, #-48]
	ldr	r0, .L204+8
	sub	r3, fp, #52
	ldmia	r3, {r2-r3}
	bl	printf
	ldr	r0, .L204+12
	bl	puts
	b	.L116
.L118:
	ldr	r3, .L204+16
	ldr	r2, [r3, #0]
	sub	r3, fp, #4544
	sub	r3, r3, #20
	sub	r3, r3, #28
	mov	r0, r3
	mov	r1, #100
	bl	fgets
	sub	r3, fp, #4544
	sub	r3, r3, #20
	sub	r3, r3, #28
	mov	r0, r3
	ldr	r1, .L204+20
	bl	strcspn
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L204+24
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #32
	strb	r3, [r2, #0]
	sub	r3, fp, #4544
	sub	r3, r3, #20
	sub	r3, r3, #28
	mov	r0, r3
	ldr	r1, .L204+28
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L117
	mov	r3, #0
	str	r3, [fp, #-64]
	b	.L116
.L117:
	sub	r3, fp, #4544
	sub	r3, r3, #20
	sub	r3, r3, #28
	mov	r0, r3
	ldr	r1, .L204+32
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L116
	sub	r3, fp, #4544
	sub	r3, r3, #20
	sub	r3, r3, #28
	ldr	r0, .L204+36
	mov	r1, r3
	bl	printf
.L116:
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	bne	.L118
	sub	r3, fp, #4544
	sub	r3, r3, #20
	sub	r3, r3, #36
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	ldr	r3, [fp, #-76]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-100]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-88]
	cmp	r3, #1
	bne	.L119
	mov	r3, #0
	str	r3, [fp, #-112]
	b	.L120
.L123:
	mov	r3, #0
	str	r3, [fp, #-108]
	b	.L121
.L122:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2962]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-108]
	add	r3, r3, #1
	str	r3, [fp, #-108]
.L121:
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	blt	.L122
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
.L120:
	ldr	r3, [fp, #-100]
	add	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bgt	.L123
.L119:
	ldr	r3, [fp, #-88]
	cmp	r3, #2
	bne	.L124
	mov	r3, #0
	str	r3, [fp, #-112]
	b	.L125
.L130:
	ldr	r3, [fp, #-40]
	ldr	r2, .L204+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-40]
	ldr	r2, .L204+44
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-108]
	b	.L126
.L129:
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L127
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2961]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L128
.L127:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2962]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
.L128:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-108]
	add	r3, r3, #1
	str	r3, [fp, #-108]
.L126:
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	blt	.L129
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
.L125:
	ldr	r3, [fp, #-100]
	add	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bgt	.L130
.L124:
	ldr	r3, [fp, #-88]
	cmp	r3, #3
	bne	.L131
	mov	r3, #0
	str	r3, [fp, #-112]
	b	.L132
.L139:
	ldr	r3, [fp, #-40]
	ldr	r2, .L204+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-40]
	ldr	r2, .L204+44
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-108]
	b	.L133
.L205:
	.align	3
.L204:
	.word	-1610612736
	.word	1051772663
	.word	.LC2
	.word	.LC3
	.word	stdin
	.word	.LC4
	.word	-4572
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	-2796
	.word	-1996
	.word	-4988
	.word	.LC8
	.word	.LC9
	.word	.LC10
.L138:
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L134
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L135
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2960]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L137
.L135:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2961]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L137
.L134:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2962]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
.L137:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-108]
	add	r3, r3, #1
	str	r3, [fp, #-108]
.L133:
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	blt	.L138
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
.L132:
	ldr	r3, [fp, #-100]
	add	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bgt	.L139
.L131:
	ldr	r3, [fp, #-88]
	cmp	r3, #4
	bne	.L140
	mov	r3, #0
	str	r3, [fp, #-112]
	b	.L141
.L150:
	ldr	r3, [fp, #-40]
	ldr	r2, .L204+40
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-40]
	ldr	r2, .L204+44
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-108]
	b	.L142
.L149:
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L143
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L144
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L145
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2959]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L148
.L145:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2960]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L148
.L144:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2961]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L148
.L143:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2962]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
.L148:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-108]
	add	r3, r3, #1
	str	r3, [fp, #-108]
.L142:
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	blt	.L149
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
.L141:
	ldr	r3, [fp, #-100]
	add	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bgt	.L150
.L140:
	ldr	r3, [fp, #-88]
	cmp	r3, #5
	bne	.L151
	mov	r3, #0
	str	r3, [fp, #-112]
	b	.L152
.L162:
	ldr	r3, [fp, #-40]
	ldr	r2, .L204+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-40]
	ldr	r2, .L204+44
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-108]
	b	.L153
.L161:
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L154
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L155
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2960]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L157
.L155:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2961]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L157
.L154:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L158
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L159
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2958]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L157
.L159:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2959]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L157
.L158:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2962]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
.L157:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-108]
	add	r3, r3, #1
	str	r3, [fp, #-108]
.L153:
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	blt	.L161
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
.L152:
	ldr	r3, [fp, #-100]
	add	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bgt	.L162
.L151:
	ldr	r3, [fp, #-88]
	cmp	r3, #5
	ble	.L163
	mov	r3, #0
	str	r3, [fp, #-112]
	b	.L164
.L195:
	ldr	r3, [fp, #-40]
	ldr	r2, .L204+40
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-40]
	ldr	r2, .L204+44
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-108]
	b	.L165
.L194:
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L166
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L167
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L168
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L169
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L170
	b	.L199
.L169:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2959]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L170:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2951]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L199:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2952]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L168:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L173
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2955]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L173:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2954]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L167:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L174
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2961]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L174:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2962]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L166:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L175
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L176
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L177
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2957]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L177:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L178
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L179
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2943]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L179:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L180
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L181
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L182
.L181:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L183
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2939]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L183:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L182
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2937]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L182:
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L184
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2938]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L184:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2940]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L180:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2941]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L178:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L185
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2947]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L185:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2945]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L176:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L186
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2958]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L186:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2956]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L175:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L187
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L188
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2960]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L188:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L189
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2949]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L189:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2950]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L187:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L190
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2953]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L190:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L191
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L192
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2942]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L192:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2948]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L191:
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L193
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2946]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
	b	.L172
.L193:
	ldr	r2, [fp, #-44]
	ldrb	r1, [fp, #-2944]	@ zero_extendqisi2
	ldr	r3, .L204+48
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-92]
	mov	r3, r3, asr #1
	str	r3, [fp, #-92]
.L172:
	ldr	r3, [fp, #-108]
	add	r3, r3, #1
	str	r3, [fp, #-108]
.L165:
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	blt	.L194
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
.L164:
	ldr	r3, [fp, #-100]
	add	r2, r3, #1
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bgt	.L195
.L163:
	sub	r3, fp, #416
	sub	r2, fp, #4928
	sub	r2, r2, #20
	sub	r2, r2, #60
	mov	r0, r3
	mov	r1, r2
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L196
	ldr	r3, [fp, #-76]
	mov	ip, r3, asl #3
	sub	r2, fp, #416
	ldr	r3, [fp, #-68]
	str	r3, [sp, #0]
	ldr	r0, .L204+52
	mov	r1, r2
	ldr	r2, [fp, #-76]
	mov	r3, ip
	bl	printf
	sub	r3, fp, #4928
	sub	r3, r3, #20
	sub	r3, r3, #60
	ldr	r0, .L204+56
	mov	r1, r3
	bl	printf
	b	.L197
.L196:
	sub	r2, fp, #416
	sub	r3, fp, #4928
	sub	r3, r3, #20
	sub	r3, r3, #60
	ldr	r0, .L204+60
	mov	r1, r2
	mov	r2, r3
	bl	printf
.L197:
	sub	r3, fp, #4544
	sub	r3, r3, #20
	sub	r3, r3, #44
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	ldr	r3, .L206+8
	mov	r2, #4
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L206+12
	mov	r2, #4
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	rsb	r3, r3, r1
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	sub	r4, fp, #36
	ldmia	r4, {r3-r4}
	adr	r6, .L206
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
	ldr	r0, .L206+16
	sub	r3, fp, #28
	ldmia	r3, {r2-r3}
	bl	printf
	sub	r4, fp, #52
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
	ldr	r0, .L206+20
	mov	r2, r3
	mov	r3, r4
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, pc}
.L207:
	.align	3
.L206:
	.word	-1610612736
	.word	1051772663
	.word	-4588
	.word	-4580
	.word	.LC11
	.word	.LC12
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
