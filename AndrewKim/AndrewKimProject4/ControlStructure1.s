.section .data
    x: .word 1

.section .text
.globl _start
_start:
    ldr r1, =x
    ldr r1, [r1]
    
    cmp  r1, #3
    ble S1

    sub r1, r1, #2
    b Finish
S1:
    sub r1, r1, #1

Finish:
    mov r7, #1
    svc #0
.end
