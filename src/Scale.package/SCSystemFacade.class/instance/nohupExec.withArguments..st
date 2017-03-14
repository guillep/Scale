utils - call commands
nohupExec: aCommand withArguments: argumentCollection
	^ self nohupExec: (self 
		concatCommand: aCommand 
		withArguments: argumentCollection)