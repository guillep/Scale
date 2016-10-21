activation
manageInteractive: arguments
	| dir |
	dir := arguments first.
	dir := dir asFileReference isRelative
		ifTrue: [ (OSEnvironment current at: 'PWD') asFileReference / dir ]
		ifFalse: [ dir asFileReference ].
	^ dir isDirectory
		ifTrue: [ (SCBrowser openOn: dir) maximize.
			true ]
		ifFalse: [ SCBrowser open maximize ]