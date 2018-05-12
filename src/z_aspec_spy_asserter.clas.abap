CLASS z_aspec_spy_asserter DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      z_aspec_xunit_assert.
    CLASS-DATA:
      actual                TYPE REF TO data,
      expected              TYPE REF TO data,
      assert_equals_called  TYPE abap_bool,
      assert_true_called    TYPE abap_bool,
      assert_false_called    TYPE abap_bool,
      assert_differs_called TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS save_actual
      IMPORTING
        actual TYPE any.
    METHODS save_expected
      IMPORTING
        expected TYPE any.

ENDCLASS.

CLASS z_aspec_spy_asserter IMPLEMENTATION.
  METHOD z_aspec_xunit_assert~assert_equals.
    assert_equals_called = abap_true.
    save_actual( act ).
    save_expected( exp ).
  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_true.
    assert_true_called = abap_true.
    save_actual( act ).
  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_differs.
    assert_differs_called = abap_true.
    save_actual( act ).
    save_expected( exp ).
  ENDMETHOD.


  METHOD save_actual.
    CREATE DATA me->actual LIKE actual.
    ASSIGN me->actual->* TO FIELD-SYMBOL(<actual>).
    <actual> = actual.
  ENDMETHOD.


  METHOD save_expected.
    CREATE DATA me->expected LIKE expected.
    ASSIGN me->expected->* TO FIELD-SYMBOL(<expected>).
    <expected> = expected.
  ENDMETHOD.

  METHOD z_aspec_xunit_assert~abort.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_bound.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_char_cp.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_char_np.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_equals_float.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_false.
    assert_false_called = abap_true.
    save_actual( act ).
  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_initial.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_not_bound.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_not_initial.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_number_between.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_subrc.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_table_contains.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_table_not_contains.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_text_matches.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~assert_that.

  ENDMETHOD.

  METHOD z_aspec_xunit_assert~fail.

  ENDMETHOD.

ENDCLASS.