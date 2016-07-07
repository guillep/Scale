as yet unclassified
shutDown: quitting
	quitting
		ifTrue: [ isGenerated
				ifTrue: [ changes delete ] ]