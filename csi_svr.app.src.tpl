{application, {{name}}, [
	{description, "{{name}} CSI service"},
	{vsn, "0.0.1"},
	{id, "git"},
	{modules, []},
	{registered, []},
	{applications, [
		csi,
		compiler,
		kernel,
		stdlib
	]},
	{env, []},
  {mod, { {{name}}_app, []}}
]}.
