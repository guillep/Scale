handler selection
isResponsibleFor: commandLineArguments
	^ (commandLineArguments arguments reject: [ :a | a beginsWith: '-' ])
		ifEmpty: [ false ]
		ifNotEmpty: [ :a | a first = self commandName ]