@second program: c = a+b
.section .data
a: .word 2 @32-bit var a in mem
b: .word 5 @ 32-bit var b in mem
c: .word 0 @32-bit var c in mem

.section .text
.globl _start
_start:
    ldr r1, =a       @load mem address of a into r1
    ldr r1, [r1]     @load value a into r1
    ldr r2, =b       @load mem address of b into r2
    ldr r2, [r2]     @load value of b into r2
    add r1, r1, r2   @add r1 to r2 and store into r1
    ldr r2, =c       @load the mem adress of c into r2
    str r1, [r2]     @store r1 into mem c

    mov r7, #1
    svc #0
.end
