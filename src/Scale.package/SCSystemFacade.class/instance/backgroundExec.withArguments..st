utils - call commands
backgroundExec: aCommand withArguments: argumentCollection
	^ self backgroundExec: (self 
		concatCommand: aCommand 
		withArguments: argumentCollection)