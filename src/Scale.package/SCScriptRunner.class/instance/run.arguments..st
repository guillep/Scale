running
run: aScript arguments: aCommandLineArgumentsObject
	| result |
	system arguments: aCommandLineArgumentsObject.
	Author fullName: 'ScaleUser-' , self resolveOperativeSystemUserName.
	result := Compiler evaluate: aScript for: self logged: false.
	system joinAllCalls.
	^ result