.section .data
x: .word 1

.section .text
.global _start
_start:
	ldr r1, =x
	ldr r1, [r1]

	cmp r1, #3
	sub r1, r1, #1 @ x - 1 is unconditional

	ble after
	sub r1, r1, #1 @ 2nd x - 1 (x - 2 total) only if x > 3
after:
	ldr r0, =x
	str r1, [r0] @ store value in x
.end
