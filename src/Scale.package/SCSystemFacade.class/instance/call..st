utils - call commands
call: aCommand
	^ self call: aCommand withInterpreter: ExternalUnixOSProcess defaultShellPath