private building
buildCommandSpec
	^ [ :spec | 
	spec
		workingDirectory: self pwdFullName;
		command: self interpreter;
		option: '-c';
		argument: self commandDecorated ]