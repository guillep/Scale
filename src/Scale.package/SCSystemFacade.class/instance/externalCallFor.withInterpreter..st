private
externalCallFor: aCommand withInterpreter: anInterpreter
	^ [ :spec | 
	spec
		command: anInterpreter;
		arguments: aCommand ]