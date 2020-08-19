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

REPORT  zgcts_poc_push.

write: 'test 18.08-demo'.

WRITE: 'Initial Commit(Push)'.

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

Write: 'Push Different objects'.

Write: 'Manual Push'.



WRITE: 'test2 branch'.

