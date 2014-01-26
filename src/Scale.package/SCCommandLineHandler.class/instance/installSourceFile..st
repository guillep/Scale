installing
installSourceFile: aReference
	"Install the the source file given by aFileReference"
	
	" parse the code given in the source file"
	aReference readStreamDo: [ :stream |
		(stream peek = $#) ifTrue: [ 
			stream upTo: Character lf ].
		
		self 
			handleErrorsDuring: [
				SCScriptRunner run: stream upToEnd.
				"Compiler evaluate: stream upToEnd."
				]
			reference: aReference
	].