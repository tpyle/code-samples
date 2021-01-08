#!/usr/bin/env escript
%% -*- erlang -*-
%%! -smp enable -sname factorial -mnesia debug verbose
%%
-mode(compile).

%% getenv

print_all([H | T]) ->
    io:format("~s~n", [H]),
    print_all(T);
print_all([]) ->
    [].


main([]) ->
    print_all(os:getenv());
main(_) ->
    io:format(standard_error, "Error: Usage env.erl~n", []),
    halt(1).