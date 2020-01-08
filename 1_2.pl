:- use_module(library(clpfd)).
cliche -->
    thing,
    " is a ",
    type_of_thing,
    " trapped in a ",
    opposite_type_of_thing,
    " body.".
thing --> "Fluffy".
type_of_thing --> "dog".
opposite_type_of_thing --> "human".


fizz_buzz(Msg) --> anything, fizz(Msg), anything, buzz, anything.
anything --> [].
anything --> [_], anything.
fizz(Msg) -->
    "fizz",
    {
        format('At fizz we have Msg=~w~n', [Msg])
    }.
buzz -->
    "buzz".