running
run: aScript arguments: anArgObject
	| result |
	Author fullName: 'ScaleUser-' , self resolveOperativeSystemUserName.
	system arguments: anArgObject.
	result := Compiler evaluate: aScript for: self logged: false.
	system joinAllCalls.
	^ result