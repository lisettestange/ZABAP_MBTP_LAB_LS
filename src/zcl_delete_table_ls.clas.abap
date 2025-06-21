CLASS zcl_delete_table_ls DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_delete_table_ls IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*   Borra datos de la tabla ZTB_CATEGO_LS
    DELETE FROM ztb_catego_LS.

    IF sy-subrc EQ 0.
      out->write( 'Eliminados datos de la tabla: ZTB_CATEGO_LS' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
