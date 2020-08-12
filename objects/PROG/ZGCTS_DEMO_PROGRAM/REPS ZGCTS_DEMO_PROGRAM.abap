*&---------------------------------------------------------------------*
*& Modulpool ZGCTS_DEMO_PROGRAM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
PROGRAM ZGCTS_DEMO_PROGRAM.
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
case sy-ucomm.
when 'EXIT'.
leave to screen 0.

when 'ENTER'.
 ls_pro-pro_id = gv_pro_id.
ls_pro-country = gv_COUNTRY.
ls_pro-pro_name = gv_PRO_NAME.
ls_pro-pro_sale = gv_PRO_value.
ls_pro-pro_qty = gv_PRO_QTy.
ls_pro-pro_date = gv_PRO_DATE.

when 'SAVE'.
ls_pro-pro_id = gv_pro_id.
ls_pro-country = gv_COUNTRY.
ls_pro-pro_name = gv_PRO_NAME.
ls_pro-pro_sale = gv_PRO_value.
ls_pro-pro_qty = gv_PRO_QTy.
ls_pro-pro_date = gv_PRO_DATE.
append ls_pro to lt_pro.
IF ls_pro is NOT INITIAL.
MODIFY ZGCTS_DEMO_TABLE from table lt_pro.
ENDIF.

endcase.

ENDMODULE.