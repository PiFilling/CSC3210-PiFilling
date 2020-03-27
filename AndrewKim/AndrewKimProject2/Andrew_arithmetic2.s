@program for reg = val2+9+(val3-val1)
.section .data
val1: .word 6
val2: .word 11
val3: .word 16
.section .text
.globl _start
_start:
    ldr r1, =val3     @load r1 w/ address of val3
    ldr r1, [r1]      @load r1 w/ value of val3
    ldr r2, =val1     @load r2 w/ address of val1
    ldr r2, [r2]      @load r2 w/ value of val1
    sub r1, r1, r2    @subtract r2 from r1 (16-6) and save to r1
    add r1, r1, #9    @add 9 to r1 (10+9) and save to r1
    ldr r2, =val2     @load r2 w/ address of val 2
    ldr r2, [r2]      @load r2 w/ value of r2
    add r1, r1, r2    @add r2 to r1 (19+11) and store into r1

    mov r7, #1
    svc #0
.end
