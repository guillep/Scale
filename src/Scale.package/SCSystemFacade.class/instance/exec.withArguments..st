utils - call commands
exec: aCommand withArguments: argumentCollection
	^ self exec: (self 
		concatCommand: aCommand 
		withArguments: argumentCollection)