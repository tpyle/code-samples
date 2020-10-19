#!/usr/bin/env escript
%% -*- erlang -*-
%%! -smp enable -sname factorial -mnesia debug verbose
%%

-define(ACCURACY, 0.000001).

is_prime(Number) when Number < 0 ->
    io:format("Error: Expected a positive integer. Received '~s'~n", [Number]),
    halt(3);
is_prime(Number) when Number == 1 ->
    false;
is_prime(Number) ->
    is_prime(Number, 2, math:sqrt(Number)).

is_prime(_Number, Current, Limit) when Current > Limit ->
    true;
is_prime(Number, Current, _Limit) when Number rem Current == 0 ->
    false;
is_prime(Number, Current, Limit) ->
    is_prime(Number, Current+1, Limit).

for_args([]) ->
    [];
for_args([H|T]) ->
    try
        V = list_to_integer(H),
        io:format("~w => ~s~n", [V, is_prime(V)]),
        for_args(T)
    catch
        error:badarg ->
            bad_arg(H)
    end.


bad_arg(BAD_ARG) ->
    io:format(standard_error, "Error: Expected an integer. Received '~s'~n", [BAD_ARG]),
    halt(2).

main([]) ->
    io:format(standard_error, "Error: Usage prime <number> [<number> ...]~n", []),
    halt(1);
main(ARGS) ->
    for_args(ARGS).
