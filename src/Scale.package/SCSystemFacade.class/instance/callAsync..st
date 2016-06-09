utils - call commands
callAsync: aCommand
	^ self callAsync: aCommand withInterpreter: ExternalUnixOSProcess defaultShellPath