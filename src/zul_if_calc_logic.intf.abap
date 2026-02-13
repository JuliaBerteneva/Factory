INTERFACE zul_if_calc_logic
  PUBLIC .
  METHODS: calculate IMPORTING iv_amount        TYPE f
                     RETURNING VALUE(rv_result) TYPE f.
ENDINTERFACE.
