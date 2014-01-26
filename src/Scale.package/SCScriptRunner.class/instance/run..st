running
run: aScript 

	| result |
	result := Compiler
			evaluate: aScript
			for: self
			logged: false.
	system joinAllCalls.
	^ result