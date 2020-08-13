*&---------------------------------------------------------------------*
*& Include          ZGCTS_DEMO_PROGRAM_TOP
*&---------------------------------------------------------------------*
DATA: Ls_pro       TYPE  zgcts_demo_table,
      lt_pro       TYPE TABLE OF zgcts_demo_table,
      gv_pro_id    TYPE zgcts_demo_table-pro_id,
      gv_COUNTRY   TYPE zgcts_demo_table-country ,
      gv_PRO_NAME  TYPE zgcts_demo_table-pro_name,
      gv_PRO_value TYPE zgcts_demo_table-pro_sale,
      gv_PRO_QTy   TYPE zgcts_demo_table-pro_qty,
      gv_PRO_DATE  TYPE zgcts_demo_table-pro_date.