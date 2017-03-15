accessing
defaultWorkingDirectory
	| pathString |
	pathString := OSEnvironment current getEnv: 'PWD'.
	^ self pathFromString: pathString