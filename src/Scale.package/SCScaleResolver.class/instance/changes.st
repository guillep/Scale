as yet unclassified
changes
	"protocol: as yet unclassified"

	changes
		ifNotNil: [ changes exists
				ifTrue: [ ^ changes ] ].
	changes := self unknownOrigin: #changes.
	(self isWritable: changes)
		ifFalse: [ | newChanges |
			[ newChanges := #/ asFileReference / #tmp / self changesName ]
				doWhileTrue: [ newChanges exists ].
			changes copyTo: newChanges.
			changes := newChanges ].
	^ changes