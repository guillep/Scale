running
run: aScript arguments: anArgObject
	| result |
	
	Author 
		useAuthor: 'ScaleUser-' , self resolveOperativeSystemUserName
		during: [ 
			system arguments: anArgObject.
			ScaleStore useDuring: [
				result := Smalltalk compiler 
					evaluate: aScript 
					for: self 
					logged: false.
				system joinAllCalls.
				^ result ] ].
	