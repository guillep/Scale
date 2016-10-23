as yet unclassified
appliesTo: anInterpreterSelector
	^ self interpreterAndAliases
		anySatisfy: [ :in | (anInterpreterSelector indexOfSubCollection: in) > 0 ]