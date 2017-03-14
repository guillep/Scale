utils - call commands
callAsync: aCommand withArguments: argumentCollection
	^ self callAsync: (self 
		concatCommand: aCommand 
		withArguments: argumentCollection)