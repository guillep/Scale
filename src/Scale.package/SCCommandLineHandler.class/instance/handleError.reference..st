installing
handleError: anError reference: aReference
	^ Smalltalk isInteractive
		ifTrue: [ super handleError: anError reference: aReference ]
		ifFalse: [ self handleError: anError forCommandLineWithReference: aReference ]