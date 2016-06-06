private
externalCallFor: aCommand withInterpreter: anInterpreter
	^ TKTShellCommand new
		command: aCommand;
		interpreter: anInterpreter;
		yourself
		