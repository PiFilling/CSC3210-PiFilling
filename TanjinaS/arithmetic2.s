.section .data
val1: .word 6
val2: .word 11
val3: .word 16
.section .data
.globl _start
_start:
	ldr r1,=val1
	ldr r1,[r1]
	ldr r2,=val2
	ldr r2,[r2]
	ldr r3,=val3
	ldr r3,[r3]
	add r2,r2,#9
	add r2,r2,r3
	sub r1,r2,r1

	mov r7,#1
	svc #0
.end
