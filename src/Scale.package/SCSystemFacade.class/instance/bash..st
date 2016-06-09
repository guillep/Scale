utils - call commands
bash: aScript
	^ self call: aScript withInterpreter: ExternalUnixOSProcess defaultShellPath