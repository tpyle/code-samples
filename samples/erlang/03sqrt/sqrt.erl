#!/usr/bin/env escript
%% -*- erlang -*-
%%! -smp enable -sname factorial -mnesia debug verbose
%%

-define(ACCURACY, 0.000001).

find_sqrt(Number) when Number < 0 ->
    io:format("Error: Expected a positive number. Received '~w'~n", [Number]),
    halt(3);
find_sqrt(Number) ->
    find_sqrt(Number, Number, 1.0).

find_sqrt(Number,X,Y) when abs(X-Y) > ?ACCURACY ->
    X_New = (X+Y)/2,
    find_sqrt(Number, X_New, Number/X_New);
find_sqrt(_Number,X,_Y) ->
    X.

parse(V) ->
    try
        list_to_float(V)
    catch
        error:badarg ->
            list_to_integer(V)
    end.

for_args([]) ->
    [];
for_args([H|T]) ->
    try
        V = parse(H),
        io:format("~w => ~w~n", [V, find_sqrt(V)]),
        for_args(T)
    catch
        error:badarg ->
            bad_arg(H)
    end.


bad_arg(BAD_ARG) ->
    io:format(standard_error, "Error: Expected a number. Received '~s'~n", [BAD_ARG]),
    halt(2).

main([]) ->
    io:format(standard_error, "Error: Usage sqrt <number> [<number> ...]~n", []),
    halt(1);
main(ARGS) ->
    for_args(ARGS).
