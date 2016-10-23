-module({{name}}_sup).
-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init([]) ->
    Server = { {{name}}, { {{name}}, start_link, []},
                  permanent, 2000, worker, [{{name}}]},
    Procs = [Server],
    {ok, { {one_for_one, 3, 10}, Procs}}
.