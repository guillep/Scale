utils - call commands
call: aCommand withArguments: argumentCollection
	^ self call: (self 
		concatCommand: aCommand 
		withArguments: argumentCollection)