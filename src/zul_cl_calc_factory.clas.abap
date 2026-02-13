CLASS zul_cl_calc_factory DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS get_calculator
      IMPORTING iv_calc_type         TYPE string
      RETURNING VALUE(ro_calculator) TYPE REF TO zul_if_calc_logic.
ENDCLASS.

CLASS zul_cl_calc_factory IMPLEMENTATION.
  METHOD get_calculator.
    " Centralized decision logic [1, 2]
    CASE iv_calc_type.
      WHEN 'TAX'.
        ro_calculator = NEW zul_cl_tax_calculator( ).
      WHEN 'DISCOUNT'.
        ro_calculator = NEW zul_cl_discount_calculator( ).
      WHEN OTHERS.
        "raise exception
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
