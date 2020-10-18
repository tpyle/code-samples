#!/usr/bin/env escript
%% -*- erlang -*-
%%! -smp enable -sname factorial -mnesia debug verbose
%%

print_reverse([]) ->
    [];
print_reverse([H|T]) ->
    print_reverse(T),
    io:format("~s ", [H]).

main([]) ->
    halt(0);
main(ARGS) ->
    print_reverse(ARGS),
    io:format("~n").
