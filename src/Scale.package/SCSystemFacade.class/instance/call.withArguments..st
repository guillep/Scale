utils - call commands
call: aCommand withArguments: argumentCollection
	^ (self prepareCall: aCommand) 
		arguments: argumentCollection;
		call