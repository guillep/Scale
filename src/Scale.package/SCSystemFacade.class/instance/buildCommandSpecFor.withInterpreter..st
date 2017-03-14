private
buildCommandSpecFor: aCommand withInterpreter: anInterpreter
	^ [ :spec | 
	spec
		workingDirectory: self pwd fullName;
		command: anInterpreter;
		option: '-c';
		argument: aCommand ]