private
externalCallFor: aCommand withInterpreter: anInterpreter
	^ [ :spec | 
	spec
		command: anInterpreter;
		option: '-c';
		argument: aCommand ] asOSTask future