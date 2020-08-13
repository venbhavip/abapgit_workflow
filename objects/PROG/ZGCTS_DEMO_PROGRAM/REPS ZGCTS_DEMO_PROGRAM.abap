*&---------------------------------------------------------------------*
*& Modulpool ZGCTS_DEMO_PROGRAM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
PROGRAM zgcts_demo_program.
INCLUDE ZGCTS_DEMO_Program_top.
*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
 SET PF-STATUS 'PFSTATUS'.
 SET TITLEBAR 'TITLE'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
CASE sy-ucomm.
WHEN 'EXIT'.
LEAVE TO SCREEN 0.

WHEN 'ENTER'.
 ls_pro-pro_id = gv_pro_id.
ls_pro-country = gv_COUNTRY.
ls_pro-pro_name = gv_PRO_NAME.
ls_pro-pro_sale = gv_PRO_value.
ls_pro-pro_qty = gv_PRO_QTy.
ls_pro-pro_date = gv_PRO_DATE.

WHEN 'SAVE'.
ls_pro-pro_id = gv_pro_id.
ls_pro-country = gv_COUNTRY.
ls_pro-pro_name = gv_PRO_NAME.
ls_pro-pro_sale = gv_PRO_value.
ls_pro-pro_qty = gv_PRO_QTy.
ls_pro-pro_date = gv_PRO_DATE.
APPEND ls_pro TO lt_pro.
IF ls_pro IS NOT INITIAL.
MODIFY zgcts_demo_table FROM TABLE lt_pro.
ENDIF.

ENDCASE.

ENDMODULE.