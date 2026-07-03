.LC0:
        .string "%d\t%d\n"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     DWORD PTR [rbp-8], 0
        mov     DWORD PTR [rbp-12], 300
        mov     DWORD PTR [rbp-16], 20
        mov     eax, DWORD PTR [rbp-8]
        mov     DWORD PTR [rbp-4], eax
        jmp     .L2
.L3:
        mov     eax, DWORD PTR [rbp-4]
        lea     ecx, [rax-32]
        mov     edx, 954437177
        mov     eax, ecx
        imul    edx
        sar     edx
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        add     eax, 5
        mov     DWORD PTR [rbp-20], eax
        mov     edx, DWORD PTR [rbp-20]
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-16]
        add     DWORD PTR [rbp-4], eax
.L2:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-12]
        jle     .L3
        mov     eax, 0
        leave
        ret
