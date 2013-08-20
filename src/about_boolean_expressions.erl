-module(about_boolean_expressions).
-compile(export_all).

or_operator() ->
  true =:= true or false.

and_operator() ->
  false =:= true and false.

xor_operator() ->
  true =:= true xor false.

not_operator() ->
  false =:= not true.

being_strict() ->
  StrictlyDefined = (42 =:= 42.0),
  false =:= StrictlyDefined.

being_not_so_strict() ->
  NotSoStrictlyDefined = (42 == 42.0),
  true =:= NotSoStrictlyDefined.

special_operators_evaluate_only_what_is_necessary() ->
  ShortCircuit = (true andalso false),
  false =:= ShortCircuit.

this_applies_to_or_as_well() ->
  ShortCircuit = (false orelse true),
  true =:= ShortCircuit.

make_de_morgan_proud() ->
  ((not true) orelse (true)) =:= (not (false andalso true)).

syntax_you_might_not_expect() ->
  true =:= (1 =< 2) and (3 /= 4).

