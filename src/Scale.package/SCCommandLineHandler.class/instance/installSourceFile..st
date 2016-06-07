installing
installSourceFile: aReference
	"Install the the source file given by aFileReference"

	" parse the code given in the source file"

	runner := SCScriptRunner new.
	aReference
		readStreamDo: [ :stream | 
			stream peek = $#
				ifTrue: [ stream upTo: Character lf ].
			self
				handleErrorsDuring: [ runner run: stream upToEnd
					"Compiler evaluate: stream upToEnd." ]
				reference: aReference ]