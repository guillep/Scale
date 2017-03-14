utils - call commands
execAsync: aCommand withArguments: argumentCollection
	^ self callAsync: (self 
		concatCommand: aCommand 
		withArguments: argumentCollection)