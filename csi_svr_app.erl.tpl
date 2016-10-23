-module({{name}}_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    {{name}}_sup:start_link().

stop(_State) ->
    ok.