accessing
defaultWorkingDirectory
	| pathString |
	pathString := OSEnvironment current
		at: 'PWD'
		ifAbsent: [ self error: 'Imposible to resolve PWD' ].
	^ self pathFromString: pathString