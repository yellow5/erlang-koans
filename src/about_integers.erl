-module(about_integers).
-compile(export_all).

arithmetic_is_easily_applied() ->
  10 - 5 =:= 5.

remember_the_remainder() ->
  11 rem 2 =:= 1.

division_is_not_quite_so_straightforward() ->
  11 / 2 =:= 5.5.

maybe_this_is_what_is_needed() ->
  11 div 2 =:= 5.

absolute_integers() ->
  abs(-42) =:= 42.

base_does_not_change_the_value() ->
  12#36 =:= 42.

this_makes_applying_bitwise_operations_a_breeze() ->
  2#01011 band
  2#11010 =:= 10.

do_the_binary_shuffle() ->
  2#1010 bsl 2#101 =:= 2#101000000.

now_to_the_right() ->
  2#1010 bsr 2#1 =:= 5.

