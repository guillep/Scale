as yet unclassified
changes
	changes
		ifNotNil: [ changes exists
				ifTrue: [ ^ changes ] ].
	changes := self unknownOrigin: #changes.
	changes isWritable
		ifFalse: [ | newChanges |
			newChanges := #/ asFileReference / #tmp / self changesName.
			changes copyTo: newChanges.
			changes := newChanges ].
	^changes 