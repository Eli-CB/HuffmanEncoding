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
	.file	"demo-optimized-km.c"
	.section	.rodata
	.type	C.15.3171, %object
	.size	C.15.3171, 26
C.15.3171:
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
	.align	2
.LC2:
	.ascii	"%c isn't a valid input!\012\000"
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
	@ args = 0, pretend = 0, frame = 552
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #564
	sub	r3, fp, #268
	mov	r2, #104
	mov	r0, r3
	mov	r1, #0
	bl	memset
	mov	r0, #1024
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-164]
	ldr	r3, [fp, #-164]
	cmp	r3, #0
	bne	.L2
	mov	r0, #0
	str	r0, [fp, #-568]
	b	.L3
.L2:
	mov	r0, #1024
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-160]
	ldr	r3, [fp, #-160]
	cmp	r3, #0
	bne	.L4
	mov	r1, #0
	str	r1, [fp, #-568]
	b	.L3
.L4:
	mov	r0, #1024
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-156]
	ldr	r3, [fp, #-156]
	cmp	r3, #0
	bne	.L5
	mov	r2, #0
	str	r2, [fp, #-568]
	b	.L3
.L5:
	mov	r3, #0
	str	r3, [fp, #-144]
	mov	r3, #0
	str	r3, [fp, #-140]
	mov	r3, #0
	str	r3, [fp, #-136]
	mov	r3, #0
	str	r3, [fp, #-132]
	mov	r3, #1
	str	r3, [fp, #-128]
	mov	r3, #1
	strb	r3, [fp, #-121]
.L10:
	mov	r3, #1
	strb	r3, [fp, #-121]
	ldr	r0, .L239
	bl	printf
	ldr	r0, .L239+4
	ldr	r1, [fp, #-164]
	bl	scanf
	ldr	r0, [fp, #-164]
	bl	strlen
	mov	r3, r0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L6
.L9:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-164]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L7
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-164]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #122
	bls	.L8
.L7:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-164]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldr	r0, .L239+8
	mov	r1, r3
	bl	printf
	mov	r3, #0
	strb	r3, [fp, #-121]
.L8:
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L6:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L9
	ldrb	r3, [fp, #-121]
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L10
	sub	r3, fp, #276
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L11
.L40:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-164]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #97
	cmp	r3, #25
	ldrls	pc, [pc, r3, asl #2]
	b	.L12
.L39:
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
	.word	.L37
	.word	.L38
.L13:
	ldr	r3, [fp, #-268]
	add	r3, r3, #1
	str	r3, [fp, #-268]
	b	.L12
.L14:
	ldr	r3, [fp, #-264]
	add	r3, r3, #1
	str	r3, [fp, #-264]
	b	.L12
.L15:
	ldr	r3, [fp, #-260]
	add	r3, r3, #1
	str	r3, [fp, #-260]
	b	.L12
.L16:
	ldr	r3, [fp, #-256]
	add	r3, r3, #1
	str	r3, [fp, #-256]
	b	.L12
.L17:
	ldr	r3, [fp, #-252]
	add	r3, r3, #1
	str	r3, [fp, #-252]
	b	.L12
.L18:
	ldr	r3, [fp, #-248]
	add	r3, r3, #1
	str	r3, [fp, #-248]
	b	.L12
.L19:
	ldr	r3, [fp, #-244]
	add	r3, r3, #1
	str	r3, [fp, #-244]
	b	.L12
.L20:
	ldr	r3, [fp, #-240]
	add	r3, r3, #1
	str	r3, [fp, #-240]
	b	.L12
.L21:
	ldr	r3, [fp, #-236]
	add	r3, r3, #1
	str	r3, [fp, #-236]
	b	.L12
.L22:
	ldr	r3, [fp, #-232]
	add	r3, r3, #1
	str	r3, [fp, #-232]
	b	.L12
.L23:
	ldr	r3, [fp, #-228]
	add	r3, r3, #1
	str	r3, [fp, #-228]
	b	.L12
.L24:
	ldr	r3, [fp, #-224]
	add	r3, r3, #1
	str	r3, [fp, #-224]
	b	.L12
.L25:
	ldr	r3, [fp, #-220]
	add	r3, r3, #1
	str	r3, [fp, #-220]
	b	.L12
.L26:
	ldr	r3, [fp, #-216]
	add	r3, r3, #1
	str	r3, [fp, #-216]
	b	.L12
.L27:
	ldr	r3, [fp, #-212]
	add	r3, r3, #1
	str	r3, [fp, #-212]
	b	.L12
.L28:
	ldr	r3, [fp, #-208]
	add	r3, r3, #1
	str	r3, [fp, #-208]
	b	.L12
.L29:
	ldr	r3, [fp, #-204]
	add	r3, r3, #1
	str	r3, [fp, #-204]
	b	.L12
.L30:
	ldr	r3, [fp, #-200]
	add	r3, r3, #1
	str	r3, [fp, #-200]
	b	.L12
.L31:
	ldr	r3, [fp, #-196]
	add	r3, r3, #1
	str	r3, [fp, #-196]
	b	.L12
.L32:
	ldr	r3, [fp, #-192]
	add	r3, r3, #1
	str	r3, [fp, #-192]
	b	.L12
.L33:
	ldr	r3, [fp, #-188]
	add	r3, r3, #1
	str	r3, [fp, #-188]
	b	.L12
.L34:
	ldr	r3, [fp, #-184]
	add	r3, r3, #1
	str	r3, [fp, #-184]
	b	.L12
.L35:
	ldr	r3, [fp, #-180]
	add	r3, r3, #1
	str	r3, [fp, #-180]
	b	.L12
.L36:
	ldr	r3, [fp, #-176]
	add	r3, r3, #1
	str	r3, [fp, #-176]
	b	.L12
.L37:
	ldr	r3, [fp, #-172]
	add	r3, r3, #1
	str	r3, [fp, #-172]
	b	.L12
.L38:
	ldr	r3, [fp, #-168]
	add	r3, r3, #1
	str	r3, [fp, #-168]
.L12:
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L11:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-164]
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L40
	sub	r3, fp, #388
	mov	r2, #104
	mov	r0, r3
	mov	r1, #0
	bl	memset
	mov	r3, #0
	str	r3, [fp, #-120]
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L41
.L43:
	ldr	r3, [fp, #-152]
	mvn	r2, #247
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L42
	ldr	r3, [fp, #-120]
	add	r3, r3, #1
	str	r3, [fp, #-120]
.L42:
	ldr	r0, [fp, #-152]
	ldr	r3, [fp, #-152]
	mvn	r2, #247
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r2, .L239+12
	mov	r3, r0, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L41:
	ldr	r3, [fp, #-152]
	cmp	r3, #25
	ble	.L43
	ldr	r3, [fp, #-120]
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-120]
	sub	r3, r3, #1
	cmp	r3, #25
	ldrls	pc, [pc, r3, asl #2]
	b	.L44
.L71:
	.word	.L45
	.word	.L46
	.word	.L47
	.word	.L48
	.word	.L49
	.word	.L50
	.word	.L51
	.word	.L52
	.word	.L53
	.word	.L54
	.word	.L55
	.word	.L56
	.word	.L57
	.word	.L58
	.word	.L59
	.word	.L60
	.word	.L61
	.word	.L62
	.word	.L63
	.word	.L64
	.word	.L65
	.word	.L66
	.word	.L67
	.word	.L68
	.word	.L69
	.word	.L70
.L45:
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
	b	.L44
.L46:
	ldr	r3, [fp, #-116]
	sub	r3, r3, #1
	str	r3, [fp, #-116]
	b	.L44
.L47:
	ldr	r3, [fp, #-116]
	sub	r3, r3, #1
	str	r3, [fp, #-116]
	b	.L44
.L48:
	ldr	r3, [fp, #-116]
	sub	r3, r3, #1
	str	r3, [fp, #-116]
	b	.L44
.L49:
	ldr	r3, [fp, #-116]
	sub	r3, r3, #2
	str	r3, [fp, #-116]
	b	.L44
.L50:
	mov	r3, #6
	str	r3, [fp, #-116]
	b	.L44
.L51:
	mov	r3, #6
	str	r3, [fp, #-116]
	b	.L44
.L52:
	mov	r3, #6
	str	r3, [fp, #-116]
	b	.L44
.L53:
	mov	r3, #6
	str	r3, [fp, #-116]
	b	.L44
.L54:
	mov	r3, #6
	str	r3, [fp, #-116]
	b	.L44
.L55:
	mov	r3, #6
	str	r3, [fp, #-116]
	b	.L44
.L56:
	mov	r3, #6
	str	r3, [fp, #-116]
	b	.L44
.L57:
	mov	r3, #6
	str	r3, [fp, #-116]
	b	.L44
.L58:
	mov	r3, #6
	str	r3, [fp, #-116]
	b	.L44
.L59:
	mov	r3, #10
	str	r3, [fp, #-116]
	b	.L44
.L60:
	mov	r3, #10
	str	r3, [fp, #-116]
	b	.L44
.L61:
	mov	r3, #10
	str	r3, [fp, #-116]
	b	.L44
.L62:
	mov	r3, #10
	str	r3, [fp, #-116]
	b	.L44
.L63:
	mov	r3, #10
	str	r3, [fp, #-116]
	b	.L44
.L64:
	mov	r3, #10
	str	r3, [fp, #-116]
	b	.L44
.L65:
	mov	r3, #10
	str	r3, [fp, #-116]
	b	.L44
.L66:
	mov	r3, #10
	str	r3, [fp, #-116]
	b	.L44
.L67:
	mov	r3, #10
	str	r3, [fp, #-116]
	b	.L44
.L68:
	mov	r3, #10
	str	r3, [fp, #-116]
	b	.L44
.L69:
	mov	r3, #10
	str	r3, [fp, #-116]
	b	.L44
.L70:
	mov	r3, #10
	str	r3, [fp, #-116]
.L44:
	mvn	r2, #-2147483648
	ldr	r3, [fp, #-116]
	mov	r3, r2, asr r3
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-140]
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L72
.L76:
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-148]
	b	.L73
.L75:
	ldr	r3, [fp, #-152]
	mvn	r2, #247
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-148]
	mvn	r2, #247
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r1, r3
	bge	.L74
	ldr	r3, [fp, #-152]
	mvn	r2, #247
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-140]
	ldr	r0, [fp, #-152]
	ldr	r3, [fp, #-148]
	mvn	r2, #247
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	mvn	r2, #247
	mov	r3, r0, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-148]
	mvn	r2, #247
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-140]
	str	r3, [r2, #0]
.L74:
	ldr	r3, [fp, #-148]
	add	r3, r3, #1
	str	r3, [fp, #-148]
.L73:
	ldr	r3, [fp, #-148]
	cmp	r3, #25
	ble	.L75
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L72:
	ldr	r3, [fp, #-152]
	cmp	r3, #25
	ble	.L76
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L77
.L78:
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L77:
	ldr	r3, [fp, #-152]
	cmp	r3, #25
	ble	.L78
	sub	r1, fp, #412
	str	r1, [fp, #-572]
	ldr	r2, [fp, #-572]
	sub	r2, r2, #2
	str	r2, [fp, #-572]
	mov	r3, #0
	ldr	ip, [fp, #-572]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-572]
	add	r0, r0, #2
	str	r0, [fp, #-572]
	mov	r3, #0
	ldr	r1, [fp, #-572]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-572]
	add	r2, r2, #2
	str	r2, [fp, #-572]
	mov	r3, #0
	ldr	ip, [fp, #-572]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-572]
	add	r0, r0, #2
	str	r0, [fp, #-572]
	mov	r3, #0
	ldr	r1, [fp, #-572]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-572]
	add	r2, r2, #2
	str	r2, [fp, #-572]
	mov	r3, #0
	ldr	ip, [fp, #-572]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-572]
	add	r0, r0, #2
	str	r0, [fp, #-572]
	mov	r3, #0
	ldr	r1, [fp, #-572]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-572]
	add	r2, r2, #2
	str	r2, [fp, #-572]
	mov	r3, #0
	ldr	ip, [fp, #-572]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-572]
	add	r0, r0, #2
	str	r0, [fp, #-572]
	mov	r3, #0
	ldr	r1, [fp, #-572]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-572]
	add	r2, r2, #2
	str	r2, [fp, #-572]
	mov	r3, #0
	ldr	ip, [fp, #-572]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-572]
	add	r0, r0, #2
	str	r0, [fp, #-572]
	mov	r3, #0
	ldr	r1, [fp, #-572]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-572]
	add	r2, r2, #2
	str	r2, [fp, #-572]
	mov	r3, #0
	ldr	ip, [fp, #-572]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-572]
	add	r0, r0, #2
	str	r0, [fp, #-572]
	mov	r3, #0
	ldr	r1, [fp, #-572]
	strh	r3, [r1, #0]	@ movhi
	ldr	r2, [fp, #-572]
	add	r2, r2, #2
	str	r2, [fp, #-572]
	mov	r3, #0
	ldr	ip, [fp, #-572]
	strh	r3, [ip, #0]	@ movhi
	ldr	r0, [fp, #-572]
	add	r0, r0, #2
	ldr	r3, .L239+16
	sub	r2, fp, #440
	mov	ip, #26
	mov	r0, r2
	mov	r1, r3
	mov	r2, ip
	bl	memcpy
	ldr	r3, [fp, #-120]
	str	r3, [fp, #-108]
	ldr	r0, [fp, #-164]
	bl	strlen
	mov	r3, r0
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-104]
	str	r3, [fp, #-100]
	b	.L79
.L83:
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L80
.L82:
	ldr	r3, [fp, #-152]
	ldr	r2, .L239+12
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L81
	ldr	r3, [fp, #-144]
	mvn	r2, #247
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-152]
	ldr	r2, .L239+12
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r1, r3
	bne	.L81
	ldr	r3, [fp, #-144]
	mvn	r2, #247
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r0, [fp, #-144]
	ldr	r3, [fp, #-152]
	ldr	r2, .L239+20
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, .L239+32
	sub	ip, fp, #20
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-108]
	sub	r3, r3, #1
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-144]
	add	r3, r3, #1
	str	r3, [fp, #-144]
.L81:
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L80:
	ldr	r3, [fp, #-152]
	cmp	r3, #25
	ble	.L82
.L79:
	ldr	r3, [fp, #-108]
	cmp	r3, #0
	bgt	.L83
	sub	r3, fp, #544
	mov	r2, #104
	mov	r0, r3
	mov	r1, #0
	bl	memset
	ldr	r3, [fp, #-120]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L84
.L90:
	.word	.L85
	.word	.L86
	.word	.L87
	.word	.L88
	.word	.L89
.L85:
	mov	r3, #0
	str	r3, [fp, #-544]
	b	.L91
.L86:
	mov	r3, #0
	str	r3, [fp, #-544]
	mov	r3, #1
	str	r3, [fp, #-540]
	b	.L91
.L87:
	mov	r3, #0
	str	r3, [fp, #-544]
	mov	r3, #1
	str	r3, [fp, #-540]
	mov	r3, #3
	str	r3, [fp, #-536]
	b	.L91
.L88:
	mov	r3, #0
	str	r3, [fp, #-544]
	mov	r3, #1
	str	r3, [fp, #-540]
	mov	r3, #3
	str	r3, [fp, #-536]
	mov	r3, #7
	str	r3, [fp, #-532]
	b	.L91
.L89:
	mov	r3, #0
	str	r3, [fp, #-544]
	mov	r3, #1
	str	r3, [fp, #-540]
	mov	r3, #3
	str	r3, [fp, #-536]
	mov	r3, #2
	str	r3, [fp, #-532]
	mov	r3, #6
	str	r3, [fp, #-528]
	b	.L91
.L84:
	mov	r3, #1
	str	r3, [fp, #-544]
	mov	r3, #5
	str	r3, [fp, #-540]
	mov	r3, #12
	str	r3, [fp, #-536]
	mov	r3, #7
	str	r3, [fp, #-532]
	mov	r3, #10
	str	r3, [fp, #-528]
	mov	r3, #14
	str	r3, [fp, #-524]
	mov	r3, #2
	str	r3, [fp, #-520]
	mov	r3, #11
	str	r3, [fp, #-516]
	mov	r3, #3
	str	r3, [fp, #-512]
	mov	r3, #8
	str	r3, [fp, #-508]
	mov	r3, #15
	str	r3, [fp, #-504]
	mov	r3, #31
	str	r3, [fp, #-500]
	mov	r3, #4
	str	r3, [fp, #-496]
	mov	r3, #20
	str	r3, [fp, #-492]
	mov	r3, #16
	str	r3, [fp, #-488]
	mov	r3, #38
	str	r3, [fp, #-484]
	mov	r3, #32
	str	r3, [fp, #-480]
	mov	r3, #6
	str	r3, [fp, #-476]
	mov	r3, #0
	str	r3, [fp, #-472]
	mov	r3, #54
	str	r3, [fp, #-468]
	mov	r3, #48
	str	r3, [fp, #-464]
	mov	r3, #22
	str	r3, [fp, #-460]
	mov	r3, #214
	str	r3, [fp, #-456]
	ldr	r3, .L239+24
	str	r3, [fp, #-452]
	ldr	r3, .L239+28
	str	r3, [fp, #-448]
	mov	r3, #86
	str	r3, [fp, #-444]
.L91:
	mov	r3, #0
	str	r3, [fp, #-96]
	mov	r3, #1
	str	r3, [fp, #-92]
	ldr	r0, [fp, #-164]
	bl	strlen
	mov	r2, r0
	ldr	r3, [fp, #-116]
	mul	r3, r2, r3
	add	r3, r3, #1
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	bne	.L92
	mov	r0, #0
	str	r0, [fp, #-568]
	b	.L3
.L92:
	ldr	r3, [fp, #-88]
	ldr	r2, [fp, #-128]
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L93
.L149:
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	blt	.L94
	ldr	r3, [fp, #-152]
	sub	r3, r3, #1
	str	r3, [fp, #-152]
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r2, r3, r2
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r2, r3, r2
	ldr	r3, [fp, #-132]
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-132]
	mov	r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-136]
	add	r3, r3, #1
	str	r3, [fp, #-136]
	b	.L95
.L94:
	mov	r3, #0
	str	r3, [fp, #-148]
	b	.L96
.L148:
	ldr	r3, [fp, #-120]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L97
.L103:
	.word	.L98
	.word	.L99
	.word	.L100
	.word	.L101
	.word	.L102
.L98:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-164]
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-148]
	ldr	r2, .L239+32
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L105
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-104]
	sub	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bne	.L105
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r2, r3, r2
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r2, r3, r2
	ldr	r3, [fp, #-132]
	str	r3, [r2, #0]
	b	.L105
.L99:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-164]
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-148]
	ldr	r2, .L239+32
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L105
	ldr	r3, [fp, #-148]
	ldr	r2, .L239+36
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-96]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-104]
	sub	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bne	.L105
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r2, r3, r2
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r2, r3, r2
	ldr	r3, [fp, #-132]
	str	r3, [r2, #0]
	b	.L105
.L100:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-164]
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-148]
	ldr	r2, .L239+32
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L105
	ldr	r3, [fp, #-148]
	ldr	r2, .L239+36
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	cmp	r3, #0
	bne	.L108
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L109
.L108:
	ldr	r3, [fp, #-96]
	cmp	r3, #1
	bne	.L110
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L109
.L240:
	.align	2
.L239:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	-368
	.word	C.15.3171
	.word	-420
	.word	342
	.word	470
	.word	-394
	.word	-524
.L110:
	ldr	r3, [fp, #-96]
	cmp	r3, #3
	bne	.L109
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
.L109:
	ldr	r3, [fp, #-104]
	sub	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bne	.L105
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r2, r3, r2
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r2, r3, r2
	ldr	r3, [fp, #-132]
	str	r3, [r2, #0]
	b	.L105
.L101:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-164]
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-148]
	ldr	r2, .L239+32
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L105
	ldr	r3, [fp, #-148]
	ldr	r2, .L239+36
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	cmp	r3, #0
	bne	.L112
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L113
.L112:
	ldr	r3, [fp, #-96]
	cmp	r3, #1
	bne	.L114
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L113
.L114:
	ldr	r3, [fp, #-96]
	cmp	r3, #3
	bne	.L115
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L113
.L115:
	ldr	r3, [fp, #-96]
	cmp	r3, #7
	bne	.L113
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
.L113:
	ldr	r3, [fp, #-104]
	sub	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bne	.L105
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r2, r3, r2
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r2, r3, r2
	ldr	r3, [fp, #-132]
	str	r3, [r2, #0]
	b	.L105
.L102:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-164]
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-148]
	ldr	r2, .L239+32
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L105
	ldr	r3, [fp, #-148]
	ldr	r2, .L239+36
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	cmp	r3, #0
	bne	.L117
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L118
.L117:
	ldr	r3, [fp, #-96]
	cmp	r3, #1
	bne	.L119
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L118
.L119:
	ldr	r3, [fp, #-96]
	cmp	r3, #3
	bne	.L120
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L118
.L120:
	ldr	r3, [fp, #-96]
	cmp	r3, #2
	bne	.L121
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L118
.L121:
	ldr	r3, [fp, #-96]
	cmp	r3, #6
	bne	.L118
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
.L118:
	ldr	r3, [fp, #-104]
	sub	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bne	.L105
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r2, r3, r2
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r2, r3, r2
	ldr	r3, [fp, #-132]
	str	r3, [r2, #0]
	b	.L105
.L97:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-164]
	add	r3, r3, r2
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r3, [fp, #-148]
	ldr	r2, .L239+32
	sub	ip, fp, #20
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L105
	ldr	r3, [fp, #-148]
	ldr	r2, .L239+36
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	cmp	r3, #1
	bne	.L122
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L122:
	ldr	r3, [fp, #-96]
	cmp	r3, #5
	bne	.L124
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L124:
	ldr	r3, [fp, #-96]
	cmp	r3, #12
	bne	.L125
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L125:
	ldr	r3, [fp, #-96]
	cmp	r3, #7
	bne	.L126
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L126:
	ldr	r3, [fp, #-96]
	cmp	r3, #10
	bne	.L127
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L127:
	ldr	r3, [fp, #-96]
	cmp	r3, #14
	bne	.L128
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L128:
	ldr	r3, [fp, #-96]
	cmp	r3, #2
	bne	.L129
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L129:
	ldr	r3, [fp, #-96]
	cmp	r3, #11
	bne	.L130
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L130:
	ldr	r3, [fp, #-96]
	cmp	r3, #3
	bne	.L131
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L131:
	ldr	r3, [fp, #-96]
	cmp	r3, #8
	bne	.L132
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L132:
	ldr	r3, [fp, #-96]
	cmp	r3, #15
	bne	.L133
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L133:
	ldr	r3, [fp, #-96]
	cmp	r3, #31
	bne	.L134
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L134:
	ldr	r3, [fp, #-96]
	cmp	r3, #4
	bne	.L135
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L135:
	ldr	r3, [fp, #-96]
	cmp	r3, #20
	bne	.L136
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L136:
	ldr	r3, [fp, #-96]
	cmp	r3, #16
	bne	.L137
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L137:
	ldr	r3, [fp, #-96]
	cmp	r3, #38
	bne	.L138
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L138:
	ldr	r3, [fp, #-96]
	cmp	r3, #32
	bne	.L139
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L139:
	ldr	r3, [fp, #-96]
	cmp	r3, #6
	bne	.L140
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L140:
	ldr	r3, [fp, #-96]
	cmp	r3, #0
	bne	.L141
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L141:
	ldr	r3, [fp, #-96]
	cmp	r3, #54
	bne	.L142
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L142:
	ldr	r3, [fp, #-96]
	cmp	r3, #48
	bne	.L143
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L143:
	ldr	r3, [fp, #-96]
	cmp	r3, #22
	bne	.L144
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L144:
	ldr	r3, [fp, #-96]
	cmp	r3, #214
	bne	.L145
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L145:
	ldr	r2, [fp, #-96]
	ldr	r3, .L241+8
	cmp	r2, r3
	bne	.L146
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L146:
	ldr	r2, [fp, #-96]
	ldr	r3, .L241+12
	cmp	r2, r3
	bne	.L147
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L123
.L147:
	ldr	r3, [fp, #-96]
	cmp	r3, #86
	bne	.L123
	ldr	r3, [fp, #-132]
	add	r3, r3, #1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-92]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-88]
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
.L123:
	ldr	r3, [fp, #-104]
	sub	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bne	.L105
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r2, r3, r2
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r2, r3, r2
	ldr	r3, [fp, #-132]
	str	r3, [r2, #0]
.L105:
	ldr	r3, [fp, #-148]
	add	r3, r3, #1
	str	r3, [fp, #-148]
.L96:
	ldr	r2, [fp, #-148]
	ldr	r3, [fp, #-120]
	cmp	r2, r3
	blt	.L148
.L95:
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L93:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-104]
	cmp	r2, r3
	blt	.L149
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L150
.L151:
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L150:
	ldr	r2, [fp, #-152]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	blt	.L151
	mov	r3, #1
	str	r3, [fp, #-84]
	mov	r0, #4
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-80]
	sub	r3, fp, #284
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	ldr	r2, [fp, #-280]
	ldr	r3, [fp, #-272]
	rsb	r3, r3, r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-76]
	str	r4, [fp, #-72]
	sub	r4, fp, #76
	ldmia	r4, {r3-r4}
	adr	r6, .L241
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	sub	r6, fp, #76
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-68]
	str	r4, [fp, #-64]
	ldr	r0, .L241+16
	sub	r3, fp, #68
	ldmia	r3, {r2-r3}
	bl	printf
	ldr	r0, .L241+20
	bl	puts
	b	.L152
.L154:
	ldr	r3, .L241+24
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-80]
	mov	r1, #100
	mov	r2, r3
	bl	fgets
	ldr	r0, [fp, #-80]
	ldr	r1, .L241+28
	bl	strcspn
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-80]
	add	r2, r3, r2
	mov	r3, #32
	strb	r3, [r2, #0]
	ldr	r0, [fp, #-80]
	ldr	r1, .L241+32
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L153
	mov	r3, #0
	str	r3, [fp, #-84]
	b	.L152
.L153:
	ldr	r0, [fp, #-80]
	ldr	r1, .L241+36
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L152
	ldr	r0, .L241+40
	ldr	r1, [fp, #-80]
	bl	printf
.L152:
	ldr	r3, [fp, #-84]
	cmp	r3, #0
	bne	.L154
	sub	r3, fp, #552
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	ldr	r3, [fp, #-100]
	add	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bne	.L155
	mov	r1, #0
	str	r1, [fp, #-568]
	b	.L3
.L155:
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-136]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-120]
	sub	r3, r3, #1
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L156
.L162:
	.word	.L157
	.word	.L158
	.word	.L159
	.word	.L160
	.word	.L161
.L157:
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L163
.L166:
	mov	r3, #0
	str	r3, [fp, #-148]
	b	.L164
.L165:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-414]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-148]
	add	r3, r3, #1
	str	r3, [fp, #-148]
.L164:
	ldr	r2, [fp, #-148]
	ldr	r3, [fp, #-104]
	cmp	r2, r3
	blt	.L165
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L163:
	ldr	r3, [fp, #-136]
	add	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bgt	.L166
	b	.L167
.L158:
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L168
.L173:
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-128]
	mov	r3, #0
	str	r3, [fp, #-148]
	b	.L169
.L172:
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L170
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-413]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L171
.L170:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-414]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
.L171:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-148]
	add	r3, r3, #1
	str	r3, [fp, #-148]
.L169:
	ldr	r2, [fp, #-148]
	ldr	r3, [fp, #-104]
	cmp	r2, r3
	blt	.L172
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L168:
	ldr	r3, [fp, #-136]
	add	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bgt	.L173
	b	.L167
.L159:
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L174
.L181:
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-128]
	mov	r3, #0
	str	r3, [fp, #-148]
	b	.L175
.L180:
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L176
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L177
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-412]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L179
.L177:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-413]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L179
.L242:
	.align	3
.L241:
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
.L176:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-414]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
.L179:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-148]
	add	r3, r3, #1
	str	r3, [fp, #-148]
.L175:
	ldr	r2, [fp, #-148]
	ldr	r3, [fp, #-104]
	cmp	r2, r3
	blt	.L180
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L174:
	ldr	r3, [fp, #-136]
	add	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bgt	.L181
	b	.L167
.L160:
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L182
.L191:
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-128]
	mov	r3, #0
	str	r3, [fp, #-148]
	b	.L183
.L190:
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L184
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L185
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L186
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-411]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L189
.L186:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-412]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L189
.L185:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-413]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L189
.L184:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-414]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
.L189:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-148]
	add	r3, r3, #1
	str	r3, [fp, #-148]
.L183:
	ldr	r2, [fp, #-148]
	ldr	r3, [fp, #-104]
	cmp	r2, r3
	blt	.L190
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L182:
	ldr	r3, [fp, #-136]
	add	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bgt	.L191
	b	.L167
.L161:
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L192
.L202:
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-128]
	mov	r3, #0
	str	r3, [fp, #-148]
	b	.L193
.L201:
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L194
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L195
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-412]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L197
.L195:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-413]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L197
.L194:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L198
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L199
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-410]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L197
.L199:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-411]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L197
.L198:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-414]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
.L197:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-148]
	add	r3, r3, #1
	str	r3, [fp, #-148]
.L193:
	ldr	r2, [fp, #-148]
	ldr	r3, [fp, #-104]
	cmp	r2, r3
	blt	.L201
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L192:
	ldr	r3, [fp, #-136]
	add	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bgt	.L202
	b	.L167
.L156:
	mov	r3, #0
	str	r3, [fp, #-152]
	b	.L203
.L234:
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-156]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-48]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-160]
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-128]
	mov	r3, #0
	str	r3, [fp, #-148]
	b	.L204
.L233:
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L205
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L206
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L207
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L208
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L209
	b	.L238
.L208:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-411]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L209:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-403]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L238:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-404]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L207:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L212
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-407]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L212:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-406]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L206:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L213
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-413]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L213:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-414]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L205:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L214
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L215
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L216
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-409]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L216:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L217
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L218
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-395]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L218:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L219
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L220
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L221
.L220:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L222
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-391]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L222:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L221
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-389]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L221:
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L223
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-390]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L223:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-392]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L219:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-393]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L217:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L224
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-399]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L224:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-397]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L215:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L225
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-410]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L225:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-408]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L214:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L226
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L227
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-412]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L227:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L228
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-401]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L228:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-402]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L226:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L229
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-405]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L229:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L230
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L231
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-394]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L231:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-400]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L230:
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-128]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L232
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-398]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
	b	.L211
.L232:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	add	r2, r3, r2
	ldrb	r3, [fp, #-396]	@ zero_extendqisi2
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asr #1
	str	r3, [fp, #-128]
.L211:
	ldr	r3, [fp, #-148]
	add	r3, r3, #1
	str	r3, [fp, #-148]
.L204:
	ldr	r2, [fp, #-148]
	ldr	r3, [fp, #-104]
	cmp	r2, r3
	blt	.L233
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L203:
	ldr	r3, [fp, #-136]
	add	r2, r3, #1
	ldr	r3, [fp, #-152]
	cmp	r2, r3
	bgt	.L234
.L167:
	ldr	r0, [fp, #-164]
	ldr	r1, [fp, #-56]
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L235
	ldr	r3, [fp, #-100]
	mov	ip, r3, asl #3
	ldr	r3, [fp, #-92]
	str	r3, [sp, #0]
	ldr	r0, .L241+44
	ldr	r1, [fp, #-164]
	ldr	r2, [fp, #-100]
	mov	r3, ip
	bl	printf
	ldr	r0, .L241+48
	ldr	r1, [fp, #-56]
	bl	printf
	b	.L236
.L235:
	ldr	r0, .L241+52
	ldr	r1, [fp, #-164]
	ldr	r2, [fp, #-56]
	bl	printf
.L236:
	mov	r3, #0
	str	r3, [fp, #-164]
	mov	r3, #0
	str	r3, [fp, #-56]
	mov	r3, #0
	str	r3, [fp, #-160]
	mov	r3, #0
	str	r3, [fp, #-156]
	mov	r3, #0
	str	r3, [fp, #-88]
	ldr	r0, [fp, #-156]
	bl	free
	ldr	r0, [fp, #-160]
	bl	free
	ldr	r0, [fp, #-164]
	bl	free
	ldr	r0, [fp, #-56]
	bl	free
	ldr	r0, [fp, #-88]
	bl	free
	sub	r3, fp, #560
	mov	r0, r3
	mov	r1, #0
	bl	gettimeofday
	ldr	r2, [fp, #-556]
	ldr	r3, [fp, #-548]
	rsb	r3, r3, r2
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-44]
	str	r4, [fp, #-40]
	sub	r4, fp, #44
	ldmia	r4, {r3-r4}
	adr	r6, .L243
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	sub	r6, fp, #44
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	ldr	r0, .L243+8
	sub	r3, fp, #36
	ldmia	r3, {r2-r3}
	bl	printf
	sub	r4, fp, #68
	ldmia	r4, {r3-r4}
	sub	r6, fp, #36
	ldmia	r6, {r5-r6}
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	ldr	r0, .L243+12
	mov	r2, r3
	mov	r3, r4
	bl	printf
	mov	r2, #0
	str	r2, [fp, #-568]
.L3:
	ldr	r3, [fp, #-568]
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, pc}
.L244:
	.align	3
.L243:
	.word	-1610612736
	.word	1051772663
	.word	.LC12
	.word	.LC13
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
