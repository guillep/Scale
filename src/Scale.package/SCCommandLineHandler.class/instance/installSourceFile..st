installing
installSourceFile: aReference
	"Install the the source file given by aFileReference"

	" parse the code given in the source file"

	aReference
		readStreamDo: [ :stream | 
			stream peek = $#
				ifTrue: [ stream upTo: Character lf ].
			self
				handleErrorsDuring: [ runner run: stream upToEnd arguments: commandLine
					"Compiler evaluate: stream upToEnd." ]
				reference: aReference ]