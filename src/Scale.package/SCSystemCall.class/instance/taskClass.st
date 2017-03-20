private accessing
taskClass
	^ self isVerbose 
		ifTrue: [ TKTOSVerboseTask ]
		ifFalse: [ TKTOSTask ]