@projecta1 program 2
.section .data
.section .text
.global _start
_start:
    mov r1, #7         @load r1 with 7
    mov r2, #2         @load r2 with 2
    mul r1, r2, r1     @multiply r2 and r1 and store in r1
    mov r2, #10        @load r2 with 10
    add r2, r2, #11    @add r2 and 11 and store in r2
    sub r1, r2, r1     @subtract r1 from r2 and store in r1

    mov r7, #1         @prog term: exit syscall
    svc #0             @prog term: wake kernel
.end
