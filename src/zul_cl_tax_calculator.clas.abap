CLASS zul_cl_tax_calculator DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zul_if_calc_logic.
ENDCLASS.

CLASS zul_cl_tax_calculator IMPLEMENTATION.
  METHOD zul_if_calc_logic~calculate.
    rv_result = iv_amount * '1.20'. " Example: 20% Tax
  ENDMETHOD.
ENDCLASS.
