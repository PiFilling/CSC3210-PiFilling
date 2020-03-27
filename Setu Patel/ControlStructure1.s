.section .data
x: .word 1
.section .text
.global _start
_start:
	ldr r1,=x
	ldr r1,[r1]
	cmp r1, #3
	ble  truepart
	b    falsepart
	truepart:sub r1,#1
		ldr r2,=x
		str r1,[r2]
	       	b endofif
	falsepart:sub r1,#2
   		 ldr r2,=x
		 str r1,[r2]
 		 b endofif
	endofif: mov r7,#1
	svc #0
	.end
