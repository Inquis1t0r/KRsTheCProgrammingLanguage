main:
  stp x29, x30, [sp, #-16]!
  mov x29, sp
  adrp x0, .L.str
  add x0, x0, :lo12:.L.str
  bl printf
  mov w0, #0
  ldp x29, x30, [sp], #16
  ret

.L.str:
  .asciz "hello, world\n"
