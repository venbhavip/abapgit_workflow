  METHOD get_material.

**Call FM

CALL FUNCTION 'ZGCTS_FM_POC'
  EXPORTING
    i_matnr       = i_matnr
 IMPORTING
   e_maktx       = e_maktx
          .

  ENDMETHOD.