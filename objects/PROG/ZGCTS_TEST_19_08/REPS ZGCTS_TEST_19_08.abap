************************************************************************
*  Confidential property of PepsiCo                                    *
*  All Rights Reserved                                                 *
************************************************************************
*      Program Name   :                                                *
*      TCode          :                                                *
*      Created By     :                                                *
*      Requested by   :                                                *
*      Created on     :                                                *
*      RICEF          :                                                *
*      PROJECT        :                                                *
*      FD Name        :                                                *
*      TR             :                                                *
*      Version        :                                                *
*      Description    :                                                *
*----------------------------------------------------------------------*
*  Modification Log:                                                   *
*----------------------------------------------------------------------*
* MOD#  | Date        |  Programmer  | CTS | Description               *
*----------------------------------------------------------------------*
*                                                                      *
*----------------------------------------------------------------------*

REPORT  ZGCTS_TEST_19_08.


<<<<<<< HEAD
write : 'push to master'.
DATA:lv_matnr TYPE matnr.
lv_matnr = '000000000100000003'.

DATA: cls_ref TYPE REF TO zcl_gcts_poc.

CREATE OBJECT cls_ref.

CALL METHOD cls_ref->get_material
  EXPORTING
    i_matnr = lv_matnr
  IMPORTING
    e_maktx = DATA(lv_maktx)
    .
WRITE:lv_matnr, lv_maktx.
write: 'push to test1 branch'.

write: 'push to test1 again'.
=======
write: 'push to master again.'.
write : 'push to master'.
>>>>>>> 86236cc42e788290cce88a5b6bed8e83a041ff99
