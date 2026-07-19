.LC3:
        .string "%3.0f %6.1f\n"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     DWORD PTR [rbp-8], 0
        mov     DWORD PTR [rbp-12], 300
        mov     DWORD PTR [rbp-16], 20
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, DWORD PTR [rbp-8]
        movss   DWORD PTR [rbp-4], xmm0
        jmp     .L2
.L3:
        movss   xmm0, DWORD PTR [rbp-4]
        movss   xmm1, DWORD PTR .LC0[rip]
        subss   xmm0, xmm1
        movss   xmm1, DWORD PTR .LC1[rip]
        divss   xmm0, xmm1
        movss   xmm1, DWORD PTR .LC2[rip]
        addss   xmm0, xmm1
        movss   DWORD PTR [rbp-20], xmm0
        cvtss2sd        xmm1, DWORD PTR [rbp-20]
        cvtss2sd        xmm0, DWORD PTR [rbp-4]
        mov     edi, OFFSET FLAT:.LC3
        mov     eax, 2
        call    printf
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, DWORD PTR [rbp-16]
        movss   xmm1, DWORD PTR [rbp-4]
        addss   xmm0, xmm1
        movss   DWORD PTR [rbp-4], xmm0
.L2:
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, DWORD PTR [rbp-12]
        ucomiss xmm0, DWORD PTR [rbp-4]
        jnb     .L3
        mov     eax, 0
        leave
        ret
.LC0:
        .long   1107296256
.LC1:
        .long   1091567616
.LC2:
        .long   1084227584
