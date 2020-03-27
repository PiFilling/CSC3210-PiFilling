.section .data
val1: .byte -60
val2: .byte 11
val3: .byte 16
.section .text
.globl _start
_start:
	ldr r1, =val2
	ldrb r1, [r1]
	ldr r2, =val3
	ldrb r2, [r2]
	ldr r3, =val1
	ldrsb r3, [r3]
	add r1, #3
	add r1, r2
	sub r1,r3

	mov r7, #1
	svc #0
.end
