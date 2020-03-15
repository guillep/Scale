private building
buildCommand
	^ self interpreter command
		workingDirectory: self pwdFullName;
		option: '-c';
		argument: self commandDecorated;
		redirectStdoutAsResult;
		yourself