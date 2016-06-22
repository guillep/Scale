as yet unclassified
interpreter
	| interpreterLines |
	^ interpreter
		ifNil: [ interpreterLines := self rawcontent select: [ :l | (l indexOfSubCollection: '#!') > 0 ].
			self assert: interpreterLines size < 2.
			interpreter := interpreterLines size = 1
				ifTrue: [ interpreterLines first ]
				ifFalse: [ SCPharoCodeManager interpreter ] ]