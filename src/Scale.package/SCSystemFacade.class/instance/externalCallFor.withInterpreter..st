private
externalCallFor: aCommand withInterpreter: anInterpreter
	^ [ :spec | 
	self pwd fullName logCr.
	spec
		workingDirectory: self pwd fullName;
		command: anInterpreter;
		option: '-c';
		argument: aCommand ] asOSTask future