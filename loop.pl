:- use_module(library(clpfd)).
:- use_module(library(apply)).
valid([]).
valid([Head|Tail]) :- 
    all_different(Head),
    valid(Tail).

test([]).
test(Row) :-
    maplist(all_distinct,Row).

