running
run: aScript
	| result |
	Author fullName: 'ScaleUser-' , self resolveOperativeSystemUserName.
	result := Compiler evaluate: aScript for: self logged: false.
	system joinAllCalls.
	^ result