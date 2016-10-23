-module({{name}}_service).
-behaviour(csi_server).

%% General state of the service
-record({{name}}_state, {}).

%% Lifecycle State for every requests'
-record({{name}}_session_state, {}).

-export([init_service/1,
         init/2,
         terminate/2,
         terminate_service/2]).

-export([process_foo/2,
         process_too_long/2,
         process_crashing/2]).


%% ====================================================================
%% Behavioural functions
%% ====================================================================
init_service(_InitArgs) ->
    {ok, #{{name}}_state{}}.

init(_Args, _ServiceState) ->
    {ok, #{{name}}_session_state{}}.

terminate(_Reason, _State) ->
    ok.

terminate_service(_Reason, _State) ->
    ok.

%% ====================================================================
%% Service functions
%% ====================================================================
process_foo(_Args, State) ->
    {hello_world, State}.

process_too_long(_Args, State) ->
    {ok, Sleep} = application:get_env({{name}}, timer_sleep),
    timer:sleep(Sleep),
    {long_job_finished, State}.

process_crashing(Args, State) ->
    A = Args - Args,
    {A, State}.
