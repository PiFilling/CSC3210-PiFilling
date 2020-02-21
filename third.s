@ arithematic program
.section .data
Val1:.word 6
Val2:.word 11
Val3:.word 16
.section .text
.globl _start
_start:
  ldr r1,=Val3
  ldr r1,[r1]
  ldr r2,=Val2
  ldr r2,[r2]
  add r2,r2,#9
  add r1,r1,r2
  ldr r2,=Val1
  ldr r2,[r2]
  sub r1,r1,r2
  mov r7,#1
  svc #0
.end
