FUNCTION zgcts_fm_poc.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(I_MATNR) TYPE  MATNR
*"  EXPORTING
*"     REFERENCE(E_MAKTX) TYPE  MAKTX
*"----------------------------------------------------------------------

**fetch material text

SELECT SINGLE maktx
  FROM makt
  INTO e_maktx
  WHERE matnr  = i_matnr
    AND spras = 'E'.



ENDFUNCTION.