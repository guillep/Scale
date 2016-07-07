as yet unclassified
shutDown: quitting
	quitting
		ifTrue: [ (self unknownOrigin: #changes) = changes
				ifFalse: [ changes delete ] ]