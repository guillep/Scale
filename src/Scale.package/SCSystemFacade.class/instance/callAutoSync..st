utils - call commands
callAutoSync: aCommand
	^ self callAutoSync: aCommand withInterpreter: ExternalUnixOSProcess defaultShellPath