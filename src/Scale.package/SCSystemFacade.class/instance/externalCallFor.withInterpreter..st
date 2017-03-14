private
externalCallFor: aCommand withInterpreter: anInterpreter
	^ [ :spec | 
	spec
		workingDirectory: self workingDirectory fullName;
		command: anInterpreter;
		option: '-c';
		argument: aCommand ] asOSTask future