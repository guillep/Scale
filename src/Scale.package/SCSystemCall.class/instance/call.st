executing
call
	| future |
	future := self buildCommand future.
	^ self isAsync 
		ifTrue: [ future ]
		ifFalse: [ future synchronizeTimeout: self class defaultTimeout ]