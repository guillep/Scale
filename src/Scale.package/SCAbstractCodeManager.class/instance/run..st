running
run: aSCScript
	^ SCUnixStore useDuring: [ 
		Smalltalk compiler 
			evaluate: aSCScript content 
			for: self runnerInstance 
			logged: false ]