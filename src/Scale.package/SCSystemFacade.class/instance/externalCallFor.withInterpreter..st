private
externalCallFor: aCommand withInterpreter: anInterpreter

	^ SCExternalProcess new
		withInterpreter: anInterpreter andCommand: aCommand;
		yourself