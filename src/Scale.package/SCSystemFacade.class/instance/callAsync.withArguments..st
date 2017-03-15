utils - call commands
callAsync: aCommand withArguments: argumentCollection
	^ (self prepareCall: aCommand) 
		arguments: argumentCollection;
		async;
		call