.LC1:
  .string "%3d %6.1f\n"
"main":
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov DWORD PTR [rbp-4], 300
  jmp .L2
.L3:
  mov eax, DWORD PTR [rbp-4]
  sub eax, 32
  pxor xmm1, xmm1
  cvtsi2sd xmm1, eax
  movsd xmm0, QWORD PTR .LC0[rip]
  mulsd xmm1, xmm0
  movq rdx, xmm1
  mov eax, DWORD PTR [rbp-4]
  movq xmm0, rdx
  mov esi, eax
  mov edi, OFFSET FLAT:.LC1
  mov eax, 1
  call "printf"
  sub DWORD PTR [rbp-4], 20
.L2:
  cmp DWORD PTR [rbp-4], 0
  jns .L3
  mov eax, 0
  leave
  ret
.LC0:
  .long 1908874354
  .long 1071761180
