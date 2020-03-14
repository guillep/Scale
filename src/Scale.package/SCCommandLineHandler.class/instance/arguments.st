installing
arguments
	^ (self commandLine arguments reject: [ :a | a beginsWith: '-' ])
		allButFirst