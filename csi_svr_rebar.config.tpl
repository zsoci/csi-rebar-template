{erl_opts, [
           ]}.
{deps, [
    {csi, {git, "git@github.com:esl/CommonServiceInterface.git", {branch, "master"}}}
    ]}.

{plugins, [
{rebar3_run, {git, "git://github.com/tsloughter/rebar3_run.git", {branch, "master"}}}
]}.

{relx, [{release, { {{name}}, "0.0.1"},
         [runtime_tools,
          csi,
          {{name}}
         ]},
        {dev_mode, false},
        {include_erts, true},
        {sys_config, "config/sys.config"},
        {vm_args, "config/vm.args"},
        {extended_start_script, true}]}.

