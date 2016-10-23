as yet unclassified
appliesTo: anInterpreterSelector
	^ self interpreterAndAliases
		anySatisfy: [ (anInterpreterSelector indexOfSubCollection: self interpreter) > 0 ]