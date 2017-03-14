private
externalCallFor: aCommand withInterpreter: anInterpreter
	^ [ :spec | 
	spec
		workingDirectory: self pwd fullName;
		command: anInterpreter;
		option: '-c';
		argument: aCommand ] asOSTask future