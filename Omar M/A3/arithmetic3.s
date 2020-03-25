.section .data
val1: .byte -60
val2: .byte 11
val3: .byte 16

.section .text
.globl _start
_start:
	ldr r1, =val1
	ldrb r1, [r1]
	ldr r2, =val2
	ldrb r2, [r2]
	ldr r3, =val3
	ldrsb r3, [r3]

	mov r4, r2
	add r4, #3
	add r4, r3
	sub r4, r1

	mov r7, #1
	svc #0
.end
