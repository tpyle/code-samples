#!/usr/bin/env escript
%% -*- erlang -*-
%%! -smp enable -sname factorial -mnesia debug verbose
%%
-mode(compile).

count_lines(Input) ->
    case file:read_line(Input) of
        {ok, _} -> 1 + count_lines(Input);
        {error, Reason} -> io:format("~w~n", Reason);
        eof -> 0
    end.

open_file(FileName) ->
    case file:open(FileName, [read]) of
        {ok, Input} ->
            Input;
        {error, Reason} ->
            io:format("Error: Coult not open ~s: ~s~n", [FileName, Reason]),
            halt(2)
    end.

main([]) ->
    io:format("~w~n", [count_lines(standard_io)]);
main([FileName]) ->
    io:format("~w~n", [count_lines(open_file(FileName))]);
main(_) ->
    io:format(standard_error, "Error: Usage wc.erl [<file>]~n", []),
    halt(1).
