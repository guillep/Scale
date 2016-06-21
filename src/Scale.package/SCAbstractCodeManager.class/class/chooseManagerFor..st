as yet unclassified
chooseManagerFor: aContent
	| manager |
	manager := self subclasses select: [ :c | c appliesTo: aContent ].
	manager size > 1
		ifTrue: [ self error: 'There are many managers for the given content! ' ].
	manager size = 0
		ifTrue: [ SCPharoCodeManager ].
	^ manager first