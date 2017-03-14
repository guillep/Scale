utils - call commands
nohupCall: aCommand withArguments: argumentCollection
	^ self nohupCall: (self 
		concatCommand: aCommand 
		withArguments: argumentCollection)