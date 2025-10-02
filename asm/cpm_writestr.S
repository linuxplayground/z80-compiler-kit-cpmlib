; vim: set ft=z80 ts=2 sw=2 et:
;****************************************************************************
;    Wrapper functions for CPM are all public domain.
;    See: https://www.seasip.info/Cpm/bdosfunc.html
;****************************************************************************

  .export _cpm_writestr
  .code
_cpm_writestr:
  push  bc
  ld    c,9
  ex    de,hl
  call  5
  pop   bc
  ret
