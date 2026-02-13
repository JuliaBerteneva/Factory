CLASS zul_cl_discount_calculator DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zul_if_calc_logic.
ENDCLASS.

CLASS zul_cl_discount_calculator IMPLEMENTATION.
  METHOD zul_if_calc_logic~calculate.
    rv_result = iv_amount * '0.90'. " Example: 10% Discount
  ENDMETHOD.
ENDCLASS.
