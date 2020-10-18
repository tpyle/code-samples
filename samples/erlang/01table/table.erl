#!/usr/bin/env escript
%% -*- erlang -*-
%%! -smp enable -sname factorial -mnesia debug verbose
%%

-define(LIMIT, 5).


print_col(0,?LIMIT) ->
    io:format("~-3.w~n", [?LIMIT]);
print_col(0,0) ->
    io:format("   "),
    print_col(0,1);
print_col(0,C) ->
    io:format("~-3.w", [C]),
    print_col(0,C+1);
print_col(R,?LIMIT) ->
    io:format("~-3.w~n", [R*?LIMIT]);
print_col(R,0) ->
    io:format("~-3.w", [R]),
    print_col(R,1);
print_col(R,C) ->
    io:format("~-3.w", [R*C]),
    print_col(R,C+1).


print_row(?LIMIT) ->
    print_col(?LIMIT,0);
print_row(A) ->
    print_col(A,0),
    print_row(A+1).


main([]) ->
    print_row(0).
