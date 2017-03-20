private accessing
concatCommand: aCommand withArguments: argumentCollection
	^ String
		streamContents: [ :stream | 
			(argumentCollection copyWithFirst: aCommand)
				asStringOn: stream
				delimiter: ' ' ]