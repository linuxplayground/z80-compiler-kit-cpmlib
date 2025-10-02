; vim: set ft=z80 ts=2 sw=2 et:
;****************************************************************************
;    Wrapper functions for CPM are all public domain.
;    See: https://www.seasip.info/Cpm/bdosfunc.html
;****************************************************************************

  .export _cpm_drv_get
  .code
_cpm_drv_get:
  ld    c,0x19
  call  5
  ld    l,a
  ld    h,0
  ret
