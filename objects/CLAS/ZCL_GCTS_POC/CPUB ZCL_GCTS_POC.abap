class ZCL_GCTS_POC definition
  public
  final
  create public .

public section.

  methods GET_MATERIAL
    importing
      !I_MATNR type MATNR
    exporting
      !E_MAKTX type MAKTX .