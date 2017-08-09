executing
call
	| future |
	future := self buildCommand future.
	self isAsync 
		ifFalse: [ ^ future synchronizeTimeout: self class defaultTimeout ]