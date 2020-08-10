FUNCTION ZGCTS_FM_POC.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(I_MATNR) TYPE  MATNR
*"  EXPORTING
*"     REFERENCE(E_MAKTX) TYPE  MAKTX
*"----------------------------------------------------------------------

**fetch material text
**test FM
select single maktx
  from makt
  into e_maktx
  where matnr  = i_matnr
    and spras = 'E'.



ENDFUNCTION.